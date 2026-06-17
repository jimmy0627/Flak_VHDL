-- ==============================================================================
-- Entity: Pixel_Renderer
-- Description: 純幾何與 Bitmap 混合式 VGA 畫面渲染模組。
--              1. 砲台底座與飛機：使用 16x16 2-bit Bitmap ROM，放大 4 倍渲染。
--              2. 砲管：使用解析幾何公式 (內積/投影) 配和 256倍放大之 SIN/COS LUT，
--                 即時運算生成旋轉。
-- ==============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Pixel_Renderer is
    port(
        vga_clk      : in  std_logic;                    -- VGA 像素時脈 (例如 25MHz)
        video_on     : in  std_logic;                    -- VGA 顯示區域致能訊訊
        pixel_x      : in  integer range 0 to 799;       -- 當前掃描像素 X 座標
        pixel_y      : in  integer range 0 to 524;       -- 當前掃描像素 Y 座標
        
        -- 物件座標與狀態輸入
        turret_angle : in  integer range 0 to 90;        -- 砲塔仰角 (0=右, 90=上)
        plane_x      : in  integer;                      -- 飛機左上角 X 座標
        plane_y      : in  integer;                      -- 飛機左上角 Y 座標
        bullet_x     : in  integer;                      -- 砲彈 X 座標
        bullet_y     : in  integer;                      -- 砲彈 Y 座標
        bullet_active: in  std_logic;                    -- 砲彈啟用狀態
        
        -- VGA 顏色輸出 (4-bit per channel)
        VGA_R        : out std_logic_vector(3 downto 0);
        VGA_G        : out std_logic_vector(3 downto 0);
        VGA_B        : out std_logic_vector(3 downto 0)
    );
end Pixel_Renderer;

architecture rtl of Pixel_Renderer is

    ------------------------------------------------------------------------------
    -- 1. Bitmap ROM 定義 (16行，每行 32-bit 代表 16 個 2-bit 像素)
    ------------------------------------------------------------------------------
    type rom_type is array (0 to 15) of std_logic_vector(31 downto 0);

    -- [底座] ROM
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

    -- [飛機] ROM
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
    -- 2. 三角函數 LUT 定義 (0-90度，每10度一個數值，數值已乘 256)
    ------------------------------------------------------------------------------
    type lut_type is array (0 to 90) of integer;
    
    constant SIN_LUT : lut_type := (
        0 => 0, 10 => 44, 20 => 88, 30 => 128, 40 => 165,
        50 => 196, 60 => 222, 70 => 241, 80 => 252, 90 => 256,
        others => 0 -- 補齊剩餘空間
    );
    constant COS_LUT : lut_type := (
        0 => 256, 10 => 252, 20 => 241, 30 => 222, 40 => 196,
        50 => 165, 60 => 128, 70 => 88, 80 => 44, 90 => 0,
        others => 0
    );
	
    -- 通用放大倍率 (將 16x16 圖案放大成 64x64)
    constant SCALE       : integer := 4;
    constant SPRITE_SIZE : integer := 16 * SCALE;

    -- 砲台固定參數
    constant TURRET_X    : integer := 50;   -- 底座左上角 X
    constant TURRET_Y    : integer := 380;  -- 底座左上角 Y
    constant PIVOT_X     : integer := TURRET_X + 8 * SCALE; -- 旋轉軸心 X (微調齊底座)
    constant PIVOT_Y     : integer := TURRET_Y + 8 * SCALE; -- 旋轉軸心 Y

    -- 砲管幾何限制
    constant BARREL_LENGTH : integer := 20; -- 砲管長度像素
    constant BARREL_WIDTH  : integer := 1;  -- 砲管半徑像素

    -- 幾何運算訊號 (必須用 signed 處理負數座標)
    signal proj_d, proj_n : signed(31 downto 0); -- 投影長度與投影寬度 (放大256倍)
    
    -- 畫面佔用判定訊號
    signal is_plane  : boolean; -- 當前像素是否屬於飛機
    signal is_barrel : boolean; -- 當前像素是否屬於砲管
    signal is_base   : boolean; -- 當前像素是否屬於底座
    signal is_bullet : boolean; -- 當前像素是否屬於砲彈

begin

    -- [砲彈] 範圍判定 (尺寸設定為 4x4 像素)
    is_bullet <= true when (bullet_active = '1') and
                           (pixel_x >= bullet_x) and (pixel_x < bullet_x + 4) and
                           (pixel_y >= bullet_y) and (pixel_y < bullet_y + 4) else false;

    -- [飛機] Bounding Box 判定
    is_plane <= true when (pixel_x >= plane_x) and (pixel_x < plane_x + SPRITE_SIZE) and
                          (pixel_y >= plane_y) and (pixel_y < plane_y + SPRITE_SIZE) else false;

    -- [底座] Bounding Box 判定
    is_base <= true when (pixel_x >= TURRET_X) and (pixel_x < TURRET_X + SPRITE_SIZE) and
                         (pixel_y >= TURRET_Y) and (pixel_y < TURRET_Y + SPRITE_SIZE) else false;

    -- [砲管] 解析幾何方程式運算 (Dot Product / Projection scaled by 256)
	proj_d <= to_signed((pixel_x - PIVOT_X) / SCALE, 16) * to_signed(COS_LUT(turret_angle), 16) 
            - to_signed((pixel_y - PIVOT_Y) / SCALE, 16) * to_signed(SIN_LUT(turret_angle), 16);

    proj_n <= to_signed((pixel_x - PIVOT_X) / SCALE, 16) * to_signed(SIN_LUT(turret_angle), 16) 
            + to_signed((pixel_y - PIVOT_Y) / SCALE, 16) * to_signed(COS_LUT(turret_angle), 16);

    -- [砲管] 幾何範圍判定
    -- proj_d 在 [0, 長度*256]; proj_n 在 [-半徑*256, +半徑*256] 之間
    is_barrel <= true when (proj_d >= 0) and (proj_d <= BARREL_LENGTH * 256) and
                           (proj_n >= -BARREL_WIDTH * 256) and (proj_n <= BARREL_WIDTH * 256) else false;
						   
    process(vga_clk)
        -- 區域變數用於讀取 ROM
        variable local_dx, local_dy : integer range 0 to 15;
        variable color_bits : std_logic_vector(1 downto 0);
    begin
        if rising_edge(vga_clk) then
            -- 預設背景色：黑色 (000)
            VGA_R <= x"0"; VGA_G <= x"0"; VGA_B <= x"0";

            if video_on = '1' then
                if is_bullet then
                    VGA_R <= x"F"; VGA_G <= x"F"; VGA_B <= x"0"; -- 黃色砲彈
                elsif is_plane then
                    local_dx := (pixel_x - plane_x) / SCALE;
                    local_dy := (pixel_y - plane_y) / SCALE;

                    -- 取出 ROM 顏色
                    color_bits(1) := PLANE_BITMAP(local_dy)(31 - local_dx * 2);
                    color_bits(0) := PLANE_BITMAP(local_dy)(30 - local_dx * 2);

                    -- 飛機調色盤
                    case color_bits is
                        when "01" => VGA_R <= x"C"; VGA_G <= x"C"; VGA_B <= x"C"; -- 淺灰 (機身)
                        when "10" => VGA_R <= x"5"; VGA_G <= x"5"; VGA_B <= x"5"; -- 深灰 (機尾)
                        when "11" => VGA_R <= x"F"; VGA_G <= x"3"; VGA_B <= x"0"; -- 紅/橘 (座艙)
                        when others => null;
                    end case;

                elsif is_barrel then
                    -- 畫出深灰色的砲管
                    VGA_R <= x"5"; VGA_G <= x"5"; VGA_B <= x"5";
                    
                elsif is_base then
                    local_dx := (pixel_x - TURRET_X) / SCALE;
                    local_dy := (pixel_y - TURRET_Y) / SCALE;
                    
                    color_bits(1) := BASE_BITMAP(local_dy)(31 - local_dx * 2);
                    color_bits(0) := BASE_BITMAP(local_dy)(30 - local_dx * 2);

                    -- 底座調色盤
                    case color_bits is
                        when "01" => VGA_R <= x"C"; VGA_G <= x"C"; VGA_B <= x"C"; -- 淺灰 (防盾)
                        when "10" => VGA_R <= x"5"; VGA_G <= x"5"; VGA_B <= x"5"; -- 深灰 (砲管與底座)
                        when others => null;
                    end case;
                end if;
            end if;
        end if;
    end process;

end rtl;