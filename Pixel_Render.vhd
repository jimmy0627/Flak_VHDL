-- ==============================================================================
-- Entity: Pixel_Renderer
-- Description: Hybrid geometric and Bitmap VGA rendering module.
--              1. Turret base and airplane: Uses 16x16 2-bit Bitmap ROM, 
--                 rendered with 4x scaling.
--              2. Cannon barrel: Uses analytical geometry (dot product/projection) 
--                 combined with 256x scaled SIN/COS LUT for real-time rotation.
-- ==============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Pixel_Renderer is
    port(
        vga_clk      : in  std_logic;                    -- VGA pixel clock (e.g., 25MHz)
        video_on     : in  std_logic;                    -- VGA video on signal
        pixel_x      : in  integer range 0 to 799;       -- Current scanning pixel X coordinate
        pixel_y      : in  integer range 0 to 524;       -- Current scanning pixel Y coordinate
        
        -- Object coordinates and state inputs
        turret_angle : in  integer range 0 to 90;        -- Turret elevation angle (0=right, 90=up)
        plane_x      : in  integer;                      -- Airplane top-left X position
        plane_y      : in  integer;                      -- Airplane top-left Y position
        bullet_x     : in  integer;                      -- Bullet X position
        bullet_y     : in  integer;                      -- Bullet Y position
        bullet_active: in  std_logic;                    -- Bullet active status
        game_over    : in  std_logic;                    -- Game over status
        
        -- VGA color output (4-bit per channel)
        VGA_R        : out std_logic_vector(3 downto 0);
        VGA_G        : out std_logic_vector(3 downto 0);
        VGA_B        : out std_logic_vector(3 downto 0)
    );
end Pixel_Renderer;

architecture rtl of Pixel_Renderer is

    ------------------------------------------------------------------------------
    -- 1. Bitmap ROM definition (16 rows, each 32-bit representing 16 x 2-bit pixels)
    ------------------------------------------------------------------------------
    type rom_type is array (0 to 15) of std_logic_vector(31 downto 0);

    -- [Base] ROM
    constant BASE_BITMAP : rom_type := (
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000101100101000000000000",
        "00000000010101100101010000000000",
        "00000000010101100101010000000000",
        "00000000010101100101010000000000",
        "00000000000101100101000000000000",
        "00000000000000101010000000000000",
        "00000000000010101010100000000000",
        "00000000001010101010101000000000",
        "00000000101010101010101010000000",
        "00000010101010101010101010100000"
    );

    -- [Airplane] ROM
    constant PLANE_BITMAP : rom_type := (
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000100000",
        "00000000000000000000000010100000",
        "00000000000000000000001010100000",
        "00000000000000010101011010100000",
        "00000000010101010101010101010000",
        "00001101110101010101010101010000",
        "00111101010101010101010101010000",
        "00000000010101010000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000"
    );

    ------------------------------------------------------------------------------
    -- 2. Trigonometric LUT definition (0-90 degrees, scaled by 256)
    ------------------------------------------------------------------------------
    type lut_type is array (0 to 90) of integer;
    
    -- Full 91 degree values (0° to 90°), scaled by 256 for integer math
    -- Original others=>0 caused issues for non-multiples of 10 degrees (like 45°) 
    -- where SIN=COS=0, causing full-screen misdetection of the cannon barrel.
    constant SIN_LUT : lut_type := (
          0,   4,   9,  13,  18,  22,  27,  31,  36,  40,   -- 0-9
         44,  49,  53,  58,  62,  66,  71,  75,  79,  83,   -- 10-19
         88,  92,  96, 100, 104, 108, 112, 116, 120, 124,   -- 20-29
        128, 132, 136, 139, 143, 147, 150, 154, 158, 161,   -- 30-39
        165, 168, 171, 175, 178, 181, 184, 187, 190, 193,   -- 40-49
        196, 199, 202, 204, 207, 210, 212, 215, 217, 219,   -- 50-59
        222, 224, 226, 228, 230, 232, 234, 236, 237, 239,   -- 60-69
        241, 242, 243, 245, 246, 247, 248, 249, 250, 251,   -- 70-79
        252, 253, 254, 254, 255, 255, 255, 256, 256, 256,   -- 80-89
        256                                                   -- 90
    );
    constant COS_LUT : lut_type := (
        256, 256, 256, 256, 255, 255, 255, 254, 254, 253,   -- 0-9
        252, 251, 250, 249, 248, 247, 246, 245, 243, 242,   -- 10-19
        241, 239, 237, 236, 234, 232, 230, 228, 226, 224,   -- 20-29
        222, 219, 217, 215, 212, 210, 207, 204, 202, 199,   -- 30-39
        196, 193, 190, 187, 184, 181, 178, 175, 171, 168,   -- 40-49
        165, 161, 158, 154, 150, 147, 143, 139, 136, 132,   -- 50-59
        128, 124, 120, 116, 112, 108, 104, 100,  96,  92,   -- 60-69
         88,  83,  79,  75,  71,  66,  62,  58,  53,  49,   -- 70-79
         44,  40,  36,  31,  27,  22,  18,  13,   9,   4,   -- 80-89
          0                                                   -- 90
    );
	
    -- General scaling factor (scales 16x16 sprite to 64x64)
    constant SCALE       : integer := 4;
    constant SPRITE_SIZE : integer := 16 * SCALE;

    -- Turret constants
    constant TURRET_X    : integer := 50;   -- Base top-left X
    constant TURRET_Y    : integer := 380;  -- Base top-left Y
    constant PIVOT_X     : integer := TURRET_X + 8 * SCALE; -- Rotation pivot X (centered with base)
    constant PIVOT_Y     : integer := TURRET_Y + 8 * SCALE; -- Rotation pivot Y

    -- Barrel geometry constraints
    constant BARREL_LENGTH : integer := 20; -- Barrel length in pixels
    constant BARREL_WIDTH  : integer := 1;  -- Barrel radius in pixels

    -- Geometric signals (signed for coordinate differences)
    signal proj_d, proj_n : signed(31 downto 0); -- Projection length and width (scaled by 256)
    
    -- Pixel occupancy signals
    signal is_plane  : boolean; -- Current pixel is plane
    signal is_barrel : boolean; -- Current pixel is barrel
    signal is_base   : boolean; -- Current pixel is base
    signal is_bullet : boolean; -- Current pixel is bullet
    signal is_cross  : boolean; -- Current pixel is cross (Game Over)

begin

    -- [Game Over Cross] detection (centered on screen, approx 200x200)
    -- Use absolute difference for diagonals with a buffer for line thickness
    is_cross <= true when (game_over = '1') and (
                           (abs((pixel_x - 320) - (pixel_y - 240)) <= 6) or 
                           (abs((pixel_x - 320) - (240 - pixel_y)) <= 6)
                         ) and (pixel_x > 220 and pixel_x < 420) else false;

    -- [Bullet] bounding box (4x4 pixels)
    is_bullet <= true when (bullet_active = '1') and
                           (pixel_x >= bullet_x) and (pixel_x < bullet_x + 4) and
                           (pixel_y >= bullet_y) and (pixel_y < bullet_y + 4) else false;

    -- [Airplane] bounding box detection
    is_plane <= true when (pixel_x >= plane_x) and (pixel_x < plane_x + SPRITE_SIZE) and
                          (pixel_y >= plane_y) and (pixel_y < plane_y + SPRITE_SIZE) else false;

    -- [Base] bounding box detection
    is_base <= true when (pixel_x >= TURRET_X) and (pixel_x < TURRET_X + SPRITE_SIZE) and
                         (pixel_y >= TURRET_Y) and (pixel_y < TURRET_Y + SPRITE_SIZE) else false;

    -- [Barrel] analytical geometry (Dot Product / Projection scaled by 256)
	proj_d <= to_signed((pixel_x - PIVOT_X) / SCALE, 16) * to_signed(COS_LUT(turret_angle), 16) 
            - to_signed((pixel_y - PIVOT_Y) / SCALE, 16) * to_signed(SIN_LUT(turret_angle), 16);

    proj_n <= to_signed((pixel_x - PIVOT_X) / SCALE, 16) * to_signed(SIN_LUT(turret_angle), 16) 
            + to_signed((pixel_y - PIVOT_Y) / SCALE, 16) * to_signed(COS_LUT(turret_angle), 16);

    -- [Barrel] geometric range check
    -- proj_d in [0, Length*256]; proj_n in [-Radius*256, +Radius*256]
    is_barrel <= true when (proj_d >= 0) and (proj_d <= BARREL_LENGTH * 256) and
                           (proj_n >= -BARREL_WIDTH * 256) and (proj_n <= BARREL_WIDTH * 256) else false;
						   
    process(vga_clk)
        -- Local variables for ROM access
        variable local_dx, local_dy : integer range 0 to 15;
        variable color_bits : std_logic_vector(1 downto 0);
    begin
        if rising_edge(vga_clk) then
            -- Default background: black
            VGA_R <= x"0"; VGA_G <= x"0"; VGA_B <= x"0";

            if video_on = '1' then
                if is_cross then
                    VGA_R <= x"F"; VGA_G <= x"0"; VGA_B <= x"0"; -- Red cross
                elsif is_bullet then
                    VGA_R <= x"F"; VGA_G <= x"F"; VGA_B <= x"0"; -- Yellow bullet
                elsif is_plane then
                    local_dx := (pixel_x - plane_x) / SCALE;
                    local_dy := (pixel_y - plane_y) / SCALE;

                    -- Fetch bits from ROM
                    color_bits(1) := PLANE_BITMAP(local_dy)(31 - local_dx * 2);
                    color_bits(0) := PLANE_BITMAP(local_dy)(30 - local_dx * 2);

                    -- Airplane palette
                    case color_bits is
                        when "01" => VGA_R <= x"C"; VGA_G <= x"C"; VGA_B <= x"C"; -- Light grey (body)
                        when "10" => VGA_R <= x"5"; VGA_G <= x"5"; VGA_B <= x"5"; -- Dark grey (tail)
                        when "11" => VGA_R <= x"F"; VGA_G <= x"3"; VGA_B <= x"0"; -- Red/Orange (cockpit)
                        when others => null;
                    end case;

                elsif is_barrel then
                    -- Draw dark grey barrel
                    VGA_R <= x"5"; VGA_G <= x"5"; VGA_B <= x"5";
                    
                elsif is_base then
                    local_dx := (pixel_x - TURRET_X) / SCALE;
                    local_dy := (pixel_y - TURRET_Y) / SCALE;
                    
                    color_bits(1) := BASE_BITMAP(local_dy)(31 - local_dx * 2);
                    color_bits(0) := BASE_BITMAP(local_dy)(30 - local_dx * 2);

                    -- Base palette
                    case color_bits is
                        when "01" => VGA_R <= x"C"; VGA_G <= x"C"; VGA_B <= x"C"; -- Light grey (shield)
                        when "10" => VGA_R <= x"5"; VGA_G <= x"5"; VGA_B <= x"5"; -- Dark grey (barrel and base)
                        when others => null;
                    end case;
                end if;
            end if;
        end if;
    end process;

end rtl;