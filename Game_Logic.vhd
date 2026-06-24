-- ==========================================
-- Game Logic
-- ==========================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Game_Logic is
    port(
        clk_50        : in  std_logic;
        reset_n       : in  std_logic; -- KEY(0) reset, active low
        PS2_KBCLK     : in  std_logic; -- PS/2 keyboard clock
        PS2_KBDAT     : in  std_logic; -- PS/2 keyboard data
        turret_angle  : out integer;
        planex, planey: out integer;
        bullet_x      : out integer;
        bullet_y      : out integer;
        bullet_active : out std_logic;
        game_over_out : out std_logic;
        ledg_out      : out std_logic_vector(9 downto 0);
        bcd0, bcd1, bcd2, bcd3 : out std_logic_vector(3 downto 0)
    );
end Game_Logic;

architecture a of Game_Logic is
    component DownCounter is
        generic( FREQ_HZ : integer );
        port(
            clk   : IN std_logic;
            reset : IN std_logic;
            index : OUT std_logic
        );
    end component;
    
    component ps2_keyboard is
        GENERIC(
            clk_freq              : INTEGER := 50_000_000; 
            debounce_counter_size : INTEGER := 8
        );
        PORT(
            clk          : IN  STD_LOGIC;
            ps2_clk      : IN  STD_LOGIC;
            ps2_data     : IN  STD_LOGIC;
            ps2_code_new : OUT STD_LOGIC;
            ps2_code     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END component;

    -- SIN/COS LUT for angle to vector calculation
    type lut_type is array (0 to 90) of integer;
    -- Define angle LUT type (0 to 90 degrees, values scaled by 256 for integer math)
    -- Using precise SIN values to avoid errors for non-multiples of 10 degrees
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

    -- Pivot coordinates (Cannon center / bullet spawn)
    constant PIVOT_X : integer := 82;
    constant PIVOT_Y : integer := 412;

    -- Internal Signals
    signal game_tick    : std_logic; 
    signal code         : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal code_new     : std_logic;
    signal is_e0        : std_logic := '0';
    signal is_break     : std_logic := '0';
    
    signal turret_angle_int : integer range 0 to 90 := 45;
    signal planex_int        : integer := 0;
    signal planey_int        : integer := 100;

    -- Shell/Bullet state
    signal bullet_x_int      : integer := 0;
    signal bullet_y_int      : integer := 0;
    signal bullet_active_int : std_logic := '0';
    signal bullet_vx         : integer := 0;
    signal bullet_vy         : integer := 0;

    -- Score BCD registers
    signal bcd0_int, bcd1_int, bcd2_int, bcd3_int : std_logic_vector(3 downto 0) := "0000";

    -- Ammo (Max 10)
    signal ammo : integer range 0 to 10 := 10;

    -- Game states
    signal game_over : std_logic := '0';

    -- Free-running counter for random height and spread
    signal rand_counter : integer range 0 to 255 := 30;
    signal spread_angle : integer range -30 to 30 := 0;
    signal final_angle  : integer range -2 to 92 := 0;

    -- Knight Rider scanner variables
    signal scanner_pos : integer range 0 to 9 := 0;
    signal scanner_dir : std_logic := '1'; -- '1' for left-to-right (0 to 9), '0' for right-to-left
    signal scanner_clk_div : integer range 0 to 5 := 0;

    signal ledg_normal : std_logic_vector(9 downto 0);
    signal ledg_scanner : std_logic_vector(9 downto 0);
    signal game_tick_prev : std_logic := '0'; -- Record previous game_tick state
    signal code_new_prev  : std_logic := '0'; -- Record previous code_new state

begin
    -- Port assignments
    turret_angle  <= turret_angle_int;
    planex        <= planex_int;
    planey        <= planey_int;
    bullet_x      <= bullet_x_int;
    bullet_y      <= bullet_y_int;
    bullet_active <= bullet_active_int;
    game_over_out <= game_over;
    bcd0          <= bcd0_int;
    bcd1          <= bcd1_int;
    bcd2          <= bcd2_int;
    bcd3          <= bcd3_int;
    ledg_out      <= ledg_scanner when game_over = '1' else ledg_normal;

    -- Normal Ammo Level to LEDG conversion
    process(ammo)
    begin
        case ammo is
            when 10     => ledg_normal <= "1111111111";
            when 9      => ledg_normal <= "0111111111";
            when 8      => ledg_normal <= "0011111111";
            when 7      => ledg_normal <= "0001111111";
            when 6      => ledg_normal <= "0000111111";
            when 5      => ledg_normal <= "0000011111";
            when 4      => ledg_normal <= "0000001111";
            when 3      => ledg_normal <= "0000000111";
            when 2      => ledg_normal <= "0000000011";
            when 1      => ledg_normal <= "0000000001";
            when others => ledg_normal <= "0000000000";
        end case;
    end process;

    -- Scanner pattern generation for game-over state
    process(scanner_pos)
    begin
        ledg_scanner <= (others => '0');
        ledg_scanner(scanner_pos) <= '1';
    end process;

    -- 60Hz Game Tick generator
    clk_div_60hz : DownCounter
    generic map( FREQ_HZ => 60 )
    port map(
        clk   => clk_50,
        reset => '1',
        index => game_tick
    );
	
    -- Keyboard controller
    u_ps2 : ps2_keyboard
    generic map(
        clk_freq              => 50_000_000, 
        debounce_counter_size => 8
    )
    port map(
        clk          => clk_50,
        ps2_clk      => PS2_KBCLK,
        ps2_data     => PS2_KBDAT,
        ps2_code_new => code_new,
        ps2_code     => code
    );

    -- Random counter generator (Free running)
    process(clk_50)
    begin
        if rising_edge(clk_50) then
            if rand_counter = 255 then
                rand_counter <= 0;
            else
                rand_counter <= rand_counter + 1;
            end if;
        end if;
    end process;

    -- Map random counter to -2 to +2 spread
    process(rand_counter)
    begin
        case (rand_counter mod 5) is
            when 0 => spread_angle <= -2;
            when 1 => spread_angle <= -1;
            when 2 => spread_angle <= 0;
            when 3 => spread_angle <= 1;
            when 4 => spread_angle <= 2;
            when others => spread_angle <= 0;
        end case;
    end process;

    -- Main game update process
    process(clk_50, reset_n)
    begin
        if reset_n = '0' then
            -- Reset game state
            turret_angle_int  <= 45;
            planex_int        <= 640;
            planey_int        <= 100;
            bullet_active_int <= '0';
            bullet_x_int      <= 0;
            bullet_y_int      <= 0;
            bullet_vx         <= 0;
            bullet_vy         <= 0;
            ammo              <= 10;
            game_over         <= '0';
            bcd0_int          <= "0000";
            bcd1_int          <= "0000";
            bcd2_int          <= "0000";
            bcd3_int          <= "0000";
            scanner_pos       <= 0;
            scanner_dir       <= '1';
            scanner_clk_div   <= 0;
            is_e0             <= '0';
            is_break          <= '0';
            game_tick_prev    <= '0';
            -- Initialize code_new_prev to '1'
            -- Ensure edge detection (code_new='1' and code_new_prev='0') works for the first key after reset
            code_new_prev     <= '1';
            
        elsif rising_edge(clk_50) then
            -- Update previous states
            game_tick_prev <= game_tick;
            code_new_prev  <= code_new;

            -- 1. Handle keyboard inputs (only allow control if not game_over)
            if code_new = '1' and code_new_prev = '0' then
                if code = x"E0" then
                    is_e0 <= '1';
                elsif code = x"F0" then
                    is_break <= '1';
                else
                    if is_break = '0' then
                        if game_over = '0' then
                            if is_e0 = '1' then
                                case code is
                                    when x"75" => -- Up Arrow: Increase elevation
                                        if turret_angle_int <= 80 then
                                            turret_angle_int <= turret_angle_int + 10;
                                        else
                                            turret_angle_int <= 90;
                                        end if;
                                    when x"72" => -- Down Arrow: Decrease elevation
                                        if turret_angle_int >= 10 then
                                            turret_angle_int <= turret_angle_int - 10;
                                        else
                                            turret_angle_int <= 0;
                                        end if;
                                    when others => 
                                        null;
                                end case;
                            else
                                case code is
                                    when x"29" => -- Space: Shoot
                                        if ammo > 0 and bullet_active_int = '0' then
                                            bullet_active_int <= '1';
                                            bullet_x_int      <= PIVOT_X;
                                            bullet_y_int      <= PIVOT_Y;
                                            
                                            -- Calculate final shot angle (clamped between 0 and 90 degrees)
                                            if (turret_angle_int + spread_angle) < 0 then
                                                final_angle <= 0;
                                            elsif (turret_angle_int + spread_angle) > 90 then
                                                final_angle <= 90;
                                            else
                                                final_angle <= turret_angle_int + spread_angle;
                                            end if;
                                            -- Decrement ammo after firing
                                            if ammo > 0 then
                                                ammo <= ammo - 1;
                                            end if;
                                        end if;
                                    when others => 
                                        null;
                                end case;
                            end if;
                        end if;
                    end if;
                    is_e0 <= '0';
                    is_break <= '0';
                end if;
            end if;

            -- Initialize bullet velocity
            if bullet_active_int = '1' and bullet_vx = 0 and bullet_vy = 0 then
                bullet_vx <= (6 * COS_LUT(final_angle)) / 256;
                bullet_vy <= (6 * SIN_LUT(final_angle)) / 256;
            end if;

            -- Reset velocity when bullet is inactive
            if bullet_active_int = '0' then
                bullet_vx <= 0;
                bullet_vy <= 0;
            end if;

            -- 2. Frame-rate dependent updates (60Hz)
            -- Use game_tick for synchronous logic updates at 60Hz
            if game_tick = '1' and game_tick_prev = '0' then
                if game_over = '0' then
                    -- A. Update airplane position (flying from right to left)
                    planex_int <= planex_int - 1;
                    if planex_int <= -64 then -- Airplane flew off left boundary, game over
                        game_over <= '1';
                    end if;

                    -- B. Update bullet flight
                    if bullet_active_int = '1' then
                        bullet_x_int <= bullet_x_int + bullet_vx;
                        bullet_y_int <= bullet_y_int - bullet_vy;
                        
                        -- Boundary check for bullet
                        if bullet_x_int < 0 or bullet_x_int > 640 or bullet_y_int < 0 or bullet_y_int > 480 then
                            bullet_active_int <= '0';
                        end if;
                    end if;

                    -- C. Collision detection (bullet hitting airplane bounding box: size 64x64)
                    if bullet_active_int = '1' then
                        if (bullet_x_int >= planex_int) and (bullet_x_int <= planex_int + 50) and
                           (bullet_y_int >= planey_int) and (bullet_y_int <= planey_int + 40) then
                            -- Hit!
                            bullet_active_int <= '0';
                            -- Reset airplane position to the right side after a hit
                            planex_int <= 640; -- Reset airplane
                            -- Use rand_counter to generate a new random height (30-210)
                            planey_int <= 30 + (rand_counter mod 181); 
                            
                            -- Score increment (BCD counting: bcd3 bcd2 bcd1 bcd0)
                            if bcd0_int = "1001" then
                                bcd0_int <= "0000";
                                if bcd1_int = "1001" then
                                    bcd1_int <= "0000";
                                    if bcd2_int = "1001" then
                                        bcd2_int <= "0000";
                                        if bcd3_int = "1001" then
                                            bcd3_int <= "0000";
                                        else
                                            bcd3_int <= std_logic_vector(unsigned(bcd3_int) + 1);
                                        end if;
                                    else
                                        bcd2_int <= std_logic_vector(unsigned(bcd2_int) + 1);
                                    end if;
                                else
                                    bcd1_int <= std_logic_vector(unsigned(bcd1_int) + 1);
                                end if;
                            else
                                bcd0_int <= std_logic_vector(unsigned(bcd0_int) + 1);
                            end if;
                        end if;
                    end if;

                    -- D. Game Over checks: Out of ammo and no bullet in flight
                    if ammo = 0 and bullet_active_int = '0' then
                        game_over <= '1';
                    end if;

                else
                    -- Game is Over, run the Knight Rider scanner LED pattern
                    if scanner_clk_div = 5 then -- ~10Hz scanner rate (60Hz / 6)
                        scanner_clk_div <= 0;
                        if scanner_dir = '1' then
                            if scanner_pos = 9 then
                                scanner_dir <= '0';
                                scanner_pos <= 8;
                            else
                                scanner_pos <= scanner_pos + 1;
                            end if;
                        else
                            if scanner_pos = 0 then
                                scanner_dir <= '1';
                                scanner_pos <= 1;
                            else
                                scanner_pos <= scanner_pos - 1;
                            end if;
                        end if;
                    else
                        scanner_clk_div <= scanner_clk_div + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

end a;