-- ==========================================
-- Top Level
-- ==========================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Flak_VHDL is
    port(
        CLOCK_50  : in  std_logic;
        PS2_KBCLK : in  std_logic;
        PS2_KBDAT : in  std_logic;
        KEY       : in  std_logic_vector(2 downto 0);
        VGA_HS    : out std_logic;
        VGA_VS    : out std_logic;
        VGA_R     : out std_logic_vector(3 downto 0);
        VGA_G     : out std_logic_vector(3 downto 0);
        VGA_B     : out std_logic_vector(3 downto 0);
        LEDG      : out std_logic_vector(9 downto 0);
        HEX0      : out std_logic_vector(7 downto 0);
        HEX1      : out std_logic_vector(7 downto 0);
        HEX2      : out std_logic_vector(7 downto 0);
        HEX3      : out std_logic_vector(7 downto 0)
    );
end Flak_VHDL;

architecture a of Flak_VHDL is
    -- 宣告 VGA_sync
    component VGA_sync is   
        port(
            CLOCK, RESET : in std_logic;
            horiz_sync, vert_sync, video_on : out std_logic;
            row_count : out INTEGER RANGE 0 TO 524;        
            col_count : out INTEGER RANGE 0 TO 799
        );
    end component;
    
    -- 宣告 Game_Logic
    component Game_Logic is
        port(
            clk_50        : in  std_logic;
            reset_n       : in  std_logic;
            PS2_KBCLK     : in  std_logic;
            PS2_KBDAT     : in  std_logic;
            turret_angle  : out integer;
            planex, planey: out integer;
            bullet_x      : out integer;
            bullet_y      : out integer;
            bullet_active : out std_logic;
            game_over_out : out std_logic;
            ledg_out      : out std_logic_vector(9 downto 0);
            bcd0, bcd1, bcd2, bcd3 : out std_logic_vector(3 downto 0)
        );
    end component;

    -- 宣告 pixel_Renderer
    component pixel_Renderer is
	    port(
            vga_clk      : in  std_logic;
            video_on     : in  std_logic;
            pixel_x      : in  integer range 0 to 799;
            pixel_y      : in  integer range 0 to 524;
            turret_angle : in  integer range 0 to 90;
            plane_x      : in  integer;
            plane_y      : in  integer;
            bullet_x     : in  integer;
            bullet_y     : in  integer;
            bullet_active: in  std_logic;
            game_over    : in  std_logic;
            VGA_R        : out std_logic_vector(3 downto 0);
            VGA_G        : out std_logic_vector(3 downto 0);
            VGA_B        : out std_logic_vector(3 downto 0)
        );
	end component;
    
    -- 宣告 DownCounter
    component DownCounter is
        generic( FREQ_HZ : integer );
        port(
            clk   : IN std_logic;
            reset : IN std_logic;
            index : OUT std_logic
        );
    end component;

    -- 宣告 Seveninput
    component Seveninput is
        port (
            bcd     : IN  std_logic_vector (3 downto 0);
            display : OUT std_logic_vector (0 to 6)
        );
    end component;

    -- 內部連線 Signal 宣告
    signal video_on  : std_logic;
    signal sig_angle : integer;
    signal sig_px    : integer;
    signal sig_py    : integer;
	signal vga_tick  : std_logic;
	signal row      : integer range 0 to 524;
    signal col      : integer range 0 to 799;

    -- 砲彈與LEDG內部訊號
    signal sig_bx      : integer;
    signal sig_by      : integer;
    signal sig_bactive : std_logic;
    signal sig_gameover: std_logic;
    signal sig_ledg    : std_logic_vector(9 downto 0);

    -- BCD 分數訊號
    signal sig_bcd0, sig_bcd1, sig_bcd2, sig_bcd3 : std_logic_vector(3 downto 0);
    signal hex0_seg, hex1_seg, hex2_seg, hex3_seg : std_logic_vector(0 to 6);

begin
    -- 除頻器
    clk_div_60hz : DownCounter
    generic map( FREQ_HZ => 25_000_000)
    port map(
        clk   => CLOCK_50,
        reset => '1',
        index => vga_tick
    );

    game_control: Game_Logic
	port map(
		clk_50        => CLOCK_50,
        reset_n       => KEY(0),
		PS2_KBCLK     => PS2_KBCLK,
		PS2_KBDAT     => PS2_KBDAT,
		turret_angle  => sig_angle,
		planex        => sig_px,
		planey        => sig_py,
        bullet_x      => sig_bx,
        bullet_y      => sig_by,
        bullet_active => sig_bactive,
        game_over_out => sig_gameover,
        ledg_out      => sig_ledg,
        bcd0          => sig_bcd0,
        bcd1          => sig_bcd1,
        bcd2          => sig_bcd2,
        bcd3          => sig_bcd3
	);
	

	u_VGA_sync : VGA_sync
	port map(
		CLOCK      => vga_tick,
		RESET      => '1',
		horiz_sync => VGA_HS,
		vert_sync  => VGA_VS,
		video_on   => video_on,
		row_count  => row,
		col_count  => col
	);

    render : pixel_Renderer
	port map(
		vga_clk      => vga_tick,
        video_on     => video_on,
        pixel_x      => col,
        pixel_y      => row,
        turret_angle => sig_angle,
        plane_x      => sig_px,
        plane_y      => sig_py,
        bullet_x     => sig_bx,
        bullet_y     => sig_by,
        bullet_active=> sig_bactive,
        game_over    => sig_gameover,
        VGA_R        => VGA_R,
        VGA_G        => VGA_G,
        VGA_B        => VGA_B
	);

    -- 七段顯示器實例化
    u_hex0 : Seveninput
    port map(
        bcd     => sig_bcd0,
        display => hex0_seg
    );

    u_hex1 : Seveninput
    port map(
        bcd     => sig_bcd1,
        display => hex1_seg
    );

    u_hex2 : Seveninput
    port map(
        bcd     => sig_bcd2,
        display => hex2_seg
    );

    u_hex3 : Seveninput
    port map(
        bcd     => sig_bcd3,
        display => hex3_seg
    );

    -- 將七段顯示器的 7-bit 段碼連接至 8-bit HEX 輸出 (小數點不亮)
    -- 注意：DE0 的 HEX 腳位通常是 a=bit0, b=bit1... g=bit6
    -- Seveninput 輸出 display 是 (0 to 6)，即 display(0)=a, display(1)=b...
    HEX0(0) <= hex0_seg(0);
    HEX0(1) <= hex0_seg(1);
    HEX0(2) <= hex0_seg(2);
    HEX0(3) <= hex0_seg(3);
    HEX0(4) <= hex0_seg(4);
    HEX0(5) <= hex0_seg(5);
    HEX0(6) <= hex0_seg(6);
    HEX0(7) <= '1';

    HEX1(0) <= hex1_seg(0);
    HEX1(1) <= hex1_seg(1);
    HEX1(2) <= hex1_seg(2);
    HEX1(3) <= hex1_seg(3);
    HEX1(4) <= hex1_seg(4);
    HEX1(5) <= hex1_seg(5);
    HEX1(6) <= hex1_seg(6);
    HEX1(7) <= '1';

    HEX2(0) <= hex2_seg(0);
    HEX2(1) <= hex2_seg(1);
    HEX2(2) <= hex2_seg(2);
    HEX2(3) <= hex2_seg(3);
    HEX2(4) <= hex2_seg(4);
    HEX2(5) <= hex2_seg(5);
    HEX2(6) <= hex2_seg(6);
    HEX2(7) <= '1';

    HEX3(0) <= hex3_seg(0);
    HEX3(1) <= hex3_seg(1);
    HEX3(2) <= hex3_seg(2);
    HEX3(3) <= hex3_seg(3);
    HEX3(4) <= hex3_seg(4);
    HEX3(5) <= hex3_seg(5);
    HEX3(6) <= hex3_seg(6);
    HEX3(7) <= '1';

    LEDG <= sig_ledg;

end a;