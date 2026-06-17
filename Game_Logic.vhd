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
        PS2_KBCLK     : in  std_logic; -- PS/2 鍵盤時脈
        PS2_KBDAT     : in  std_logic; -- PS/2 鍵盤資料
        turret_angle  : out integer;
        planex, planey: out integer;
        bullet_x      : out integer;
        bullet_y      : out integer;
        bullet_active : out std_logic;
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
    constant SIN_LUT : lut_type := (
        0 => 0, 10 => 44, 20 => 88, 30 => 128, 40 => 165,
        50 => 196, 60 => 222, 70 => 241, 80 => 252, 90 => 256,
        others => 0
    );
    constant COS_LUT : lut_type := (
        0 => 256, 10 => 252, 20 => 241, 30 => 222, 40 => 196,
        50 => 165, 60 => 128, 70 => 88, 80 => 44, 90 => 0,
        others => 0
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
    signal planex_int        : integer := 640;
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

    -- Free-running counter for random height
    signal rand_counter : integer range 30 to 180 := 30;

    -- Knight Rider scanner variables
    signal scanner_pos : integer range 0 to 9 := 0;
    signal scanner_dir : std_logic := '1'; -- '1' for left-to-right (0 to 9), '0' for right-to-left
    signal scanner_clk_div : integer range 0 to 5 := 0;

    signal ledg_normal : std_logic_vector(9 downto 0);
    signal ledg_scanner : std_logic_vector(9 downto 0);

begin
    -- Port assignments
    turret_angle  <= turret_angle_int;
    planex        <= planex_int;
    planey        <= planey_int;
    bullet_x      <= bullet_x_int;
    bullet_y      <= bullet_y_int;
    bullet_active <= bullet_active_int;
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

    -- Random Y counter generator (Free running)
    process(clk_50)
    begin
        if rising_edge(clk_50) then
            if rand_counter = 180 then
                rand_counter <= 30;
            else
                rand_counter <= rand_counter + 1;
            end if;
        end if;
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
            
        elsif rising_edge(clk_50) then
            -- 1. Handle keyboard inputs (only allow control if not game_over)
            if code_new = '1' then
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
                                            -- Speed: ~12 pixels per frame
                                            bullet_vx         <= (12 * COS_LUT(turret_angle_int)) / 256;
                                            bullet_vy         <= (12 * SIN_LUT(turret_angle_int)) / 256;
                                            ammo              <= ammo - 1;
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

            -- 2. Frame-rate dependent updates (60Hz)
            if game_tick = '1' then
                if game_over = '0' then
                    -- A. Update airplane position (moves left)
                    planex_int <= planex_int - 2;
                    if planex_int <= 0 then
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
                        if (bullet_x_int >= planex_int) and (bullet_x_int <= planex_int + 63) and
                           (bullet_y_int >= planey_int) and (bullet_y_int <= planey_int + 63) then
                            -- Hit!
                            bullet_active_int <= '0';
                            ammo <= 10; -- Refill ammo
                            planex_int <= 640; -- Reset airplane
                            planey_int <= rand_counter; -- Randomize airplane altitude
                            
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