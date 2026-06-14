-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/14/2026 18:15:43"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Flak_VHDL IS
    PORT (
	CLOCK_50 : IN std_logic;
	PS2_KBCLK : IN std_logic;
	PS2_KBDAT : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 0);
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Flak_VHDL;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[8]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[9]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_KBCLK	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_KBDAT	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Flak_VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_PS2_KBCLK : std_logic;
SIGNAL ww_PS2_KBDAT : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL \render|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \render|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \render|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \render|Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \render|Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \render|Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \game_control|u_ps2|debounce_ps2_clk|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_60hz|twoHZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \render|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDG[9]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div_60hz|Add0~0_combout\ : std_logic;
SIGNAL \clk_div_60hz|div_cnt~0_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~1\ : std_logic;
SIGNAL \clk_div_60hz|Add0~2_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~3\ : std_logic;
SIGNAL \clk_div_60hz|Add0~4_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~5\ : std_logic;
SIGNAL \clk_div_60hz|Add0~6_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~7\ : std_logic;
SIGNAL \clk_div_60hz|Add0~8_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~9\ : std_logic;
SIGNAL \clk_div_60hz|Add0~10_combout\ : std_logic;
SIGNAL \clk_div_60hz|Equal0~6_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~11\ : std_logic;
SIGNAL \clk_div_60hz|Add0~12_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~13\ : std_logic;
SIGNAL \clk_div_60hz|Add0~14_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~15\ : std_logic;
SIGNAL \clk_div_60hz|Add0~16_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~17\ : std_logic;
SIGNAL \clk_div_60hz|Add0~18_combout\ : std_logic;
SIGNAL \clk_div_60hz|Equal0~5_combout\ : std_logic;
SIGNAL \clk_div_60hz|Equal0~7_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~19\ : std_logic;
SIGNAL \clk_div_60hz|Add0~20_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~21\ : std_logic;
SIGNAL \clk_div_60hz|Add0~22_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~23\ : std_logic;
SIGNAL \clk_div_60hz|Add0~24_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~25\ : std_logic;
SIGNAL \clk_div_60hz|Add0~26_combout\ : std_logic;
SIGNAL \clk_div_60hz|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~27\ : std_logic;
SIGNAL \clk_div_60hz|Add0~28_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~29\ : std_logic;
SIGNAL \clk_div_60hz|Add0~30_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~31\ : std_logic;
SIGNAL \clk_div_60hz|Add0~32_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~33\ : std_logic;
SIGNAL \clk_div_60hz|Add0~34_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~35\ : std_logic;
SIGNAL \clk_div_60hz|Add0~36_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~37\ : std_logic;
SIGNAL \clk_div_60hz|Add0~38_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~39\ : std_logic;
SIGNAL \clk_div_60hz|Add0~40_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~41\ : std_logic;
SIGNAL \clk_div_60hz|Add0~42_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~43\ : std_logic;
SIGNAL \clk_div_60hz|Add0~44_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~45\ : std_logic;
SIGNAL \clk_div_60hz|Add0~46_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~47\ : std_logic;
SIGNAL \clk_div_60hz|Add0~48_combout\ : std_logic;
SIGNAL \clk_div_60hz|Add0~49\ : std_logic;
SIGNAL \clk_div_60hz|Add0~50_combout\ : std_logic;
SIGNAL \clk_div_60hz|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div_60hz|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div_60hz|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div_60hz|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div_60hz|Equal0~8_combout\ : std_logic;
SIGNAL \clk_div_60hz|twoHZ~0_combout\ : std_logic;
SIGNAL \clk_div_60hz|twoHZ~q\ : std_logic;
SIGNAL \clk_div_60hz|twoHZ~clkctrl_outclk\ : std_logic;
SIGNAL \u_VGA_sync|Add1~0_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add1~1\ : std_logic;
SIGNAL \u_VGA_sync|Add1~2_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add1~3\ : std_logic;
SIGNAL \u_VGA_sync|Add1~4_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add1~5\ : std_logic;
SIGNAL \u_VGA_sync|Add1~6_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add1~7\ : std_logic;
SIGNAL \u_VGA_sync|Add1~8_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add1~9\ : std_logic;
SIGNAL \u_VGA_sync|Add1~10_combout\ : std_logic;
SIGNAL \u_VGA_sync|h_count~1_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add1~11\ : std_logic;
SIGNAL \u_VGA_sync|Add1~12_combout\ : std_logic;
SIGNAL \u_VGA_sync|Equal0~0_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add1~13\ : std_logic;
SIGNAL \u_VGA_sync|Add1~14_combout\ : std_logic;
SIGNAL \u_VGA_sync|Equal0~1_combout\ : std_logic;
SIGNAL \u_VGA_sync|Equal0~2_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add1~15\ : std_logic;
SIGNAL \u_VGA_sync|Add1~16_combout\ : std_logic;
SIGNAL \u_VGA_sync|h_count~0_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add1~17\ : std_logic;
SIGNAL \u_VGA_sync|Add1~18_combout\ : std_logic;
SIGNAL \u_VGA_sync|h_count~2_combout\ : std_logic;
SIGNAL \u_VGA_sync|process_1~0_combout\ : std_logic;
SIGNAL \u_VGA_sync|process_1~1_combout\ : std_logic;
SIGNAL \u_VGA_sync|process_1~2_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~0_combout\ : std_logic;
SIGNAL \u_VGA_sync|v_count~3_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~1\ : std_logic;
SIGNAL \u_VGA_sync|Add0~2_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~3\ : std_logic;
SIGNAL \u_VGA_sync|Add0~4_combout\ : std_logic;
SIGNAL \u_VGA_sync|v_count~2_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~17\ : std_logic;
SIGNAL \u_VGA_sync|Add0~18_combout\ : std_logic;
SIGNAL \u_VGA_sync|v_count~0_combout\ : std_logic;
SIGNAL \u_VGA_sync|Equal1~1_combout\ : std_logic;
SIGNAL \u_VGA_sync|Equal1~0_combout\ : std_logic;
SIGNAL \u_VGA_sync|Equal1~2_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~5\ : std_logic;
SIGNAL \u_VGA_sync|Add0~6_combout\ : std_logic;
SIGNAL \u_VGA_sync|v_count~1_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~7\ : std_logic;
SIGNAL \u_VGA_sync|Add0~8_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~9\ : std_logic;
SIGNAL \u_VGA_sync|Add0~10_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~11\ : std_logic;
SIGNAL \u_VGA_sync|Add0~12_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~13\ : std_logic;
SIGNAL \u_VGA_sync|Add0~14_combout\ : std_logic;
SIGNAL \u_VGA_sync|v_count[7]~feeder_combout\ : std_logic;
SIGNAL \u_VGA_sync|Add0~15\ : std_logic;
SIGNAL \u_VGA_sync|Add0~16_combout\ : std_logic;
SIGNAL \u_VGA_sync|LessThan5~0_combout\ : std_logic;
SIGNAL \u_VGA_sync|process_2~0_combout\ : std_logic;
SIGNAL \u_VGA_sync|process_2~1_combout\ : std_logic;
SIGNAL \u_VGA_sync|video_on~0_combout\ : std_logic;
SIGNAL \render|LessThan3~0_combout\ : std_logic;
SIGNAL \game_control|planex_int[0]~2_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~0_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~1\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~2_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~10_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Equal0~7_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~3\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~4_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~5\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~6_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~9_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~7\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~8_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~8_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~9\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~10_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Equal0~6_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~11\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~12_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~13\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~14_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~7_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~15\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~16_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~6_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~17\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~18_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~5_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Equal0~5_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~19\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~20_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~21\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~22_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~4_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~23\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~24_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~3_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~25\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~26_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Equal0~3_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~27\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~28_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~2_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~29\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~30_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~31\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~32_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~33\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~34_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~1_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~35\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~36_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|div_cnt~0_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~37\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~38_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~39\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~40_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~41\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~42_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Equal0~1_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~43\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~44_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~45\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~46_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~47\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~48_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~49\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Add0~50_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Equal0~0_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Equal0~2_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Equal0~4_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|Equal0~8_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|twoHZ~0_combout\ : std_logic;
SIGNAL \game_control|clk_div_60hz|twoHZ~q\ : std_logic;
SIGNAL \game_control|Add2~1_cout\ : std_logic;
SIGNAL \game_control|Add2~2_combout\ : std_logic;
SIGNAL \game_control|Add2~3\ : std_logic;
SIGNAL \game_control|Add2~4_combout\ : std_logic;
SIGNAL \game_control|Add2~5\ : std_logic;
SIGNAL \game_control|Add2~6_combout\ : std_logic;
SIGNAL \game_control|Add2~7\ : std_logic;
SIGNAL \game_control|Add2~8_combout\ : std_logic;
SIGNAL \game_control|Add2~9\ : std_logic;
SIGNAL \game_control|Add2~10_combout\ : std_logic;
SIGNAL \game_control|Add2~11\ : std_logic;
SIGNAL \game_control|Add2~12_combout\ : std_logic;
SIGNAL \game_control|Add2~13\ : std_logic;
SIGNAL \game_control|Add2~14_combout\ : std_logic;
SIGNAL \game_control|planex_int[7]~1_combout\ : std_logic;
SIGNAL \game_control|Add2~15\ : std_logic;
SIGNAL \game_control|Add2~16_combout\ : std_logic;
SIGNAL \game_control|Add2~17\ : std_logic;
SIGNAL \game_control|Add2~18_combout\ : std_logic;
SIGNAL \game_control|planex_int[9]~0_combout\ : std_logic;
SIGNAL \game_control|Add2~19\ : std_logic;
SIGNAL \game_control|Add2~20_combout\ : std_logic;
SIGNAL \game_control|Add2~21\ : std_logic;
SIGNAL \game_control|Add2~22_combout\ : std_logic;
SIGNAL \game_control|Add2~23\ : std_logic;
SIGNAL \game_control|Add2~24_combout\ : std_logic;
SIGNAL \game_control|Add2~25\ : std_logic;
SIGNAL \game_control|Add2~26_combout\ : std_logic;
SIGNAL \game_control|Add2~27\ : std_logic;
SIGNAL \game_control|Add2~28_combout\ : std_logic;
SIGNAL \game_control|Add2~29\ : std_logic;
SIGNAL \game_control|Add2~30_combout\ : std_logic;
SIGNAL \game_control|Add2~31\ : std_logic;
SIGNAL \game_control|Add2~32_combout\ : std_logic;
SIGNAL \game_control|Add2~33\ : std_logic;
SIGNAL \game_control|Add2~34_combout\ : std_logic;
SIGNAL \game_control|Add2~35\ : std_logic;
SIGNAL \game_control|Add2~36_combout\ : std_logic;
SIGNAL \game_control|Add2~37\ : std_logic;
SIGNAL \game_control|Add2~38_combout\ : std_logic;
SIGNAL \game_control|Add2~39\ : std_logic;
SIGNAL \game_control|Add2~40_combout\ : std_logic;
SIGNAL \game_control|Add2~41\ : std_logic;
SIGNAL \game_control|Add2~42_combout\ : std_logic;
SIGNAL \game_control|Add2~43\ : std_logic;
SIGNAL \game_control|Add2~44_combout\ : std_logic;
SIGNAL \game_control|Add2~45\ : std_logic;
SIGNAL \game_control|Add2~46_combout\ : std_logic;
SIGNAL \game_control|Add2~47\ : std_logic;
SIGNAL \game_control|Add2~48_combout\ : std_logic;
SIGNAL \game_control|Add2~49\ : std_logic;
SIGNAL \game_control|Add2~50_combout\ : std_logic;
SIGNAL \game_control|Add2~51\ : std_logic;
SIGNAL \game_control|Add2~52_combout\ : std_logic;
SIGNAL \game_control|Add2~53\ : std_logic;
SIGNAL \game_control|Add2~54_combout\ : std_logic;
SIGNAL \game_control|Add2~55\ : std_logic;
SIGNAL \game_control|Add2~56_combout\ : std_logic;
SIGNAL \game_control|Add2~57\ : std_logic;
SIGNAL \game_control|Add2~58_combout\ : std_logic;
SIGNAL \game_control|Add2~59\ : std_logic;
SIGNAL \game_control|Add2~60_combout\ : std_logic;
SIGNAL \game_control|Add2~61\ : std_logic;
SIGNAL \game_control|Add2~62_combout\ : std_logic;
SIGNAL \render|Add0~1\ : std_logic;
SIGNAL \render|Add0~3\ : std_logic;
SIGNAL \render|Add0~5\ : std_logic;
SIGNAL \render|Add0~7\ : std_logic;
SIGNAL \render|Add0~9\ : std_logic;
SIGNAL \render|Add0~11\ : std_logic;
SIGNAL \render|Add0~13\ : std_logic;
SIGNAL \render|Add0~15\ : std_logic;
SIGNAL \render|Add0~17\ : std_logic;
SIGNAL \render|Add0~19\ : std_logic;
SIGNAL \render|Add0~21\ : std_logic;
SIGNAL \render|Add0~23\ : std_logic;
SIGNAL \render|Add0~25\ : std_logic;
SIGNAL \render|Add0~27\ : std_logic;
SIGNAL \render|Add0~29\ : std_logic;
SIGNAL \render|Add0~31\ : std_logic;
SIGNAL \render|Add0~33\ : std_logic;
SIGNAL \render|Add0~35\ : std_logic;
SIGNAL \render|Add0~37\ : std_logic;
SIGNAL \render|Add0~39\ : std_logic;
SIGNAL \render|Add0~41\ : std_logic;
SIGNAL \render|Add0~43\ : std_logic;
SIGNAL \render|Add0~45\ : std_logic;
SIGNAL \render|Add0~47\ : std_logic;
SIGNAL \render|Add0~48_combout\ : std_logic;
SIGNAL \render|is_plane~0_combout\ : std_logic;
SIGNAL \render|is_plane~1_combout\ : std_logic;
SIGNAL \render|is_plane~2_combout\ : std_logic;
SIGNAL \render|is_plane~5_combout\ : std_logic;
SIGNAL \render|is_plane~3_combout\ : std_logic;
SIGNAL \render|is_plane~4_combout\ : std_logic;
SIGNAL \render|is_plane~6_combout\ : std_logic;
SIGNAL \render|is_plane~7_combout\ : std_logic;
SIGNAL \render|LessThan0~1_cout\ : std_logic;
SIGNAL \render|LessThan0~3_cout\ : std_logic;
SIGNAL \render|LessThan0~5_cout\ : std_logic;
SIGNAL \render|LessThan0~7_cout\ : std_logic;
SIGNAL \render|LessThan0~9_cout\ : std_logic;
SIGNAL \render|LessThan0~11_cout\ : std_logic;
SIGNAL \render|LessThan0~13_cout\ : std_logic;
SIGNAL \render|LessThan0~15_cout\ : std_logic;
SIGNAL \render|LessThan0~17_cout\ : std_logic;
SIGNAL \render|LessThan0~18_combout\ : std_logic;
SIGNAL \render|is_plane~8_combout\ : std_logic;
SIGNAL \render|Add0~44_combout\ : std_logic;
SIGNAL \render|Add0~46_combout\ : std_logic;
SIGNAL \render|Add0~36_combout\ : std_logic;
SIGNAL \render|Add0~40_combout\ : std_logic;
SIGNAL \render|Add0~38_combout\ : std_logic;
SIGNAL \render|Add0~42_combout\ : std_logic;
SIGNAL \render|LessThan1~25_combout\ : std_logic;
SIGNAL \render|Add0~18_combout\ : std_logic;
SIGNAL \render|Add0~16_combout\ : std_logic;
SIGNAL \render|Add0~14_combout\ : std_logic;
SIGNAL \render|Add0~12_combout\ : std_logic;
SIGNAL \render|LessThan1~21_combout\ : std_logic;
SIGNAL \render|Add0~26_combout\ : std_logic;
SIGNAL \render|Add0~22_combout\ : std_logic;
SIGNAL \render|Add0~24_combout\ : std_logic;
SIGNAL \render|Add0~20_combout\ : std_logic;
SIGNAL \render|LessThan1~22_combout\ : std_logic;
SIGNAL \render|Add0~4_combout\ : std_logic;
SIGNAL \render|Add0~2_combout\ : std_logic;
SIGNAL \render|Add0~0_combout\ : std_logic;
SIGNAL \render|LessThan1~1_cout\ : std_logic;
SIGNAL \render|LessThan1~3_cout\ : std_logic;
SIGNAL \render|LessThan1~5_cout\ : std_logic;
SIGNAL \render|LessThan1~7_cout\ : std_logic;
SIGNAL \render|LessThan1~9_cout\ : std_logic;
SIGNAL \render|LessThan1~11_cout\ : std_logic;
SIGNAL \render|LessThan1~13_cout\ : std_logic;
SIGNAL \render|LessThan1~15_cout\ : std_logic;
SIGNAL \render|LessThan1~17_cout\ : std_logic;
SIGNAL \render|LessThan1~18_combout\ : std_logic;
SIGNAL \render|Add0~8_combout\ : std_logic;
SIGNAL \render|Add0~6_combout\ : std_logic;
SIGNAL \render|Add0~10_combout\ : std_logic;
SIGNAL \render|LessThan1~20_combout\ : std_logic;
SIGNAL \render|Add0~34_combout\ : std_logic;
SIGNAL \render|Add0~32_combout\ : std_logic;
SIGNAL \render|Add0~28_combout\ : std_logic;
SIGNAL \render|Add0~30_combout\ : std_logic;
SIGNAL \render|LessThan1~23_combout\ : std_logic;
SIGNAL \render|LessThan1~24_combout\ : std_logic;
SIGNAL \render|LessThan1~26_combout\ : std_logic;
SIGNAL \render|is_plane~9_combout\ : std_logic;
SIGNAL \render|VGA_R~14_combout\ : std_logic;
SIGNAL \render|Add10~1_cout\ : std_logic;
SIGNAL \render|Add10~3\ : std_logic;
SIGNAL \render|Add10~5\ : std_logic;
SIGNAL \render|Add10~6_combout\ : std_logic;
SIGNAL \render|Add10~4_combout\ : std_logic;
SIGNAL \render|Add10~7\ : std_logic;
SIGNAL \render|Add10~9_cout\ : std_logic;
SIGNAL \render|Add10~11_cout\ : std_logic;
SIGNAL \render|Add10~13_cout\ : std_logic;
SIGNAL \render|Add10~15_cout\ : std_logic;
SIGNAL \render|Add10~16_combout\ : std_logic;
SIGNAL \u_VGA_sync|Equal1~3_combout\ : std_logic;
SIGNAL \render|Add10~2_combout\ : std_logic;
SIGNAL \render|Add11~3_combout\ : std_logic;
SIGNAL \render|Add11~2_combout\ : std_logic;
SIGNAL \render|Mux26~6_combout\ : std_logic;
SIGNAL \render|Add11~4_combout\ : std_logic;
SIGNAL \render|Mux26~7_combout\ : std_logic;
SIGNAL \render|Add8~1\ : std_logic;
SIGNAL \render|Add8~3\ : std_logic;
SIGNAL \render|Add8~5\ : std_logic;
SIGNAL \render|Add8~7\ : std_logic;
SIGNAL \render|Add8~8_combout\ : std_logic;
SIGNAL \render|Add8~6_combout\ : std_logic;
SIGNAL \render|Add8~0_combout\ : std_logic;
SIGNAL \render|Add8~4_combout\ : std_logic;
SIGNAL \render|Add8~9\ : std_logic;
SIGNAL \render|Add8~11\ : std_logic;
SIGNAL \render|Add8~13_cout\ : std_logic;
SIGNAL \render|Add8~15_cout\ : std_logic;
SIGNAL \render|Add8~17_cout\ : std_logic;
SIGNAL \render|Add8~19_cout\ : std_logic;
SIGNAL \render|Add8~21_cout\ : std_logic;
SIGNAL \render|Add8~23_cout\ : std_logic;
SIGNAL \render|Add8~25_cout\ : std_logic;
SIGNAL \render|Add8~27_cout\ : std_logic;
SIGNAL \render|Add8~29_cout\ : std_logic;
SIGNAL \render|Add8~31_cout\ : std_logic;
SIGNAL \render|Add8~33_cout\ : std_logic;
SIGNAL \render|Add8~35_cout\ : std_logic;
SIGNAL \render|Add8~37_cout\ : std_logic;
SIGNAL \render|Add8~39_cout\ : std_logic;
SIGNAL \render|Add8~41_cout\ : std_logic;
SIGNAL \render|Add8~43_cout\ : std_logic;
SIGNAL \render|Add8~45_cout\ : std_logic;
SIGNAL \render|Add8~47_cout\ : std_logic;
SIGNAL \render|Add8~49_cout\ : std_logic;
SIGNAL \render|Add8~51_cout\ : std_logic;
SIGNAL \render|Add8~53_cout\ : std_logic;
SIGNAL \render|Add8~55_cout\ : std_logic;
SIGNAL \render|Add8~57_cout\ : std_logic;
SIGNAL \render|Add8~59_cout\ : std_logic;
SIGNAL \render|Add8~61_cout\ : std_logic;
SIGNAL \render|Add8~62_combout\ : std_logic;
SIGNAL \render|Add8~2_combout\ : std_logic;
SIGNAL \render|Add9~1_combout\ : std_logic;
SIGNAL \render|Add9~3_combout\ : std_logic;
SIGNAL \render|Add9~2_combout\ : std_logic;
SIGNAL \render|Add9~0_combout\ : std_logic;
SIGNAL \render|Add8~10_combout\ : std_logic;
SIGNAL \render|Add9~4_combout\ : std_logic;
SIGNAL \render|Mux24~0_combout\ : std_logic;
SIGNAL \render|Mux26~0_combout\ : std_logic;
SIGNAL \render|Mux26~3_combout\ : std_logic;
SIGNAL \render|Mux26~2_combout\ : std_logic;
SIGNAL \render|Mux26~4_combout\ : std_logic;
SIGNAL \render|Mux20~0_combout\ : std_logic;
SIGNAL \render|Mux26~5_combout\ : std_logic;
SIGNAL \render|Mux23~0_combout\ : std_logic;
SIGNAL \render|Mux26~1_combout\ : std_logic;
SIGNAL \render|Mux26~8_combout\ : std_logic;
SIGNAL \render|VGA_R~13_combout\ : std_logic;
SIGNAL \render|Add4~0_combout\ : std_logic;
SIGNAL \render|Add4~1\ : std_logic;
SIGNAL \render|Add4~3\ : std_logic;
SIGNAL \render|Add4~5\ : std_logic;
SIGNAL \render|Add4~7\ : std_logic;
SIGNAL \render|Add4~9\ : std_logic;
SIGNAL \render|Add4~11\ : std_logic;
SIGNAL \render|Add4~13\ : std_logic;
SIGNAL \render|Add4~15\ : std_logic;
SIGNAL \render|Add4~16_combout\ : std_logic;
SIGNAL \render|Add5~1_cout\ : std_logic;
SIGNAL \render|Add5~2_combout\ : std_logic;
SIGNAL \render|Add4~2_combout\ : std_logic;
SIGNAL \render|Add5~3\ : std_logic;
SIGNAL \render|Add5~4_combout\ : std_logic;
SIGNAL \render|Add4~4_combout\ : std_logic;
SIGNAL \render|Add5~5\ : std_logic;
SIGNAL \render|Add5~6_combout\ : std_logic;
SIGNAL \render|Add4~6_combout\ : std_logic;
SIGNAL \render|Add5~7\ : std_logic;
SIGNAL \render|Add5~8_combout\ : std_logic;
SIGNAL \render|Add4~8_combout\ : std_logic;
SIGNAL \render|Add5~9\ : std_logic;
SIGNAL \render|Add5~10_combout\ : std_logic;
SIGNAL \render|Add4~10_combout\ : std_logic;
SIGNAL \render|Add5~11\ : std_logic;
SIGNAL \render|Add5~12_combout\ : std_logic;
SIGNAL \render|Add4~12_combout\ : std_logic;
SIGNAL \render|Add5~13\ : std_logic;
SIGNAL \render|Add5~14_combout\ : std_logic;
SIGNAL \render|Add4~14_combout\ : std_logic;
SIGNAL \render|Add5~15\ : std_logic;
SIGNAL \render|Add5~16_combout\ : std_logic;
SIGNAL \render|Add5~17\ : std_logic;
SIGNAL \render|Add5~18_combout\ : std_logic;
SIGNAL \render|Add5~19\ : std_logic;
SIGNAL \render|Add5~20_combout\ : std_logic;
SIGNAL \PS2_KBCLK~input_o\ : std_logic;
SIGNAL \game_control|u_ps2|sync_ffs[0]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|result~1_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~0_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~9_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~1\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~2_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out[1]~8_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~3\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~4_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out[2]~7_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~5\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~6_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out[3]~6_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~7\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~8_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out[4]~5_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~9\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~10_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out[5]~4_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~11\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~12_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out[6]~3_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~13\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~14_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out[7]~2_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~15\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|Add0~16_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out~0_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|result~0_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|result~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|result~q\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|result~clkctrl_outclk\ : std_logic;
SIGNAL \PS2_KBDAT~input_o\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|result~1_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~0_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out[0]~9_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~1\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~2_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out[1]~8_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~3\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~4_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out[2]~7_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~5\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~6_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out[3]~6_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~7\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~8_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out[4]~5_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~9\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~10_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out[5]~4_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~11\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~12_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out[6]~3_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~13\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~14_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out[7]~2_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~15\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|Add0~16_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out~0_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|result~0_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|result~q\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[10]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[9]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[8]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[7]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[6]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[5]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[4]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[3]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_code[2]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[0]~12_combout\ : std_logic;
SIGNAL \game_control|u_ps2|Equal0~1_combout\ : std_logic;
SIGNAL \game_control|u_ps2|Equal0~0_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[9]~14_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[0]~13\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[1]~15_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[1]~16\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[2]~17_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[2]~18\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[3]~19_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[3]~20\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[4]~21_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[4]~22\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[5]~23_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[5]~24\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[6]~25_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[6]~26\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[7]~27_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[7]~28\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[8]~29_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[8]~30\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[9]~31_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[9]~32\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[10]~33_combout\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[10]~34\ : std_logic;
SIGNAL \game_control|u_ps2|count_idle[11]~35_combout\ : std_logic;
SIGNAL \game_control|u_ps2|Equal0~2_combout\ : std_logic;
SIGNAL \game_control|u_ps2|error~1_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[2]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_word[1]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|process_2~0_combout\ : std_logic;
SIGNAL \game_control|u_ps2|error~0_combout\ : std_logic;
SIGNAL \game_control|u_ps2|process_2~1_combout\ : std_logic;
SIGNAL \game_control|u_ps2|process_2~2_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_code_new~q\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_code[7]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_code[4]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_code[3]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_code[6]~feeder_combout\ : std_logic;
SIGNAL \game_control|u_ps2|ps2_code[5]~feeder_combout\ : std_logic;
SIGNAL \game_control|Equal0~0_combout\ : std_logic;
SIGNAL \game_control|Equal0~1_combout\ : std_logic;
SIGNAL \game_control|is_e0~0_combout\ : std_logic;
SIGNAL \game_control|is_e0~q\ : std_logic;
SIGNAL \game_control|is_break~0_combout\ : std_logic;
SIGNAL \game_control|is_break~q\ : std_logic;
SIGNAL \game_control|turret_angle_int[6]~0_combout\ : std_logic;
SIGNAL \game_control|turret_angle_int[6]~1_combout\ : std_logic;
SIGNAL \game_control|turret_angle_int[6]~2_combout\ : std_logic;
SIGNAL \game_control|turret_angle_int[0]~4_combout\ : std_logic;
SIGNAL \game_control|Mux31~0_combout\ : std_logic;
SIGNAL \game_control|turret_angle_int[0]~5_combout\ : std_logic;
SIGNAL \game_control|Add1~0_combout\ : std_logic;
SIGNAL \game_control|Add0~0_combout\ : std_logic;
SIGNAL \game_control|Mux30~2_combout\ : std_logic;
SIGNAL \game_control|Mux30~3_combout\ : std_logic;
SIGNAL \game_control|turret_angle_int[6]~3_combout\ : std_logic;
SIGNAL \game_control|Add1~1\ : std_logic;
SIGNAL \game_control|Add1~2_combout\ : std_logic;
SIGNAL \game_control|Add0~1\ : std_logic;
SIGNAL \game_control|Add0~2_combout\ : std_logic;
SIGNAL \game_control|Mux29~0_combout\ : std_logic;
SIGNAL \render|Mux0~4_combout\ : std_logic;
SIGNAL \game_control|LessThan0~0_combout\ : std_logic;
SIGNAL \game_control|Mux0~3_combout\ : std_logic;
SIGNAL \game_control|Add1~11\ : std_logic;
SIGNAL \game_control|Add1~12_combout\ : std_logic;
SIGNAL \game_control|Add0~9\ : std_logic;
SIGNAL \game_control|Add0~11\ : std_logic;
SIGNAL \game_control|Add0~12_combout\ : std_logic;
SIGNAL \game_control|Mux24~2_combout\ : std_logic;
SIGNAL \game_control|Mux24~3_combout\ : std_logic;
SIGNAL \game_control|Add0~13\ : std_logic;
SIGNAL \game_control|Add0~14_combout\ : std_logic;
SIGNAL \game_control|Add1~13\ : std_logic;
SIGNAL \game_control|Add1~14_combout\ : std_logic;
SIGNAL \game_control|Mux23~2_combout\ : std_logic;
SIGNAL \game_control|Mux23~3_combout\ : std_logic;
SIGNAL \game_control|Add1~15\ : std_logic;
SIGNAL \game_control|Add1~16_combout\ : std_logic;
SIGNAL \game_control|Add0~15\ : std_logic;
SIGNAL \game_control|Add0~16_combout\ : std_logic;
SIGNAL \game_control|Mux22~2_combout\ : std_logic;
SIGNAL \game_control|Mux22~3_combout\ : std_logic;
SIGNAL \game_control|Add0~17\ : std_logic;
SIGNAL \game_control|Add0~18_combout\ : std_logic;
SIGNAL \game_control|Add1~17\ : std_logic;
SIGNAL \game_control|Add1~18_combout\ : std_logic;
SIGNAL \game_control|Mux21~2_combout\ : std_logic;
SIGNAL \game_control|Mux21~3_combout\ : std_logic;
SIGNAL \game_control|Add1~19\ : std_logic;
SIGNAL \game_control|Add1~20_combout\ : std_logic;
SIGNAL \game_control|Add0~19\ : std_logic;
SIGNAL \game_control|Add0~20_combout\ : std_logic;
SIGNAL \game_control|Mux20~2_combout\ : std_logic;
SIGNAL \game_control|Mux20~3_combout\ : std_logic;
SIGNAL \game_control|Add0~21\ : std_logic;
SIGNAL \game_control|Add0~22_combout\ : std_logic;
SIGNAL \game_control|Add1~21\ : std_logic;
SIGNAL \game_control|Add1~22_combout\ : std_logic;
SIGNAL \game_control|Mux19~2_combout\ : std_logic;
SIGNAL \game_control|Mux19~3_combout\ : std_logic;
SIGNAL \game_control|Add0~23\ : std_logic;
SIGNAL \game_control|Add0~24_combout\ : std_logic;
SIGNAL \game_control|Add1~23\ : std_logic;
SIGNAL \game_control|Add1~24_combout\ : std_logic;
SIGNAL \game_control|Mux18~2_combout\ : std_logic;
SIGNAL \game_control|Mux18~3_combout\ : std_logic;
SIGNAL \game_control|Add0~25\ : std_logic;
SIGNAL \game_control|Add0~26_combout\ : std_logic;
SIGNAL \game_control|Add1~25\ : std_logic;
SIGNAL \game_control|Add1~26_combout\ : std_logic;
SIGNAL \game_control|Mux17~2_combout\ : std_logic;
SIGNAL \game_control|Mux17~3_combout\ : std_logic;
SIGNAL \game_control|Add0~27\ : std_logic;
SIGNAL \game_control|Add0~28_combout\ : std_logic;
SIGNAL \game_control|Add1~27\ : std_logic;
SIGNAL \game_control|Add1~28_combout\ : std_logic;
SIGNAL \game_control|Mux16~2_combout\ : std_logic;
SIGNAL \game_control|Mux16~3_combout\ : std_logic;
SIGNAL \game_control|Add1~29\ : std_logic;
SIGNAL \game_control|Add1~30_combout\ : std_logic;
SIGNAL \game_control|Add0~29\ : std_logic;
SIGNAL \game_control|Add0~30_combout\ : std_logic;
SIGNAL \game_control|Mux15~2_combout\ : std_logic;
SIGNAL \game_control|Mux15~3_combout\ : std_logic;
SIGNAL \game_control|Add0~31\ : std_logic;
SIGNAL \game_control|Add0~32_combout\ : std_logic;
SIGNAL \game_control|Add1~31\ : std_logic;
SIGNAL \game_control|Add1~32_combout\ : std_logic;
SIGNAL \game_control|Mux14~2_combout\ : std_logic;
SIGNAL \game_control|Mux14~3_combout\ : std_logic;
SIGNAL \game_control|Add1~33\ : std_logic;
SIGNAL \game_control|Add1~34_combout\ : std_logic;
SIGNAL \game_control|Add0~33\ : std_logic;
SIGNAL \game_control|Add0~34_combout\ : std_logic;
SIGNAL \game_control|Mux13~2_combout\ : std_logic;
SIGNAL \game_control|Mux13~3_combout\ : std_logic;
SIGNAL \game_control|Add0~35\ : std_logic;
SIGNAL \game_control|Add0~36_combout\ : std_logic;
SIGNAL \game_control|Add1~35\ : std_logic;
SIGNAL \game_control|Add1~36_combout\ : std_logic;
SIGNAL \game_control|Mux12~2_combout\ : std_logic;
SIGNAL \game_control|Mux12~3_combout\ : std_logic;
SIGNAL \game_control|Add0~37\ : std_logic;
SIGNAL \game_control|Add0~38_combout\ : std_logic;
SIGNAL \game_control|Add1~37\ : std_logic;
SIGNAL \game_control|Add1~38_combout\ : std_logic;
SIGNAL \game_control|Mux11~2_combout\ : std_logic;
SIGNAL \game_control|Mux11~3_combout\ : std_logic;
SIGNAL \game_control|Add0~39\ : std_logic;
SIGNAL \game_control|Add0~40_combout\ : std_logic;
SIGNAL \game_control|Add1~39\ : std_logic;
SIGNAL \game_control|Add1~40_combout\ : std_logic;
SIGNAL \game_control|Mux10~2_combout\ : std_logic;
SIGNAL \game_control|Mux10~3_combout\ : std_logic;
SIGNAL \game_control|Add0~41\ : std_logic;
SIGNAL \game_control|Add0~42_combout\ : std_logic;
SIGNAL \game_control|Add1~41\ : std_logic;
SIGNAL \game_control|Add1~42_combout\ : std_logic;
SIGNAL \game_control|Mux9~2_combout\ : std_logic;
SIGNAL \game_control|Mux9~3_combout\ : std_logic;
SIGNAL \game_control|Add1~43\ : std_logic;
SIGNAL \game_control|Add1~44_combout\ : std_logic;
SIGNAL \game_control|Add0~43\ : std_logic;
SIGNAL \game_control|Add0~44_combout\ : std_logic;
SIGNAL \game_control|Mux8~2_combout\ : std_logic;
SIGNAL \game_control|Mux8~3_combout\ : std_logic;
SIGNAL \game_control|Add1~45\ : std_logic;
SIGNAL \game_control|Add1~46_combout\ : std_logic;
SIGNAL \game_control|Add0~45\ : std_logic;
SIGNAL \game_control|Add0~46_combout\ : std_logic;
SIGNAL \game_control|Mux7~2_combout\ : std_logic;
SIGNAL \game_control|Mux7~3_combout\ : std_logic;
SIGNAL \game_control|Add1~47\ : std_logic;
SIGNAL \game_control|Add1~48_combout\ : std_logic;
SIGNAL \game_control|Add0~47\ : std_logic;
SIGNAL \game_control|Add0~48_combout\ : std_logic;
SIGNAL \game_control|Mux6~2_combout\ : std_logic;
SIGNAL \game_control|Mux6~3_combout\ : std_logic;
SIGNAL \game_control|Add0~49\ : std_logic;
SIGNAL \game_control|Add0~50_combout\ : std_logic;
SIGNAL \game_control|Add1~49\ : std_logic;
SIGNAL \game_control|Add1~50_combout\ : std_logic;
SIGNAL \game_control|Mux5~2_combout\ : std_logic;
SIGNAL \game_control|Mux5~3_combout\ : std_logic;
SIGNAL \game_control|Add0~51\ : std_logic;
SIGNAL \game_control|Add0~52_combout\ : std_logic;
SIGNAL \game_control|Add1~51\ : std_logic;
SIGNAL \game_control|Add1~52_combout\ : std_logic;
SIGNAL \game_control|Mux4~2_combout\ : std_logic;
SIGNAL \game_control|Mux4~3_combout\ : std_logic;
SIGNAL \game_control|Add0~53\ : std_logic;
SIGNAL \game_control|Add0~54_combout\ : std_logic;
SIGNAL \game_control|Add1~53\ : std_logic;
SIGNAL \game_control|Add1~54_combout\ : std_logic;
SIGNAL \game_control|Mux3~2_combout\ : std_logic;
SIGNAL \game_control|Mux3~3_combout\ : std_logic;
SIGNAL \game_control|Add1~55\ : std_logic;
SIGNAL \game_control|Add1~56_combout\ : std_logic;
SIGNAL \game_control|Add0~55\ : std_logic;
SIGNAL \game_control|Add0~56_combout\ : std_logic;
SIGNAL \game_control|Mux2~2_combout\ : std_logic;
SIGNAL \game_control|Mux2~3_combout\ : std_logic;
SIGNAL \game_control|Add1~57\ : std_logic;
SIGNAL \game_control|Add1~58_combout\ : std_logic;
SIGNAL \game_control|Add0~57\ : std_logic;
SIGNAL \game_control|Add0~58_combout\ : std_logic;
SIGNAL \game_control|Mux1~2_combout\ : std_logic;
SIGNAL \game_control|Add0~59\ : std_logic;
SIGNAL \game_control|Add0~60_combout\ : std_logic;
SIGNAL \game_control|Add1~59\ : std_logic;
SIGNAL \game_control|Add1~60_combout\ : std_logic;
SIGNAL \game_control|Mux0~2_combout\ : std_logic;
SIGNAL \game_control|LessThan1~5_combout\ : std_logic;
SIGNAL \game_control|LessThan1~6_combout\ : std_logic;
SIGNAL \game_control|LessThan1~1_combout\ : std_logic;
SIGNAL \game_control|LessThan1~2_combout\ : std_logic;
SIGNAL \game_control|LessThan1~3_combout\ : std_logic;
SIGNAL \game_control|LessThan1~0_combout\ : std_logic;
SIGNAL \game_control|LessThan1~4_combout\ : std_logic;
SIGNAL \game_control|LessThan1~7_combout\ : std_logic;
SIGNAL \game_control|LessThan0~1_combout\ : std_logic;
SIGNAL \game_control|Add0~3\ : std_logic;
SIGNAL \game_control|Add0~4_combout\ : std_logic;
SIGNAL \game_control|Add1~3\ : std_logic;
SIGNAL \game_control|Add1~4_combout\ : std_logic;
SIGNAL \game_control|Mux28~0_combout\ : std_logic;
SIGNAL \game_control|Mux28~1_combout\ : std_logic;
SIGNAL \game_control|Add0~5\ : std_logic;
SIGNAL \game_control|Add0~7\ : std_logic;
SIGNAL \game_control|Add0~8_combout\ : std_logic;
SIGNAL \game_control|Add1~5\ : std_logic;
SIGNAL \game_control|Add1~7\ : std_logic;
SIGNAL \game_control|Add1~8_combout\ : std_logic;
SIGNAL \game_control|Mux26~0_combout\ : std_logic;
SIGNAL \game_control|Add1~9\ : std_logic;
SIGNAL \game_control|Add1~10_combout\ : std_logic;
SIGNAL \game_control|Add0~10_combout\ : std_logic;
SIGNAL \game_control|Mux25~2_combout\ : std_logic;
SIGNAL \game_control|Mux25~3_combout\ : std_logic;
SIGNAL \game_control|LessThan1~8_combout\ : std_logic;
SIGNAL \render|Mux0~5_combout\ : std_logic;
SIGNAL \game_control|LessThan1~9_combout\ : std_logic;
SIGNAL \game_control|Add1~6_combout\ : std_logic;
SIGNAL \game_control|Add0~6_combout\ : std_logic;
SIGNAL \game_control|Mux27~2_combout\ : std_logic;
SIGNAL \game_control|Mux27~3_combout\ : std_logic;
SIGNAL \render|Mux8~0_combout\ : std_logic;
SIGNAL \render|Mux8~1_combout\ : std_logic;
SIGNAL \render|Mux7~0_combout\ : std_logic;
SIGNAL \render|Mux7~1_combout\ : std_logic;
SIGNAL \render|Mux6~0_combout\ : std_logic;
SIGNAL \render|Mux6~1_combout\ : std_logic;
SIGNAL \render|Mux6~2_combout\ : std_logic;
SIGNAL \render|Mux6~3_combout\ : std_logic;
SIGNAL \render|Mux5~0_combout\ : std_logic;
SIGNAL \render|Mux5~1_combout\ : std_logic;
SIGNAL \render|Mux6~4_combout\ : std_logic;
SIGNAL \render|Mux5~2_combout\ : std_logic;
SIGNAL \render|Mux4~2_combout\ : std_logic;
SIGNAL \render|Mux4~0_combout\ : std_logic;
SIGNAL \render|Mux4~1_combout\ : std_logic;
SIGNAL \render|Mux4~3_combout\ : std_logic;
SIGNAL \render|Mux3~1_combout\ : std_logic;
SIGNAL \render|Mux3~0_combout\ : std_logic;
SIGNAL \render|Mux13~0_combout\ : std_logic;
SIGNAL \render|Mux3~2_combout\ : std_logic;
SIGNAL \render|Mux2~3_combout\ : std_logic;
SIGNAL \render|Mux17~0_combout\ : std_logic;
SIGNAL \render|Mux2~4_combout\ : std_logic;
SIGNAL \render|Mux2~2_combout\ : std_logic;
SIGNAL \render|Mux2~6_combout\ : std_logic;
SIGNAL \render|Mux2~5_combout\ : std_logic;
SIGNAL \render|Mux1~1_combout\ : std_logic;
SIGNAL \render|Mux1~0_combout\ : std_logic;
SIGNAL \render|Mux0~6_combout\ : std_logic;
SIGNAL \render|Mux1~2_combout\ : std_logic;
SIGNAL \render|Mux0~7_combout\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \render|Add2~1_cout\ : std_logic;
SIGNAL \render|Add2~2_combout\ : std_logic;
SIGNAL \render|WideOr3~combout\ : std_logic;
SIGNAL \render|Add2~3\ : std_logic;
SIGNAL \render|Add2~5\ : std_logic;
SIGNAL \render|Add2~7\ : std_logic;
SIGNAL \render|Add2~9\ : std_logic;
SIGNAL \render|Add2~11\ : std_logic;
SIGNAL \render|Add2~13\ : std_logic;
SIGNAL \render|Add2~15\ : std_logic;
SIGNAL \render|Add2~17\ : std_logic;
SIGNAL \render|Add2~18_combout\ : std_logic;
SIGNAL \render|Add3~1_cout\ : std_logic;
SIGNAL \render|Add3~2_combout\ : std_logic;
SIGNAL \render|Add2~4_combout\ : std_logic;
SIGNAL \render|Add3~3\ : std_logic;
SIGNAL \render|Add3~4_combout\ : std_logic;
SIGNAL \render|Add2~6_combout\ : std_logic;
SIGNAL \render|Add3~5\ : std_logic;
SIGNAL \render|Add3~6_combout\ : std_logic;
SIGNAL \render|Add2~8_combout\ : std_logic;
SIGNAL \render|Add3~7\ : std_logic;
SIGNAL \render|Add3~8_combout\ : std_logic;
SIGNAL \render|Add2~10_combout\ : std_logic;
SIGNAL \render|Add3~9\ : std_logic;
SIGNAL \render|Add3~10_combout\ : std_logic;
SIGNAL \render|Add2~12_combout\ : std_logic;
SIGNAL \render|Add3~11\ : std_logic;
SIGNAL \render|Add3~12_combout\ : std_logic;
SIGNAL \render|Add2~14_combout\ : std_logic;
SIGNAL \render|Add3~13\ : std_logic;
SIGNAL \render|Add3~14_combout\ : std_logic;
SIGNAL \render|Add2~16_combout\ : std_logic;
SIGNAL \render|Add3~15\ : std_logic;
SIGNAL \render|Add3~16_combout\ : std_logic;
SIGNAL \render|Add3~17\ : std_logic;
SIGNAL \render|Add3~18_combout\ : std_logic;
SIGNAL \render|Add3~19\ : std_logic;
SIGNAL \render|Add3~20_combout\ : std_logic;
SIGNAL \render|Mux17~2_combout\ : std_logic;
SIGNAL \render|Mux17~1_combout\ : std_logic;
SIGNAL \render|Mux17~3_combout\ : std_logic;
SIGNAL \render|Mux16~0_combout\ : std_logic;
SIGNAL \render|Mux16~1_combout\ : std_logic;
SIGNAL \render|Mux15~2_combout\ : std_logic;
SIGNAL \render|Mux15~4_combout\ : std_logic;
SIGNAL \render|Mux15~3_combout\ : std_logic;
SIGNAL \render|Mux14~0_combout\ : std_logic;
SIGNAL \render|Mux14~1_combout\ : std_logic;
SIGNAL \render|Mux13~1_combout\ : std_logic;
SIGNAL \render|Mux12~0_combout\ : std_logic;
SIGNAL \render|Mux12~1_combout\ : std_logic;
SIGNAL \render|Mux12~2_combout\ : std_logic;
SIGNAL \render|Mux11~0_combout\ : std_logic;
SIGNAL \render|Mux11~1_combout\ : std_logic;
SIGNAL \render|Mux11~2_combout\ : std_logic;
SIGNAL \render|Mux10~1_combout\ : std_logic;
SIGNAL \render|Mux10~0_combout\ : std_logic;
SIGNAL \render|Mux10~2_combout\ : std_logic;
SIGNAL \render|Mux10~3_combout\ : std_logic;
SIGNAL \render|Mux10~4_combout\ : std_logic;
SIGNAL \render|Mux9~0_combout\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \render|Add7~1\ : std_logic;
SIGNAL \render|Add7~3\ : std_logic;
SIGNAL \render|Add7~5\ : std_logic;
SIGNAL \render|Add7~7\ : std_logic;
SIGNAL \render|Add7~9\ : std_logic;
SIGNAL \render|Add7~11\ : std_logic;
SIGNAL \render|Add7~13\ : std_logic;
SIGNAL \render|Add7~15\ : std_logic;
SIGNAL \render|Add7~17\ : std_logic;
SIGNAL \render|Add7~19\ : std_logic;
SIGNAL \render|Add7~21\ : std_logic;
SIGNAL \render|Add7~23\ : std_logic;
SIGNAL \render|Add7~25\ : std_logic;
SIGNAL \render|Add7~27\ : std_logic;
SIGNAL \render|Add7~29\ : std_logic;
SIGNAL \render|Add7~31\ : std_logic;
SIGNAL \render|Add7~32_combout\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \render|Add7~33\ : std_logic;
SIGNAL \render|Add7~35\ : std_logic;
SIGNAL \render|Add7~36_combout\ : std_logic;
SIGNAL \render|Add7~34_combout\ : std_logic;
SIGNAL \render|Mult2|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \render|Mult3|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \render|Add7~37\ : std_logic;
SIGNAL \render|Add7~38_combout\ : std_logic;
SIGNAL \render|is_barrel~1_combout\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \render|Add6~1\ : std_logic;
SIGNAL \render|Add6~3\ : std_logic;
SIGNAL \render|Add6~5\ : std_logic;
SIGNAL \render|Add6~7\ : std_logic;
SIGNAL \render|Add6~9\ : std_logic;
SIGNAL \render|Add6~11\ : std_logic;
SIGNAL \render|Add6~13\ : std_logic;
SIGNAL \render|Add6~15\ : std_logic;
SIGNAL \render|Add6~17\ : std_logic;
SIGNAL \render|Add6~19\ : std_logic;
SIGNAL \render|Add6~21\ : std_logic;
SIGNAL \render|Add6~23\ : std_logic;
SIGNAL \render|Add6~25\ : std_logic;
SIGNAL \render|Add6~27\ : std_logic;
SIGNAL \render|Add6~29\ : std_logic;
SIGNAL \render|Add6~31\ : std_logic;
SIGNAL \render|Add6~33\ : std_logic;
SIGNAL \render|Add6~34_combout\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \render|Add6~35\ : std_logic;
SIGNAL \render|Add6~36_combout\ : std_logic;
SIGNAL \render|is_barrel~0_combout\ : std_logic;
SIGNAL \render|Add7~39\ : std_logic;
SIGNAL \render|Add7~40_combout\ : std_logic;
SIGNAL \render|Add7~28_combout\ : std_logic;
SIGNAL \render|Add7~26_combout\ : std_logic;
SIGNAL \render|Add7~30_combout\ : std_logic;
SIGNAL \render|is_barrel~3_combout\ : std_logic;
SIGNAL \render|Add7~24_combout\ : std_logic;
SIGNAL \render|is_barrel~2_combout\ : std_logic;
SIGNAL \render|is_barrel~4_combout\ : std_logic;
SIGNAL \render|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \render|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \render|Add6~37\ : std_logic;
SIGNAL \render|Add6~38_combout\ : std_logic;
SIGNAL \render|Add6~39\ : std_logic;
SIGNAL \render|Add6~40_combout\ : std_logic;
SIGNAL \render|Add6~26_combout\ : std_logic;
SIGNAL \render|Add6~28_combout\ : std_logic;
SIGNAL \render|Add6~32_combout\ : std_logic;
SIGNAL \render|Add6~30_combout\ : std_logic;
SIGNAL \render|is_barrel~5_combout\ : std_logic;
SIGNAL \render|Add7~18_combout\ : std_logic;
SIGNAL \render|Add7~20_combout\ : std_logic;
SIGNAL \render|Add7~22_combout\ : std_logic;
SIGNAL \render|Add7~16_combout\ : std_logic;
SIGNAL \render|is_barrel~10_combout\ : std_logic;
SIGNAL \render|Add6~22_combout\ : std_logic;
SIGNAL \render|Add6~20_combout\ : std_logic;
SIGNAL \render|Add6~24_combout\ : std_logic;
SIGNAL \render|Add6~18_combout\ : std_logic;
SIGNAL \render|Add6~16_combout\ : std_logic;
SIGNAL \render|Add6~0_combout\ : std_logic;
SIGNAL \render|Add6~4_combout\ : std_logic;
SIGNAL \render|Add6~2_combout\ : std_logic;
SIGNAL \render|Add6~6_combout\ : std_logic;
SIGNAL \render|is_barrel~6_combout\ : std_logic;
SIGNAL \render|Add6~10_combout\ : std_logic;
SIGNAL \render|Add6~12_combout\ : std_logic;
SIGNAL \render|Add6~14_combout\ : std_logic;
SIGNAL \render|Add6~8_combout\ : std_logic;
SIGNAL \render|is_barrel~7_combout\ : std_logic;
SIGNAL \render|is_barrel~8_combout\ : std_logic;
SIGNAL \render|is_barrel~9_combout\ : std_logic;
SIGNAL \render|Add7~0_combout\ : std_logic;
SIGNAL \render|Add7~6_combout\ : std_logic;
SIGNAL \render|Add7~2_combout\ : std_logic;
SIGNAL \render|Add7~4_combout\ : std_logic;
SIGNAL \render|is_barrel~11_combout\ : std_logic;
SIGNAL \render|Add7~10_combout\ : std_logic;
SIGNAL \render|Add7~8_combout\ : std_logic;
SIGNAL \render|Add7~14_combout\ : std_logic;
SIGNAL \render|Add7~12_combout\ : std_logic;
SIGNAL \render|is_barrel~12_combout\ : std_logic;
SIGNAL \render|is_barrel~13_combout\ : std_logic;
SIGNAL \render|is_barrel~14_combout\ : std_logic;
SIGNAL \render|is_barrel~15_combout\ : std_logic;
SIGNAL \render|is_barrel~16_combout\ : std_logic;
SIGNAL \render|is_barrel~17_combout\ : std_logic;
SIGNAL \render|Add14~1\ : std_logic;
SIGNAL \render|Add14~3\ : std_logic;
SIGNAL \render|Add14~5\ : std_logic;
SIGNAL \render|Add14~7\ : std_logic;
SIGNAL \render|Add14~9_cout\ : std_logic;
SIGNAL \render|Add14~11_cout\ : std_logic;
SIGNAL \render|Add14~13_cout\ : std_logic;
SIGNAL \render|Add14~15_cout\ : std_logic;
SIGNAL \render|Add14~16_combout\ : std_logic;
SIGNAL \render|Add14~2_combout\ : std_logic;
SIGNAL \render|Add14~0_combout\ : std_logic;
SIGNAL \render|Add15~2_combout\ : std_logic;
SIGNAL \render|Add15~3_combout\ : std_logic;
SIGNAL \render|Add14~4_combout\ : std_logic;
SIGNAL \render|Add15~4_combout\ : std_logic;
SIGNAL \render|Add15~6_combout\ : std_logic;
SIGNAL \render|Add14~6_combout\ : std_logic;
SIGNAL \render|Add15~5_combout\ : std_logic;
SIGNAL \render|Mux48~0_combout\ : std_logic;
SIGNAL \render|Add12~1_cout\ : std_logic;
SIGNAL \render|Add12~2_combout\ : std_logic;
SIGNAL \render|Add12~3\ : std_logic;
SIGNAL \render|Add12~4_combout\ : std_logic;
SIGNAL \render|Add12~5\ : std_logic;
SIGNAL \render|Add12~7\ : std_logic;
SIGNAL \render|Add12~9\ : std_logic;
SIGNAL \render|Add12~11_cout\ : std_logic;
SIGNAL \render|Add12~13_cout\ : std_logic;
SIGNAL \render|Add12~15_cout\ : std_logic;
SIGNAL \render|Add12~17_cout\ : std_logic;
SIGNAL \render|Add12~18_combout\ : std_logic;
SIGNAL \render|Add13~3_combout\ : std_logic;
SIGNAL \render|Add12~6_combout\ : std_logic;
SIGNAL \render|Add13~4_combout\ : std_logic;
SIGNAL \render|Add12~8_combout\ : std_logic;
SIGNAL \render|Add13~5_combout\ : std_logic;
SIGNAL \render|Add13~2_combout\ : std_logic;
SIGNAL \render|Mux48~1_combout\ : std_logic;
SIGNAL \render|Mux56~0_combout\ : std_logic;
SIGNAL \render|Add13~6_combout\ : std_logic;
SIGNAL \render|Mux49~0_combout\ : std_logic;
SIGNAL \render|Mux56~2_combout\ : std_logic;
SIGNAL \render|Mux50~0_combout\ : std_logic;
SIGNAL \render|Mux56~1_combout\ : std_logic;
SIGNAL \render|Mux56~3_combout\ : std_logic;
SIGNAL \render|Mux48~3_combout\ : std_logic;
SIGNAL \render|Mux48~4_combout\ : std_logic;
SIGNAL \render|Mux48~6_combout\ : std_logic;
SIGNAL \render|Mux48~5_combout\ : std_logic;
SIGNAL \render|Mux48~7_combout\ : std_logic;
SIGNAL \render|Mux48~8_combout\ : std_logic;
SIGNAL \render|Mux58~4_combout\ : std_logic;
SIGNAL \render|is_base~4_combout\ : std_logic;
SIGNAL \render|is_base~3_combout\ : std_logic;
SIGNAL \render|is_base~0_combout\ : std_logic;
SIGNAL \render|LessThan4~0_combout\ : std_logic;
SIGNAL \render|is_base~1_combout\ : std_logic;
SIGNAL \render|is_base~2_combout\ : std_logic;
SIGNAL \render|is_base~5_combout\ : std_logic;
SIGNAL \render|LessThan7~0_combout\ : std_logic;
SIGNAL \render|LessThan7~1_combout\ : std_logic;
SIGNAL \render|is_base~6_combout\ : std_logic;
SIGNAL \render|VGA_R~4_combout\ : std_logic;
SIGNAL \render|VGA_B[0]~0_combout\ : std_logic;
SIGNAL \render|VGA_R~5_combout\ : std_logic;
SIGNAL \render|VGA_R[0]~feeder_combout\ : std_logic;
SIGNAL \render|Mux33~0_combout\ : std_logic;
SIGNAL \render|Mux35~0_combout\ : std_logic;
SIGNAL \render|Mux35~1_combout\ : std_logic;
SIGNAL \render|Mux35~3_combout\ : std_logic;
SIGNAL \render|Mux35~4_combout\ : std_logic;
SIGNAL \render|Mux30~0_combout\ : std_logic;
SIGNAL \render|Mux35~2_combout\ : std_logic;
SIGNAL \render|VGA_R~6_combout\ : std_logic;
SIGNAL \render|VGA_R~7_combout\ : std_logic;
SIGNAL \render|Mux35~5_combout\ : std_logic;
SIGNAL \render|Mux58~5_combout\ : std_logic;
SIGNAL \render|VGA_R~8_combout\ : std_logic;
SIGNAL \render|VGA_R~9_combout\ : std_logic;
SIGNAL \render|Mux48~2_combout\ : std_logic;
SIGNAL \u_VGA_sync|video_on~1_combout\ : std_logic;
SIGNAL \render|VGA_R~10_combout\ : std_logic;
SIGNAL \render|VGA_R~11_combout\ : std_logic;
SIGNAL \render|VGA_R~12_combout\ : std_logic;
SIGNAL \render|VGA_G~0_combout\ : std_logic;
SIGNAL \render|VGA_G[2]~feeder_combout\ : std_logic;
SIGNAL \render|VGA_G~1_combout\ : std_logic;
SIGNAL \render|VGA_G[3]~feeder_combout\ : std_logic;
SIGNAL \render|Mux36~2_combout\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_data|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \game_control|u_ps2|debounce_ps2_data|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk_div_60hz|div_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \game_control|turret_angle_int\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \render|VGA_G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \render|VGA_R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \game_control|clk_div_60hz|div_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \game_control|u_ps2|ps2_word\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \game_control|u_ps2|debounce_ps2_clk|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \render|VGA_B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_VGA_sync|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_VGA_sync|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \game_control|u_ps2|sync_ffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \game_control|u_ps2|count_idle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \game_control|planex_int\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \game_control|u_ps2|ps2_code\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \game_control|u_ps2|debounce_ps2_clk|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\ : std_logic;
SIGNAL \u_VGA_sync|ALT_INV_video_on~1_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_PS2_KBCLK <= PS2_KBCLK;
ww_PS2_KBDAT <= PS2_KBDAT;
ww_KEY <= KEY;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\render|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\render|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\render|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\render|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT8\
& \render|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT3\
& \render|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \render|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \render|Mult0|auto_generated|mac_mult1~dataout\ & \render|Mult0|auto_generated|mac_mult1~15\ & \render|Mult0|auto_generated|mac_mult1~14\ & 
\render|Mult0|auto_generated|mac_mult1~13\ & \render|Mult0|auto_generated|mac_mult1~12\ & \render|Mult0|auto_generated|mac_mult1~11\ & \render|Mult0|auto_generated|mac_mult1~10\ & \render|Mult0|auto_generated|mac_mult1~9\ & 
\render|Mult0|auto_generated|mac_mult1~8\ & \render|Mult0|auto_generated|mac_mult1~7\ & \render|Mult0|auto_generated|mac_mult1~6\ & \render|Mult0|auto_generated|mac_mult1~5\ & \render|Mult0|auto_generated|mac_mult1~4\ & 
\render|Mult0|auto_generated|mac_mult1~3\ & \render|Mult0|auto_generated|mac_mult1~2\ & \render|Mult0|auto_generated|mac_mult1~1\ & \render|Mult0|auto_generated|mac_mult1~0\);

\render|Mult0|auto_generated|mac_out2~0\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\render|Mult0|auto_generated|mac_out2~1\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\render|Mult0|auto_generated|mac_out2~2\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\render|Mult0|auto_generated|mac_out2~3\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\render|Mult0|auto_generated|mac_out2~4\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\render|Mult0|auto_generated|mac_out2~5\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\render|Mult0|auto_generated|mac_out2~6\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\render|Mult0|auto_generated|mac_out2~7\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\render|Mult0|auto_generated|mac_out2~8\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\render|Mult0|auto_generated|mac_out2~9\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\render|Mult0|auto_generated|mac_out2~10\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\render|Mult0|auto_generated|mac_out2~11\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\render|Mult0|auto_generated|mac_out2~12\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\render|Mult0|auto_generated|mac_out2~13\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\render|Mult0|auto_generated|mac_out2~14\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\render|Mult0|auto_generated|mac_out2~15\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\render|Mult0|auto_generated|mac_out2~dataout\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\render|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\render|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\render|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\render|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\render|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\render|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\render|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\render|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\render|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\render|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\render|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\render|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\render|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\render|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\render|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\render|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\render|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\render|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\render|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\render|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\render|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT17\ & 
\render|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\render|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT8\
& \render|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT3\
& \render|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \render|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \render|Mult1|auto_generated|mac_mult1~dataout\ & \render|Mult1|auto_generated|mac_mult1~15\ & \render|Mult1|auto_generated|mac_mult1~14\ & 
\render|Mult1|auto_generated|mac_mult1~13\ & \render|Mult1|auto_generated|mac_mult1~12\ & \render|Mult1|auto_generated|mac_mult1~11\ & \render|Mult1|auto_generated|mac_mult1~10\ & \render|Mult1|auto_generated|mac_mult1~9\ & 
\render|Mult1|auto_generated|mac_mult1~8\ & \render|Mult1|auto_generated|mac_mult1~7\ & \render|Mult1|auto_generated|mac_mult1~6\ & \render|Mult1|auto_generated|mac_mult1~5\ & \render|Mult1|auto_generated|mac_mult1~4\ & 
\render|Mult1|auto_generated|mac_mult1~3\ & \render|Mult1|auto_generated|mac_mult1~2\ & \render|Mult1|auto_generated|mac_mult1~1\ & \render|Mult1|auto_generated|mac_mult1~0\);

\render|Mult1|auto_generated|mac_out2~0\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\render|Mult1|auto_generated|mac_out2~1\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\render|Mult1|auto_generated|mac_out2~2\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\render|Mult1|auto_generated|mac_out2~3\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\render|Mult1|auto_generated|mac_out2~4\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\render|Mult1|auto_generated|mac_out2~5\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\render|Mult1|auto_generated|mac_out2~6\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\render|Mult1|auto_generated|mac_out2~7\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\render|Mult1|auto_generated|mac_out2~8\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\render|Mult1|auto_generated|mac_out2~9\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\render|Mult1|auto_generated|mac_out2~10\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\render|Mult1|auto_generated|mac_out2~11\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\render|Mult1|auto_generated|mac_out2~12\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\render|Mult1|auto_generated|mac_out2~13\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\render|Mult1|auto_generated|mac_out2~14\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\render|Mult1|auto_generated|mac_out2~15\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\render|Mult1|auto_generated|mac_out2~dataout\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\render|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\render|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\render|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\render|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\render|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\render|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\render|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\render|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\render|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\render|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\render|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\render|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\render|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\render|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\render|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\render|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\render|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\render|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\render|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\render|Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\render|Mult2|auto_generated|mac_mult1~DATAOUT19\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT18\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT17\ & 
\render|Mult2|auto_generated|mac_mult1~DATAOUT16\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT15\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT14\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT13\ & 
\render|Mult2|auto_generated|mac_mult1~DATAOUT12\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT11\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT10\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT9\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT8\
& \render|Mult2|auto_generated|mac_mult1~DATAOUT7\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT6\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT5\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT4\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT3\
& \render|Mult2|auto_generated|mac_mult1~DATAOUT2\ & \render|Mult2|auto_generated|mac_mult1~DATAOUT1\ & \render|Mult2|auto_generated|mac_mult1~dataout\ & \render|Mult2|auto_generated|mac_mult1~15\ & \render|Mult2|auto_generated|mac_mult1~14\ & 
\render|Mult2|auto_generated|mac_mult1~13\ & \render|Mult2|auto_generated|mac_mult1~12\ & \render|Mult2|auto_generated|mac_mult1~11\ & \render|Mult2|auto_generated|mac_mult1~10\ & \render|Mult2|auto_generated|mac_mult1~9\ & 
\render|Mult2|auto_generated|mac_mult1~8\ & \render|Mult2|auto_generated|mac_mult1~7\ & \render|Mult2|auto_generated|mac_mult1~6\ & \render|Mult2|auto_generated|mac_mult1~5\ & \render|Mult2|auto_generated|mac_mult1~4\ & 
\render|Mult2|auto_generated|mac_mult1~3\ & \render|Mult2|auto_generated|mac_mult1~2\ & \render|Mult2|auto_generated|mac_mult1~1\ & \render|Mult2|auto_generated|mac_mult1~0\);

\render|Mult2|auto_generated|mac_out2~0\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\render|Mult2|auto_generated|mac_out2~1\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\render|Mult2|auto_generated|mac_out2~2\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\render|Mult2|auto_generated|mac_out2~3\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\render|Mult2|auto_generated|mac_out2~4\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\render|Mult2|auto_generated|mac_out2~5\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\render|Mult2|auto_generated|mac_out2~6\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\render|Mult2|auto_generated|mac_out2~7\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\render|Mult2|auto_generated|mac_out2~8\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\render|Mult2|auto_generated|mac_out2~9\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\render|Mult2|auto_generated|mac_out2~10\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\render|Mult2|auto_generated|mac_out2~11\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\render|Mult2|auto_generated|mac_out2~12\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\render|Mult2|auto_generated|mac_out2~13\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\render|Mult2|auto_generated|mac_out2~14\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\render|Mult2|auto_generated|mac_out2~15\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\render|Mult2|auto_generated|mac_out2~dataout\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\render|Mult2|auto_generated|mac_out2~DATAOUT1\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);
\render|Mult2|auto_generated|mac_out2~DATAOUT2\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(18);
\render|Mult2|auto_generated|mac_out2~DATAOUT3\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(19);
\render|Mult2|auto_generated|mac_out2~DATAOUT4\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(20);
\render|Mult2|auto_generated|mac_out2~DATAOUT5\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(21);
\render|Mult2|auto_generated|mac_out2~DATAOUT6\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(22);
\render|Mult2|auto_generated|mac_out2~DATAOUT7\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(23);
\render|Mult2|auto_generated|mac_out2~DATAOUT8\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(24);
\render|Mult2|auto_generated|mac_out2~DATAOUT9\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(25);
\render|Mult2|auto_generated|mac_out2~DATAOUT10\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(26);
\render|Mult2|auto_generated|mac_out2~DATAOUT11\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(27);
\render|Mult2|auto_generated|mac_out2~DATAOUT12\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(28);
\render|Mult2|auto_generated|mac_out2~DATAOUT13\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(29);
\render|Mult2|auto_generated|mac_out2~DATAOUT14\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(30);
\render|Mult2|auto_generated|mac_out2~DATAOUT15\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(31);
\render|Mult2|auto_generated|mac_out2~DATAOUT16\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(32);
\render|Mult2|auto_generated|mac_out2~DATAOUT17\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(33);
\render|Mult2|auto_generated|mac_out2~DATAOUT18\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(34);
\render|Mult2|auto_generated|mac_out2~DATAOUT19\ <= \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\(35);

\render|Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\render|Mult3|auto_generated|mac_mult1~DATAOUT19\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT18\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT17\ & 
\render|Mult3|auto_generated|mac_mult1~DATAOUT16\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT15\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT14\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT13\ & 
\render|Mult3|auto_generated|mac_mult1~DATAOUT12\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT11\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT10\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT9\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT8\
& \render|Mult3|auto_generated|mac_mult1~DATAOUT7\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT6\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT5\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT4\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT3\
& \render|Mult3|auto_generated|mac_mult1~DATAOUT2\ & \render|Mult3|auto_generated|mac_mult1~DATAOUT1\ & \render|Mult3|auto_generated|mac_mult1~dataout\ & \render|Mult3|auto_generated|mac_mult1~15\ & \render|Mult3|auto_generated|mac_mult1~14\ & 
\render|Mult3|auto_generated|mac_mult1~13\ & \render|Mult3|auto_generated|mac_mult1~12\ & \render|Mult3|auto_generated|mac_mult1~11\ & \render|Mult3|auto_generated|mac_mult1~10\ & \render|Mult3|auto_generated|mac_mult1~9\ & 
\render|Mult3|auto_generated|mac_mult1~8\ & \render|Mult3|auto_generated|mac_mult1~7\ & \render|Mult3|auto_generated|mac_mult1~6\ & \render|Mult3|auto_generated|mac_mult1~5\ & \render|Mult3|auto_generated|mac_mult1~4\ & 
\render|Mult3|auto_generated|mac_mult1~3\ & \render|Mult3|auto_generated|mac_mult1~2\ & \render|Mult3|auto_generated|mac_mult1~1\ & \render|Mult3|auto_generated|mac_mult1~0\);

\render|Mult3|auto_generated|mac_out2~0\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\render|Mult3|auto_generated|mac_out2~1\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\render|Mult3|auto_generated|mac_out2~2\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\render|Mult3|auto_generated|mac_out2~3\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\render|Mult3|auto_generated|mac_out2~4\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\render|Mult3|auto_generated|mac_out2~5\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\render|Mult3|auto_generated|mac_out2~6\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\render|Mult3|auto_generated|mac_out2~7\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\render|Mult3|auto_generated|mac_out2~8\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\render|Mult3|auto_generated|mac_out2~9\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\render|Mult3|auto_generated|mac_out2~10\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\render|Mult3|auto_generated|mac_out2~11\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\render|Mult3|auto_generated|mac_out2~12\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\render|Mult3|auto_generated|mac_out2~13\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\render|Mult3|auto_generated|mac_out2~14\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\render|Mult3|auto_generated|mac_out2~15\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\render|Mult3|auto_generated|mac_out2~dataout\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\render|Mult3|auto_generated|mac_out2~DATAOUT1\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);
\render|Mult3|auto_generated|mac_out2~DATAOUT2\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(18);
\render|Mult3|auto_generated|mac_out2~DATAOUT3\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(19);
\render|Mult3|auto_generated|mac_out2~DATAOUT4\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(20);
\render|Mult3|auto_generated|mac_out2~DATAOUT5\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(21);
\render|Mult3|auto_generated|mac_out2~DATAOUT6\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(22);
\render|Mult3|auto_generated|mac_out2~DATAOUT7\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(23);
\render|Mult3|auto_generated|mac_out2~DATAOUT8\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(24);
\render|Mult3|auto_generated|mac_out2~DATAOUT9\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(25);
\render|Mult3|auto_generated|mac_out2~DATAOUT10\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(26);
\render|Mult3|auto_generated|mac_out2~DATAOUT11\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(27);
\render|Mult3|auto_generated|mac_out2~DATAOUT12\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(28);
\render|Mult3|auto_generated|mac_out2~DATAOUT13\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(29);
\render|Mult3|auto_generated|mac_out2~DATAOUT14\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(30);
\render|Mult3|auto_generated|mac_out2~DATAOUT15\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(31);
\render|Mult3|auto_generated|mac_out2~DATAOUT16\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(32);
\render|Mult3|auto_generated|mac_out2~DATAOUT17\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(33);
\render|Mult3|auto_generated|mac_out2~DATAOUT18\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(34);
\render|Mult3|auto_generated|mac_out2~DATAOUT19\ <= \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\(35);

\render|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\render|Add3~20_combout\ & \render|Add3~18_combout\ & \render|Add3~16_combout\ & \render|Add3~14_combout\ & \render|Add3~12_combout\ & \render|Add3~10_combout\ & \render|Add3~8_combout\ & 
\render|Add3~6_combout\ & \render|Add3~4_combout\ & \render|Add3~2_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\render|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \render|Mux0~7_combout\ & \render|Mux1~2_combout\ & \render|Mux2~5_combout\ & \render|Mux3~2_combout\ & \render|Mux4~3_combout\ & \render|Mux5~2_combout\ & \render|Mux6~3_combout\ & 
\render|Mux7~1_combout\ & \render|Mux8~1_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\render|Mult0|auto_generated|mac_mult1~0\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\render|Mult0|auto_generated|mac_mult1~1\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\render|Mult0|auto_generated|mac_mult1~2\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\render|Mult0|auto_generated|mac_mult1~3\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\render|Mult0|auto_generated|mac_mult1~4\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\render|Mult0|auto_generated|mac_mult1~5\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\render|Mult0|auto_generated|mac_mult1~6\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\render|Mult0|auto_generated|mac_mult1~7\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\render|Mult0|auto_generated|mac_mult1~8\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\render|Mult0|auto_generated|mac_mult1~9\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\render|Mult0|auto_generated|mac_mult1~10\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\render|Mult0|auto_generated|mac_mult1~11\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\render|Mult0|auto_generated|mac_mult1~12\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\render|Mult0|auto_generated|mac_mult1~13\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\render|Mult0|auto_generated|mac_mult1~14\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\render|Mult0|auto_generated|mac_mult1~15\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\render|Mult0|auto_generated|mac_mult1~dataout\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\render|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\render|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\render|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\render|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\render|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\render|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\render|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\render|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\render|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\render|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\render|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\render|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\render|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\render|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\render|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\render|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\render|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\render|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\render|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\render|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\render|Add5~20_combout\ & \render|Add5~18_combout\ & \render|Add5~16_combout\ & \render|Add5~14_combout\ & \render|Add5~12_combout\ & \render|Add5~10_combout\ & \render|Add5~8_combout\ & 
\render|Add5~6_combout\ & \render|Add5~4_combout\ & \render|Add5~2_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\render|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \render|Mux9~0_combout\ & \render|Mux10~4_combout\ & \render|Mux11~2_combout\ & \render|Mux12~2_combout\ & \render|Mux13~1_combout\ & \render|Mux14~1_combout\ & \render|Mux15~3_combout\ & 
\render|Mux16~1_combout\ & \render|Mux17~3_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\render|Mult1|auto_generated|mac_mult1~0\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\render|Mult1|auto_generated|mac_mult1~1\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\render|Mult1|auto_generated|mac_mult1~2\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\render|Mult1|auto_generated|mac_mult1~3\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\render|Mult1|auto_generated|mac_mult1~4\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\render|Mult1|auto_generated|mac_mult1~5\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\render|Mult1|auto_generated|mac_mult1~6\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\render|Mult1|auto_generated|mac_mult1~7\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\render|Mult1|auto_generated|mac_mult1~8\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\render|Mult1|auto_generated|mac_mult1~9\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\render|Mult1|auto_generated|mac_mult1~10\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\render|Mult1|auto_generated|mac_mult1~11\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\render|Mult1|auto_generated|mac_mult1~12\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\render|Mult1|auto_generated|mac_mult1~13\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\render|Mult1|auto_generated|mac_mult1~14\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\render|Mult1|auto_generated|mac_mult1~15\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\render|Mult1|auto_generated|mac_mult1~dataout\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\render|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\render|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\render|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\render|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\render|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\render|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\render|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\render|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\render|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\render|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\render|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\render|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\render|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\render|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\render|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\render|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\render|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\render|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\render|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\render|Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\render|Add3~20_combout\ & \render|Add3~18_combout\ & \render|Add3~16_combout\ & \render|Add3~14_combout\ & \render|Add3~12_combout\ & \render|Add3~10_combout\ & \render|Add3~8_combout\ & 
\render|Add3~6_combout\ & \render|Add3~4_combout\ & \render|Add3~2_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\render|Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \render|Mux9~0_combout\ & \render|Mux10~4_combout\ & \render|Mux11~2_combout\ & \render|Mux12~2_combout\ & \render|Mux13~1_combout\ & \render|Mux14~1_combout\ & \render|Mux15~3_combout\ & 
\render|Mux16~1_combout\ & \render|Mux17~3_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\render|Mult2|auto_generated|mac_mult1~0\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\render|Mult2|auto_generated|mac_mult1~1\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\render|Mult2|auto_generated|mac_mult1~2\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\render|Mult2|auto_generated|mac_mult1~3\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\render|Mult2|auto_generated|mac_mult1~4\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\render|Mult2|auto_generated|mac_mult1~5\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\render|Mult2|auto_generated|mac_mult1~6\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\render|Mult2|auto_generated|mac_mult1~7\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\render|Mult2|auto_generated|mac_mult1~8\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\render|Mult2|auto_generated|mac_mult1~9\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\render|Mult2|auto_generated|mac_mult1~10\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\render|Mult2|auto_generated|mac_mult1~11\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\render|Mult2|auto_generated|mac_mult1~12\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\render|Mult2|auto_generated|mac_mult1~13\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\render|Mult2|auto_generated|mac_mult1~14\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\render|Mult2|auto_generated|mac_mult1~15\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\render|Mult2|auto_generated|mac_mult1~dataout\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\render|Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);
\render|Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(18);
\render|Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(19);
\render|Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(20);
\render|Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(21);
\render|Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(22);
\render|Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(23);
\render|Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(24);
\render|Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(25);
\render|Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(26);
\render|Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(27);
\render|Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(28);
\render|Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(29);
\render|Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(30);
\render|Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(31);
\render|Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(32);
\render|Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(33);
\render|Mult2|auto_generated|mac_mult1~DATAOUT18\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(34);
\render|Mult2|auto_generated|mac_mult1~DATAOUT19\ <= \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\(35);

\render|Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\render|Add5~20_combout\ & \render|Add5~18_combout\ & \render|Add5~16_combout\ & \render|Add5~14_combout\ & \render|Add5~12_combout\ & \render|Add5~10_combout\ & \render|Add5~8_combout\ & 
\render|Add5~6_combout\ & \render|Add5~4_combout\ & \render|Add5~2_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\render|Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \render|Mux0~7_combout\ & \render|Mux1~2_combout\ & \render|Mux2~5_combout\ & \render|Mux3~2_combout\ & \render|Mux4~3_combout\ & \render|Mux5~2_combout\ & \render|Mux6~3_combout\ & 
\render|Mux7~1_combout\ & \render|Mux8~1_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\render|Mult3|auto_generated|mac_mult1~0\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\render|Mult3|auto_generated|mac_mult1~1\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\render|Mult3|auto_generated|mac_mult1~2\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\render|Mult3|auto_generated|mac_mult1~3\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\render|Mult3|auto_generated|mac_mult1~4\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\render|Mult3|auto_generated|mac_mult1~5\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\render|Mult3|auto_generated|mac_mult1~6\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\render|Mult3|auto_generated|mac_mult1~7\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\render|Mult3|auto_generated|mac_mult1~8\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\render|Mult3|auto_generated|mac_mult1~9\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\render|Mult3|auto_generated|mac_mult1~10\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\render|Mult3|auto_generated|mac_mult1~11\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\render|Mult3|auto_generated|mac_mult1~12\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\render|Mult3|auto_generated|mac_mult1~13\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\render|Mult3|auto_generated|mac_mult1~14\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\render|Mult3|auto_generated|mac_mult1~15\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\render|Mult3|auto_generated|mac_mult1~dataout\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\render|Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);
\render|Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(18);
\render|Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(19);
\render|Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(20);
\render|Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(21);
\render|Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(22);
\render|Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(23);
\render|Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(24);
\render|Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(25);
\render|Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(26);
\render|Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(27);
\render|Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(28);
\render|Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(29);
\render|Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(30);
\render|Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(31);
\render|Mult3|auto_generated|mac_mult1~DATAOUT16\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(32);
\render|Mult3|auto_generated|mac_mult1~DATAOUT17\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(33);
\render|Mult3|auto_generated|mac_mult1~DATAOUT18\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(34);
\render|Mult3|auto_generated|mac_mult1~DATAOUT19\ <= \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\(35);

\game_control|u_ps2|debounce_ps2_clk|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \game_control|u_ps2|debounce_ps2_clk|result~q\);

\clk_div_60hz|twoHZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_60hz|twoHZ~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_CLOCK_50~inputclkctrl_outclk\ <= NOT \CLOCK_50~inputclkctrl_outclk\;
\game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ <= NOT \game_control|u_ps2|debounce_ps2_clk|result~clkctrl_outclk\;
\game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\ <= NOT \game_control|u_ps2|debounce_ps2_clk|result~q\;
\u_VGA_sync|ALT_INV_video_on~1_combout\ <= NOT \u_VGA_sync|video_on~1_combout\;

-- Location: IOOBUF_X41_Y18_N16
\VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_VGA_sync|process_1~2_combout\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_VGA_sync|process_2~1_combout\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_R\(0),
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_R\(1),
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_R\(2),
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_R\(3),
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_G\(0),
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_G\(1),
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_G\(2),
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_G\(3),
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_B\(0),
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_B\(2),
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \render|VGA_B\(3),
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LEDG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LEDG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LEDG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[9]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y2_N6
\clk_div_60hz|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~0_combout\ = \clk_div_60hz|div_cnt\(0) $ (VCC)
-- \clk_div_60hz|Add0~1\ = CARRY(\clk_div_60hz|div_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(0),
	datad => VCC,
	combout => \clk_div_60hz|Add0~0_combout\,
	cout => \clk_div_60hz|Add0~1\);

-- Location: LCCOMB_X23_Y2_N4
\clk_div_60hz|div_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|div_cnt~0_combout\ = (\clk_div_60hz|Add0~0_combout\ & !\clk_div_60hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|Add0~0_combout\,
	datad => \clk_div_60hz|Equal0~8_combout\,
	combout => \clk_div_60hz|div_cnt~0_combout\);

-- Location: FF_X23_Y2_N5
\clk_div_60hz|div_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|div_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(0));

-- Location: LCCOMB_X23_Y2_N8
\clk_div_60hz|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~2_combout\ = (\clk_div_60hz|div_cnt\(1) & (!\clk_div_60hz|Add0~1\)) # (!\clk_div_60hz|div_cnt\(1) & ((\clk_div_60hz|Add0~1\) # (GND)))
-- \clk_div_60hz|Add0~3\ = CARRY((!\clk_div_60hz|Add0~1\) # (!\clk_div_60hz|div_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(1),
	datad => VCC,
	cin => \clk_div_60hz|Add0~1\,
	combout => \clk_div_60hz|Add0~2_combout\,
	cout => \clk_div_60hz|Add0~3\);

-- Location: FF_X23_Y2_N9
\clk_div_60hz|div_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(1));

-- Location: LCCOMB_X23_Y2_N10
\clk_div_60hz|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~4_combout\ = (\clk_div_60hz|div_cnt\(2) & (\clk_div_60hz|Add0~3\ $ (GND))) # (!\clk_div_60hz|div_cnt\(2) & (!\clk_div_60hz|Add0~3\ & VCC))
-- \clk_div_60hz|Add0~5\ = CARRY((\clk_div_60hz|div_cnt\(2) & !\clk_div_60hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(2),
	datad => VCC,
	cin => \clk_div_60hz|Add0~3\,
	combout => \clk_div_60hz|Add0~4_combout\,
	cout => \clk_div_60hz|Add0~5\);

-- Location: FF_X23_Y2_N11
\clk_div_60hz|div_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(2));

-- Location: LCCOMB_X23_Y2_N12
\clk_div_60hz|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~6_combout\ = (\clk_div_60hz|div_cnt\(3) & (!\clk_div_60hz|Add0~5\)) # (!\clk_div_60hz|div_cnt\(3) & ((\clk_div_60hz|Add0~5\) # (GND)))
-- \clk_div_60hz|Add0~7\ = CARRY((!\clk_div_60hz|Add0~5\) # (!\clk_div_60hz|div_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(3),
	datad => VCC,
	cin => \clk_div_60hz|Add0~5\,
	combout => \clk_div_60hz|Add0~6_combout\,
	cout => \clk_div_60hz|Add0~7\);

-- Location: FF_X23_Y2_N13
\clk_div_60hz|div_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(3));

-- Location: LCCOMB_X23_Y2_N14
\clk_div_60hz|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~8_combout\ = (\clk_div_60hz|div_cnt\(4) & (\clk_div_60hz|Add0~7\ $ (GND))) # (!\clk_div_60hz|div_cnt\(4) & (!\clk_div_60hz|Add0~7\ & VCC))
-- \clk_div_60hz|Add0~9\ = CARRY((\clk_div_60hz|div_cnt\(4) & !\clk_div_60hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(4),
	datad => VCC,
	cin => \clk_div_60hz|Add0~7\,
	combout => \clk_div_60hz|Add0~8_combout\,
	cout => \clk_div_60hz|Add0~9\);

-- Location: FF_X23_Y2_N15
\clk_div_60hz|div_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(4));

-- Location: LCCOMB_X23_Y2_N16
\clk_div_60hz|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~10_combout\ = (\clk_div_60hz|div_cnt\(5) & (!\clk_div_60hz|Add0~9\)) # (!\clk_div_60hz|div_cnt\(5) & ((\clk_div_60hz|Add0~9\) # (GND)))
-- \clk_div_60hz|Add0~11\ = CARRY((!\clk_div_60hz|Add0~9\) # (!\clk_div_60hz|div_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(5),
	datad => VCC,
	cin => \clk_div_60hz|Add0~9\,
	combout => \clk_div_60hz|Add0~10_combout\,
	cout => \clk_div_60hz|Add0~11\);

-- Location: FF_X23_Y2_N17
\clk_div_60hz|div_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(5));

-- Location: LCCOMB_X23_Y2_N2
\clk_div_60hz|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Equal0~6_combout\ = (!\clk_div_60hz|div_cnt\(2) & (!\clk_div_60hz|div_cnt\(5) & (!\clk_div_60hz|div_cnt\(3) & !\clk_div_60hz|div_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(2),
	datab => \clk_div_60hz|div_cnt\(5),
	datac => \clk_div_60hz|div_cnt\(3),
	datad => \clk_div_60hz|div_cnt\(4),
	combout => \clk_div_60hz|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y2_N18
\clk_div_60hz|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~12_combout\ = (\clk_div_60hz|div_cnt\(6) & (\clk_div_60hz|Add0~11\ $ (GND))) # (!\clk_div_60hz|div_cnt\(6) & (!\clk_div_60hz|Add0~11\ & VCC))
-- \clk_div_60hz|Add0~13\ = CARRY((\clk_div_60hz|div_cnt\(6) & !\clk_div_60hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(6),
	datad => VCC,
	cin => \clk_div_60hz|Add0~11\,
	combout => \clk_div_60hz|Add0~12_combout\,
	cout => \clk_div_60hz|Add0~13\);

-- Location: FF_X23_Y2_N19
\clk_div_60hz|div_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(6));

-- Location: LCCOMB_X23_Y2_N20
\clk_div_60hz|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~14_combout\ = (\clk_div_60hz|div_cnt\(7) & (!\clk_div_60hz|Add0~13\)) # (!\clk_div_60hz|div_cnt\(7) & ((\clk_div_60hz|Add0~13\) # (GND)))
-- \clk_div_60hz|Add0~15\ = CARRY((!\clk_div_60hz|Add0~13\) # (!\clk_div_60hz|div_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(7),
	datad => VCC,
	cin => \clk_div_60hz|Add0~13\,
	combout => \clk_div_60hz|Add0~14_combout\,
	cout => \clk_div_60hz|Add0~15\);

-- Location: FF_X23_Y2_N21
\clk_div_60hz|div_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(7));

-- Location: LCCOMB_X23_Y2_N22
\clk_div_60hz|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~16_combout\ = (\clk_div_60hz|div_cnt\(8) & (\clk_div_60hz|Add0~15\ $ (GND))) # (!\clk_div_60hz|div_cnt\(8) & (!\clk_div_60hz|Add0~15\ & VCC))
-- \clk_div_60hz|Add0~17\ = CARRY((\clk_div_60hz|div_cnt\(8) & !\clk_div_60hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(8),
	datad => VCC,
	cin => \clk_div_60hz|Add0~15\,
	combout => \clk_div_60hz|Add0~16_combout\,
	cout => \clk_div_60hz|Add0~17\);

-- Location: FF_X23_Y2_N23
\clk_div_60hz|div_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(8));

-- Location: LCCOMB_X23_Y2_N24
\clk_div_60hz|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~18_combout\ = (\clk_div_60hz|div_cnt\(9) & (!\clk_div_60hz|Add0~17\)) # (!\clk_div_60hz|div_cnt\(9) & ((\clk_div_60hz|Add0~17\) # (GND)))
-- \clk_div_60hz|Add0~19\ = CARRY((!\clk_div_60hz|Add0~17\) # (!\clk_div_60hz|div_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(9),
	datad => VCC,
	cin => \clk_div_60hz|Add0~17\,
	combout => \clk_div_60hz|Add0~18_combout\,
	cout => \clk_div_60hz|Add0~19\);

-- Location: FF_X23_Y2_N25
\clk_div_60hz|div_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(9));

-- Location: LCCOMB_X23_Y2_N0
\clk_div_60hz|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Equal0~5_combout\ = (!\clk_div_60hz|div_cnt\(7) & (!\clk_div_60hz|div_cnt\(6) & (!\clk_div_60hz|div_cnt\(8) & !\clk_div_60hz|div_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(7),
	datab => \clk_div_60hz|div_cnt\(6),
	datac => \clk_div_60hz|div_cnt\(8),
	datad => \clk_div_60hz|div_cnt\(9),
	combout => \clk_div_60hz|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y2_N14
\clk_div_60hz|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Equal0~7_combout\ = (!\clk_div_60hz|div_cnt\(1) & !\clk_div_60hz|div_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_60hz|div_cnt\(1),
	datad => \clk_div_60hz|div_cnt\(0),
	combout => \clk_div_60hz|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y2_N26
\clk_div_60hz|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~20_combout\ = (\clk_div_60hz|div_cnt\(10) & (\clk_div_60hz|Add0~19\ $ (GND))) # (!\clk_div_60hz|div_cnt\(10) & (!\clk_div_60hz|Add0~19\ & VCC))
-- \clk_div_60hz|Add0~21\ = CARRY((\clk_div_60hz|div_cnt\(10) & !\clk_div_60hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(10),
	datad => VCC,
	cin => \clk_div_60hz|Add0~19\,
	combout => \clk_div_60hz|Add0~20_combout\,
	cout => \clk_div_60hz|Add0~21\);

-- Location: FF_X23_Y2_N27
\clk_div_60hz|div_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(10));

-- Location: LCCOMB_X23_Y2_N28
\clk_div_60hz|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~22_combout\ = (\clk_div_60hz|div_cnt\(11) & (!\clk_div_60hz|Add0~21\)) # (!\clk_div_60hz|div_cnt\(11) & ((\clk_div_60hz|Add0~21\) # (GND)))
-- \clk_div_60hz|Add0~23\ = CARRY((!\clk_div_60hz|Add0~21\) # (!\clk_div_60hz|div_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(11),
	datad => VCC,
	cin => \clk_div_60hz|Add0~21\,
	combout => \clk_div_60hz|Add0~22_combout\,
	cout => \clk_div_60hz|Add0~23\);

-- Location: FF_X23_Y2_N29
\clk_div_60hz|div_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(11));

-- Location: LCCOMB_X23_Y2_N30
\clk_div_60hz|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~24_combout\ = (\clk_div_60hz|div_cnt\(12) & (\clk_div_60hz|Add0~23\ $ (GND))) # (!\clk_div_60hz|div_cnt\(12) & (!\clk_div_60hz|Add0~23\ & VCC))
-- \clk_div_60hz|Add0~25\ = CARRY((\clk_div_60hz|div_cnt\(12) & !\clk_div_60hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(12),
	datad => VCC,
	cin => \clk_div_60hz|Add0~23\,
	combout => \clk_div_60hz|Add0~24_combout\,
	cout => \clk_div_60hz|Add0~25\);

-- Location: FF_X23_Y2_N31
\clk_div_60hz|div_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(12));

-- Location: LCCOMB_X23_Y1_N0
\clk_div_60hz|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~26_combout\ = (\clk_div_60hz|div_cnt\(13) & (!\clk_div_60hz|Add0~25\)) # (!\clk_div_60hz|div_cnt\(13) & ((\clk_div_60hz|Add0~25\) # (GND)))
-- \clk_div_60hz|Add0~27\ = CARRY((!\clk_div_60hz|Add0~25\) # (!\clk_div_60hz|div_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(13),
	datad => VCC,
	cin => \clk_div_60hz|Add0~25\,
	combout => \clk_div_60hz|Add0~26_combout\,
	cout => \clk_div_60hz|Add0~27\);

-- Location: FF_X23_Y1_N1
\clk_div_60hz|div_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(13));

-- Location: LCCOMB_X22_Y2_N6
\clk_div_60hz|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Equal0~3_combout\ = (!\clk_div_60hz|div_cnt\(12) & (!\clk_div_60hz|div_cnt\(11) & (!\clk_div_60hz|div_cnt\(10) & !\clk_div_60hz|div_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(12),
	datab => \clk_div_60hz|div_cnt\(11),
	datac => \clk_div_60hz|div_cnt\(10),
	datad => \clk_div_60hz|div_cnt\(13),
	combout => \clk_div_60hz|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y1_N2
\clk_div_60hz|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~28_combout\ = (\clk_div_60hz|div_cnt\(14) & (\clk_div_60hz|Add0~27\ $ (GND))) # (!\clk_div_60hz|div_cnt\(14) & (!\clk_div_60hz|Add0~27\ & VCC))
-- \clk_div_60hz|Add0~29\ = CARRY((\clk_div_60hz|div_cnt\(14) & !\clk_div_60hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(14),
	datad => VCC,
	cin => \clk_div_60hz|Add0~27\,
	combout => \clk_div_60hz|Add0~28_combout\,
	cout => \clk_div_60hz|Add0~29\);

-- Location: FF_X23_Y1_N3
\clk_div_60hz|div_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(14));

-- Location: LCCOMB_X23_Y1_N4
\clk_div_60hz|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~30_combout\ = (\clk_div_60hz|div_cnt\(15) & (!\clk_div_60hz|Add0~29\)) # (!\clk_div_60hz|div_cnt\(15) & ((\clk_div_60hz|Add0~29\) # (GND)))
-- \clk_div_60hz|Add0~31\ = CARRY((!\clk_div_60hz|Add0~29\) # (!\clk_div_60hz|div_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(15),
	datad => VCC,
	cin => \clk_div_60hz|Add0~29\,
	combout => \clk_div_60hz|Add0~30_combout\,
	cout => \clk_div_60hz|Add0~31\);

-- Location: FF_X23_Y1_N5
\clk_div_60hz|div_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(15));

-- Location: LCCOMB_X23_Y1_N6
\clk_div_60hz|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~32_combout\ = (\clk_div_60hz|div_cnt\(16) & (\clk_div_60hz|Add0~31\ $ (GND))) # (!\clk_div_60hz|div_cnt\(16) & (!\clk_div_60hz|Add0~31\ & VCC))
-- \clk_div_60hz|Add0~33\ = CARRY((\clk_div_60hz|div_cnt\(16) & !\clk_div_60hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(16),
	datad => VCC,
	cin => \clk_div_60hz|Add0~31\,
	combout => \clk_div_60hz|Add0~32_combout\,
	cout => \clk_div_60hz|Add0~33\);

-- Location: FF_X23_Y1_N7
\clk_div_60hz|div_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(16));

-- Location: LCCOMB_X23_Y1_N8
\clk_div_60hz|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~34_combout\ = (\clk_div_60hz|div_cnt\(17) & (!\clk_div_60hz|Add0~33\)) # (!\clk_div_60hz|div_cnt\(17) & ((\clk_div_60hz|Add0~33\) # (GND)))
-- \clk_div_60hz|Add0~35\ = CARRY((!\clk_div_60hz|Add0~33\) # (!\clk_div_60hz|div_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(17),
	datad => VCC,
	cin => \clk_div_60hz|Add0~33\,
	combout => \clk_div_60hz|Add0~34_combout\,
	cout => \clk_div_60hz|Add0~35\);

-- Location: FF_X23_Y1_N9
\clk_div_60hz|div_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(17));

-- Location: LCCOMB_X23_Y1_N10
\clk_div_60hz|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~36_combout\ = (\clk_div_60hz|div_cnt\(18) & (\clk_div_60hz|Add0~35\ $ (GND))) # (!\clk_div_60hz|div_cnt\(18) & (!\clk_div_60hz|Add0~35\ & VCC))
-- \clk_div_60hz|Add0~37\ = CARRY((\clk_div_60hz|div_cnt\(18) & !\clk_div_60hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(18),
	datad => VCC,
	cin => \clk_div_60hz|Add0~35\,
	combout => \clk_div_60hz|Add0~36_combout\,
	cout => \clk_div_60hz|Add0~37\);

-- Location: FF_X23_Y1_N11
\clk_div_60hz|div_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(18));

-- Location: LCCOMB_X23_Y1_N12
\clk_div_60hz|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~38_combout\ = (\clk_div_60hz|div_cnt\(19) & (!\clk_div_60hz|Add0~37\)) # (!\clk_div_60hz|div_cnt\(19) & ((\clk_div_60hz|Add0~37\) # (GND)))
-- \clk_div_60hz|Add0~39\ = CARRY((!\clk_div_60hz|Add0~37\) # (!\clk_div_60hz|div_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(19),
	datad => VCC,
	cin => \clk_div_60hz|Add0~37\,
	combout => \clk_div_60hz|Add0~38_combout\,
	cout => \clk_div_60hz|Add0~39\);

-- Location: FF_X23_Y1_N13
\clk_div_60hz|div_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(19));

-- Location: LCCOMB_X23_Y1_N14
\clk_div_60hz|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~40_combout\ = (\clk_div_60hz|div_cnt\(20) & (\clk_div_60hz|Add0~39\ $ (GND))) # (!\clk_div_60hz|div_cnt\(20) & (!\clk_div_60hz|Add0~39\ & VCC))
-- \clk_div_60hz|Add0~41\ = CARRY((\clk_div_60hz|div_cnt\(20) & !\clk_div_60hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(20),
	datad => VCC,
	cin => \clk_div_60hz|Add0~39\,
	combout => \clk_div_60hz|Add0~40_combout\,
	cout => \clk_div_60hz|Add0~41\);

-- Location: FF_X23_Y1_N15
\clk_div_60hz|div_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(20));

-- Location: LCCOMB_X23_Y1_N16
\clk_div_60hz|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~42_combout\ = (\clk_div_60hz|div_cnt\(21) & (!\clk_div_60hz|Add0~41\)) # (!\clk_div_60hz|div_cnt\(21) & ((\clk_div_60hz|Add0~41\) # (GND)))
-- \clk_div_60hz|Add0~43\ = CARRY((!\clk_div_60hz|Add0~41\) # (!\clk_div_60hz|div_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(21),
	datad => VCC,
	cin => \clk_div_60hz|Add0~41\,
	combout => \clk_div_60hz|Add0~42_combout\,
	cout => \clk_div_60hz|Add0~43\);

-- Location: FF_X23_Y1_N17
\clk_div_60hz|div_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(21));

-- Location: LCCOMB_X23_Y1_N18
\clk_div_60hz|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~44_combout\ = (\clk_div_60hz|div_cnt\(22) & (\clk_div_60hz|Add0~43\ $ (GND))) # (!\clk_div_60hz|div_cnt\(22) & (!\clk_div_60hz|Add0~43\ & VCC))
-- \clk_div_60hz|Add0~45\ = CARRY((\clk_div_60hz|div_cnt\(22) & !\clk_div_60hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(22),
	datad => VCC,
	cin => \clk_div_60hz|Add0~43\,
	combout => \clk_div_60hz|Add0~44_combout\,
	cout => \clk_div_60hz|Add0~45\);

-- Location: FF_X23_Y1_N19
\clk_div_60hz|div_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(22));

-- Location: LCCOMB_X23_Y1_N20
\clk_div_60hz|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~46_combout\ = (\clk_div_60hz|div_cnt\(23) & (!\clk_div_60hz|Add0~45\)) # (!\clk_div_60hz|div_cnt\(23) & ((\clk_div_60hz|Add0~45\) # (GND)))
-- \clk_div_60hz|Add0~47\ = CARRY((!\clk_div_60hz|Add0~45\) # (!\clk_div_60hz|div_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_60hz|div_cnt\(23),
	datad => VCC,
	cin => \clk_div_60hz|Add0~45\,
	combout => \clk_div_60hz|Add0~46_combout\,
	cout => \clk_div_60hz|Add0~47\);

-- Location: FF_X23_Y1_N21
\clk_div_60hz|div_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(23));

-- Location: LCCOMB_X23_Y1_N22
\clk_div_60hz|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~48_combout\ = (\clk_div_60hz|div_cnt\(24) & (\clk_div_60hz|Add0~47\ $ (GND))) # (!\clk_div_60hz|div_cnt\(24) & (!\clk_div_60hz|Add0~47\ & VCC))
-- \clk_div_60hz|Add0~49\ = CARRY((\clk_div_60hz|div_cnt\(24) & !\clk_div_60hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(24),
	datad => VCC,
	cin => \clk_div_60hz|Add0~47\,
	combout => \clk_div_60hz|Add0~48_combout\,
	cout => \clk_div_60hz|Add0~49\);

-- Location: FF_X23_Y1_N23
\clk_div_60hz|div_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(24));

-- Location: LCCOMB_X23_Y1_N24
\clk_div_60hz|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Add0~50_combout\ = \clk_div_60hz|Add0~49\ $ (\clk_div_60hz|div_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_60hz|div_cnt\(25),
	cin => \clk_div_60hz|Add0~49\,
	combout => \clk_div_60hz|Add0~50_combout\);

-- Location: FF_X23_Y1_N25
\clk_div_60hz|div_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_60hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|div_cnt\(25));

-- Location: LCCOMB_X23_Y1_N26
\clk_div_60hz|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Equal0~0_combout\ = (!\clk_div_60hz|div_cnt\(24) & (!\clk_div_60hz|div_cnt\(22) & (!\clk_div_60hz|div_cnt\(25) & !\clk_div_60hz|div_cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(24),
	datab => \clk_div_60hz|div_cnt\(22),
	datac => \clk_div_60hz|div_cnt\(25),
	datad => \clk_div_60hz|div_cnt\(23),
	combout => \clk_div_60hz|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y1_N28
\clk_div_60hz|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Equal0~1_combout\ = (!\clk_div_60hz|div_cnt\(18) & (!\clk_div_60hz|div_cnt\(21) & (!\clk_div_60hz|div_cnt\(20) & !\clk_div_60hz|div_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(18),
	datab => \clk_div_60hz|div_cnt\(21),
	datac => \clk_div_60hz|div_cnt\(20),
	datad => \clk_div_60hz|div_cnt\(19),
	combout => \clk_div_60hz|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y1_N30
\clk_div_60hz|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Equal0~2_combout\ = (!\clk_div_60hz|div_cnt\(15) & (!\clk_div_60hz|div_cnt\(14) & (!\clk_div_60hz|div_cnt\(17) & !\clk_div_60hz|div_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|div_cnt\(15),
	datab => \clk_div_60hz|div_cnt\(14),
	datac => \clk_div_60hz|div_cnt\(17),
	datad => \clk_div_60hz|div_cnt\(16),
	combout => \clk_div_60hz|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y2_N20
\clk_div_60hz|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Equal0~4_combout\ = (\clk_div_60hz|Equal0~3_combout\ & (\clk_div_60hz|Equal0~0_combout\ & (\clk_div_60hz|Equal0~1_combout\ & \clk_div_60hz|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|Equal0~3_combout\,
	datab => \clk_div_60hz|Equal0~0_combout\,
	datac => \clk_div_60hz|Equal0~1_combout\,
	datad => \clk_div_60hz|Equal0~2_combout\,
	combout => \clk_div_60hz|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y2_N10
\clk_div_60hz|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|Equal0~8_combout\ = (\clk_div_60hz|Equal0~6_combout\ & (\clk_div_60hz|Equal0~5_combout\ & (\clk_div_60hz|Equal0~7_combout\ & \clk_div_60hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_60hz|Equal0~6_combout\,
	datab => \clk_div_60hz|Equal0~5_combout\,
	datac => \clk_div_60hz|Equal0~7_combout\,
	datad => \clk_div_60hz|Equal0~4_combout\,
	combout => \clk_div_60hz|Equal0~8_combout\);

-- Location: LCCOMB_X22_Y2_N12
\clk_div_60hz|twoHZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_60hz|twoHZ~0_combout\ = \clk_div_60hz|twoHZ~q\ $ (\clk_div_60hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_60hz|twoHZ~q\,
	datad => \clk_div_60hz|Equal0~8_combout\,
	combout => \clk_div_60hz|twoHZ~0_combout\);

-- Location: FF_X22_Y2_N29
\clk_div_60hz|twoHZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_div_60hz|twoHZ~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_60hz|twoHZ~q\);

-- Location: CLKCTRL_G19
\clk_div_60hz|twoHZ~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_60hz|twoHZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_60hz|twoHZ~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y19_N10
\u_VGA_sync|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~0_combout\ = \u_VGA_sync|h_count\(0) $ (VCC)
-- \u_VGA_sync|Add1~1\ = CARRY(\u_VGA_sync|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(0),
	datad => VCC,
	combout => \u_VGA_sync|Add1~0_combout\,
	cout => \u_VGA_sync|Add1~1\);

-- Location: FF_X20_Y19_N11
\u_VGA_sync|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(0));

-- Location: LCCOMB_X21_Y19_N12
\u_VGA_sync|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~2_combout\ = (\u_VGA_sync|h_count\(1) & (!\u_VGA_sync|Add1~1\)) # (!\u_VGA_sync|h_count\(1) & ((\u_VGA_sync|Add1~1\) # (GND)))
-- \u_VGA_sync|Add1~3\ = CARRY((!\u_VGA_sync|Add1~1\) # (!\u_VGA_sync|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(1),
	datad => VCC,
	cin => \u_VGA_sync|Add1~1\,
	combout => \u_VGA_sync|Add1~2_combout\,
	cout => \u_VGA_sync|Add1~3\);

-- Location: FF_X20_Y19_N27
\u_VGA_sync|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(1));

-- Location: LCCOMB_X21_Y19_N14
\u_VGA_sync|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~4_combout\ = (\u_VGA_sync|h_count\(2) & (\u_VGA_sync|Add1~3\ $ (GND))) # (!\u_VGA_sync|h_count\(2) & (!\u_VGA_sync|Add1~3\ & VCC))
-- \u_VGA_sync|Add1~5\ = CARRY((\u_VGA_sync|h_count\(2) & !\u_VGA_sync|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(2),
	datad => VCC,
	cin => \u_VGA_sync|Add1~3\,
	combout => \u_VGA_sync|Add1~4_combout\,
	cout => \u_VGA_sync|Add1~5\);

-- Location: FF_X20_Y19_N21
\u_VGA_sync|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(2));

-- Location: LCCOMB_X21_Y19_N16
\u_VGA_sync|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~6_combout\ = (\u_VGA_sync|h_count\(3) & (!\u_VGA_sync|Add1~5\)) # (!\u_VGA_sync|h_count\(3) & ((\u_VGA_sync|Add1~5\) # (GND)))
-- \u_VGA_sync|Add1~7\ = CARRY((!\u_VGA_sync|Add1~5\) # (!\u_VGA_sync|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(3),
	datad => VCC,
	cin => \u_VGA_sync|Add1~5\,
	combout => \u_VGA_sync|Add1~6_combout\,
	cout => \u_VGA_sync|Add1~7\);

-- Location: FF_X20_Y19_N5
\u_VGA_sync|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(3));

-- Location: LCCOMB_X21_Y19_N18
\u_VGA_sync|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~8_combout\ = (\u_VGA_sync|h_count\(4) & (\u_VGA_sync|Add1~7\ $ (GND))) # (!\u_VGA_sync|h_count\(4) & (!\u_VGA_sync|Add1~7\ & VCC))
-- \u_VGA_sync|Add1~9\ = CARRY((\u_VGA_sync|h_count\(4) & !\u_VGA_sync|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(4),
	datad => VCC,
	cin => \u_VGA_sync|Add1~7\,
	combout => \u_VGA_sync|Add1~8_combout\,
	cout => \u_VGA_sync|Add1~9\);

-- Location: FF_X20_Y19_N3
\u_VGA_sync|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(4));

-- Location: LCCOMB_X21_Y19_N20
\u_VGA_sync|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~10_combout\ = (\u_VGA_sync|h_count\(5) & (!\u_VGA_sync|Add1~9\)) # (!\u_VGA_sync|h_count\(5) & ((\u_VGA_sync|Add1~9\) # (GND)))
-- \u_VGA_sync|Add1~11\ = CARRY((!\u_VGA_sync|Add1~9\) # (!\u_VGA_sync|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(5),
	datad => VCC,
	cin => \u_VGA_sync|Add1~9\,
	combout => \u_VGA_sync|Add1~10_combout\,
	cout => \u_VGA_sync|Add1~11\);

-- Location: LCCOMB_X20_Y19_N30
\u_VGA_sync|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|h_count~1_combout\ = (\u_VGA_sync|Add1~10_combout\ & !\u_VGA_sync|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_VGA_sync|Add1~10_combout\,
	datad => \u_VGA_sync|Equal0~2_combout\,
	combout => \u_VGA_sync|h_count~1_combout\);

-- Location: FF_X20_Y19_N31
\u_VGA_sync|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \u_VGA_sync|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(5));

-- Location: LCCOMB_X21_Y19_N22
\u_VGA_sync|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~12_combout\ = (\u_VGA_sync|h_count\(6) & (\u_VGA_sync|Add1~11\ $ (GND))) # (!\u_VGA_sync|h_count\(6) & (!\u_VGA_sync|Add1~11\ & VCC))
-- \u_VGA_sync|Add1~13\ = CARRY((\u_VGA_sync|h_count\(6) & !\u_VGA_sync|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(6),
	datad => VCC,
	cin => \u_VGA_sync|Add1~11\,
	combout => \u_VGA_sync|Add1~12_combout\,
	cout => \u_VGA_sync|Add1~13\);

-- Location: FF_X20_Y19_N25
\u_VGA_sync|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add1~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(6));

-- Location: LCCOMB_X21_Y19_N8
\u_VGA_sync|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Equal0~0_combout\ = (!\u_VGA_sync|h_count\(6) & (!\u_VGA_sync|h_count\(5) & (\u_VGA_sync|h_count\(8) & \u_VGA_sync|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(6),
	datab => \u_VGA_sync|h_count\(5),
	datac => \u_VGA_sync|h_count\(8),
	datad => \u_VGA_sync|h_count\(9),
	combout => \u_VGA_sync|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y19_N24
\u_VGA_sync|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~14_combout\ = (\u_VGA_sync|h_count\(7) & (!\u_VGA_sync|Add1~13\)) # (!\u_VGA_sync|h_count\(7) & ((\u_VGA_sync|Add1~13\) # (GND)))
-- \u_VGA_sync|Add1~15\ = CARRY((!\u_VGA_sync|Add1~13\) # (!\u_VGA_sync|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(7),
	datad => VCC,
	cin => \u_VGA_sync|Add1~13\,
	combout => \u_VGA_sync|Add1~14_combout\,
	cout => \u_VGA_sync|Add1~15\);

-- Location: FF_X20_Y19_N29
\u_VGA_sync|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add1~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(7));

-- Location: LCCOMB_X21_Y19_N2
\u_VGA_sync|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Equal0~1_combout\ = (\u_VGA_sync|h_count\(4) & (\u_VGA_sync|h_count\(3) & (!\u_VGA_sync|h_count\(7) & \u_VGA_sync|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(4),
	datab => \u_VGA_sync|h_count\(3),
	datac => \u_VGA_sync|h_count\(7),
	datad => \u_VGA_sync|h_count\(2),
	combout => \u_VGA_sync|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y19_N0
\u_VGA_sync|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Equal0~2_combout\ = (\u_VGA_sync|h_count\(0) & (\u_VGA_sync|Equal0~0_combout\ & (\u_VGA_sync|h_count\(1) & \u_VGA_sync|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(0),
	datab => \u_VGA_sync|Equal0~0_combout\,
	datac => \u_VGA_sync|h_count\(1),
	datad => \u_VGA_sync|Equal0~1_combout\,
	combout => \u_VGA_sync|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y19_N26
\u_VGA_sync|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~16_combout\ = (\u_VGA_sync|h_count\(8) & (\u_VGA_sync|Add1~15\ $ (GND))) # (!\u_VGA_sync|h_count\(8) & (!\u_VGA_sync|Add1~15\ & VCC))
-- \u_VGA_sync|Add1~17\ = CARRY((\u_VGA_sync|h_count\(8) & !\u_VGA_sync|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(8),
	datad => VCC,
	cin => \u_VGA_sync|Add1~15\,
	combout => \u_VGA_sync|Add1~16_combout\,
	cout => \u_VGA_sync|Add1~17\);

-- Location: LCCOMB_X20_Y19_N0
\u_VGA_sync|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|h_count~0_combout\ = (!\u_VGA_sync|Equal0~2_combout\ & \u_VGA_sync|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|Equal0~2_combout\,
	datad => \u_VGA_sync|Add1~16_combout\,
	combout => \u_VGA_sync|h_count~0_combout\);

-- Location: FF_X20_Y19_N1
\u_VGA_sync|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \u_VGA_sync|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(8));

-- Location: LCCOMB_X21_Y19_N28
\u_VGA_sync|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add1~18_combout\ = \u_VGA_sync|Add1~17\ $ (\u_VGA_sync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_VGA_sync|h_count\(9),
	cin => \u_VGA_sync|Add1~17\,
	combout => \u_VGA_sync|Add1~18_combout\);

-- Location: LCCOMB_X21_Y19_N30
\u_VGA_sync|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|h_count~2_combout\ = (\u_VGA_sync|Add1~18_combout\ & !\u_VGA_sync|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|Add1~18_combout\,
	datad => \u_VGA_sync|Equal0~2_combout\,
	combout => \u_VGA_sync|h_count~2_combout\);

-- Location: FF_X20_Y19_N9
\u_VGA_sync|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|h_count~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|h_count\(9));

-- Location: LCCOMB_X20_Y19_N2
\u_VGA_sync|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|process_1~0_combout\ = (!\u_VGA_sync|h_count\(2) & !\u_VGA_sync|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(2),
	datad => \u_VGA_sync|h_count\(3),
	combout => \u_VGA_sync|process_1~0_combout\);

-- Location: LCCOMB_X20_Y19_N24
\u_VGA_sync|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|process_1~1_combout\ = (\u_VGA_sync|h_count\(5) & (!\u_VGA_sync|process_1~0_combout\ & (\u_VGA_sync|h_count\(6) & \u_VGA_sync|h_count\(4)))) # (!\u_VGA_sync|h_count\(5) & (!\u_VGA_sync|h_count\(6) & ((\u_VGA_sync|process_1~0_combout\) # 
-- (!\u_VGA_sync|h_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|process_1~0_combout\,
	datab => \u_VGA_sync|h_count\(5),
	datac => \u_VGA_sync|h_count\(6),
	datad => \u_VGA_sync|h_count\(4),
	combout => \u_VGA_sync|process_1~1_combout\);

-- Location: LCCOMB_X20_Y19_N28
\u_VGA_sync|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|process_1~2_combout\ = ((\u_VGA_sync|h_count\(8)) # ((\u_VGA_sync|process_1~1_combout\) # (!\u_VGA_sync|h_count\(7)))) # (!\u_VGA_sync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(9),
	datab => \u_VGA_sync|h_count\(8),
	datac => \u_VGA_sync|h_count\(7),
	datad => \u_VGA_sync|process_1~1_combout\,
	combout => \u_VGA_sync|process_1~2_combout\);

-- Location: LCCOMB_X15_Y20_N6
\u_VGA_sync|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~0_combout\ = \u_VGA_sync|v_count\(0) $ (VCC)
-- \u_VGA_sync|Add0~1\ = CARRY(\u_VGA_sync|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(0),
	datad => VCC,
	combout => \u_VGA_sync|Add0~0_combout\,
	cout => \u_VGA_sync|Add0~1\);

-- Location: LCCOMB_X17_Y20_N0
\u_VGA_sync|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|v_count~3_combout\ = (\u_VGA_sync|Add0~0_combout\ & !\u_VGA_sync|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_VGA_sync|Add0~0_combout\,
	datad => \u_VGA_sync|Equal1~2_combout\,
	combout => \u_VGA_sync|v_count~3_combout\);

-- Location: FF_X17_Y20_N1
\u_VGA_sync|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \u_VGA_sync|v_count~3_combout\,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(0));

-- Location: LCCOMB_X15_Y20_N8
\u_VGA_sync|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~2_combout\ = (\u_VGA_sync|v_count\(1) & (!\u_VGA_sync|Add0~1\)) # (!\u_VGA_sync|v_count\(1) & ((\u_VGA_sync|Add0~1\) # (GND)))
-- \u_VGA_sync|Add0~3\ = CARRY((!\u_VGA_sync|Add0~1\) # (!\u_VGA_sync|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(1),
	datad => VCC,
	cin => \u_VGA_sync|Add0~1\,
	combout => \u_VGA_sync|Add0~2_combout\,
	cout => \u_VGA_sync|Add0~3\);

-- Location: FF_X15_Y20_N9
\u_VGA_sync|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \u_VGA_sync|Add0~2_combout\,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(1));

-- Location: LCCOMB_X15_Y20_N10
\u_VGA_sync|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~4_combout\ = (\u_VGA_sync|v_count\(2) & (\u_VGA_sync|Add0~3\ $ (GND))) # (!\u_VGA_sync|v_count\(2) & (!\u_VGA_sync|Add0~3\ & VCC))
-- \u_VGA_sync|Add0~5\ = CARRY((\u_VGA_sync|v_count\(2) & !\u_VGA_sync|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(2),
	datad => VCC,
	cin => \u_VGA_sync|Add0~3\,
	combout => \u_VGA_sync|Add0~4_combout\,
	cout => \u_VGA_sync|Add0~5\);

-- Location: LCCOMB_X16_Y20_N24
\u_VGA_sync|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|v_count~2_combout\ = (\u_VGA_sync|Add0~4_combout\ & !\u_VGA_sync|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|Add0~4_combout\,
	datac => \u_VGA_sync|Equal1~2_combout\,
	combout => \u_VGA_sync|v_count~2_combout\);

-- Location: FF_X16_Y20_N25
\u_VGA_sync|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \u_VGA_sync|v_count~2_combout\,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(2));

-- Location: LCCOMB_X15_Y20_N22
\u_VGA_sync|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~16_combout\ = (\u_VGA_sync|v_count\(8) & (\u_VGA_sync|Add0~15\ $ (GND))) # (!\u_VGA_sync|v_count\(8) & (!\u_VGA_sync|Add0~15\ & VCC))
-- \u_VGA_sync|Add0~17\ = CARRY((\u_VGA_sync|v_count\(8) & !\u_VGA_sync|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(8),
	datad => VCC,
	cin => \u_VGA_sync|Add0~15\,
	combout => \u_VGA_sync|Add0~16_combout\,
	cout => \u_VGA_sync|Add0~17\);

-- Location: LCCOMB_X15_Y20_N24
\u_VGA_sync|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~18_combout\ = \u_VGA_sync|v_count\(9) $ (\u_VGA_sync|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(9),
	cin => \u_VGA_sync|Add0~17\,
	combout => \u_VGA_sync|Add0~18_combout\);

-- Location: LCCOMB_X16_Y20_N26
\u_VGA_sync|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|v_count~0_combout\ = (\u_VGA_sync|Add0~18_combout\ & !\u_VGA_sync|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|Add0~18_combout\,
	datac => \u_VGA_sync|Equal1~2_combout\,
	combout => \u_VGA_sync|v_count~0_combout\);

-- Location: FF_X16_Y20_N27
\u_VGA_sync|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \u_VGA_sync|v_count~0_combout\,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(9));

-- Location: LCCOMB_X16_Y20_N20
\u_VGA_sync|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Equal1~1_combout\ = (\u_VGA_sync|v_count\(2) & (\u_VGA_sync|v_count\(9) & (!\u_VGA_sync|v_count\(4) & \u_VGA_sync|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(2),
	datab => \u_VGA_sync|v_count\(9),
	datac => \u_VGA_sync|v_count\(4),
	datad => \u_VGA_sync|v_count\(3),
	combout => \u_VGA_sync|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y20_N28
\u_VGA_sync|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Equal1~0_combout\ = (!\u_VGA_sync|v_count\(1) & (!\u_VGA_sync|v_count\(0) & (!\u_VGA_sync|v_count\(6) & !\u_VGA_sync|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(1),
	datab => \u_VGA_sync|v_count\(0),
	datac => \u_VGA_sync|v_count\(6),
	datad => \u_VGA_sync|v_count\(7),
	combout => \u_VGA_sync|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y20_N18
\u_VGA_sync|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Equal1~2_combout\ = (!\u_VGA_sync|v_count\(8) & (\u_VGA_sync|Equal1~1_combout\ & (!\u_VGA_sync|v_count\(5) & \u_VGA_sync|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(8),
	datab => \u_VGA_sync|Equal1~1_combout\,
	datac => \u_VGA_sync|v_count\(5),
	datad => \u_VGA_sync|Equal1~0_combout\,
	combout => \u_VGA_sync|Equal1~2_combout\);

-- Location: LCCOMB_X15_Y20_N12
\u_VGA_sync|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~6_combout\ = (\u_VGA_sync|v_count\(3) & (!\u_VGA_sync|Add0~5\)) # (!\u_VGA_sync|v_count\(3) & ((\u_VGA_sync|Add0~5\) # (GND)))
-- \u_VGA_sync|Add0~7\ = CARRY((!\u_VGA_sync|Add0~5\) # (!\u_VGA_sync|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(3),
	datad => VCC,
	cin => \u_VGA_sync|Add0~5\,
	combout => \u_VGA_sync|Add0~6_combout\,
	cout => \u_VGA_sync|Add0~7\);

-- Location: LCCOMB_X16_Y20_N30
\u_VGA_sync|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|v_count~1_combout\ = (!\u_VGA_sync|Equal1~2_combout\ & \u_VGA_sync|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_VGA_sync|Equal1~2_combout\,
	datad => \u_VGA_sync|Add0~6_combout\,
	combout => \u_VGA_sync|v_count~1_combout\);

-- Location: FF_X16_Y20_N31
\u_VGA_sync|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \u_VGA_sync|v_count~1_combout\,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(3));

-- Location: LCCOMB_X15_Y20_N14
\u_VGA_sync|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~8_combout\ = (\u_VGA_sync|v_count\(4) & (\u_VGA_sync|Add0~7\ $ (GND))) # (!\u_VGA_sync|v_count\(4) & (!\u_VGA_sync|Add0~7\ & VCC))
-- \u_VGA_sync|Add0~9\ = CARRY((\u_VGA_sync|v_count\(4) & !\u_VGA_sync|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(4),
	datad => VCC,
	cin => \u_VGA_sync|Add0~7\,
	combout => \u_VGA_sync|Add0~8_combout\,
	cout => \u_VGA_sync|Add0~9\);

-- Location: FF_X16_Y20_N21
\u_VGA_sync|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add0~8_combout\,
	sload => VCC,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(4));

-- Location: LCCOMB_X15_Y20_N16
\u_VGA_sync|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~10_combout\ = (\u_VGA_sync|v_count\(5) & (!\u_VGA_sync|Add0~9\)) # (!\u_VGA_sync|v_count\(5) & ((\u_VGA_sync|Add0~9\) # (GND)))
-- \u_VGA_sync|Add0~11\ = CARRY((!\u_VGA_sync|Add0~9\) # (!\u_VGA_sync|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(5),
	datad => VCC,
	cin => \u_VGA_sync|Add0~9\,
	combout => \u_VGA_sync|Add0~10_combout\,
	cout => \u_VGA_sync|Add0~11\);

-- Location: FF_X16_Y20_N19
\u_VGA_sync|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add0~10_combout\,
	sload => VCC,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(5));

-- Location: LCCOMB_X15_Y20_N18
\u_VGA_sync|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~12_combout\ = (\u_VGA_sync|v_count\(6) & (\u_VGA_sync|Add0~11\ $ (GND))) # (!\u_VGA_sync|v_count\(6) & (!\u_VGA_sync|Add0~11\ & VCC))
-- \u_VGA_sync|Add0~13\ = CARRY((\u_VGA_sync|v_count\(6) & !\u_VGA_sync|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(6),
	datad => VCC,
	cin => \u_VGA_sync|Add0~11\,
	combout => \u_VGA_sync|Add0~12_combout\,
	cout => \u_VGA_sync|Add0~13\);

-- Location: FF_X16_Y20_N29
\u_VGA_sync|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add0~12_combout\,
	sload => VCC,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(6));

-- Location: LCCOMB_X15_Y20_N20
\u_VGA_sync|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Add0~14_combout\ = (\u_VGA_sync|v_count\(7) & (!\u_VGA_sync|Add0~13\)) # (!\u_VGA_sync|v_count\(7) & ((\u_VGA_sync|Add0~13\) # (GND)))
-- \u_VGA_sync|Add0~15\ = CARRY((!\u_VGA_sync|Add0~13\) # (!\u_VGA_sync|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(7),
	datad => VCC,
	cin => \u_VGA_sync|Add0~13\,
	combout => \u_VGA_sync|Add0~14_combout\,
	cout => \u_VGA_sync|Add0~15\);

-- Location: LCCOMB_X16_Y20_N22
\u_VGA_sync|v_count[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|v_count[7]~feeder_combout\ = \u_VGA_sync|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_VGA_sync|Add0~14_combout\,
	combout => \u_VGA_sync|v_count[7]~feeder_combout\);

-- Location: FF_X16_Y20_N23
\u_VGA_sync|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \u_VGA_sync|v_count[7]~feeder_combout\,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(7));

-- Location: FF_X16_Y20_N7
\u_VGA_sync|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \u_VGA_sync|Add0~16_combout\,
	sload => VCC,
	ena => \u_VGA_sync|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_VGA_sync|v_count\(8));

-- Location: LCCOMB_X15_Y20_N30
\u_VGA_sync|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|LessThan5~0_combout\ = (\u_VGA_sync|v_count\(8) & (\u_VGA_sync|v_count\(7) & (\u_VGA_sync|v_count\(6) & \u_VGA_sync|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(8),
	datab => \u_VGA_sync|v_count\(7),
	datac => \u_VGA_sync|v_count\(6),
	datad => \u_VGA_sync|v_count\(5),
	combout => \u_VGA_sync|LessThan5~0_combout\);

-- Location: LCCOMB_X15_Y20_N0
\u_VGA_sync|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|process_2~0_combout\ = (\u_VGA_sync|v_count\(4)) # (((\u_VGA_sync|v_count\(9)) # (!\u_VGA_sync|v_count\(3))) # (!\u_VGA_sync|v_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(4),
	datab => \u_VGA_sync|v_count\(2),
	datac => \u_VGA_sync|v_count\(9),
	datad => \u_VGA_sync|v_count\(3),
	combout => \u_VGA_sync|process_2~0_combout\);

-- Location: LCCOMB_X15_Y20_N28
\u_VGA_sync|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|process_2~1_combout\ = ((\u_VGA_sync|process_2~0_combout\) # (\u_VGA_sync|v_count\(0) $ (!\u_VGA_sync|v_count\(1)))) # (!\u_VGA_sync|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|LessThan5~0_combout\,
	datab => \u_VGA_sync|v_count\(0),
	datac => \u_VGA_sync|v_count\(1),
	datad => \u_VGA_sync|process_2~0_combout\,
	combout => \u_VGA_sync|process_2~1_combout\);

-- Location: LCCOMB_X21_Y20_N8
\u_VGA_sync|video_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|video_on~0_combout\ = (!\u_VGA_sync|v_count\(9) & (((!\u_VGA_sync|h_count\(8) & !\u_VGA_sync|h_count\(7))) # (!\u_VGA_sync|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(9),
	datab => \u_VGA_sync|h_count\(8),
	datac => \u_VGA_sync|h_count\(7),
	datad => \u_VGA_sync|v_count\(9),
	combout => \u_VGA_sync|video_on~0_combout\);

-- Location: LCCOMB_X15_Y20_N4
\render|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan3~0_combout\ = (\u_VGA_sync|v_count\(5) & ((\u_VGA_sync|v_count\(4)) # ((\u_VGA_sync|v_count\(2)) # (\u_VGA_sync|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(4),
	datab => \u_VGA_sync|v_count\(5),
	datac => \u_VGA_sync|v_count\(2),
	datad => \u_VGA_sync|v_count\(3),
	combout => \render|LessThan3~0_combout\);

-- Location: LCCOMB_X19_Y24_N0
\game_control|planex_int[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|planex_int[0]~2_combout\ = !\game_control|planex_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|planex_int\(0),
	combout => \game_control|planex_int[0]~2_combout\);

-- Location: LCCOMB_X15_Y24_N6
\game_control|clk_div_60hz|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~0_combout\ = \game_control|clk_div_60hz|div_cnt\(0) $ (VCC)
-- \game_control|clk_div_60hz|Add0~1\ = CARRY(\game_control|clk_div_60hz|div_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(0),
	datad => VCC,
	combout => \game_control|clk_div_60hz|Add0~0_combout\,
	cout => \game_control|clk_div_60hz|Add0~1\);

-- Location: FF_X15_Y24_N7
\game_control|clk_div_60hz|div_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(0));

-- Location: LCCOMB_X15_Y24_N8
\game_control|clk_div_60hz|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~2_combout\ = (\game_control|clk_div_60hz|div_cnt\(1) & (!\game_control|clk_div_60hz|Add0~1\)) # (!\game_control|clk_div_60hz|div_cnt\(1) & ((\game_control|clk_div_60hz|Add0~1\) # (GND)))
-- \game_control|clk_div_60hz|Add0~3\ = CARRY((!\game_control|clk_div_60hz|Add0~1\) # (!\game_control|clk_div_60hz|div_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(1),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~1\,
	combout => \game_control|clk_div_60hz|Add0~2_combout\,
	cout => \game_control|clk_div_60hz|Add0~3\);

-- Location: LCCOMB_X15_Y24_N4
\game_control|clk_div_60hz|div_cnt~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~10_combout\ = (\game_control|clk_div_60hz|Add0~2_combout\ & !\game_control|clk_div_60hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|clk_div_60hz|Add0~2_combout\,
	datad => \game_control|clk_div_60hz|Equal0~8_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~10_combout\);

-- Location: FF_X15_Y24_N5
\game_control|clk_div_60hz|div_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(1));

-- Location: LCCOMB_X16_Y24_N24
\game_control|clk_div_60hz|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Equal0~7_combout\ = (\game_control|clk_div_60hz|div_cnt\(0) & !\game_control|clk_div_60hz|div_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(0),
	datac => \game_control|clk_div_60hz|div_cnt\(1),
	combout => \game_control|clk_div_60hz|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y24_N10
\game_control|clk_div_60hz|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~4_combout\ = (\game_control|clk_div_60hz|div_cnt\(2) & (\game_control|clk_div_60hz|Add0~3\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(2) & (!\game_control|clk_div_60hz|Add0~3\ & VCC))
-- \game_control|clk_div_60hz|Add0~5\ = CARRY((\game_control|clk_div_60hz|div_cnt\(2) & !\game_control|clk_div_60hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(2),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~3\,
	combout => \game_control|clk_div_60hz|Add0~4_combout\,
	cout => \game_control|clk_div_60hz|Add0~5\);

-- Location: FF_X15_Y24_N11
\game_control|clk_div_60hz|div_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(2));

-- Location: LCCOMB_X15_Y24_N12
\game_control|clk_div_60hz|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~6_combout\ = (\game_control|clk_div_60hz|div_cnt\(3) & (!\game_control|clk_div_60hz|Add0~5\)) # (!\game_control|clk_div_60hz|div_cnt\(3) & ((\game_control|clk_div_60hz|Add0~5\) # (GND)))
-- \game_control|clk_div_60hz|Add0~7\ = CARRY((!\game_control|clk_div_60hz|Add0~5\) # (!\game_control|clk_div_60hz|div_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(3),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~5\,
	combout => \game_control|clk_div_60hz|Add0~6_combout\,
	cout => \game_control|clk_div_60hz|Add0~7\);

-- Location: LCCOMB_X15_Y24_N2
\game_control|clk_div_60hz|div_cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~9_combout\ = (\game_control|clk_div_60hz|Add0~6_combout\ & !\game_control|clk_div_60hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|Add0~6_combout\,
	datad => \game_control|clk_div_60hz|Equal0~8_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~9_combout\);

-- Location: FF_X15_Y24_N3
\game_control|clk_div_60hz|div_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(3));

-- Location: LCCOMB_X15_Y24_N14
\game_control|clk_div_60hz|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~8_combout\ = (\game_control|clk_div_60hz|div_cnt\(4) & (\game_control|clk_div_60hz|Add0~7\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(4) & (!\game_control|clk_div_60hz|Add0~7\ & VCC))
-- \game_control|clk_div_60hz|Add0~9\ = CARRY((\game_control|clk_div_60hz|div_cnt\(4) & !\game_control|clk_div_60hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(4),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~7\,
	combout => \game_control|clk_div_60hz|Add0~8_combout\,
	cout => \game_control|clk_div_60hz|Add0~9\);

-- Location: LCCOMB_X15_Y24_N0
\game_control|clk_div_60hz|div_cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~8_combout\ = (\game_control|clk_div_60hz|Add0~8_combout\ & !\game_control|clk_div_60hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|clk_div_60hz|Add0~8_combout\,
	datad => \game_control|clk_div_60hz|Equal0~8_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~8_combout\);

-- Location: FF_X15_Y24_N1
\game_control|clk_div_60hz|div_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(4));

-- Location: LCCOMB_X15_Y24_N16
\game_control|clk_div_60hz|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~10_combout\ = (\game_control|clk_div_60hz|div_cnt\(5) & (!\game_control|clk_div_60hz|Add0~9\)) # (!\game_control|clk_div_60hz|div_cnt\(5) & ((\game_control|clk_div_60hz|Add0~9\) # (GND)))
-- \game_control|clk_div_60hz|Add0~11\ = CARRY((!\game_control|clk_div_60hz|Add0~9\) # (!\game_control|clk_div_60hz|div_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(5),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~9\,
	combout => \game_control|clk_div_60hz|Add0~10_combout\,
	cout => \game_control|clk_div_60hz|Add0~11\);

-- Location: FF_X15_Y24_N17
\game_control|clk_div_60hz|div_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(5));

-- Location: LCCOMB_X16_Y24_N18
\game_control|clk_div_60hz|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Equal0~6_combout\ = (!\game_control|clk_div_60hz|div_cnt\(5) & (\game_control|clk_div_60hz|div_cnt\(3) & (\game_control|clk_div_60hz|div_cnt\(4) & !\game_control|clk_div_60hz|div_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(5),
	datab => \game_control|clk_div_60hz|div_cnt\(3),
	datac => \game_control|clk_div_60hz|div_cnt\(4),
	datad => \game_control|clk_div_60hz|div_cnt\(2),
	combout => \game_control|clk_div_60hz|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y24_N18
\game_control|clk_div_60hz|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~12_combout\ = (\game_control|clk_div_60hz|div_cnt\(6) & (\game_control|clk_div_60hz|Add0~11\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(6) & (!\game_control|clk_div_60hz|Add0~11\ & VCC))
-- \game_control|clk_div_60hz|Add0~13\ = CARRY((\game_control|clk_div_60hz|div_cnt\(6) & !\game_control|clk_div_60hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(6),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~11\,
	combout => \game_control|clk_div_60hz|Add0~12_combout\,
	cout => \game_control|clk_div_60hz|Add0~13\);

-- Location: FF_X15_Y24_N19
\game_control|clk_div_60hz|div_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(6));

-- Location: LCCOMB_X15_Y24_N20
\game_control|clk_div_60hz|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~14_combout\ = (\game_control|clk_div_60hz|div_cnt\(7) & (!\game_control|clk_div_60hz|Add0~13\)) # (!\game_control|clk_div_60hz|div_cnt\(7) & ((\game_control|clk_div_60hz|Add0~13\) # (GND)))
-- \game_control|clk_div_60hz|Add0~15\ = CARRY((!\game_control|clk_div_60hz|Add0~13\) # (!\game_control|clk_div_60hz|div_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(7),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~13\,
	combout => \game_control|clk_div_60hz|Add0~14_combout\,
	cout => \game_control|clk_div_60hz|Add0~15\);

-- Location: LCCOMB_X16_Y24_N2
\game_control|clk_div_60hz|div_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~7_combout\ = (!\game_control|clk_div_60hz|Equal0~8_combout\ & \game_control|clk_div_60hz|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|clk_div_60hz|Equal0~8_combout\,
	datad => \game_control|clk_div_60hz|Add0~14_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~7_combout\);

-- Location: FF_X16_Y24_N3
\game_control|clk_div_60hz|div_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(7));

-- Location: LCCOMB_X15_Y24_N22
\game_control|clk_div_60hz|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~16_combout\ = (\game_control|clk_div_60hz|div_cnt\(8) & (\game_control|clk_div_60hz|Add0~15\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(8) & (!\game_control|clk_div_60hz|Add0~15\ & VCC))
-- \game_control|clk_div_60hz|Add0~17\ = CARRY((\game_control|clk_div_60hz|div_cnt\(8) & !\game_control|clk_div_60hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(8),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~15\,
	combout => \game_control|clk_div_60hz|Add0~16_combout\,
	cout => \game_control|clk_div_60hz|Add0~17\);

-- Location: LCCOMB_X16_Y24_N12
\game_control|clk_div_60hz|div_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~6_combout\ = (!\game_control|clk_div_60hz|Equal0~8_combout\ & \game_control|clk_div_60hz|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|clk_div_60hz|Equal0~8_combout\,
	datad => \game_control|clk_div_60hz|Add0~16_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~6_combout\);

-- Location: FF_X16_Y24_N13
\game_control|clk_div_60hz|div_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(8));

-- Location: LCCOMB_X15_Y24_N24
\game_control|clk_div_60hz|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~18_combout\ = (\game_control|clk_div_60hz|div_cnt\(9) & (!\game_control|clk_div_60hz|Add0~17\)) # (!\game_control|clk_div_60hz|div_cnt\(9) & ((\game_control|clk_div_60hz|Add0~17\) # (GND)))
-- \game_control|clk_div_60hz|Add0~19\ = CARRY((!\game_control|clk_div_60hz|Add0~17\) # (!\game_control|clk_div_60hz|div_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(9),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~17\,
	combout => \game_control|clk_div_60hz|Add0~18_combout\,
	cout => \game_control|clk_div_60hz|Add0~19\);

-- Location: LCCOMB_X16_Y24_N14
\game_control|clk_div_60hz|div_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~5_combout\ = (!\game_control|clk_div_60hz|Equal0~8_combout\ & \game_control|clk_div_60hz|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|clk_div_60hz|Equal0~8_combout\,
	datad => \game_control|clk_div_60hz|Add0~18_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~5_combout\);

-- Location: FF_X16_Y24_N15
\game_control|clk_div_60hz|div_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(9));

-- Location: LCCOMB_X16_Y24_N4
\game_control|clk_div_60hz|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Equal0~5_combout\ = (\game_control|clk_div_60hz|div_cnt\(8) & (!\game_control|clk_div_60hz|div_cnt\(6) & (\game_control|clk_div_60hz|div_cnt\(9) & \game_control|clk_div_60hz|div_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(8),
	datab => \game_control|clk_div_60hz|div_cnt\(6),
	datac => \game_control|clk_div_60hz|div_cnt\(9),
	datad => \game_control|clk_div_60hz|div_cnt\(7),
	combout => \game_control|clk_div_60hz|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y24_N26
\game_control|clk_div_60hz|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~20_combout\ = (\game_control|clk_div_60hz|div_cnt\(10) & (\game_control|clk_div_60hz|Add0~19\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(10) & (!\game_control|clk_div_60hz|Add0~19\ & VCC))
-- \game_control|clk_div_60hz|Add0~21\ = CARRY((\game_control|clk_div_60hz|div_cnt\(10) & !\game_control|clk_div_60hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(10),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~19\,
	combout => \game_control|clk_div_60hz|Add0~20_combout\,
	cout => \game_control|clk_div_60hz|Add0~21\);

-- Location: FF_X15_Y24_N27
\game_control|clk_div_60hz|div_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(10));

-- Location: LCCOMB_X15_Y24_N28
\game_control|clk_div_60hz|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~22_combout\ = (\game_control|clk_div_60hz|div_cnt\(11) & (!\game_control|clk_div_60hz|Add0~21\)) # (!\game_control|clk_div_60hz|div_cnt\(11) & ((\game_control|clk_div_60hz|Add0~21\) # (GND)))
-- \game_control|clk_div_60hz|Add0~23\ = CARRY((!\game_control|clk_div_60hz|Add0~21\) # (!\game_control|clk_div_60hz|div_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(11),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~21\,
	combout => \game_control|clk_div_60hz|Add0~22_combout\,
	cout => \game_control|clk_div_60hz|Add0~23\);

-- Location: LCCOMB_X16_Y24_N20
\game_control|clk_div_60hz|div_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~4_combout\ = (!\game_control|clk_div_60hz|Equal0~8_combout\ & \game_control|clk_div_60hz|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|clk_div_60hz|Equal0~8_combout\,
	datad => \game_control|clk_div_60hz|Add0~22_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~4_combout\);

-- Location: FF_X16_Y24_N21
\game_control|clk_div_60hz|div_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(11));

-- Location: LCCOMB_X15_Y24_N30
\game_control|clk_div_60hz|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~24_combout\ = (\game_control|clk_div_60hz|div_cnt\(12) & (\game_control|clk_div_60hz|Add0~23\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(12) & (!\game_control|clk_div_60hz|Add0~23\ & VCC))
-- \game_control|clk_div_60hz|Add0~25\ = CARRY((\game_control|clk_div_60hz|div_cnt\(12) & !\game_control|clk_div_60hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(12),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~23\,
	combout => \game_control|clk_div_60hz|Add0~24_combout\,
	cout => \game_control|clk_div_60hz|Add0~25\);

-- Location: LCCOMB_X16_Y24_N22
\game_control|clk_div_60hz|div_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~3_combout\ = (!\game_control|clk_div_60hz|Equal0~8_combout\ & \game_control|clk_div_60hz|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|Equal0~8_combout\,
	datac => \game_control|clk_div_60hz|Add0~24_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~3_combout\);

-- Location: FF_X16_Y24_N23
\game_control|clk_div_60hz|div_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(12));

-- Location: LCCOMB_X15_Y23_N0
\game_control|clk_div_60hz|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~26_combout\ = (\game_control|clk_div_60hz|div_cnt\(13) & (!\game_control|clk_div_60hz|Add0~25\)) # (!\game_control|clk_div_60hz|div_cnt\(13) & ((\game_control|clk_div_60hz|Add0~25\) # (GND)))
-- \game_control|clk_div_60hz|Add0~27\ = CARRY((!\game_control|clk_div_60hz|Add0~25\) # (!\game_control|clk_div_60hz|div_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(13),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~25\,
	combout => \game_control|clk_div_60hz|Add0~26_combout\,
	cout => \game_control|clk_div_60hz|Add0~27\);

-- Location: FF_X15_Y23_N1
\game_control|clk_div_60hz|div_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(13));

-- Location: LCCOMB_X16_Y24_N10
\game_control|clk_div_60hz|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Equal0~3_combout\ = (\game_control|clk_div_60hz|div_cnt\(12) & (\game_control|clk_div_60hz|div_cnt\(11) & (!\game_control|clk_div_60hz|div_cnt\(10) & !\game_control|clk_div_60hz|div_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(12),
	datab => \game_control|clk_div_60hz|div_cnt\(11),
	datac => \game_control|clk_div_60hz|div_cnt\(10),
	datad => \game_control|clk_div_60hz|div_cnt\(13),
	combout => \game_control|clk_div_60hz|Equal0~3_combout\);

-- Location: LCCOMB_X15_Y23_N2
\game_control|clk_div_60hz|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~28_combout\ = (\game_control|clk_div_60hz|div_cnt\(14) & (\game_control|clk_div_60hz|Add0~27\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(14) & (!\game_control|clk_div_60hz|Add0~27\ & VCC))
-- \game_control|clk_div_60hz|Add0~29\ = CARRY((\game_control|clk_div_60hz|div_cnt\(14) & !\game_control|clk_div_60hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(14),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~27\,
	combout => \game_control|clk_div_60hz|Add0~28_combout\,
	cout => \game_control|clk_div_60hz|Add0~29\);

-- Location: LCCOMB_X16_Y24_N16
\game_control|clk_div_60hz|div_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~2_combout\ = (!\game_control|clk_div_60hz|Equal0~8_combout\ & \game_control|clk_div_60hz|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|clk_div_60hz|Equal0~8_combout\,
	datad => \game_control|clk_div_60hz|Add0~28_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~2_combout\);

-- Location: FF_X16_Y24_N17
\game_control|clk_div_60hz|div_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(14));

-- Location: LCCOMB_X15_Y23_N4
\game_control|clk_div_60hz|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~30_combout\ = (\game_control|clk_div_60hz|div_cnt\(15) & (!\game_control|clk_div_60hz|Add0~29\)) # (!\game_control|clk_div_60hz|div_cnt\(15) & ((\game_control|clk_div_60hz|Add0~29\) # (GND)))
-- \game_control|clk_div_60hz|Add0~31\ = CARRY((!\game_control|clk_div_60hz|Add0~29\) # (!\game_control|clk_div_60hz|div_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(15),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~29\,
	combout => \game_control|clk_div_60hz|Add0~30_combout\,
	cout => \game_control|clk_div_60hz|Add0~31\);

-- Location: FF_X15_Y23_N5
\game_control|clk_div_60hz|div_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(15));

-- Location: LCCOMB_X15_Y23_N6
\game_control|clk_div_60hz|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~32_combout\ = (\game_control|clk_div_60hz|div_cnt\(16) & (\game_control|clk_div_60hz|Add0~31\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(16) & (!\game_control|clk_div_60hz|Add0~31\ & VCC))
-- \game_control|clk_div_60hz|Add0~33\ = CARRY((\game_control|clk_div_60hz|div_cnt\(16) & !\game_control|clk_div_60hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(16),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~31\,
	combout => \game_control|clk_div_60hz|Add0~32_combout\,
	cout => \game_control|clk_div_60hz|Add0~33\);

-- Location: FF_X15_Y23_N7
\game_control|clk_div_60hz|div_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(16));

-- Location: LCCOMB_X15_Y23_N8
\game_control|clk_div_60hz|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~34_combout\ = (\game_control|clk_div_60hz|div_cnt\(17) & (!\game_control|clk_div_60hz|Add0~33\)) # (!\game_control|clk_div_60hz|div_cnt\(17) & ((\game_control|clk_div_60hz|Add0~33\) # (GND)))
-- \game_control|clk_div_60hz|Add0~35\ = CARRY((!\game_control|clk_div_60hz|Add0~33\) # (!\game_control|clk_div_60hz|div_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(17),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~33\,
	combout => \game_control|clk_div_60hz|Add0~34_combout\,
	cout => \game_control|clk_div_60hz|Add0~35\);

-- Location: LCCOMB_X16_Y24_N30
\game_control|clk_div_60hz|div_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~1_combout\ = (!\game_control|clk_div_60hz|Equal0~8_combout\ & \game_control|clk_div_60hz|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|clk_div_60hz|Equal0~8_combout\,
	datad => \game_control|clk_div_60hz|Add0~34_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~1_combout\);

-- Location: FF_X16_Y24_N31
\game_control|clk_div_60hz|div_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(17));

-- Location: LCCOMB_X15_Y23_N10
\game_control|clk_div_60hz|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~36_combout\ = (\game_control|clk_div_60hz|div_cnt\(18) & (\game_control|clk_div_60hz|Add0~35\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(18) & (!\game_control|clk_div_60hz|Add0~35\ & VCC))
-- \game_control|clk_div_60hz|Add0~37\ = CARRY((\game_control|clk_div_60hz|div_cnt\(18) & !\game_control|clk_div_60hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(18),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~35\,
	combout => \game_control|clk_div_60hz|Add0~36_combout\,
	cout => \game_control|clk_div_60hz|Add0~37\);

-- Location: LCCOMB_X15_Y23_N28
\game_control|clk_div_60hz|div_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|div_cnt~0_combout\ = (\game_control|clk_div_60hz|Add0~36_combout\ & !\game_control|clk_div_60hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|Add0~36_combout\,
	datad => \game_control|clk_div_60hz|Equal0~8_combout\,
	combout => \game_control|clk_div_60hz|div_cnt~0_combout\);

-- Location: FF_X15_Y23_N29
\game_control|clk_div_60hz|div_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|div_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(18));

-- Location: LCCOMB_X15_Y23_N12
\game_control|clk_div_60hz|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~38_combout\ = (\game_control|clk_div_60hz|div_cnt\(19) & (!\game_control|clk_div_60hz|Add0~37\)) # (!\game_control|clk_div_60hz|div_cnt\(19) & ((\game_control|clk_div_60hz|Add0~37\) # (GND)))
-- \game_control|clk_div_60hz|Add0~39\ = CARRY((!\game_control|clk_div_60hz|Add0~37\) # (!\game_control|clk_div_60hz|div_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(19),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~37\,
	combout => \game_control|clk_div_60hz|Add0~38_combout\,
	cout => \game_control|clk_div_60hz|Add0~39\);

-- Location: FF_X15_Y23_N13
\game_control|clk_div_60hz|div_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(19));

-- Location: LCCOMB_X15_Y23_N14
\game_control|clk_div_60hz|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~40_combout\ = (\game_control|clk_div_60hz|div_cnt\(20) & (\game_control|clk_div_60hz|Add0~39\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(20) & (!\game_control|clk_div_60hz|Add0~39\ & VCC))
-- \game_control|clk_div_60hz|Add0~41\ = CARRY((\game_control|clk_div_60hz|div_cnt\(20) & !\game_control|clk_div_60hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(20),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~39\,
	combout => \game_control|clk_div_60hz|Add0~40_combout\,
	cout => \game_control|clk_div_60hz|Add0~41\);

-- Location: FF_X15_Y23_N15
\game_control|clk_div_60hz|div_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(20));

-- Location: LCCOMB_X15_Y23_N16
\game_control|clk_div_60hz|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~42_combout\ = (\game_control|clk_div_60hz|div_cnt\(21) & (!\game_control|clk_div_60hz|Add0~41\)) # (!\game_control|clk_div_60hz|div_cnt\(21) & ((\game_control|clk_div_60hz|Add0~41\) # (GND)))
-- \game_control|clk_div_60hz|Add0~43\ = CARRY((!\game_control|clk_div_60hz|Add0~41\) # (!\game_control|clk_div_60hz|div_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(21),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~41\,
	combout => \game_control|clk_div_60hz|Add0~42_combout\,
	cout => \game_control|clk_div_60hz|Add0~43\);

-- Location: FF_X15_Y23_N17
\game_control|clk_div_60hz|div_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(21));

-- Location: LCCOMB_X15_Y23_N26
\game_control|clk_div_60hz|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Equal0~1_combout\ = (!\game_control|clk_div_60hz|div_cnt\(19) & (!\game_control|clk_div_60hz|div_cnt\(21) & (!\game_control|clk_div_60hz|div_cnt\(20) & \game_control|clk_div_60hz|div_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(19),
	datab => \game_control|clk_div_60hz|div_cnt\(21),
	datac => \game_control|clk_div_60hz|div_cnt\(20),
	datad => \game_control|clk_div_60hz|div_cnt\(18),
	combout => \game_control|clk_div_60hz|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y23_N18
\game_control|clk_div_60hz|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~44_combout\ = (\game_control|clk_div_60hz|div_cnt\(22) & (\game_control|clk_div_60hz|Add0~43\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(22) & (!\game_control|clk_div_60hz|Add0~43\ & VCC))
-- \game_control|clk_div_60hz|Add0~45\ = CARRY((\game_control|clk_div_60hz|div_cnt\(22) & !\game_control|clk_div_60hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(22),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~43\,
	combout => \game_control|clk_div_60hz|Add0~44_combout\,
	cout => \game_control|clk_div_60hz|Add0~45\);

-- Location: FF_X15_Y23_N19
\game_control|clk_div_60hz|div_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(22));

-- Location: LCCOMB_X15_Y23_N20
\game_control|clk_div_60hz|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~46_combout\ = (\game_control|clk_div_60hz|div_cnt\(23) & (!\game_control|clk_div_60hz|Add0~45\)) # (!\game_control|clk_div_60hz|div_cnt\(23) & ((\game_control|clk_div_60hz|Add0~45\) # (GND)))
-- \game_control|clk_div_60hz|Add0~47\ = CARRY((!\game_control|clk_div_60hz|Add0~45\) # (!\game_control|clk_div_60hz|div_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|clk_div_60hz|div_cnt\(23),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~45\,
	combout => \game_control|clk_div_60hz|Add0~46_combout\,
	cout => \game_control|clk_div_60hz|Add0~47\);

-- Location: FF_X15_Y23_N21
\game_control|clk_div_60hz|div_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(23));

-- Location: LCCOMB_X15_Y23_N22
\game_control|clk_div_60hz|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~48_combout\ = (\game_control|clk_div_60hz|div_cnt\(24) & (\game_control|clk_div_60hz|Add0~47\ $ (GND))) # (!\game_control|clk_div_60hz|div_cnt\(24) & (!\game_control|clk_div_60hz|Add0~47\ & VCC))
-- \game_control|clk_div_60hz|Add0~49\ = CARRY((\game_control|clk_div_60hz|div_cnt\(24) & !\game_control|clk_div_60hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(24),
	datad => VCC,
	cin => \game_control|clk_div_60hz|Add0~47\,
	combout => \game_control|clk_div_60hz|Add0~48_combout\,
	cout => \game_control|clk_div_60hz|Add0~49\);

-- Location: FF_X15_Y23_N23
\game_control|clk_div_60hz|div_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(24));

-- Location: LCCOMB_X15_Y23_N24
\game_control|clk_div_60hz|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Add0~50_combout\ = \game_control|clk_div_60hz|Add0~49\ $ (\game_control|clk_div_60hz|div_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \game_control|clk_div_60hz|div_cnt\(25),
	cin => \game_control|clk_div_60hz|Add0~49\,
	combout => \game_control|clk_div_60hz|Add0~50_combout\);

-- Location: FF_X15_Y23_N25
\game_control|clk_div_60hz|div_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|div_cnt\(25));

-- Location: LCCOMB_X15_Y23_N30
\game_control|clk_div_60hz|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Equal0~0_combout\ = (!\game_control|clk_div_60hz|div_cnt\(24) & (!\game_control|clk_div_60hz|div_cnt\(23) & (!\game_control|clk_div_60hz|div_cnt\(25) & !\game_control|clk_div_60hz|div_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(24),
	datab => \game_control|clk_div_60hz|div_cnt\(23),
	datac => \game_control|clk_div_60hz|div_cnt\(25),
	datad => \game_control|clk_div_60hz|div_cnt\(22),
	combout => \game_control|clk_div_60hz|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y23_N0
\game_control|clk_div_60hz|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Equal0~2_combout\ = (\game_control|clk_div_60hz|div_cnt\(17) & (!\game_control|clk_div_60hz|div_cnt\(16) & (!\game_control|clk_div_60hz|div_cnt\(15) & \game_control|clk_div_60hz|div_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|div_cnt\(17),
	datab => \game_control|clk_div_60hz|div_cnt\(16),
	datac => \game_control|clk_div_60hz|div_cnt\(15),
	datad => \game_control|clk_div_60hz|div_cnt\(14),
	combout => \game_control|clk_div_60hz|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y24_N28
\game_control|clk_div_60hz|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Equal0~4_combout\ = (\game_control|clk_div_60hz|Equal0~3_combout\ & (\game_control|clk_div_60hz|Equal0~1_combout\ & (\game_control|clk_div_60hz|Equal0~0_combout\ & \game_control|clk_div_60hz|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|Equal0~3_combout\,
	datab => \game_control|clk_div_60hz|Equal0~1_combout\,
	datac => \game_control|clk_div_60hz|Equal0~0_combout\,
	datad => \game_control|clk_div_60hz|Equal0~2_combout\,
	combout => \game_control|clk_div_60hz|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y24_N26
\game_control|clk_div_60hz|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|Equal0~8_combout\ = (\game_control|clk_div_60hz|Equal0~7_combout\ & (\game_control|clk_div_60hz|Equal0~6_combout\ & (\game_control|clk_div_60hz|Equal0~5_combout\ & \game_control|clk_div_60hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|Equal0~7_combout\,
	datab => \game_control|clk_div_60hz|Equal0~6_combout\,
	datac => \game_control|clk_div_60hz|Equal0~5_combout\,
	datad => \game_control|clk_div_60hz|Equal0~4_combout\,
	combout => \game_control|clk_div_60hz|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y24_N0
\game_control|clk_div_60hz|twoHZ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|clk_div_60hz|twoHZ~0_combout\ = \game_control|clk_div_60hz|Equal0~8_combout\ $ (\game_control|clk_div_60hz|twoHZ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|clk_div_60hz|Equal0~8_combout\,
	datac => \game_control|clk_div_60hz|twoHZ~q\,
	combout => \game_control|clk_div_60hz|twoHZ~0_combout\);

-- Location: FF_X16_Y24_N1
\game_control|clk_div_60hz|twoHZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|clk_div_60hz|twoHZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|clk_div_60hz|twoHZ~q\);

-- Location: FF_X17_Y24_N15
\game_control|planex_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \game_control|planex_int[0]~2_combout\,
	sload => VCC,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(0));

-- Location: LCCOMB_X17_Y24_N0
\game_control|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~1_cout\ = CARRY(\game_control|planex_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(0),
	datad => VCC,
	cout => \game_control|Add2~1_cout\);

-- Location: LCCOMB_X17_Y24_N2
\game_control|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~2_combout\ = (\game_control|planex_int\(1) & (\game_control|Add2~1_cout\ & VCC)) # (!\game_control|planex_int\(1) & (!\game_control|Add2~1_cout\))
-- \game_control|Add2~3\ = CARRY((!\game_control|planex_int\(1) & !\game_control|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(1),
	datad => VCC,
	cin => \game_control|Add2~1_cout\,
	combout => \game_control|Add2~2_combout\,
	cout => \game_control|Add2~3\);

-- Location: FF_X17_Y24_N3
\game_control|planex_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~2_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(1));

-- Location: LCCOMB_X17_Y24_N4
\game_control|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~4_combout\ = (\game_control|planex_int\(2) & ((GND) # (!\game_control|Add2~3\))) # (!\game_control|planex_int\(2) & (\game_control|Add2~3\ $ (GND)))
-- \game_control|Add2~5\ = CARRY((\game_control|planex_int\(2)) # (!\game_control|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(2),
	datad => VCC,
	cin => \game_control|Add2~3\,
	combout => \game_control|Add2~4_combout\,
	cout => \game_control|Add2~5\);

-- Location: FF_X17_Y24_N5
\game_control|planex_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~4_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(2));

-- Location: LCCOMB_X17_Y24_N6
\game_control|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~6_combout\ = (\game_control|planex_int\(3) & (\game_control|Add2~5\ & VCC)) # (!\game_control|planex_int\(3) & (!\game_control|Add2~5\))
-- \game_control|Add2~7\ = CARRY((!\game_control|planex_int\(3) & !\game_control|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(3),
	datad => VCC,
	cin => \game_control|Add2~5\,
	combout => \game_control|Add2~6_combout\,
	cout => \game_control|Add2~7\);

-- Location: FF_X17_Y24_N7
\game_control|planex_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~6_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(3));

-- Location: LCCOMB_X17_Y24_N8
\game_control|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~8_combout\ = (\game_control|planex_int\(4) & ((GND) # (!\game_control|Add2~7\))) # (!\game_control|planex_int\(4) & (\game_control|Add2~7\ $ (GND)))
-- \game_control|Add2~9\ = CARRY((\game_control|planex_int\(4)) # (!\game_control|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(4),
	datad => VCC,
	cin => \game_control|Add2~7\,
	combout => \game_control|Add2~8_combout\,
	cout => \game_control|Add2~9\);

-- Location: FF_X17_Y24_N9
\game_control|planex_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~8_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(4));

-- Location: LCCOMB_X17_Y24_N10
\game_control|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~10_combout\ = (\game_control|planex_int\(5) & (\game_control|Add2~9\ & VCC)) # (!\game_control|planex_int\(5) & (!\game_control|Add2~9\))
-- \game_control|Add2~11\ = CARRY((!\game_control|planex_int\(5) & !\game_control|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(5),
	datad => VCC,
	cin => \game_control|Add2~9\,
	combout => \game_control|Add2~10_combout\,
	cout => \game_control|Add2~11\);

-- Location: FF_X17_Y24_N11
\game_control|planex_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~10_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(5));

-- Location: LCCOMB_X17_Y24_N12
\game_control|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~12_combout\ = (\game_control|planex_int\(6) & ((GND) # (!\game_control|Add2~11\))) # (!\game_control|planex_int\(6) & (\game_control|Add2~11\ $ (GND)))
-- \game_control|Add2~13\ = CARRY((\game_control|planex_int\(6)) # (!\game_control|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(6),
	datad => VCC,
	cin => \game_control|Add2~11\,
	combout => \game_control|Add2~12_combout\,
	cout => \game_control|Add2~13\);

-- Location: FF_X17_Y24_N13
\game_control|planex_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~12_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(6));

-- Location: LCCOMB_X17_Y24_N14
\game_control|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~14_combout\ = (\game_control|planex_int\(7) & (!\game_control|Add2~13\)) # (!\game_control|planex_int\(7) & (\game_control|Add2~13\ & VCC))
-- \game_control|Add2~15\ = CARRY((\game_control|planex_int\(7) & !\game_control|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(7),
	datad => VCC,
	cin => \game_control|Add2~13\,
	combout => \game_control|Add2~14_combout\,
	cout => \game_control|Add2~15\);

-- Location: LCCOMB_X16_Y24_N6
\game_control|planex_int[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|planex_int[7]~1_combout\ = !\game_control|Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|Add2~14_combout\,
	combout => \game_control|planex_int[7]~1_combout\);

-- Location: FF_X16_Y24_N7
\game_control|planex_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|planex_int[7]~1_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(7));

-- Location: LCCOMB_X17_Y24_N16
\game_control|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~16_combout\ = (\game_control|planex_int\(8) & ((GND) # (!\game_control|Add2~15\))) # (!\game_control|planex_int\(8) & (\game_control|Add2~15\ $ (GND)))
-- \game_control|Add2~17\ = CARRY((\game_control|planex_int\(8)) # (!\game_control|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(8),
	datad => VCC,
	cin => \game_control|Add2~15\,
	combout => \game_control|Add2~16_combout\,
	cout => \game_control|Add2~17\);

-- Location: FF_X17_Y24_N17
\game_control|planex_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~16_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(8));

-- Location: LCCOMB_X17_Y24_N18
\game_control|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~18_combout\ = (\game_control|planex_int\(9) & (!\game_control|Add2~17\)) # (!\game_control|planex_int\(9) & (\game_control|Add2~17\ & VCC))
-- \game_control|Add2~19\ = CARRY((\game_control|planex_int\(9) & !\game_control|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(9),
	datad => VCC,
	cin => \game_control|Add2~17\,
	combout => \game_control|Add2~18_combout\,
	cout => \game_control|Add2~19\);

-- Location: LCCOMB_X16_Y24_N8
\game_control|planex_int[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|planex_int[9]~0_combout\ = !\game_control|Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|Add2~18_combout\,
	combout => \game_control|planex_int[9]~0_combout\);

-- Location: FF_X16_Y24_N9
\game_control|planex_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|planex_int[9]~0_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(9));

-- Location: LCCOMB_X17_Y24_N20
\game_control|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~20_combout\ = (\game_control|planex_int\(10) & ((GND) # (!\game_control|Add2~19\))) # (!\game_control|planex_int\(10) & (\game_control|Add2~19\ $ (GND)))
-- \game_control|Add2~21\ = CARRY((\game_control|planex_int\(10)) # (!\game_control|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(10),
	datad => VCC,
	cin => \game_control|Add2~19\,
	combout => \game_control|Add2~20_combout\,
	cout => \game_control|Add2~21\);

-- Location: FF_X17_Y24_N21
\game_control|planex_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~20_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(10));

-- Location: LCCOMB_X17_Y24_N22
\game_control|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~22_combout\ = (\game_control|planex_int\(11) & (\game_control|Add2~21\ & VCC)) # (!\game_control|planex_int\(11) & (!\game_control|Add2~21\))
-- \game_control|Add2~23\ = CARRY((!\game_control|planex_int\(11) & !\game_control|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(11),
	datad => VCC,
	cin => \game_control|Add2~21\,
	combout => \game_control|Add2~22_combout\,
	cout => \game_control|Add2~23\);

-- Location: FF_X17_Y24_N23
\game_control|planex_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~22_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(11));

-- Location: LCCOMB_X17_Y24_N24
\game_control|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~24_combout\ = (\game_control|planex_int\(12) & ((GND) # (!\game_control|Add2~23\))) # (!\game_control|planex_int\(12) & (\game_control|Add2~23\ $ (GND)))
-- \game_control|Add2~25\ = CARRY((\game_control|planex_int\(12)) # (!\game_control|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(12),
	datad => VCC,
	cin => \game_control|Add2~23\,
	combout => \game_control|Add2~24_combout\,
	cout => \game_control|Add2~25\);

-- Location: FF_X17_Y24_N25
\game_control|planex_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~24_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(12));

-- Location: LCCOMB_X17_Y24_N26
\game_control|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~26_combout\ = (\game_control|planex_int\(13) & (\game_control|Add2~25\ & VCC)) # (!\game_control|planex_int\(13) & (!\game_control|Add2~25\))
-- \game_control|Add2~27\ = CARRY((!\game_control|planex_int\(13) & !\game_control|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(13),
	datad => VCC,
	cin => \game_control|Add2~25\,
	combout => \game_control|Add2~26_combout\,
	cout => \game_control|Add2~27\);

-- Location: FF_X17_Y24_N27
\game_control|planex_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~26_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(13));

-- Location: LCCOMB_X17_Y24_N28
\game_control|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~28_combout\ = (\game_control|planex_int\(14) & ((GND) # (!\game_control|Add2~27\))) # (!\game_control|planex_int\(14) & (\game_control|Add2~27\ $ (GND)))
-- \game_control|Add2~29\ = CARRY((\game_control|planex_int\(14)) # (!\game_control|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(14),
	datad => VCC,
	cin => \game_control|Add2~27\,
	combout => \game_control|Add2~28_combout\,
	cout => \game_control|Add2~29\);

-- Location: FF_X17_Y24_N29
\game_control|planex_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~28_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(14));

-- Location: LCCOMB_X17_Y24_N30
\game_control|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~30_combout\ = (\game_control|planex_int\(15) & (\game_control|Add2~29\ & VCC)) # (!\game_control|planex_int\(15) & (!\game_control|Add2~29\))
-- \game_control|Add2~31\ = CARRY((!\game_control|planex_int\(15) & !\game_control|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(15),
	datad => VCC,
	cin => \game_control|Add2~29\,
	combout => \game_control|Add2~30_combout\,
	cout => \game_control|Add2~31\);

-- Location: FF_X17_Y24_N31
\game_control|planex_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~30_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(15));

-- Location: LCCOMB_X17_Y23_N0
\game_control|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~32_combout\ = (\game_control|planex_int\(16) & ((GND) # (!\game_control|Add2~31\))) # (!\game_control|planex_int\(16) & (\game_control|Add2~31\ $ (GND)))
-- \game_control|Add2~33\ = CARRY((\game_control|planex_int\(16)) # (!\game_control|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(16),
	datad => VCC,
	cin => \game_control|Add2~31\,
	combout => \game_control|Add2~32_combout\,
	cout => \game_control|Add2~33\);

-- Location: FF_X17_Y23_N1
\game_control|planex_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~32_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(16));

-- Location: LCCOMB_X17_Y23_N2
\game_control|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~34_combout\ = (\game_control|planex_int\(17) & (\game_control|Add2~33\ & VCC)) # (!\game_control|planex_int\(17) & (!\game_control|Add2~33\))
-- \game_control|Add2~35\ = CARRY((!\game_control|planex_int\(17) & !\game_control|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(17),
	datad => VCC,
	cin => \game_control|Add2~33\,
	combout => \game_control|Add2~34_combout\,
	cout => \game_control|Add2~35\);

-- Location: FF_X17_Y23_N3
\game_control|planex_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~34_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(17));

-- Location: LCCOMB_X17_Y23_N4
\game_control|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~36_combout\ = (\game_control|planex_int\(18) & ((GND) # (!\game_control|Add2~35\))) # (!\game_control|planex_int\(18) & (\game_control|Add2~35\ $ (GND)))
-- \game_control|Add2~37\ = CARRY((\game_control|planex_int\(18)) # (!\game_control|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(18),
	datad => VCC,
	cin => \game_control|Add2~35\,
	combout => \game_control|Add2~36_combout\,
	cout => \game_control|Add2~37\);

-- Location: FF_X17_Y23_N5
\game_control|planex_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~36_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(18));

-- Location: LCCOMB_X17_Y23_N6
\game_control|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~38_combout\ = (\game_control|planex_int\(19) & (\game_control|Add2~37\ & VCC)) # (!\game_control|planex_int\(19) & (!\game_control|Add2~37\))
-- \game_control|Add2~39\ = CARRY((!\game_control|planex_int\(19) & !\game_control|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(19),
	datad => VCC,
	cin => \game_control|Add2~37\,
	combout => \game_control|Add2~38_combout\,
	cout => \game_control|Add2~39\);

-- Location: FF_X17_Y23_N7
\game_control|planex_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~38_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(19));

-- Location: LCCOMB_X17_Y23_N8
\game_control|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~40_combout\ = (\game_control|planex_int\(20) & ((GND) # (!\game_control|Add2~39\))) # (!\game_control|planex_int\(20) & (\game_control|Add2~39\ $ (GND)))
-- \game_control|Add2~41\ = CARRY((\game_control|planex_int\(20)) # (!\game_control|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(20),
	datad => VCC,
	cin => \game_control|Add2~39\,
	combout => \game_control|Add2~40_combout\,
	cout => \game_control|Add2~41\);

-- Location: FF_X17_Y23_N9
\game_control|planex_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~40_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(20));

-- Location: LCCOMB_X17_Y23_N10
\game_control|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~42_combout\ = (\game_control|planex_int\(21) & (\game_control|Add2~41\ & VCC)) # (!\game_control|planex_int\(21) & (!\game_control|Add2~41\))
-- \game_control|Add2~43\ = CARRY((!\game_control|planex_int\(21) & !\game_control|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(21),
	datad => VCC,
	cin => \game_control|Add2~41\,
	combout => \game_control|Add2~42_combout\,
	cout => \game_control|Add2~43\);

-- Location: FF_X17_Y23_N11
\game_control|planex_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~42_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(21));

-- Location: LCCOMB_X17_Y23_N12
\game_control|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~44_combout\ = (\game_control|planex_int\(22) & ((GND) # (!\game_control|Add2~43\))) # (!\game_control|planex_int\(22) & (\game_control|Add2~43\ $ (GND)))
-- \game_control|Add2~45\ = CARRY((\game_control|planex_int\(22)) # (!\game_control|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(22),
	datad => VCC,
	cin => \game_control|Add2~43\,
	combout => \game_control|Add2~44_combout\,
	cout => \game_control|Add2~45\);

-- Location: FF_X17_Y23_N13
\game_control|planex_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~44_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(22));

-- Location: LCCOMB_X17_Y23_N14
\game_control|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~46_combout\ = (\game_control|planex_int\(23) & (\game_control|Add2~45\ & VCC)) # (!\game_control|planex_int\(23) & (!\game_control|Add2~45\))
-- \game_control|Add2~47\ = CARRY((!\game_control|planex_int\(23) & !\game_control|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(23),
	datad => VCC,
	cin => \game_control|Add2~45\,
	combout => \game_control|Add2~46_combout\,
	cout => \game_control|Add2~47\);

-- Location: FF_X17_Y23_N15
\game_control|planex_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~46_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(23));

-- Location: LCCOMB_X17_Y23_N16
\game_control|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~48_combout\ = (\game_control|planex_int\(24) & ((GND) # (!\game_control|Add2~47\))) # (!\game_control|planex_int\(24) & (\game_control|Add2~47\ $ (GND)))
-- \game_control|Add2~49\ = CARRY((\game_control|planex_int\(24)) # (!\game_control|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(24),
	datad => VCC,
	cin => \game_control|Add2~47\,
	combout => \game_control|Add2~48_combout\,
	cout => \game_control|Add2~49\);

-- Location: FF_X17_Y23_N17
\game_control|planex_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~48_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(24));

-- Location: LCCOMB_X17_Y23_N18
\game_control|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~50_combout\ = (\game_control|planex_int\(25) & (\game_control|Add2~49\ & VCC)) # (!\game_control|planex_int\(25) & (!\game_control|Add2~49\))
-- \game_control|Add2~51\ = CARRY((!\game_control|planex_int\(25) & !\game_control|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(25),
	datad => VCC,
	cin => \game_control|Add2~49\,
	combout => \game_control|Add2~50_combout\,
	cout => \game_control|Add2~51\);

-- Location: FF_X17_Y23_N19
\game_control|planex_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~50_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(25));

-- Location: LCCOMB_X17_Y23_N20
\game_control|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~52_combout\ = (\game_control|planex_int\(26) & ((GND) # (!\game_control|Add2~51\))) # (!\game_control|planex_int\(26) & (\game_control|Add2~51\ $ (GND)))
-- \game_control|Add2~53\ = CARRY((\game_control|planex_int\(26)) # (!\game_control|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(26),
	datad => VCC,
	cin => \game_control|Add2~51\,
	combout => \game_control|Add2~52_combout\,
	cout => \game_control|Add2~53\);

-- Location: FF_X17_Y23_N21
\game_control|planex_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~52_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(26));

-- Location: LCCOMB_X17_Y23_N22
\game_control|Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~54_combout\ = (\game_control|planex_int\(27) & (\game_control|Add2~53\ & VCC)) # (!\game_control|planex_int\(27) & (!\game_control|Add2~53\))
-- \game_control|Add2~55\ = CARRY((!\game_control|planex_int\(27) & !\game_control|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(27),
	datad => VCC,
	cin => \game_control|Add2~53\,
	combout => \game_control|Add2~54_combout\,
	cout => \game_control|Add2~55\);

-- Location: FF_X17_Y23_N23
\game_control|planex_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~54_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(27));

-- Location: LCCOMB_X17_Y23_N24
\game_control|Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~56_combout\ = (\game_control|planex_int\(28) & ((GND) # (!\game_control|Add2~55\))) # (!\game_control|planex_int\(28) & (\game_control|Add2~55\ $ (GND)))
-- \game_control|Add2~57\ = CARRY((\game_control|planex_int\(28)) # (!\game_control|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(28),
	datad => VCC,
	cin => \game_control|Add2~55\,
	combout => \game_control|Add2~56_combout\,
	cout => \game_control|Add2~57\);

-- Location: FF_X17_Y23_N25
\game_control|planex_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~56_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(28));

-- Location: LCCOMB_X17_Y23_N26
\game_control|Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~58_combout\ = (\game_control|planex_int\(29) & (\game_control|Add2~57\ & VCC)) # (!\game_control|planex_int\(29) & (!\game_control|Add2~57\))
-- \game_control|Add2~59\ = CARRY((!\game_control|planex_int\(29) & !\game_control|Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(29),
	datad => VCC,
	cin => \game_control|Add2~57\,
	combout => \game_control|Add2~58_combout\,
	cout => \game_control|Add2~59\);

-- Location: FF_X17_Y23_N27
\game_control|planex_int[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~58_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(29));

-- Location: LCCOMB_X17_Y23_N28
\game_control|Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~60_combout\ = (\game_control|planex_int\(30) & ((GND) # (!\game_control|Add2~59\))) # (!\game_control|planex_int\(30) & (\game_control|Add2~59\ $ (GND)))
-- \game_control|Add2~61\ = CARRY((\game_control|planex_int\(30)) # (!\game_control|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(30),
	datad => VCC,
	cin => \game_control|Add2~59\,
	combout => \game_control|Add2~60_combout\,
	cout => \game_control|Add2~61\);

-- Location: FF_X17_Y23_N29
\game_control|planex_int[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~60_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(30));

-- Location: LCCOMB_X17_Y23_N30
\game_control|Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add2~62_combout\ = \game_control|planex_int\(31) $ (!\game_control|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(31),
	cin => \game_control|Add2~61\,
	combout => \game_control|Add2~62_combout\);

-- Location: FF_X17_Y23_N31
\game_control|planex_int[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Add2~62_combout\,
	ena => \game_control|clk_div_60hz|twoHZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|planex_int\(31));

-- Location: LCCOMB_X17_Y22_N8
\render|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~0_combout\ = (\game_control|planex_int\(7) & (\game_control|planex_int\(6) & VCC)) # (!\game_control|planex_int\(7) & (\game_control|planex_int\(6) $ (VCC)))
-- \render|Add0~1\ = CARRY((!\game_control|planex_int\(7) & \game_control|planex_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(7),
	datab => \game_control|planex_int\(6),
	datad => VCC,
	combout => \render|Add0~0_combout\,
	cout => \render|Add0~1\);

-- Location: LCCOMB_X17_Y22_N10
\render|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~2_combout\ = (\game_control|planex_int\(8) & (!\render|Add0~1\)) # (!\game_control|planex_int\(8) & ((\render|Add0~1\) # (GND)))
-- \render|Add0~3\ = CARRY((!\render|Add0~1\) # (!\game_control|planex_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(8),
	datad => VCC,
	cin => \render|Add0~1\,
	combout => \render|Add0~2_combout\,
	cout => \render|Add0~3\);

-- Location: LCCOMB_X17_Y22_N12
\render|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~4_combout\ = (\game_control|planex_int\(9) & (!\render|Add0~3\ & VCC)) # (!\game_control|planex_int\(9) & (\render|Add0~3\ $ (GND)))
-- \render|Add0~5\ = CARRY((!\game_control|planex_int\(9) & !\render|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(9),
	datad => VCC,
	cin => \render|Add0~3\,
	combout => \render|Add0~4_combout\,
	cout => \render|Add0~5\);

-- Location: LCCOMB_X17_Y22_N14
\render|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~6_combout\ = (\game_control|planex_int\(10) & (!\render|Add0~5\)) # (!\game_control|planex_int\(10) & ((\render|Add0~5\) # (GND)))
-- \render|Add0~7\ = CARRY((!\render|Add0~5\) # (!\game_control|planex_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(10),
	datad => VCC,
	cin => \render|Add0~5\,
	combout => \render|Add0~6_combout\,
	cout => \render|Add0~7\);

-- Location: LCCOMB_X17_Y22_N16
\render|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~8_combout\ = (\game_control|planex_int\(11) & (\render|Add0~7\ $ (GND))) # (!\game_control|planex_int\(11) & (!\render|Add0~7\ & VCC))
-- \render|Add0~9\ = CARRY((\game_control|planex_int\(11) & !\render|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(11),
	datad => VCC,
	cin => \render|Add0~7\,
	combout => \render|Add0~8_combout\,
	cout => \render|Add0~9\);

-- Location: LCCOMB_X17_Y22_N18
\render|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~10_combout\ = (\game_control|planex_int\(12) & (!\render|Add0~9\)) # (!\game_control|planex_int\(12) & ((\render|Add0~9\) # (GND)))
-- \render|Add0~11\ = CARRY((!\render|Add0~9\) # (!\game_control|planex_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(12),
	datad => VCC,
	cin => \render|Add0~9\,
	combout => \render|Add0~10_combout\,
	cout => \render|Add0~11\);

-- Location: LCCOMB_X17_Y22_N20
\render|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~12_combout\ = (\game_control|planex_int\(13) & (\render|Add0~11\ $ (GND))) # (!\game_control|planex_int\(13) & (!\render|Add0~11\ & VCC))
-- \render|Add0~13\ = CARRY((\game_control|planex_int\(13) & !\render|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(13),
	datad => VCC,
	cin => \render|Add0~11\,
	combout => \render|Add0~12_combout\,
	cout => \render|Add0~13\);

-- Location: LCCOMB_X17_Y22_N22
\render|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~14_combout\ = (\game_control|planex_int\(14) & (!\render|Add0~13\)) # (!\game_control|planex_int\(14) & ((\render|Add0~13\) # (GND)))
-- \render|Add0~15\ = CARRY((!\render|Add0~13\) # (!\game_control|planex_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(14),
	datad => VCC,
	cin => \render|Add0~13\,
	combout => \render|Add0~14_combout\,
	cout => \render|Add0~15\);

-- Location: LCCOMB_X17_Y22_N24
\render|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~16_combout\ = (\game_control|planex_int\(15) & (\render|Add0~15\ $ (GND))) # (!\game_control|planex_int\(15) & (!\render|Add0~15\ & VCC))
-- \render|Add0~17\ = CARRY((\game_control|planex_int\(15) & !\render|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(15),
	datad => VCC,
	cin => \render|Add0~15\,
	combout => \render|Add0~16_combout\,
	cout => \render|Add0~17\);

-- Location: LCCOMB_X17_Y22_N26
\render|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~18_combout\ = (\game_control|planex_int\(16) & (!\render|Add0~17\)) # (!\game_control|planex_int\(16) & ((\render|Add0~17\) # (GND)))
-- \render|Add0~19\ = CARRY((!\render|Add0~17\) # (!\game_control|planex_int\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(16),
	datad => VCC,
	cin => \render|Add0~17\,
	combout => \render|Add0~18_combout\,
	cout => \render|Add0~19\);

-- Location: LCCOMB_X17_Y22_N28
\render|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~20_combout\ = (\game_control|planex_int\(17) & (\render|Add0~19\ $ (GND))) # (!\game_control|planex_int\(17) & (!\render|Add0~19\ & VCC))
-- \render|Add0~21\ = CARRY((\game_control|planex_int\(17) & !\render|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(17),
	datad => VCC,
	cin => \render|Add0~19\,
	combout => \render|Add0~20_combout\,
	cout => \render|Add0~21\);

-- Location: LCCOMB_X17_Y22_N30
\render|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~22_combout\ = (\game_control|planex_int\(18) & (!\render|Add0~21\)) # (!\game_control|planex_int\(18) & ((\render|Add0~21\) # (GND)))
-- \render|Add0~23\ = CARRY((!\render|Add0~21\) # (!\game_control|planex_int\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(18),
	datad => VCC,
	cin => \render|Add0~21\,
	combout => \render|Add0~22_combout\,
	cout => \render|Add0~23\);

-- Location: LCCOMB_X17_Y21_N0
\render|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~24_combout\ = (\game_control|planex_int\(19) & (\render|Add0~23\ $ (GND))) # (!\game_control|planex_int\(19) & (!\render|Add0~23\ & VCC))
-- \render|Add0~25\ = CARRY((\game_control|planex_int\(19) & !\render|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(19),
	datad => VCC,
	cin => \render|Add0~23\,
	combout => \render|Add0~24_combout\,
	cout => \render|Add0~25\);

-- Location: LCCOMB_X17_Y21_N2
\render|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~26_combout\ = (\game_control|planex_int\(20) & (!\render|Add0~25\)) # (!\game_control|planex_int\(20) & ((\render|Add0~25\) # (GND)))
-- \render|Add0~27\ = CARRY((!\render|Add0~25\) # (!\game_control|planex_int\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(20),
	datad => VCC,
	cin => \render|Add0~25\,
	combout => \render|Add0~26_combout\,
	cout => \render|Add0~27\);

-- Location: LCCOMB_X17_Y21_N4
\render|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~28_combout\ = (\game_control|planex_int\(21) & (\render|Add0~27\ $ (GND))) # (!\game_control|planex_int\(21) & (!\render|Add0~27\ & VCC))
-- \render|Add0~29\ = CARRY((\game_control|planex_int\(21) & !\render|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(21),
	datad => VCC,
	cin => \render|Add0~27\,
	combout => \render|Add0~28_combout\,
	cout => \render|Add0~29\);

-- Location: LCCOMB_X17_Y21_N6
\render|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~30_combout\ = (\game_control|planex_int\(22) & (!\render|Add0~29\)) # (!\game_control|planex_int\(22) & ((\render|Add0~29\) # (GND)))
-- \render|Add0~31\ = CARRY((!\render|Add0~29\) # (!\game_control|planex_int\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(22),
	datad => VCC,
	cin => \render|Add0~29\,
	combout => \render|Add0~30_combout\,
	cout => \render|Add0~31\);

-- Location: LCCOMB_X17_Y21_N8
\render|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~32_combout\ = (\game_control|planex_int\(23) & (\render|Add0~31\ $ (GND))) # (!\game_control|planex_int\(23) & (!\render|Add0~31\ & VCC))
-- \render|Add0~33\ = CARRY((\game_control|planex_int\(23) & !\render|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(23),
	datad => VCC,
	cin => \render|Add0~31\,
	combout => \render|Add0~32_combout\,
	cout => \render|Add0~33\);

-- Location: LCCOMB_X17_Y21_N10
\render|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~34_combout\ = (\game_control|planex_int\(24) & (!\render|Add0~33\)) # (!\game_control|planex_int\(24) & ((\render|Add0~33\) # (GND)))
-- \render|Add0~35\ = CARRY((!\render|Add0~33\) # (!\game_control|planex_int\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(24),
	datad => VCC,
	cin => \render|Add0~33\,
	combout => \render|Add0~34_combout\,
	cout => \render|Add0~35\);

-- Location: LCCOMB_X17_Y21_N12
\render|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~36_combout\ = (\game_control|planex_int\(25) & (\render|Add0~35\ $ (GND))) # (!\game_control|planex_int\(25) & (!\render|Add0~35\ & VCC))
-- \render|Add0~37\ = CARRY((\game_control|planex_int\(25) & !\render|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(25),
	datad => VCC,
	cin => \render|Add0~35\,
	combout => \render|Add0~36_combout\,
	cout => \render|Add0~37\);

-- Location: LCCOMB_X17_Y21_N14
\render|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~38_combout\ = (\game_control|planex_int\(26) & (!\render|Add0~37\)) # (!\game_control|planex_int\(26) & ((\render|Add0~37\) # (GND)))
-- \render|Add0~39\ = CARRY((!\render|Add0~37\) # (!\game_control|planex_int\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(26),
	datad => VCC,
	cin => \render|Add0~37\,
	combout => \render|Add0~38_combout\,
	cout => \render|Add0~39\);

-- Location: LCCOMB_X17_Y21_N16
\render|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~40_combout\ = (\game_control|planex_int\(27) & (\render|Add0~39\ $ (GND))) # (!\game_control|planex_int\(27) & (!\render|Add0~39\ & VCC))
-- \render|Add0~41\ = CARRY((\game_control|planex_int\(27) & !\render|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(27),
	datad => VCC,
	cin => \render|Add0~39\,
	combout => \render|Add0~40_combout\,
	cout => \render|Add0~41\);

-- Location: LCCOMB_X17_Y21_N18
\render|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~42_combout\ = (\game_control|planex_int\(28) & (!\render|Add0~41\)) # (!\game_control|planex_int\(28) & ((\render|Add0~41\) # (GND)))
-- \render|Add0~43\ = CARRY((!\render|Add0~41\) # (!\game_control|planex_int\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(28),
	datad => VCC,
	cin => \render|Add0~41\,
	combout => \render|Add0~42_combout\,
	cout => \render|Add0~43\);

-- Location: LCCOMB_X17_Y21_N20
\render|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~44_combout\ = (\game_control|planex_int\(29) & (\render|Add0~43\ $ (GND))) # (!\game_control|planex_int\(29) & (!\render|Add0~43\ & VCC))
-- \render|Add0~45\ = CARRY((\game_control|planex_int\(29) & !\render|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(29),
	datad => VCC,
	cin => \render|Add0~43\,
	combout => \render|Add0~44_combout\,
	cout => \render|Add0~45\);

-- Location: LCCOMB_X17_Y21_N22
\render|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~46_combout\ = (\game_control|planex_int\(30) & (!\render|Add0~45\)) # (!\game_control|planex_int\(30) & ((\render|Add0~45\) # (GND)))
-- \render|Add0~47\ = CARRY((!\render|Add0~45\) # (!\game_control|planex_int\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(30),
	datad => VCC,
	cin => \render|Add0~45\,
	combout => \render|Add0~46_combout\,
	cout => \render|Add0~47\);

-- Location: LCCOMB_X17_Y21_N24
\render|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add0~48_combout\ = \render|Add0~47\ $ (!\game_control|planex_int\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \game_control|planex_int\(31),
	cin => \render|Add0~47\,
	combout => \render|Add0~48_combout\);

-- Location: LCCOMB_X15_Y20_N2
\render|is_plane~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~0_combout\ = (!\u_VGA_sync|v_count\(9) & (!\render|Add0~48_combout\ & !\u_VGA_sync|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(9),
	datac => \render|Add0~48_combout\,
	datad => \u_VGA_sync|v_count\(8),
	combout => \render|is_plane~0_combout\);

-- Location: LCCOMB_X15_Y20_N26
\render|is_plane~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~1_combout\ = (\render|is_plane~0_combout\ & ((\u_VGA_sync|v_count\(6) & (!\u_VGA_sync|v_count\(7) & \render|LessThan3~0_combout\)) # (!\u_VGA_sync|v_count\(6) & (\u_VGA_sync|v_count\(7) & !\render|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(6),
	datab => \u_VGA_sync|v_count\(7),
	datac => \render|LessThan3~0_combout\,
	datad => \render|is_plane~0_combout\,
	combout => \render|is_plane~1_combout\);

-- Location: LCCOMB_X17_Y22_N4
\render|is_plane~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~2_combout\ = (!\game_control|planex_int\(12) & (!\game_control|planex_int\(11) & (!\game_control|planex_int\(13) & !\game_control|planex_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(12),
	datab => \game_control|planex_int\(11),
	datac => \game_control|planex_int\(13),
	datad => \game_control|planex_int\(10),
	combout => \render|is_plane~2_combout\);

-- Location: LCCOMB_X19_Y22_N2
\render|is_plane~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~5_combout\ = (!\game_control|planex_int\(22) & (!\game_control|planex_int\(24) & (!\game_control|planex_int\(23) & !\game_control|planex_int\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(22),
	datab => \game_control|planex_int\(24),
	datac => \game_control|planex_int\(23),
	datad => \game_control|planex_int\(25),
	combout => \render|is_plane~5_combout\);

-- Location: LCCOMB_X17_Y22_N2
\render|is_plane~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~3_combout\ = (!\game_control|planex_int\(16) & (!\game_control|planex_int\(14) & (!\game_control|planex_int\(15) & !\game_control|planex_int\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(16),
	datab => \game_control|planex_int\(14),
	datac => \game_control|planex_int\(15),
	datad => \game_control|planex_int\(17),
	combout => \render|is_plane~3_combout\);

-- Location: LCCOMB_X19_Y22_N0
\render|is_plane~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~4_combout\ = (!\game_control|planex_int\(20) & (!\game_control|planex_int\(21) & (!\game_control|planex_int\(19) & !\game_control|planex_int\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(20),
	datab => \game_control|planex_int\(21),
	datac => \game_control|planex_int\(19),
	datad => \game_control|planex_int\(18),
	combout => \render|is_plane~4_combout\);

-- Location: LCCOMB_X19_Y22_N28
\render|is_plane~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~6_combout\ = (\render|is_plane~2_combout\ & (\render|is_plane~5_combout\ & (\render|is_plane~3_combout\ & \render|is_plane~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|is_plane~2_combout\,
	datab => \render|is_plane~5_combout\,
	datac => \render|is_plane~3_combout\,
	datad => \render|is_plane~4_combout\,
	combout => \render|is_plane~6_combout\);

-- Location: LCCOMB_X17_Y21_N30
\render|is_plane~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~7_combout\ = (!\game_control|planex_int\(29) & (!\game_control|planex_int\(28) & (!\game_control|planex_int\(27) & !\game_control|planex_int\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(29),
	datab => \game_control|planex_int\(28),
	datac => \game_control|planex_int\(27),
	datad => \game_control|planex_int\(26),
	combout => \render|is_plane~7_combout\);

-- Location: LCCOMB_X21_Y23_N12
\render|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~1_cout\ = CARRY((!\u_VGA_sync|h_count\(0) & \game_control|planex_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(0),
	datab => \game_control|planex_int\(0),
	datad => VCC,
	cout => \render|LessThan0~1_cout\);

-- Location: LCCOMB_X21_Y23_N14
\render|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~3_cout\ = CARRY((\u_VGA_sync|h_count\(1) & ((!\render|LessThan0~1_cout\) # (!\game_control|planex_int\(1)))) # (!\u_VGA_sync|h_count\(1) & (!\game_control|planex_int\(1) & !\render|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(1),
	datab => \game_control|planex_int\(1),
	datad => VCC,
	cin => \render|LessThan0~1_cout\,
	cout => \render|LessThan0~3_cout\);

-- Location: LCCOMB_X21_Y23_N16
\render|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~5_cout\ = CARRY((\u_VGA_sync|h_count\(2) & (\game_control|planex_int\(2) & !\render|LessThan0~3_cout\)) # (!\u_VGA_sync|h_count\(2) & ((\game_control|planex_int\(2)) # (!\render|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(2),
	datab => \game_control|planex_int\(2),
	datad => VCC,
	cin => \render|LessThan0~3_cout\,
	cout => \render|LessThan0~5_cout\);

-- Location: LCCOMB_X21_Y23_N18
\render|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~7_cout\ = CARRY((\u_VGA_sync|h_count\(3) & ((!\render|LessThan0~5_cout\) # (!\game_control|planex_int\(3)))) # (!\u_VGA_sync|h_count\(3) & (!\game_control|planex_int\(3) & !\render|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(3),
	datab => \game_control|planex_int\(3),
	datad => VCC,
	cin => \render|LessThan0~5_cout\,
	cout => \render|LessThan0~7_cout\);

-- Location: LCCOMB_X21_Y23_N20
\render|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~9_cout\ = CARRY((\game_control|planex_int\(4) & ((!\render|LessThan0~7_cout\) # (!\u_VGA_sync|h_count\(4)))) # (!\game_control|planex_int\(4) & (!\u_VGA_sync|h_count\(4) & !\render|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(4),
	datab => \u_VGA_sync|h_count\(4),
	datad => VCC,
	cin => \render|LessThan0~7_cout\,
	cout => \render|LessThan0~9_cout\);

-- Location: LCCOMB_X21_Y23_N22
\render|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~11_cout\ = CARRY((\game_control|planex_int\(5) & (\u_VGA_sync|h_count\(5) & !\render|LessThan0~9_cout\)) # (!\game_control|planex_int\(5) & ((\u_VGA_sync|h_count\(5)) # (!\render|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(5),
	datab => \u_VGA_sync|h_count\(5),
	datad => VCC,
	cin => \render|LessThan0~9_cout\,
	cout => \render|LessThan0~11_cout\);

-- Location: LCCOMB_X21_Y23_N24
\render|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~13_cout\ = CARRY((\game_control|planex_int\(6) & ((!\render|LessThan0~11_cout\) # (!\u_VGA_sync|h_count\(6)))) # (!\game_control|planex_int\(6) & (!\u_VGA_sync|h_count\(6) & !\render|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(6),
	datab => \u_VGA_sync|h_count\(6),
	datad => VCC,
	cin => \render|LessThan0~11_cout\,
	cout => \render|LessThan0~13_cout\);

-- Location: LCCOMB_X21_Y23_N26
\render|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~15_cout\ = CARRY((\u_VGA_sync|h_count\(7) & ((\game_control|planex_int\(7)) # (!\render|LessThan0~13_cout\))) # (!\u_VGA_sync|h_count\(7) & (\game_control|planex_int\(7) & !\render|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(7),
	datab => \game_control|planex_int\(7),
	datad => VCC,
	cin => \render|LessThan0~13_cout\,
	cout => \render|LessThan0~15_cout\);

-- Location: LCCOMB_X21_Y23_N28
\render|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~17_cout\ = CARRY((\u_VGA_sync|h_count\(8) & (\game_control|planex_int\(8) & !\render|LessThan0~15_cout\)) # (!\u_VGA_sync|h_count\(8) & ((\game_control|planex_int\(8)) # (!\render|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(8),
	datab => \game_control|planex_int\(8),
	datad => VCC,
	cin => \render|LessThan0~15_cout\,
	cout => \render|LessThan0~17_cout\);

-- Location: LCCOMB_X21_Y23_N30
\render|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan0~18_combout\ = (\u_VGA_sync|h_count\(9) & (\render|LessThan0~17_cout\ & !\game_control|planex_int\(9))) # (!\u_VGA_sync|h_count\(9) & ((\render|LessThan0~17_cout\) # (!\game_control|planex_int\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(9),
	datad => \game_control|planex_int\(9),
	cin => \render|LessThan0~17_cout\,
	combout => \render|LessThan0~18_combout\);

-- Location: LCCOMB_X19_Y21_N4
\render|is_plane~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~8_combout\ = (!\game_control|planex_int\(30) & (\render|is_plane~6_combout\ & (\render|is_plane~7_combout\ & !\render|LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(30),
	datab => \render|is_plane~6_combout\,
	datac => \render|is_plane~7_combout\,
	datad => \render|LessThan0~18_combout\,
	combout => \render|is_plane~8_combout\);

-- Location: LCCOMB_X17_Y21_N28
\render|LessThan1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~25_combout\ = (\render|Add0~36_combout\) # ((\render|Add0~40_combout\) # ((\render|Add0~38_combout\) # (\render|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add0~36_combout\,
	datab => \render|Add0~40_combout\,
	datac => \render|Add0~38_combout\,
	datad => \render|Add0~42_combout\,
	combout => \render|LessThan1~25_combout\);

-- Location: LCCOMB_X17_Y22_N6
\render|LessThan1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~21_combout\ = (\render|Add0~18_combout\) # ((\render|Add0~16_combout\) # ((\render|Add0~14_combout\) # (\render|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add0~18_combout\,
	datab => \render|Add0~16_combout\,
	datac => \render|Add0~14_combout\,
	datad => \render|Add0~12_combout\,
	combout => \render|LessThan1~21_combout\);

-- Location: LCCOMB_X16_Y21_N0
\render|LessThan1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~22_combout\ = (\render|Add0~26_combout\) # ((\render|Add0~22_combout\) # ((\render|Add0~24_combout\) # (\render|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add0~26_combout\,
	datab => \render|Add0~22_combout\,
	datac => \render|Add0~24_combout\,
	datad => \render|Add0~20_combout\,
	combout => \render|LessThan1~22_combout\);

-- Location: LCCOMB_X21_Y22_N4
\render|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~1_cout\ = CARRY((!\u_VGA_sync|h_count\(0) & \game_control|planex_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(0),
	datab => \game_control|planex_int\(0),
	datad => VCC,
	cout => \render|LessThan1~1_cout\);

-- Location: LCCOMB_X21_Y22_N6
\render|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~3_cout\ = CARRY((\u_VGA_sync|h_count\(1) & ((!\render|LessThan1~1_cout\) # (!\game_control|planex_int\(1)))) # (!\u_VGA_sync|h_count\(1) & (!\game_control|planex_int\(1) & !\render|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(1),
	datab => \game_control|planex_int\(1),
	datad => VCC,
	cin => \render|LessThan1~1_cout\,
	cout => \render|LessThan1~3_cout\);

-- Location: LCCOMB_X21_Y22_N8
\render|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~5_cout\ = CARRY((\game_control|planex_int\(2) & ((!\render|LessThan1~3_cout\) # (!\u_VGA_sync|h_count\(2)))) # (!\game_control|planex_int\(2) & (!\u_VGA_sync|h_count\(2) & !\render|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(2),
	datab => \u_VGA_sync|h_count\(2),
	datad => VCC,
	cin => \render|LessThan1~3_cout\,
	cout => \render|LessThan1~5_cout\);

-- Location: LCCOMB_X21_Y22_N10
\render|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~7_cout\ = CARRY((\u_VGA_sync|h_count\(3) & ((!\render|LessThan1~5_cout\) # (!\game_control|planex_int\(3)))) # (!\u_VGA_sync|h_count\(3) & (!\game_control|planex_int\(3) & !\render|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(3),
	datab => \game_control|planex_int\(3),
	datad => VCC,
	cin => \render|LessThan1~5_cout\,
	cout => \render|LessThan1~7_cout\);

-- Location: LCCOMB_X21_Y22_N12
\render|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~9_cout\ = CARRY((\u_VGA_sync|h_count\(4) & (\game_control|planex_int\(4) & !\render|LessThan1~7_cout\)) # (!\u_VGA_sync|h_count\(4) & ((\game_control|planex_int\(4)) # (!\render|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(4),
	datab => \game_control|planex_int\(4),
	datad => VCC,
	cin => \render|LessThan1~7_cout\,
	cout => \render|LessThan1~9_cout\);

-- Location: LCCOMB_X21_Y22_N14
\render|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~11_cout\ = CARRY((\u_VGA_sync|h_count\(5) & ((!\render|LessThan1~9_cout\) # (!\game_control|planex_int\(5)))) # (!\u_VGA_sync|h_count\(5) & (!\game_control|planex_int\(5) & !\render|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(5),
	datab => \game_control|planex_int\(5),
	datad => VCC,
	cin => \render|LessThan1~9_cout\,
	cout => \render|LessThan1~11_cout\);

-- Location: LCCOMB_X21_Y22_N16
\render|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~13_cout\ = CARRY((\u_VGA_sync|h_count\(6) & (!\game_control|planex_int\(6) & !\render|LessThan1~11_cout\)) # (!\u_VGA_sync|h_count\(6) & ((!\render|LessThan1~11_cout\) # (!\game_control|planex_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(6),
	datab => \game_control|planex_int\(6),
	datad => VCC,
	cin => \render|LessThan1~11_cout\,
	cout => \render|LessThan1~13_cout\);

-- Location: LCCOMB_X21_Y22_N18
\render|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~15_cout\ = CARRY((\render|Add0~0_combout\ & (\u_VGA_sync|h_count\(7) & !\render|LessThan1~13_cout\)) # (!\render|Add0~0_combout\ & ((\u_VGA_sync|h_count\(7)) # (!\render|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add0~0_combout\,
	datab => \u_VGA_sync|h_count\(7),
	datad => VCC,
	cin => \render|LessThan1~13_cout\,
	cout => \render|LessThan1~15_cout\);

-- Location: LCCOMB_X21_Y22_N20
\render|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~17_cout\ = CARRY((\render|Add0~2_combout\ & ((!\render|LessThan1~15_cout\) # (!\u_VGA_sync|h_count\(8)))) # (!\render|Add0~2_combout\ & (!\u_VGA_sync|h_count\(8) & !\render|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add0~2_combout\,
	datab => \u_VGA_sync|h_count\(8),
	datad => VCC,
	cin => \render|LessThan1~15_cout\,
	cout => \render|LessThan1~17_cout\);

-- Location: LCCOMB_X21_Y22_N22
\render|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~18_combout\ = (\render|Add0~4_combout\ & ((\render|LessThan1~17_cout\) # (!\u_VGA_sync|h_count\(9)))) # (!\render|Add0~4_combout\ & (\render|LessThan1~17_cout\ & !\u_VGA_sync|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add0~4_combout\,
	datad => \u_VGA_sync|h_count\(9),
	cin => \render|LessThan1~17_cout\,
	combout => \render|LessThan1~18_combout\);

-- Location: LCCOMB_X17_Y22_N0
\render|LessThan1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~20_combout\ = (\render|LessThan1~18_combout\) # ((\render|Add0~8_combout\) # ((\render|Add0~6_combout\) # (\render|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|LessThan1~18_combout\,
	datab => \render|Add0~8_combout\,
	datac => \render|Add0~6_combout\,
	datad => \render|Add0~10_combout\,
	combout => \render|LessThan1~20_combout\);

-- Location: LCCOMB_X17_Y21_N26
\render|LessThan1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~23_combout\ = (\render|Add0~34_combout\) # ((\render|Add0~32_combout\) # ((\render|Add0~28_combout\) # (\render|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add0~34_combout\,
	datab => \render|Add0~32_combout\,
	datac => \render|Add0~28_combout\,
	datad => \render|Add0~30_combout\,
	combout => \render|LessThan1~23_combout\);

-- Location: LCCOMB_X16_Y21_N2
\render|LessThan1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~24_combout\ = (\render|LessThan1~21_combout\) # ((\render|LessThan1~22_combout\) # ((\render|LessThan1~20_combout\) # (\render|LessThan1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|LessThan1~21_combout\,
	datab => \render|LessThan1~22_combout\,
	datac => \render|LessThan1~20_combout\,
	datad => \render|LessThan1~23_combout\,
	combout => \render|LessThan1~24_combout\);

-- Location: LCCOMB_X16_Y21_N28
\render|LessThan1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan1~26_combout\ = (\render|Add0~44_combout\) # ((\render|Add0~46_combout\) # ((\render|LessThan1~25_combout\) # (\render|LessThan1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add0~44_combout\,
	datab => \render|Add0~46_combout\,
	datac => \render|LessThan1~25_combout\,
	datad => \render|LessThan1~24_combout\,
	combout => \render|LessThan1~26_combout\);

-- Location: LCCOMB_X17_Y17_N10
\render|is_plane~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_plane~9_combout\ = (\render|is_plane~1_combout\ & (\render|LessThan1~26_combout\ & ((\game_control|planex_int\(31)) # (\render|is_plane~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|is_plane~1_combout\,
	datab => \game_control|planex_int\(31),
	datac => \render|is_plane~8_combout\,
	datad => \render|LessThan1~26_combout\,
	combout => \render|is_plane~9_combout\);

-- Location: LCCOMB_X17_Y17_N2
\render|VGA_R~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~14_combout\ = (\u_VGA_sync|video_on~0_combout\ & (!\u_VGA_sync|LessThan5~0_combout\ & !\render|is_plane~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|video_on~0_combout\,
	datac => \u_VGA_sync|LessThan5~0_combout\,
	datad => \render|is_plane~9_combout\,
	combout => \render|VGA_R~14_combout\);

-- Location: LCCOMB_X19_Y20_N4
\render|Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add10~1_cout\ = CARRY(\u_VGA_sync|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(2),
	datad => VCC,
	cout => \render|Add10~1_cout\);

-- Location: LCCOMB_X19_Y20_N6
\render|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add10~2_combout\ = (\u_VGA_sync|v_count\(3) & (\render|Add10~1_cout\ & VCC)) # (!\u_VGA_sync|v_count\(3) & (!\render|Add10~1_cout\))
-- \render|Add10~3\ = CARRY((!\u_VGA_sync|v_count\(3) & !\render|Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(3),
	datad => VCC,
	cin => \render|Add10~1_cout\,
	combout => \render|Add10~2_combout\,
	cout => \render|Add10~3\);

-- Location: LCCOMB_X19_Y20_N8
\render|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add10~4_combout\ = (\u_VGA_sync|v_count\(4) & ((GND) # (!\render|Add10~3\))) # (!\u_VGA_sync|v_count\(4) & (\render|Add10~3\ $ (GND)))
-- \render|Add10~5\ = CARRY((\u_VGA_sync|v_count\(4)) # (!\render|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(4),
	datad => VCC,
	cin => \render|Add10~3\,
	combout => \render|Add10~4_combout\,
	cout => \render|Add10~5\);

-- Location: LCCOMB_X19_Y20_N10
\render|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add10~6_combout\ = (\u_VGA_sync|v_count\(5) & (!\render|Add10~5\)) # (!\u_VGA_sync|v_count\(5) & ((\render|Add10~5\) # (GND)))
-- \render|Add10~7\ = CARRY((!\render|Add10~5\) # (!\u_VGA_sync|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(5),
	datad => VCC,
	cin => \render|Add10~5\,
	combout => \render|Add10~6_combout\,
	cout => \render|Add10~7\);

-- Location: LCCOMB_X19_Y20_N12
\render|Add10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add10~9_cout\ = CARRY((\u_VGA_sync|v_count\(6) & !\render|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(6),
	datad => VCC,
	cin => \render|Add10~7\,
	cout => \render|Add10~9_cout\);

-- Location: LCCOMB_X19_Y20_N14
\render|Add10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add10~11_cout\ = CARRY((!\u_VGA_sync|v_count\(7) & !\render|Add10~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(7),
	datad => VCC,
	cin => \render|Add10~9_cout\,
	cout => \render|Add10~11_cout\);

-- Location: LCCOMB_X19_Y20_N16
\render|Add10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add10~13_cout\ = CARRY((\u_VGA_sync|v_count\(8)) # (!\render|Add10~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(8),
	datad => VCC,
	cin => \render|Add10~11_cout\,
	cout => \render|Add10~13_cout\);

-- Location: LCCOMB_X19_Y20_N18
\render|Add10~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add10~15_cout\ = CARRY((!\u_VGA_sync|v_count\(9) & !\render|Add10~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(9),
	datad => VCC,
	cin => \render|Add10~13_cout\,
	cout => \render|Add10~15_cout\);

-- Location: LCCOMB_X19_Y20_N20
\render|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add10~16_combout\ = \render|Add10~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \render|Add10~15_cout\,
	combout => \render|Add10~16_combout\);

-- Location: LCCOMB_X17_Y20_N2
\u_VGA_sync|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|Equal1~3_combout\ = (!\u_VGA_sync|v_count\(1) & !\u_VGA_sync|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_VGA_sync|v_count\(1),
	datad => \u_VGA_sync|v_count\(0),
	combout => \u_VGA_sync|Equal1~3_combout\);

-- Location: LCCOMB_X19_Y20_N26
\render|Add11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add11~3_combout\ = (!\u_VGA_sync|v_count\(2) & (\render|Add10~16_combout\ & (!\u_VGA_sync|Equal1~3_combout\ & \render|Add10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(2),
	datab => \render|Add10~16_combout\,
	datac => \u_VGA_sync|Equal1~3_combout\,
	datad => \render|Add10~2_combout\,
	combout => \render|Add11~3_combout\);

-- Location: LCCOMB_X19_Y20_N2
\render|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add11~2_combout\ = \render|Add10~2_combout\ $ (((!\u_VGA_sync|v_count\(2) & (\render|Add10~16_combout\ & !\u_VGA_sync|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(2),
	datab => \render|Add10~16_combout\,
	datac => \u_VGA_sync|Equal1~3_combout\,
	datad => \render|Add10~2_combout\,
	combout => \render|Add11~2_combout\);

-- Location: LCCOMB_X19_Y20_N0
\render|Mux26~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux26~6_combout\ = (!\render|Add11~2_combout\ & ((\render|Add10~6_combout\ & (!\render|Add10~4_combout\ & !\render|Add11~3_combout\)) # (!\render|Add10~6_combout\ & (\render|Add10~4_combout\ & \render|Add11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add10~6_combout\,
	datab => \render|Add10~4_combout\,
	datac => \render|Add11~3_combout\,
	datad => \render|Add11~2_combout\,
	combout => \render|Mux26~6_combout\);

-- Location: LCCOMB_X19_Y20_N22
\render|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add11~4_combout\ = \u_VGA_sync|v_count\(2) $ (((\render|Add10~16_combout\ & ((\u_VGA_sync|v_count\(0)) # (\u_VGA_sync|v_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(2),
	datab => \u_VGA_sync|v_count\(0),
	datac => \u_VGA_sync|v_count\(1),
	datad => \render|Add10~16_combout\,
	combout => \render|Add11~4_combout\);

-- Location: LCCOMB_X20_Y20_N26
\render|Mux26~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux26~7_combout\ = (\render|Mux26~6_combout\ & \render|Add11~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \render|Mux26~6_combout\,
	datad => \render|Add11~4_combout\,
	combout => \render|Mux26~7_combout\);

-- Location: LCCOMB_X20_Y23_N0
\render|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~0_combout\ = (\game_control|planex_int\(0) & (\u_VGA_sync|h_count\(0) $ (VCC))) # (!\game_control|planex_int\(0) & ((\u_VGA_sync|h_count\(0)) # (GND)))
-- \render|Add8~1\ = CARRY((\u_VGA_sync|h_count\(0)) # (!\game_control|planex_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(0),
	datab => \u_VGA_sync|h_count\(0),
	datad => VCC,
	combout => \render|Add8~0_combout\,
	cout => \render|Add8~1\);

-- Location: LCCOMB_X20_Y23_N2
\render|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~2_combout\ = (\game_control|planex_int\(1) & ((\u_VGA_sync|h_count\(1) & (!\render|Add8~1\)) # (!\u_VGA_sync|h_count\(1) & ((\render|Add8~1\) # (GND))))) # (!\game_control|planex_int\(1) & ((\u_VGA_sync|h_count\(1) & (\render|Add8~1\ & VCC)) 
-- # (!\u_VGA_sync|h_count\(1) & (!\render|Add8~1\))))
-- \render|Add8~3\ = CARRY((\game_control|planex_int\(1) & ((!\render|Add8~1\) # (!\u_VGA_sync|h_count\(1)))) # (!\game_control|planex_int\(1) & (!\u_VGA_sync|h_count\(1) & !\render|Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(1),
	datab => \u_VGA_sync|h_count\(1),
	datad => VCC,
	cin => \render|Add8~1\,
	combout => \render|Add8~2_combout\,
	cout => \render|Add8~3\);

-- Location: LCCOMB_X20_Y23_N4
\render|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~4_combout\ = ((\game_control|planex_int\(2) $ (\u_VGA_sync|h_count\(2) $ (\render|Add8~3\)))) # (GND)
-- \render|Add8~5\ = CARRY((\game_control|planex_int\(2) & (\u_VGA_sync|h_count\(2) & !\render|Add8~3\)) # (!\game_control|planex_int\(2) & ((\u_VGA_sync|h_count\(2)) # (!\render|Add8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(2),
	datab => \u_VGA_sync|h_count\(2),
	datad => VCC,
	cin => \render|Add8~3\,
	combout => \render|Add8~4_combout\,
	cout => \render|Add8~5\);

-- Location: LCCOMB_X20_Y23_N6
\render|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~6_combout\ = (\game_control|planex_int\(3) & ((\u_VGA_sync|h_count\(3) & (!\render|Add8~5\)) # (!\u_VGA_sync|h_count\(3) & ((\render|Add8~5\) # (GND))))) # (!\game_control|planex_int\(3) & ((\u_VGA_sync|h_count\(3) & (\render|Add8~5\ & VCC)) 
-- # (!\u_VGA_sync|h_count\(3) & (!\render|Add8~5\))))
-- \render|Add8~7\ = CARRY((\game_control|planex_int\(3) & ((!\render|Add8~5\) # (!\u_VGA_sync|h_count\(3)))) # (!\game_control|planex_int\(3) & (!\u_VGA_sync|h_count\(3) & !\render|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(3),
	datab => \u_VGA_sync|h_count\(3),
	datad => VCC,
	cin => \render|Add8~5\,
	combout => \render|Add8~6_combout\,
	cout => \render|Add8~7\);

-- Location: LCCOMB_X20_Y23_N8
\render|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~8_combout\ = ((\u_VGA_sync|h_count\(4) $ (\game_control|planex_int\(4) $ (\render|Add8~7\)))) # (GND)
-- \render|Add8~9\ = CARRY((\u_VGA_sync|h_count\(4) & ((!\render|Add8~7\) # (!\game_control|planex_int\(4)))) # (!\u_VGA_sync|h_count\(4) & (!\game_control|planex_int\(4) & !\render|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(4),
	datab => \game_control|planex_int\(4),
	datad => VCC,
	cin => \render|Add8~7\,
	combout => \render|Add8~8_combout\,
	cout => \render|Add8~9\);

-- Location: LCCOMB_X20_Y23_N10
\render|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~10_combout\ = (\u_VGA_sync|h_count\(5) & ((\game_control|planex_int\(5) & (!\render|Add8~9\)) # (!\game_control|planex_int\(5) & (\render|Add8~9\ & VCC)))) # (!\u_VGA_sync|h_count\(5) & ((\game_control|planex_int\(5) & ((\render|Add8~9\) # 
-- (GND))) # (!\game_control|planex_int\(5) & (!\render|Add8~9\))))
-- \render|Add8~11\ = CARRY((\u_VGA_sync|h_count\(5) & (\game_control|planex_int\(5) & !\render|Add8~9\)) # (!\u_VGA_sync|h_count\(5) & ((\game_control|planex_int\(5)) # (!\render|Add8~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(5),
	datab => \game_control|planex_int\(5),
	datad => VCC,
	cin => \render|Add8~9\,
	combout => \render|Add8~10_combout\,
	cout => \render|Add8~11\);

-- Location: LCCOMB_X20_Y23_N12
\render|Add8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~13_cout\ = CARRY((\u_VGA_sync|h_count\(6) & ((!\render|Add8~11\) # (!\game_control|planex_int\(6)))) # (!\u_VGA_sync|h_count\(6) & (!\game_control|planex_int\(6) & !\render|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(6),
	datab => \game_control|planex_int\(6),
	datad => VCC,
	cin => \render|Add8~11\,
	cout => \render|Add8~13_cout\);

-- Location: LCCOMB_X20_Y23_N14
\render|Add8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~15_cout\ = CARRY((\u_VGA_sync|h_count\(7) & (!\game_control|planex_int\(7) & !\render|Add8~13_cout\)) # (!\u_VGA_sync|h_count\(7) & ((!\render|Add8~13_cout\) # (!\game_control|planex_int\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(7),
	datab => \game_control|planex_int\(7),
	datad => VCC,
	cin => \render|Add8~13_cout\,
	cout => \render|Add8~15_cout\);

-- Location: LCCOMB_X20_Y23_N16
\render|Add8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~17_cout\ = CARRY((\u_VGA_sync|h_count\(8) & ((!\render|Add8~15_cout\) # (!\game_control|planex_int\(8)))) # (!\u_VGA_sync|h_count\(8) & (!\game_control|planex_int\(8) & !\render|Add8~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(8),
	datab => \game_control|planex_int\(8),
	datad => VCC,
	cin => \render|Add8~15_cout\,
	cout => \render|Add8~17_cout\);

-- Location: LCCOMB_X20_Y23_N18
\render|Add8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~19_cout\ = CARRY((\game_control|planex_int\(9) & (!\u_VGA_sync|h_count\(9) & !\render|Add8~17_cout\)) # (!\game_control|planex_int\(9) & ((!\render|Add8~17_cout\) # (!\u_VGA_sync|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(9),
	datab => \u_VGA_sync|h_count\(9),
	datad => VCC,
	cin => \render|Add8~17_cout\,
	cout => \render|Add8~19_cout\);

-- Location: LCCOMB_X20_Y23_N20
\render|Add8~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~21_cout\ = CARRY((!\game_control|planex_int\(10) & !\render|Add8~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(10),
	datad => VCC,
	cin => \render|Add8~19_cout\,
	cout => \render|Add8~21_cout\);

-- Location: LCCOMB_X20_Y23_N22
\render|Add8~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~23_cout\ = CARRY((\game_control|planex_int\(11)) # (!\render|Add8~21_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(11),
	datad => VCC,
	cin => \render|Add8~21_cout\,
	cout => \render|Add8~23_cout\);

-- Location: LCCOMB_X20_Y23_N24
\render|Add8~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~25_cout\ = CARRY((!\game_control|planex_int\(12) & !\render|Add8~23_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(12),
	datad => VCC,
	cin => \render|Add8~23_cout\,
	cout => \render|Add8~25_cout\);

-- Location: LCCOMB_X20_Y23_N26
\render|Add8~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~27_cout\ = CARRY((\game_control|planex_int\(13)) # (!\render|Add8~25_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(13),
	datad => VCC,
	cin => \render|Add8~25_cout\,
	cout => \render|Add8~27_cout\);

-- Location: LCCOMB_X20_Y23_N28
\render|Add8~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~29_cout\ = CARRY((!\game_control|planex_int\(14) & !\render|Add8~27_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(14),
	datad => VCC,
	cin => \render|Add8~27_cout\,
	cout => \render|Add8~29_cout\);

-- Location: LCCOMB_X20_Y23_N30
\render|Add8~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~31_cout\ = CARRY((\game_control|planex_int\(15)) # (!\render|Add8~29_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(15),
	datad => VCC,
	cin => \render|Add8~29_cout\,
	cout => \render|Add8~31_cout\);

-- Location: LCCOMB_X20_Y22_N0
\render|Add8~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~33_cout\ = CARRY((!\game_control|planex_int\(16) & !\render|Add8~31_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(16),
	datad => VCC,
	cin => \render|Add8~31_cout\,
	cout => \render|Add8~33_cout\);

-- Location: LCCOMB_X20_Y22_N2
\render|Add8~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~35_cout\ = CARRY((\game_control|planex_int\(17)) # (!\render|Add8~33_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(17),
	datad => VCC,
	cin => \render|Add8~33_cout\,
	cout => \render|Add8~35_cout\);

-- Location: LCCOMB_X20_Y22_N4
\render|Add8~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~37_cout\ = CARRY((!\game_control|planex_int\(18) & !\render|Add8~35_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(18),
	datad => VCC,
	cin => \render|Add8~35_cout\,
	cout => \render|Add8~37_cout\);

-- Location: LCCOMB_X20_Y22_N6
\render|Add8~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~39_cout\ = CARRY((\game_control|planex_int\(19)) # (!\render|Add8~37_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(19),
	datad => VCC,
	cin => \render|Add8~37_cout\,
	cout => \render|Add8~39_cout\);

-- Location: LCCOMB_X20_Y22_N8
\render|Add8~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~41_cout\ = CARRY((!\game_control|planex_int\(20) & !\render|Add8~39_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(20),
	datad => VCC,
	cin => \render|Add8~39_cout\,
	cout => \render|Add8~41_cout\);

-- Location: LCCOMB_X20_Y22_N10
\render|Add8~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~43_cout\ = CARRY((\game_control|planex_int\(21)) # (!\render|Add8~41_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(21),
	datad => VCC,
	cin => \render|Add8~41_cout\,
	cout => \render|Add8~43_cout\);

-- Location: LCCOMB_X20_Y22_N12
\render|Add8~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~45_cout\ = CARRY((!\game_control|planex_int\(22) & !\render|Add8~43_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(22),
	datad => VCC,
	cin => \render|Add8~43_cout\,
	cout => \render|Add8~45_cout\);

-- Location: LCCOMB_X20_Y22_N14
\render|Add8~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~47_cout\ = CARRY((\game_control|planex_int\(23)) # (!\render|Add8~45_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(23),
	datad => VCC,
	cin => \render|Add8~45_cout\,
	cout => \render|Add8~47_cout\);

-- Location: LCCOMB_X20_Y22_N16
\render|Add8~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~49_cout\ = CARRY((!\game_control|planex_int\(24) & !\render|Add8~47_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(24),
	datad => VCC,
	cin => \render|Add8~47_cout\,
	cout => \render|Add8~49_cout\);

-- Location: LCCOMB_X20_Y22_N18
\render|Add8~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~51_cout\ = CARRY((\game_control|planex_int\(25)) # (!\render|Add8~49_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(25),
	datad => VCC,
	cin => \render|Add8~49_cout\,
	cout => \render|Add8~51_cout\);

-- Location: LCCOMB_X20_Y22_N20
\render|Add8~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~53_cout\ = CARRY((!\game_control|planex_int\(26) & !\render|Add8~51_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(26),
	datad => VCC,
	cin => \render|Add8~51_cout\,
	cout => \render|Add8~53_cout\);

-- Location: LCCOMB_X20_Y22_N22
\render|Add8~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~55_cout\ = CARRY((\game_control|planex_int\(27)) # (!\render|Add8~53_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(27),
	datad => VCC,
	cin => \render|Add8~53_cout\,
	cout => \render|Add8~55_cout\);

-- Location: LCCOMB_X20_Y22_N24
\render|Add8~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~57_cout\ = CARRY((!\game_control|planex_int\(28) & !\render|Add8~55_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(28),
	datad => VCC,
	cin => \render|Add8~55_cout\,
	cout => \render|Add8~57_cout\);

-- Location: LCCOMB_X20_Y22_N26
\render|Add8~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~59_cout\ = CARRY((\game_control|planex_int\(29)) # (!\render|Add8~57_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|planex_int\(29),
	datad => VCC,
	cin => \render|Add8~57_cout\,
	cout => \render|Add8~59_cout\);

-- Location: LCCOMB_X20_Y22_N28
\render|Add8~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~61_cout\ = CARRY((!\game_control|planex_int\(30) & !\render|Add8~59_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|planex_int\(30),
	datad => VCC,
	cin => \render|Add8~59_cout\,
	cout => \render|Add8~61_cout\);

-- Location: LCCOMB_X20_Y22_N30
\render|Add8~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add8~62_combout\ = \render|Add8~61_cout\ $ (!\game_control|planex_int\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \game_control|planex_int\(31),
	cin => \render|Add8~61_cout\,
	combout => \render|Add8~62_combout\);

-- Location: LCCOMB_X21_Y23_N6
\render|Add9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add9~1_combout\ = (\render|Add8~4_combout\ & (\render|Add8~62_combout\ & ((\render|Add8~0_combout\) # (\render|Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add8~0_combout\,
	datab => \render|Add8~4_combout\,
	datac => \render|Add8~62_combout\,
	datad => \render|Add8~2_combout\,
	combout => \render|Add9~1_combout\);

-- Location: LCCOMB_X21_Y20_N30
\render|Add9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add9~3_combout\ = \render|Add8~8_combout\ $ (((\render|Add8~6_combout\ & \render|Add9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add8~8_combout\,
	datac => \render|Add8~6_combout\,
	datad => \render|Add9~1_combout\,
	combout => \render|Add9~3_combout\);

-- Location: LCCOMB_X21_Y20_N0
\render|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add9~2_combout\ = \render|Add8~6_combout\ $ (\render|Add9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \render|Add8~6_combout\,
	datad => \render|Add9~1_combout\,
	combout => \render|Add9~2_combout\);

-- Location: LCCOMB_X21_Y23_N0
\render|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add9~0_combout\ = \render|Add8~4_combout\ $ (((\render|Add8~62_combout\ & ((\render|Add8~0_combout\) # (\render|Add8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add8~0_combout\,
	datab => \render|Add8~4_combout\,
	datac => \render|Add8~62_combout\,
	datad => \render|Add8~2_combout\,
	combout => \render|Add9~0_combout\);

-- Location: LCCOMB_X21_Y20_N28
\render|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add9~4_combout\ = \render|Add8~10_combout\ $ (((\render|Add8~8_combout\ & (\render|Add8~6_combout\ & \render|Add9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add8~8_combout\,
	datab => \render|Add8~10_combout\,
	datac => \render|Add8~6_combout\,
	datad => \render|Add9~1_combout\,
	combout => \render|Add9~4_combout\);

-- Location: LCCOMB_X20_Y20_N20
\render|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux24~0_combout\ = (!\render|Add9~3_combout\ & (!\render|Add9~4_combout\ & (\render|Add9~2_combout\ $ (\render|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add9~3_combout\,
	datab => \render|Add9~2_combout\,
	datac => \render|Add9~0_combout\,
	datad => \render|Add9~4_combout\,
	combout => \render|Mux24~0_combout\);

-- Location: LCCOMB_X19_Y20_N28
\render|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux26~0_combout\ = (!\render|Add10~6_combout\ & (\render|Add11~3_combout\ $ (\render|Add10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add11~3_combout\,
	datac => \render|Add10~4_combout\,
	datad => \render|Add10~6_combout\,
	combout => \render|Mux26~0_combout\);

-- Location: LCCOMB_X21_Y20_N20
\render|Mux26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux26~3_combout\ = (\render|Add8~10_combout\ & ((\render|Add8~8_combout\ & (!\render|Add8~6_combout\ & !\render|Add9~1_combout\)) # (!\render|Add8~8_combout\ & (\render|Add8~6_combout\ & \render|Add9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add8~8_combout\,
	datab => \render|Add8~10_combout\,
	datac => \render|Add8~6_combout\,
	datad => \render|Add9~1_combout\,
	combout => \render|Mux26~3_combout\);

-- Location: LCCOMB_X19_Y20_N30
\render|Mux26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux26~2_combout\ = (\render|Add11~2_combout\ & ((\render|Add10~6_combout\ & (\render|Add10~4_combout\ & \render|Add11~3_combout\)) # (!\render|Add10~6_combout\ & (!\render|Add10~4_combout\ & !\render|Add11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add10~6_combout\,
	datab => \render|Add10~4_combout\,
	datac => \render|Add11~3_combout\,
	datad => \render|Add11~2_combout\,
	combout => \render|Mux26~2_combout\);

-- Location: LCCOMB_X20_Y20_N4
\render|Mux26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux26~4_combout\ = (\render|Mux26~3_combout\ & (\render|Mux26~2_combout\ & ((\render|Add9~0_combout\) # (!\render|Add11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux26~3_combout\,
	datab => \render|Mux26~2_combout\,
	datac => \render|Add9~0_combout\,
	datad => \render|Add11~4_combout\,
	combout => \render|Mux26~4_combout\);

-- Location: LCCOMB_X21_Y20_N22
\render|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux20~0_combout\ = (\render|Add9~4_combout\ & ((\render|Add9~3_combout\ & ((!\render|Add9~2_combout\))) # (!\render|Add9~3_combout\ & (\render|Add9~0_combout\ & \render|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add9~3_combout\,
	datab => \render|Add9~4_combout\,
	datac => \render|Add9~0_combout\,
	datad => \render|Add9~2_combout\,
	combout => \render|Mux20~0_combout\);

-- Location: LCCOMB_X20_Y20_N14
\render|Mux26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux26~5_combout\ = (\render|Mux26~4_combout\) # ((!\render|Add11~2_combout\ & (\render|Mux26~0_combout\ & \render|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add11~2_combout\,
	datab => \render|Mux26~0_combout\,
	datac => \render|Mux26~4_combout\,
	datad => \render|Mux20~0_combout\,
	combout => \render|Mux26~5_combout\);

-- Location: LCCOMB_X21_Y20_N14
\render|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux23~0_combout\ = (!\render|Add9~4_combout\ & (!\render|Add9~0_combout\ & (\render|Add9~3_combout\ $ (\render|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add9~3_combout\,
	datab => \render|Add9~4_combout\,
	datac => \render|Add9~0_combout\,
	datad => \render|Add9~2_combout\,
	combout => \render|Mux23~0_combout\);

-- Location: LCCOMB_X20_Y20_N2
\render|Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux26~1_combout\ = (\render|Add11~2_combout\ & (\render|Mux26~0_combout\ & (\render|Mux23~0_combout\ & !\render|Add11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add11~2_combout\,
	datab => \render|Mux26~0_combout\,
	datac => \render|Mux23~0_combout\,
	datad => \render|Add11~4_combout\,
	combout => \render|Mux26~1_combout\);

-- Location: LCCOMB_X20_Y20_N28
\render|Mux26~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux26~8_combout\ = (\render|Mux26~5_combout\) # ((\render|Mux26~1_combout\) # ((\render|Mux26~7_combout\ & \render|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux26~7_combout\,
	datab => \render|Mux24~0_combout\,
	datac => \render|Mux26~5_combout\,
	datad => \render|Mux26~1_combout\,
	combout => \render|Mux26~8_combout\);

-- Location: LCCOMB_X17_Y17_N20
\render|VGA_R~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~13_combout\ = (\u_VGA_sync|video_on~0_combout\ & (!\u_VGA_sync|LessThan5~0_combout\ & \render|is_plane~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|video_on~0_combout\,
	datac => \u_VGA_sync|LessThan5~0_combout\,
	datad => \render|is_plane~9_combout\,
	combout => \render|VGA_R~13_combout\);

-- Location: LCCOMB_X16_Y20_N0
\render|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add4~0_combout\ = \u_VGA_sync|v_count\(2) $ (VCC)
-- \render|Add4~1\ = CARRY(\u_VGA_sync|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(2),
	datad => VCC,
	combout => \render|Add4~0_combout\,
	cout => \render|Add4~1\);

-- Location: LCCOMB_X16_Y20_N2
\render|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add4~2_combout\ = (\u_VGA_sync|v_count\(3) & (!\render|Add4~1\)) # (!\u_VGA_sync|v_count\(3) & ((\render|Add4~1\) # (GND)))
-- \render|Add4~3\ = CARRY((!\render|Add4~1\) # (!\u_VGA_sync|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(3),
	datad => VCC,
	cin => \render|Add4~1\,
	combout => \render|Add4~2_combout\,
	cout => \render|Add4~3\);

-- Location: LCCOMB_X16_Y20_N4
\render|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add4~4_combout\ = (\u_VGA_sync|v_count\(4) & (\render|Add4~3\ $ (GND))) # (!\u_VGA_sync|v_count\(4) & (!\render|Add4~3\ & VCC))
-- \render|Add4~5\ = CARRY((\u_VGA_sync|v_count\(4) & !\render|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(4),
	datad => VCC,
	cin => \render|Add4~3\,
	combout => \render|Add4~4_combout\,
	cout => \render|Add4~5\);

-- Location: LCCOMB_X16_Y20_N6
\render|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add4~6_combout\ = (\u_VGA_sync|v_count\(5) & (\render|Add4~5\ & VCC)) # (!\u_VGA_sync|v_count\(5) & (!\render|Add4~5\))
-- \render|Add4~7\ = CARRY((!\u_VGA_sync|v_count\(5) & !\render|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(5),
	datad => VCC,
	cin => \render|Add4~5\,
	combout => \render|Add4~6_combout\,
	cout => \render|Add4~7\);

-- Location: LCCOMB_X16_Y20_N8
\render|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add4~8_combout\ = (\u_VGA_sync|v_count\(6) & ((GND) # (!\render|Add4~7\))) # (!\u_VGA_sync|v_count\(6) & (\render|Add4~7\ $ (GND)))
-- \render|Add4~9\ = CARRY((\u_VGA_sync|v_count\(6)) # (!\render|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(6),
	datad => VCC,
	cin => \render|Add4~7\,
	combout => \render|Add4~8_combout\,
	cout => \render|Add4~9\);

-- Location: LCCOMB_X16_Y20_N10
\render|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add4~10_combout\ = (\u_VGA_sync|v_count\(7) & (!\render|Add4~9\)) # (!\u_VGA_sync|v_count\(7) & ((\render|Add4~9\) # (GND)))
-- \render|Add4~11\ = CARRY((!\render|Add4~9\) # (!\u_VGA_sync|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(7),
	datad => VCC,
	cin => \render|Add4~9\,
	combout => \render|Add4~10_combout\,
	cout => \render|Add4~11\);

-- Location: LCCOMB_X16_Y20_N12
\render|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add4~12_combout\ = (\u_VGA_sync|v_count\(8) & (\render|Add4~11\ $ (GND))) # (!\u_VGA_sync|v_count\(8) & (!\render|Add4~11\ & VCC))
-- \render|Add4~13\ = CARRY((\u_VGA_sync|v_count\(8) & !\render|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(8),
	datad => VCC,
	cin => \render|Add4~11\,
	combout => \render|Add4~12_combout\,
	cout => \render|Add4~13\);

-- Location: LCCOMB_X16_Y20_N14
\render|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add4~14_combout\ = (\u_VGA_sync|v_count\(9) & (\render|Add4~13\ & VCC)) # (!\u_VGA_sync|v_count\(9) & (!\render|Add4~13\))
-- \render|Add4~15\ = CARRY((!\u_VGA_sync|v_count\(9) & !\render|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(9),
	datad => VCC,
	cin => \render|Add4~13\,
	combout => \render|Add4~14_combout\,
	cout => \render|Add4~15\);

-- Location: LCCOMB_X16_Y20_N16
\render|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add4~16_combout\ = !\render|Add4~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \render|Add4~15\,
	combout => \render|Add4~16_combout\);

-- Location: LCCOMB_X17_Y20_N6
\render|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~1_cout\ = CARRY((!\render|Add4~16_combout\ & !\u_VGA_sync|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add4~16_combout\,
	datab => \u_VGA_sync|Equal1~3_combout\,
	datad => VCC,
	cout => \render|Add5~1_cout\);

-- Location: LCCOMB_X17_Y20_N8
\render|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~2_combout\ = (\render|Add4~0_combout\ & (!\render|Add5~1_cout\)) # (!\render|Add4~0_combout\ & ((\render|Add5~1_cout\) # (GND)))
-- \render|Add5~3\ = CARRY((!\render|Add5~1_cout\) # (!\render|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add4~0_combout\,
	datad => VCC,
	cin => \render|Add5~1_cout\,
	combout => \render|Add5~2_combout\,
	cout => \render|Add5~3\);

-- Location: LCCOMB_X17_Y20_N10
\render|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~4_combout\ = (\render|Add4~2_combout\ & (\render|Add5~3\ $ (GND))) # (!\render|Add4~2_combout\ & (!\render|Add5~3\ & VCC))
-- \render|Add5~5\ = CARRY((\render|Add4~2_combout\ & !\render|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add4~2_combout\,
	datad => VCC,
	cin => \render|Add5~3\,
	combout => \render|Add5~4_combout\,
	cout => \render|Add5~5\);

-- Location: LCCOMB_X17_Y20_N12
\render|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~6_combout\ = (\render|Add4~4_combout\ & (!\render|Add5~5\)) # (!\render|Add4~4_combout\ & ((\render|Add5~5\) # (GND)))
-- \render|Add5~7\ = CARRY((!\render|Add5~5\) # (!\render|Add4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add4~4_combout\,
	datad => VCC,
	cin => \render|Add5~5\,
	combout => \render|Add5~6_combout\,
	cout => \render|Add5~7\);

-- Location: LCCOMB_X17_Y20_N14
\render|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~8_combout\ = (\render|Add4~6_combout\ & (\render|Add5~7\ $ (GND))) # (!\render|Add4~6_combout\ & (!\render|Add5~7\ & VCC))
-- \render|Add5~9\ = CARRY((\render|Add4~6_combout\ & !\render|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add4~6_combout\,
	datad => VCC,
	cin => \render|Add5~7\,
	combout => \render|Add5~8_combout\,
	cout => \render|Add5~9\);

-- Location: LCCOMB_X17_Y20_N16
\render|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~10_combout\ = (\render|Add4~8_combout\ & (!\render|Add5~9\)) # (!\render|Add4~8_combout\ & ((\render|Add5~9\) # (GND)))
-- \render|Add5~11\ = CARRY((!\render|Add5~9\) # (!\render|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add4~8_combout\,
	datad => VCC,
	cin => \render|Add5~9\,
	combout => \render|Add5~10_combout\,
	cout => \render|Add5~11\);

-- Location: LCCOMB_X17_Y20_N18
\render|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~12_combout\ = (\render|Add4~10_combout\ & (\render|Add5~11\ $ (GND))) # (!\render|Add4~10_combout\ & (!\render|Add5~11\ & VCC))
-- \render|Add5~13\ = CARRY((\render|Add4~10_combout\ & !\render|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add4~10_combout\,
	datad => VCC,
	cin => \render|Add5~11\,
	combout => \render|Add5~12_combout\,
	cout => \render|Add5~13\);

-- Location: LCCOMB_X17_Y20_N20
\render|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~14_combout\ = (\render|Add4~12_combout\ & (!\render|Add5~13\)) # (!\render|Add4~12_combout\ & ((\render|Add5~13\) # (GND)))
-- \render|Add5~15\ = CARRY((!\render|Add5~13\) # (!\render|Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add4~12_combout\,
	datad => VCC,
	cin => \render|Add5~13\,
	combout => \render|Add5~14_combout\,
	cout => \render|Add5~15\);

-- Location: LCCOMB_X17_Y20_N22
\render|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~16_combout\ = (\render|Add4~14_combout\ & (\render|Add5~15\ $ (GND))) # (!\render|Add4~14_combout\ & (!\render|Add5~15\ & VCC))
-- \render|Add5~17\ = CARRY((\render|Add4~14_combout\ & !\render|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add4~14_combout\,
	datad => VCC,
	cin => \render|Add5~15\,
	combout => \render|Add5~16_combout\,
	cout => \render|Add5~17\);

-- Location: LCCOMB_X17_Y20_N24
\render|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~18_combout\ = (\render|Add4~16_combout\ & ((\render|Add5~17\) # (GND))) # (!\render|Add4~16_combout\ & (!\render|Add5~17\))
-- \render|Add5~19\ = CARRY((\render|Add4~16_combout\) # (!\render|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add4~16_combout\,
	datad => VCC,
	cin => \render|Add5~17\,
	combout => \render|Add5~18_combout\,
	cout => \render|Add5~19\);

-- Location: LCCOMB_X17_Y20_N26
\render|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add5~20_combout\ = \render|Add4~16_combout\ $ (\render|Add5~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add4~16_combout\,
	cin => \render|Add5~19\,
	combout => \render|Add5~20_combout\);

-- Location: IOIBUF_X41_Y11_N1
\PS2_KBCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBCLK,
	o => \PS2_KBCLK~input_o\);

-- Location: LCCOMB_X23_Y13_N8
\game_control|u_ps2|sync_ffs[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|sync_ffs[0]~feeder_combout\ = \PS2_KBCLK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_KBCLK~input_o\,
	combout => \game_control|u_ps2|sync_ffs[0]~feeder_combout\);

-- Location: FF_X23_Y13_N9
\game_control|u_ps2|sync_ffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|sync_ffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|sync_ffs\(0));

-- Location: FF_X23_Y13_N25
\game_control|u_ps2|debounce_ps2_clk|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \game_control|u_ps2|sync_ffs\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|flipflops\(0));

-- Location: LCCOMB_X23_Y13_N14
\game_control|u_ps2|debounce_ps2_clk|flipflops[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|flipflops[1]~feeder_combout\ = \game_control|u_ps2|debounce_ps2_clk|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|debounce_ps2_clk|flipflops\(0),
	combout => \game_control|u_ps2|debounce_ps2_clk|flipflops[1]~feeder_combout\);

-- Location: FF_X23_Y13_N15
\game_control|u_ps2|debounce_ps2_clk|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|flipflops\(1));

-- Location: LCCOMB_X23_Y13_N12
\game_control|u_ps2|debounce_ps2_clk|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|result~1_combout\ = (\game_control|u_ps2|debounce_ps2_clk|counter_out\(8) & (\game_control|u_ps2|debounce_ps2_clk|flipflops\(0) $ (!\game_control|u_ps2|debounce_ps2_clk|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_clk|flipflops\(0),
	datac => \game_control|u_ps2|debounce_ps2_clk|flipflops\(1),
	datad => \game_control|u_ps2|debounce_ps2_clk|counter_out\(8),
	combout => \game_control|u_ps2|debounce_ps2_clk|result~1_combout\);

-- Location: LCCOMB_X23_Y13_N30
\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ = (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(8) & (\game_control|u_ps2|debounce_ps2_clk|flipflops\(0) $ (!\game_control|u_ps2|debounce_ps2_clk|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_clk|flipflops\(0),
	datac => \game_control|u_ps2|debounce_ps2_clk|flipflops\(1),
	datad => \game_control|u_ps2|debounce_ps2_clk|counter_out\(8),
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\);

-- Location: LCCOMB_X24_Y13_N4
\game_control|u_ps2|debounce_ps2_clk|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|Add0~0_combout\ = \game_control|u_ps2|debounce_ps2_clk|counter_out\(0) $ (VCC)
-- \game_control|u_ps2|debounce_ps2_clk|Add0~1\ = CARRY(\game_control|u_ps2|debounce_ps2_clk|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out\(0),
	datad => VCC,
	combout => \game_control|u_ps2|debounce_ps2_clk|Add0~0_combout\,
	cout => \game_control|u_ps2|debounce_ps2_clk|Add0~1\);

-- Location: LCCOMB_X23_Y13_N26
\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~9_combout\ = (\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|counter_out\(0)) # ((\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_clk|Add0~0_combout\)))) # (!\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & (((\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & \game_control|u_ps2|debounce_ps2_clk|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out\(0),
	datac => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\,
	datad => \game_control|u_ps2|debounce_ps2_clk|Add0~0_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~9_combout\);

-- Location: FF_X24_Y13_N9
\game_control|u_ps2|debounce_ps2_clk|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|counter_out\(0));

-- Location: LCCOMB_X24_Y13_N6
\game_control|u_ps2|debounce_ps2_clk|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|Add0~2_combout\ = (\game_control|u_ps2|debounce_ps2_clk|counter_out\(1) & (!\game_control|u_ps2|debounce_ps2_clk|Add0~1\)) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(1) & 
-- ((\game_control|u_ps2|debounce_ps2_clk|Add0~1\) # (GND)))
-- \game_control|u_ps2|debounce_ps2_clk|Add0~3\ = CARRY((!\game_control|u_ps2|debounce_ps2_clk|Add0~1\) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out\(1),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_clk|Add0~1\,
	combout => \game_control|u_ps2|debounce_ps2_clk|Add0~2_combout\,
	cout => \game_control|u_ps2|debounce_ps2_clk|Add0~3\);

-- Location: LCCOMB_X23_Y13_N6
\game_control|u_ps2|debounce_ps2_clk|counter_out[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out[1]~8_combout\ = (\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|counter_out\(1)) # ((\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_clk|Add0~2_combout\)))) # (!\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_clk|counter_out\(1),
	datad => \game_control|u_ps2|debounce_ps2_clk|Add0~2_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out[1]~8_combout\);

-- Location: FF_X23_Y13_N7
\game_control|u_ps2|debounce_ps2_clk|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|counter_out[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|counter_out\(1));

-- Location: LCCOMB_X24_Y13_N8
\game_control|u_ps2|debounce_ps2_clk|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|Add0~4_combout\ = (\game_control|u_ps2|debounce_ps2_clk|counter_out\(2) & (\game_control|u_ps2|debounce_ps2_clk|Add0~3\ $ (GND))) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(2) & 
-- (!\game_control|u_ps2|debounce_ps2_clk|Add0~3\ & VCC))
-- \game_control|u_ps2|debounce_ps2_clk|Add0~5\ = CARRY((\game_control|u_ps2|debounce_ps2_clk|counter_out\(2) & !\game_control|u_ps2|debounce_ps2_clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|counter_out\(2),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_clk|Add0~3\,
	combout => \game_control|u_ps2|debounce_ps2_clk|Add0~4_combout\,
	cout => \game_control|u_ps2|debounce_ps2_clk|Add0~5\);

-- Location: LCCOMB_X24_Y13_N26
\game_control|u_ps2|debounce_ps2_clk|counter_out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out[2]~7_combout\ = (\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|counter_out\(2)) # ((\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_clk|Add0~4_combout\)))) # (!\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_clk|counter_out\(2),
	datad => \game_control|u_ps2|debounce_ps2_clk|Add0~4_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out[2]~7_combout\);

-- Location: FF_X24_Y13_N27
\game_control|u_ps2|debounce_ps2_clk|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|counter_out[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|counter_out\(2));

-- Location: LCCOMB_X24_Y13_N10
\game_control|u_ps2|debounce_ps2_clk|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|Add0~6_combout\ = (\game_control|u_ps2|debounce_ps2_clk|counter_out\(3) & (!\game_control|u_ps2|debounce_ps2_clk|Add0~5\)) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(3) & 
-- ((\game_control|u_ps2|debounce_ps2_clk|Add0~5\) # (GND)))
-- \game_control|u_ps2|debounce_ps2_clk|Add0~7\ = CARRY((!\game_control|u_ps2|debounce_ps2_clk|Add0~5\) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out\(3),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_clk|Add0~5\,
	combout => \game_control|u_ps2|debounce_ps2_clk|Add0~6_combout\,
	cout => \game_control|u_ps2|debounce_ps2_clk|Add0~7\);

-- Location: LCCOMB_X24_Y13_N28
\game_control|u_ps2|debounce_ps2_clk|counter_out[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out[3]~6_combout\ = (\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|counter_out\(3)) # ((\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_clk|Add0~6_combout\)))) # (!\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_clk|counter_out\(3),
	datad => \game_control|u_ps2|debounce_ps2_clk|Add0~6_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out[3]~6_combout\);

-- Location: FF_X24_Y13_N29
\game_control|u_ps2|debounce_ps2_clk|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|counter_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|counter_out\(3));

-- Location: LCCOMB_X24_Y13_N12
\game_control|u_ps2|debounce_ps2_clk|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|Add0~8_combout\ = (\game_control|u_ps2|debounce_ps2_clk|counter_out\(4) & (\game_control|u_ps2|debounce_ps2_clk|Add0~7\ $ (GND))) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(4) & 
-- (!\game_control|u_ps2|debounce_ps2_clk|Add0~7\ & VCC))
-- \game_control|u_ps2|debounce_ps2_clk|Add0~9\ = CARRY((\game_control|u_ps2|debounce_ps2_clk|counter_out\(4) & !\game_control|u_ps2|debounce_ps2_clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|counter_out\(4),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_clk|Add0~7\,
	combout => \game_control|u_ps2|debounce_ps2_clk|Add0~8_combout\,
	cout => \game_control|u_ps2|debounce_ps2_clk|Add0~9\);

-- Location: LCCOMB_X24_Y13_N22
\game_control|u_ps2|debounce_ps2_clk|counter_out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out[4]~5_combout\ = (\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|counter_out\(4)) # ((\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_clk|Add0~8_combout\)))) # (!\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_clk|counter_out\(4),
	datad => \game_control|u_ps2|debounce_ps2_clk|Add0~8_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out[4]~5_combout\);

-- Location: FF_X24_Y13_N23
\game_control|u_ps2|debounce_ps2_clk|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|counter_out[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|counter_out\(4));

-- Location: LCCOMB_X24_Y13_N14
\game_control|u_ps2|debounce_ps2_clk|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|Add0~10_combout\ = (\game_control|u_ps2|debounce_ps2_clk|counter_out\(5) & (!\game_control|u_ps2|debounce_ps2_clk|Add0~9\)) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(5) & 
-- ((\game_control|u_ps2|debounce_ps2_clk|Add0~9\) # (GND)))
-- \game_control|u_ps2|debounce_ps2_clk|Add0~11\ = CARRY((!\game_control|u_ps2|debounce_ps2_clk|Add0~9\) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out\(5),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_clk|Add0~9\,
	combout => \game_control|u_ps2|debounce_ps2_clk|Add0~10_combout\,
	cout => \game_control|u_ps2|debounce_ps2_clk|Add0~11\);

-- Location: LCCOMB_X24_Y13_N0
\game_control|u_ps2|debounce_ps2_clk|counter_out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out[5]~4_combout\ = (\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|counter_out\(5)) # ((\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_clk|Add0~10_combout\)))) # (!\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_clk|counter_out\(5),
	datad => \game_control|u_ps2|debounce_ps2_clk|Add0~10_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out[5]~4_combout\);

-- Location: FF_X24_Y13_N1
\game_control|u_ps2|debounce_ps2_clk|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|counter_out[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|counter_out\(5));

-- Location: LCCOMB_X24_Y13_N16
\game_control|u_ps2|debounce_ps2_clk|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|Add0~12_combout\ = (\game_control|u_ps2|debounce_ps2_clk|counter_out\(6) & (\game_control|u_ps2|debounce_ps2_clk|Add0~11\ $ (GND))) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(6) & 
-- (!\game_control|u_ps2|debounce_ps2_clk|Add0~11\ & VCC))
-- \game_control|u_ps2|debounce_ps2_clk|Add0~13\ = CARRY((\game_control|u_ps2|debounce_ps2_clk|counter_out\(6) & !\game_control|u_ps2|debounce_ps2_clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|counter_out\(6),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_clk|Add0~11\,
	combout => \game_control|u_ps2|debounce_ps2_clk|Add0~12_combout\,
	cout => \game_control|u_ps2|debounce_ps2_clk|Add0~13\);

-- Location: LCCOMB_X24_Y13_N30
\game_control|u_ps2|debounce_ps2_clk|counter_out[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out[6]~3_combout\ = (\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|counter_out\(6)) # ((\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_clk|Add0~12_combout\)))) # (!\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_clk|counter_out\(6),
	datad => \game_control|u_ps2|debounce_ps2_clk|Add0~12_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out[6]~3_combout\);

-- Location: FF_X24_Y13_N31
\game_control|u_ps2|debounce_ps2_clk|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|counter_out[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|counter_out\(6));

-- Location: LCCOMB_X24_Y13_N18
\game_control|u_ps2|debounce_ps2_clk|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|Add0~14_combout\ = (\game_control|u_ps2|debounce_ps2_clk|counter_out\(7) & (!\game_control|u_ps2|debounce_ps2_clk|Add0~13\)) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(7) & 
-- ((\game_control|u_ps2|debounce_ps2_clk|Add0~13\) # (GND)))
-- \game_control|u_ps2|debounce_ps2_clk|Add0~15\ = CARRY((!\game_control|u_ps2|debounce_ps2_clk|Add0~13\) # (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out\(7),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_clk|Add0~13\,
	combout => \game_control|u_ps2|debounce_ps2_clk|Add0~14_combout\,
	cout => \game_control|u_ps2|debounce_ps2_clk|Add0~15\);

-- Location: LCCOMB_X24_Y13_N2
\game_control|u_ps2|debounce_ps2_clk|counter_out[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out[7]~2_combout\ = (\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|counter_out\(7)) # ((\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_clk|Add0~14_combout\)))) # (!\game_control|u_ps2|debounce_ps2_clk|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_clk|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_clk|counter_out\(7),
	datad => \game_control|u_ps2|debounce_ps2_clk|Add0~14_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out[7]~2_combout\);

-- Location: FF_X24_Y13_N3
\game_control|u_ps2|debounce_ps2_clk|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|counter_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|counter_out\(7));

-- Location: LCCOMB_X24_Y13_N20
\game_control|u_ps2|debounce_ps2_clk|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|Add0~16_combout\ = \game_control|u_ps2|debounce_ps2_clk|Add0~15\ $ (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|debounce_ps2_clk|counter_out\(8),
	cin => \game_control|u_ps2|debounce_ps2_clk|Add0~15\,
	combout => \game_control|u_ps2|debounce_ps2_clk|Add0~16_combout\);

-- Location: LCCOMB_X24_Y13_N24
\game_control|u_ps2|debounce_ps2_clk|counter_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|counter_out~0_combout\ = (\game_control|u_ps2|debounce_ps2_clk|counter_out\(8) & (\game_control|u_ps2|debounce_ps2_clk|flipflops\(1) $ ((!\game_control|u_ps2|debounce_ps2_clk|flipflops\(0))))) # 
-- (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(8) & (\game_control|u_ps2|debounce_ps2_clk|Add0~16_combout\ & (\game_control|u_ps2|debounce_ps2_clk|flipflops\(1) $ (!\game_control|u_ps2|debounce_ps2_clk|flipflops\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|flipflops\(1),
	datab => \game_control|u_ps2|debounce_ps2_clk|flipflops\(0),
	datac => \game_control|u_ps2|debounce_ps2_clk|counter_out\(8),
	datad => \game_control|u_ps2|debounce_ps2_clk|Add0~16_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|counter_out~0_combout\);

-- Location: FF_X24_Y13_N25
\game_control|u_ps2|debounce_ps2_clk|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|counter_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|counter_out\(8));

-- Location: LCCOMB_X23_Y13_N24
\game_control|u_ps2|debounce_ps2_clk|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|result~0_combout\ = (\game_control|u_ps2|debounce_ps2_clk|result~q\ & ((\game_control|u_ps2|debounce_ps2_clk|flipflops\(1)) # ((\game_control|u_ps2|debounce_ps2_clk|flipflops\(0)) # 
-- (!\game_control|u_ps2|debounce_ps2_clk|counter_out\(8))))) # (!\game_control|u_ps2|debounce_ps2_clk|result~q\ & (\game_control|u_ps2|debounce_ps2_clk|flipflops\(1) & (\game_control|u_ps2|debounce_ps2_clk|flipflops\(0) & 
-- \game_control|u_ps2|debounce_ps2_clk|counter_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_clk|result~q\,
	datab => \game_control|u_ps2|debounce_ps2_clk|flipflops\(1),
	datac => \game_control|u_ps2|debounce_ps2_clk|flipflops\(0),
	datad => \game_control|u_ps2|debounce_ps2_clk|counter_out\(8),
	combout => \game_control|u_ps2|debounce_ps2_clk|result~0_combout\);

-- Location: LCCOMB_X23_Y13_N4
\game_control|u_ps2|debounce_ps2_clk|result~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_clk|result~feeder_combout\ = \game_control|u_ps2|debounce_ps2_clk|result~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_clk|result~0_combout\,
	combout => \game_control|u_ps2|debounce_ps2_clk|result~feeder_combout\);

-- Location: FF_X23_Y13_N5
\game_control|u_ps2|debounce_ps2_clk|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_clk|result~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_clk|result~q\);

-- Location: CLKCTRL_G15
\game_control|u_ps2|debounce_ps2_clk|result~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \game_control|u_ps2|debounce_ps2_clk|result~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \game_control|u_ps2|debounce_ps2_clk|result~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y12_N22
\PS2_KBDAT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBDAT,
	o => \PS2_KBDAT~input_o\);

-- Location: FF_X17_Y13_N29
\game_control|u_ps2|sync_ffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \PS2_KBDAT~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|sync_ffs\(1));

-- Location: LCCOMB_X17_Y13_N30
\game_control|u_ps2|debounce_ps2_data|flipflops[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|flipflops[0]~feeder_combout\ = \game_control|u_ps2|sync_ffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|sync_ffs\(1),
	combout => \game_control|u_ps2|debounce_ps2_data|flipflops[0]~feeder_combout\);

-- Location: FF_X17_Y13_N31
\game_control|u_ps2|debounce_ps2_data|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|flipflops\(0));

-- Location: LCCOMB_X17_Y13_N24
\game_control|u_ps2|debounce_ps2_data|flipflops[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|flipflops[1]~feeder_combout\ = \game_control|u_ps2|debounce_ps2_data|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|u_ps2|debounce_ps2_data|flipflops\(0),
	combout => \game_control|u_ps2|debounce_ps2_data|flipflops[1]~feeder_combout\);

-- Location: FF_X17_Y13_N25
\game_control|u_ps2|debounce_ps2_data|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|flipflops\(1));

-- Location: LCCOMB_X17_Y13_N28
\game_control|u_ps2|debounce_ps2_data|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|result~1_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out\(8) & (\game_control|u_ps2|debounce_ps2_data|flipflops\(0) $ (!\game_control|u_ps2|debounce_ps2_data|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|flipflops\(0),
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out\(8),
	datad => \game_control|u_ps2|debounce_ps2_data|flipflops\(1),
	combout => \game_control|u_ps2|debounce_ps2_data|result~1_combout\);

-- Location: LCCOMB_X17_Y13_N18
\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ = (!\game_control|u_ps2|debounce_ps2_data|counter_out\(8) & (\game_control|u_ps2|debounce_ps2_data|flipflops\(1) $ (!\game_control|u_ps2|debounce_ps2_data|flipflops\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_data|flipflops\(1),
	datac => \game_control|u_ps2|debounce_ps2_data|flipflops\(0),
	datad => \game_control|u_ps2|debounce_ps2_data|counter_out\(8),
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\);

-- Location: LCCOMB_X17_Y12_N12
\game_control|u_ps2|debounce_ps2_data|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|Add0~0_combout\ = \game_control|u_ps2|debounce_ps2_data|counter_out\(0) $ (VCC)
-- \game_control|u_ps2|debounce_ps2_data|Add0~1\ = CARRY(\game_control|u_ps2|debounce_ps2_data|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out\(0),
	datad => VCC,
	combout => \game_control|u_ps2|debounce_ps2_data|Add0~0_combout\,
	cout => \game_control|u_ps2|debounce_ps2_data|Add0~1\);

-- Location: LCCOMB_X16_Y12_N6
\game_control|u_ps2|debounce_ps2_data|counter_out[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out[0]~9_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|Add0~0_combout\) # ((\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_data|counter_out\(0))))) # (!\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|counter_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_data|result~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_data|counter_out\(0),
	datad => \game_control|u_ps2|debounce_ps2_data|Add0~0_combout\,
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~9_combout\);

-- Location: FF_X16_Y12_N7
\game_control|u_ps2|debounce_ps2_data|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|counter_out\(0));

-- Location: LCCOMB_X17_Y12_N14
\game_control|u_ps2|debounce_ps2_data|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|Add0~2_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out\(1) & (!\game_control|u_ps2|debounce_ps2_data|Add0~1\)) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(1) & 
-- ((\game_control|u_ps2|debounce_ps2_data|Add0~1\) # (GND)))
-- \game_control|u_ps2|debounce_ps2_data|Add0~3\ = CARRY((!\game_control|u_ps2|debounce_ps2_data|Add0~1\) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|counter_out\(1),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_data|Add0~1\,
	combout => \game_control|u_ps2|debounce_ps2_data|Add0~2_combout\,
	cout => \game_control|u_ps2|debounce_ps2_data|Add0~3\);

-- Location: LCCOMB_X16_Y12_N16
\game_control|u_ps2|debounce_ps2_data|counter_out[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out[1]~8_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|Add0~2_combout\) # ((\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_data|counter_out\(1))))) # (!\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|counter_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_data|result~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_data|counter_out\(1),
	datad => \game_control|u_ps2|debounce_ps2_data|Add0~2_combout\,
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out[1]~8_combout\);

-- Location: FF_X16_Y12_N17
\game_control|u_ps2|debounce_ps2_data|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|counter_out[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|counter_out\(1));

-- Location: LCCOMB_X17_Y12_N16
\game_control|u_ps2|debounce_ps2_data|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|Add0~4_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out\(2) & (\game_control|u_ps2|debounce_ps2_data|Add0~3\ $ (GND))) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(2) & 
-- (!\game_control|u_ps2|debounce_ps2_data|Add0~3\ & VCC))
-- \game_control|u_ps2|debounce_ps2_data|Add0~5\ = CARRY((\game_control|u_ps2|debounce_ps2_data|counter_out\(2) & !\game_control|u_ps2|debounce_ps2_data|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|counter_out\(2),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_data|Add0~3\,
	combout => \game_control|u_ps2|debounce_ps2_data|Add0~4_combout\,
	cout => \game_control|u_ps2|debounce_ps2_data|Add0~5\);

-- Location: LCCOMB_X17_Y12_N10
\game_control|u_ps2|debounce_ps2_data|counter_out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out[2]~7_combout\ = (\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|counter_out\(2)) # ((\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_data|Add0~4_combout\)))) # (!\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_data|counter_out\(2),
	datad => \game_control|u_ps2|debounce_ps2_data|Add0~4_combout\,
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out[2]~7_combout\);

-- Location: FF_X17_Y12_N11
\game_control|u_ps2|debounce_ps2_data|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|counter_out[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|counter_out\(2));

-- Location: LCCOMB_X17_Y12_N18
\game_control|u_ps2|debounce_ps2_data|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|Add0~6_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out\(3) & (!\game_control|u_ps2|debounce_ps2_data|Add0~5\)) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(3) & 
-- ((\game_control|u_ps2|debounce_ps2_data|Add0~5\) # (GND)))
-- \game_control|u_ps2|debounce_ps2_data|Add0~7\ = CARRY((!\game_control|u_ps2|debounce_ps2_data|Add0~5\) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|counter_out\(3),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_data|Add0~5\,
	combout => \game_control|u_ps2|debounce_ps2_data|Add0~6_combout\,
	cout => \game_control|u_ps2|debounce_ps2_data|Add0~7\);

-- Location: LCCOMB_X17_Y12_N6
\game_control|u_ps2|debounce_ps2_data|counter_out[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out[3]~6_combout\ = (\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|counter_out\(3)) # ((\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_data|Add0~6_combout\)))) # (!\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_data|counter_out\(3),
	datad => \game_control|u_ps2|debounce_ps2_data|Add0~6_combout\,
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out[3]~6_combout\);

-- Location: FF_X17_Y12_N7
\game_control|u_ps2|debounce_ps2_data|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|counter_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|counter_out\(3));

-- Location: LCCOMB_X17_Y12_N20
\game_control|u_ps2|debounce_ps2_data|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|Add0~8_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out\(4) & (\game_control|u_ps2|debounce_ps2_data|Add0~7\ $ (GND))) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(4) & 
-- (!\game_control|u_ps2|debounce_ps2_data|Add0~7\ & VCC))
-- \game_control|u_ps2|debounce_ps2_data|Add0~9\ = CARRY((\game_control|u_ps2|debounce_ps2_data|counter_out\(4) & !\game_control|u_ps2|debounce_ps2_data|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out\(4),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_data|Add0~7\,
	combout => \game_control|u_ps2|debounce_ps2_data|Add0~8_combout\,
	cout => \game_control|u_ps2|debounce_ps2_data|Add0~9\);

-- Location: LCCOMB_X17_Y12_N4
\game_control|u_ps2|debounce_ps2_data|counter_out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out[4]~5_combout\ = (\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|counter_out\(4)) # ((\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_data|Add0~8_combout\)))) # (!\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_data|counter_out\(4),
	datad => \game_control|u_ps2|debounce_ps2_data|Add0~8_combout\,
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out[4]~5_combout\);

-- Location: FF_X17_Y12_N5
\game_control|u_ps2|debounce_ps2_data|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|counter_out[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|counter_out\(4));

-- Location: LCCOMB_X17_Y12_N22
\game_control|u_ps2|debounce_ps2_data|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|Add0~10_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out\(5) & (!\game_control|u_ps2|debounce_ps2_data|Add0~9\)) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(5) & 
-- ((\game_control|u_ps2|debounce_ps2_data|Add0~9\) # (GND)))
-- \game_control|u_ps2|debounce_ps2_data|Add0~11\ = CARRY((!\game_control|u_ps2|debounce_ps2_data|Add0~9\) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out\(5),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_data|Add0~9\,
	combout => \game_control|u_ps2|debounce_ps2_data|Add0~10_combout\,
	cout => \game_control|u_ps2|debounce_ps2_data|Add0~11\);

-- Location: LCCOMB_X17_Y12_N2
\game_control|u_ps2|debounce_ps2_data|counter_out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out[5]~4_combout\ = (\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|counter_out\(5)) # ((\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_data|Add0~10_combout\)))) # (!\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_data|counter_out\(5),
	datad => \game_control|u_ps2|debounce_ps2_data|Add0~10_combout\,
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out[5]~4_combout\);

-- Location: FF_X17_Y12_N3
\game_control|u_ps2|debounce_ps2_data|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|counter_out[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|counter_out\(5));

-- Location: LCCOMB_X17_Y12_N24
\game_control|u_ps2|debounce_ps2_data|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|Add0~12_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out\(6) & (\game_control|u_ps2|debounce_ps2_data|Add0~11\ $ (GND))) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(6) & 
-- (!\game_control|u_ps2|debounce_ps2_data|Add0~11\ & VCC))
-- \game_control|u_ps2|debounce_ps2_data|Add0~13\ = CARRY((\game_control|u_ps2|debounce_ps2_data|counter_out\(6) & !\game_control|u_ps2|debounce_ps2_data|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out\(6),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_data|Add0~11\,
	combout => \game_control|u_ps2|debounce_ps2_data|Add0~12_combout\,
	cout => \game_control|u_ps2|debounce_ps2_data|Add0~13\);

-- Location: LCCOMB_X17_Y12_N8
\game_control|u_ps2|debounce_ps2_data|counter_out[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out[6]~3_combout\ = (\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|counter_out\(6)) # ((\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_data|Add0~12_combout\)))) # (!\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_data|counter_out\(6),
	datad => \game_control|u_ps2|debounce_ps2_data|Add0~12_combout\,
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out[6]~3_combout\);

-- Location: FF_X17_Y12_N9
\game_control|u_ps2|debounce_ps2_data|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|counter_out[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|counter_out\(6));

-- Location: LCCOMB_X17_Y12_N26
\game_control|u_ps2|debounce_ps2_data|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|Add0~14_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out\(7) & (!\game_control|u_ps2|debounce_ps2_data|Add0~13\)) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(7) & 
-- ((\game_control|u_ps2|debounce_ps2_data|Add0~13\) # (GND)))
-- \game_control|u_ps2|debounce_ps2_data|Add0~15\ = CARRY((!\game_control|u_ps2|debounce_ps2_data|Add0~13\) # (!\game_control|u_ps2|debounce_ps2_data|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|counter_out\(7),
	datad => VCC,
	cin => \game_control|u_ps2|debounce_ps2_data|Add0~13\,
	combout => \game_control|u_ps2|debounce_ps2_data|Add0~14_combout\,
	cout => \game_control|u_ps2|debounce_ps2_data|Add0~15\);

-- Location: LCCOMB_X17_Y12_N30
\game_control|u_ps2|debounce_ps2_data|counter_out[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out[7]~2_combout\ = (\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|counter_out\(7)) # ((\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \game_control|u_ps2|debounce_ps2_data|Add0~14_combout\)))) # (!\game_control|u_ps2|debounce_ps2_data|result~1_combout\ & (\game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\ & ((\game_control|u_ps2|debounce_ps2_data|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|result~1_combout\,
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \game_control|u_ps2|debounce_ps2_data|counter_out\(7),
	datad => \game_control|u_ps2|debounce_ps2_data|Add0~14_combout\,
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out[7]~2_combout\);

-- Location: FF_X17_Y12_N31
\game_control|u_ps2|debounce_ps2_data|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|counter_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|counter_out\(7));

-- Location: LCCOMB_X17_Y12_N28
\game_control|u_ps2|debounce_ps2_data|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|Add0~16_combout\ = \game_control|u_ps2|debounce_ps2_data|Add0~15\ $ (!\game_control|u_ps2|debounce_ps2_data|counter_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|debounce_ps2_data|counter_out\(8),
	cin => \game_control|u_ps2|debounce_ps2_data|Add0~15\,
	combout => \game_control|u_ps2|debounce_ps2_data|Add0~16_combout\);

-- Location: LCCOMB_X17_Y12_N0
\game_control|u_ps2|debounce_ps2_data|counter_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|counter_out~0_combout\ = (\game_control|u_ps2|debounce_ps2_data|counter_out\(8) & (\game_control|u_ps2|debounce_ps2_data|flipflops\(0) $ ((!\game_control|u_ps2|debounce_ps2_data|flipflops\(1))))) # 
-- (!\game_control|u_ps2|debounce_ps2_data|counter_out\(8) & (\game_control|u_ps2|debounce_ps2_data|Add0~16_combout\ & (\game_control|u_ps2|debounce_ps2_data|flipflops\(0) $ (!\game_control|u_ps2|debounce_ps2_data|flipflops\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|flipflops\(0),
	datab => \game_control|u_ps2|debounce_ps2_data|flipflops\(1),
	datac => \game_control|u_ps2|debounce_ps2_data|counter_out\(8),
	datad => \game_control|u_ps2|debounce_ps2_data|Add0~16_combout\,
	combout => \game_control|u_ps2|debounce_ps2_data|counter_out~0_combout\);

-- Location: FF_X17_Y12_N1
\game_control|u_ps2|debounce_ps2_data|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|counter_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|counter_out\(8));

-- Location: LCCOMB_X16_Y13_N0
\game_control|u_ps2|debounce_ps2_data|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|debounce_ps2_data|result~0_combout\ = (\game_control|u_ps2|debounce_ps2_data|flipflops\(0) & ((\game_control|u_ps2|debounce_ps2_data|result~q\) # ((\game_control|u_ps2|debounce_ps2_data|counter_out\(8) & 
-- \game_control|u_ps2|debounce_ps2_data|flipflops\(1))))) # (!\game_control|u_ps2|debounce_ps2_data|flipflops\(0) & (\game_control|u_ps2|debounce_ps2_data|result~q\ & ((\game_control|u_ps2|debounce_ps2_data|flipflops\(1)) # 
-- (!\game_control|u_ps2|debounce_ps2_data|counter_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|debounce_ps2_data|flipflops\(0),
	datab => \game_control|u_ps2|debounce_ps2_data|counter_out\(8),
	datac => \game_control|u_ps2|debounce_ps2_data|result~q\,
	datad => \game_control|u_ps2|debounce_ps2_data|flipflops\(1),
	combout => \game_control|u_ps2|debounce_ps2_data|result~0_combout\);

-- Location: FF_X16_Y13_N1
\game_control|u_ps2|debounce_ps2_data|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|debounce_ps2_data|result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|debounce_ps2_data|result~q\);

-- Location: LCCOMB_X16_Y13_N2
\game_control|u_ps2|ps2_word[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[10]~feeder_combout\ = \game_control|u_ps2|debounce_ps2_data|result~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|debounce_ps2_data|result~q\,
	combout => \game_control|u_ps2|ps2_word[10]~feeder_combout\);

-- Location: FF_X16_Y13_N3
\game_control|u_ps2|ps2_word[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(10));

-- Location: LCCOMB_X16_Y13_N26
\game_control|u_ps2|ps2_word[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[9]~feeder_combout\ = \game_control|u_ps2|ps2_word\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|ps2_word\(10),
	combout => \game_control|u_ps2|ps2_word[9]~feeder_combout\);

-- Location: FF_X16_Y13_N27
\game_control|u_ps2|ps2_word[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(9));

-- Location: LCCOMB_X16_Y13_N10
\game_control|u_ps2|ps2_word[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[8]~feeder_combout\ = \game_control|u_ps2|ps2_word\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|u_ps2|ps2_word\(9),
	combout => \game_control|u_ps2|ps2_word[8]~feeder_combout\);

-- Location: FF_X16_Y13_N11
\game_control|u_ps2|ps2_word[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(8));

-- Location: LCCOMB_X16_Y13_N24
\game_control|u_ps2|ps2_word[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[7]~feeder_combout\ = \game_control|u_ps2|ps2_word\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|ps2_word\(8),
	combout => \game_control|u_ps2|ps2_word[7]~feeder_combout\);

-- Location: FF_X16_Y13_N25
\game_control|u_ps2|ps2_word[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(7));

-- Location: LCCOMB_X16_Y13_N30
\game_control|u_ps2|ps2_word[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[6]~feeder_combout\ = \game_control|u_ps2|ps2_word\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|ps2_word\(7),
	combout => \game_control|u_ps2|ps2_word[6]~feeder_combout\);

-- Location: FF_X16_Y13_N31
\game_control|u_ps2|ps2_word[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(6));

-- Location: LCCOMB_X16_Y13_N8
\game_control|u_ps2|ps2_word[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[5]~feeder_combout\ = \game_control|u_ps2|ps2_word\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|u_ps2|ps2_word\(6),
	combout => \game_control|u_ps2|ps2_word[5]~feeder_combout\);

-- Location: FF_X16_Y13_N9
\game_control|u_ps2|ps2_word[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(5));

-- Location: LCCOMB_X16_Y13_N14
\game_control|u_ps2|ps2_word[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[4]~feeder_combout\ = \game_control|u_ps2|ps2_word\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|u_ps2|ps2_word\(5),
	combout => \game_control|u_ps2|ps2_word[4]~feeder_combout\);

-- Location: FF_X16_Y13_N15
\game_control|u_ps2|ps2_word[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(4));

-- Location: LCCOMB_X16_Y13_N16
\game_control|u_ps2|ps2_word[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[3]~feeder_combout\ = \game_control|u_ps2|ps2_word\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|u_ps2|ps2_word\(4),
	combout => \game_control|u_ps2|ps2_word[3]~feeder_combout\);

-- Location: FF_X16_Y13_N17
\game_control|u_ps2|ps2_word[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(3));

-- Location: LCCOMB_X15_Y13_N12
\game_control|u_ps2|ps2_code[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_code[2]~feeder_combout\ = \game_control|u_ps2|ps2_word\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|ps2_word\(3),
	combout => \game_control|u_ps2|ps2_code[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y13_N6
\game_control|u_ps2|count_idle[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[0]~12_combout\ = \game_control|u_ps2|count_idle\(0) $ (VCC)
-- \game_control|u_ps2|count_idle[0]~13\ = CARRY(\game_control|u_ps2|count_idle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|count_idle\(0),
	datad => VCC,
	combout => \game_control|u_ps2|count_idle[0]~12_combout\,
	cout => \game_control|u_ps2|count_idle[0]~13\);

-- Location: LCCOMB_X19_Y13_N2
\game_control|u_ps2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|Equal0~1_combout\ = (\game_control|u_ps2|count_idle\(7) & (\game_control|u_ps2|count_idle\(6) & (\game_control|u_ps2|count_idle\(4) & !\game_control|u_ps2|count_idle\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|count_idle\(7),
	datab => \game_control|u_ps2|count_idle\(6),
	datac => \game_control|u_ps2|count_idle\(4),
	datad => \game_control|u_ps2|count_idle\(5),
	combout => \game_control|u_ps2|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y13_N0
\game_control|u_ps2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|Equal0~0_combout\ = (!\game_control|u_ps2|count_idle\(2) & (\game_control|u_ps2|count_idle\(3) & (!\game_control|u_ps2|count_idle\(1) & \game_control|u_ps2|count_idle\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|count_idle\(2),
	datab => \game_control|u_ps2|count_idle\(3),
	datac => \game_control|u_ps2|count_idle\(1),
	datad => \game_control|u_ps2|count_idle\(0),
	combout => \game_control|u_ps2|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y13_N30
\game_control|u_ps2|count_idle[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[9]~14_combout\ = (((!\game_control|u_ps2|Equal0~0_combout\) # (!\game_control|u_ps2|debounce_ps2_clk|result~q\)) # (!\game_control|u_ps2|Equal0~2_combout\)) # (!\game_control|u_ps2|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|Equal0~1_combout\,
	datab => \game_control|u_ps2|Equal0~2_combout\,
	datac => \game_control|u_ps2|debounce_ps2_clk|result~q\,
	datad => \game_control|u_ps2|Equal0~0_combout\,
	combout => \game_control|u_ps2|count_idle[9]~14_combout\);

-- Location: FF_X19_Y13_N7
\game_control|u_ps2|count_idle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[0]~12_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(0));

-- Location: LCCOMB_X19_Y13_N8
\game_control|u_ps2|count_idle[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[1]~15_combout\ = (\game_control|u_ps2|count_idle\(1) & (!\game_control|u_ps2|count_idle[0]~13\)) # (!\game_control|u_ps2|count_idle\(1) & ((\game_control|u_ps2|count_idle[0]~13\) # (GND)))
-- \game_control|u_ps2|count_idle[1]~16\ = CARRY((!\game_control|u_ps2|count_idle[0]~13\) # (!\game_control|u_ps2|count_idle\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|count_idle\(1),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[0]~13\,
	combout => \game_control|u_ps2|count_idle[1]~15_combout\,
	cout => \game_control|u_ps2|count_idle[1]~16\);

-- Location: FF_X19_Y13_N9
\game_control|u_ps2|count_idle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[1]~15_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(1));

-- Location: LCCOMB_X19_Y13_N10
\game_control|u_ps2|count_idle[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[2]~17_combout\ = (\game_control|u_ps2|count_idle\(2) & (\game_control|u_ps2|count_idle[1]~16\ $ (GND))) # (!\game_control|u_ps2|count_idle\(2) & (!\game_control|u_ps2|count_idle[1]~16\ & VCC))
-- \game_control|u_ps2|count_idle[2]~18\ = CARRY((\game_control|u_ps2|count_idle\(2) & !\game_control|u_ps2|count_idle[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|count_idle\(2),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[1]~16\,
	combout => \game_control|u_ps2|count_idle[2]~17_combout\,
	cout => \game_control|u_ps2|count_idle[2]~18\);

-- Location: FF_X19_Y13_N11
\game_control|u_ps2|count_idle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[2]~17_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(2));

-- Location: LCCOMB_X19_Y13_N12
\game_control|u_ps2|count_idle[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[3]~19_combout\ = (\game_control|u_ps2|count_idle\(3) & (!\game_control|u_ps2|count_idle[2]~18\)) # (!\game_control|u_ps2|count_idle\(3) & ((\game_control|u_ps2|count_idle[2]~18\) # (GND)))
-- \game_control|u_ps2|count_idle[3]~20\ = CARRY((!\game_control|u_ps2|count_idle[2]~18\) # (!\game_control|u_ps2|count_idle\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|count_idle\(3),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[2]~18\,
	combout => \game_control|u_ps2|count_idle[3]~19_combout\,
	cout => \game_control|u_ps2|count_idle[3]~20\);

-- Location: FF_X19_Y13_N13
\game_control|u_ps2|count_idle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[3]~19_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(3));

-- Location: LCCOMB_X19_Y13_N14
\game_control|u_ps2|count_idle[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[4]~21_combout\ = (\game_control|u_ps2|count_idle\(4) & (\game_control|u_ps2|count_idle[3]~20\ $ (GND))) # (!\game_control|u_ps2|count_idle\(4) & (!\game_control|u_ps2|count_idle[3]~20\ & VCC))
-- \game_control|u_ps2|count_idle[4]~22\ = CARRY((\game_control|u_ps2|count_idle\(4) & !\game_control|u_ps2|count_idle[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|count_idle\(4),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[3]~20\,
	combout => \game_control|u_ps2|count_idle[4]~21_combout\,
	cout => \game_control|u_ps2|count_idle[4]~22\);

-- Location: FF_X19_Y13_N15
\game_control|u_ps2|count_idle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[4]~21_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(4));

-- Location: LCCOMB_X19_Y13_N16
\game_control|u_ps2|count_idle[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[5]~23_combout\ = (\game_control|u_ps2|count_idle\(5) & (!\game_control|u_ps2|count_idle[4]~22\)) # (!\game_control|u_ps2|count_idle\(5) & ((\game_control|u_ps2|count_idle[4]~22\) # (GND)))
-- \game_control|u_ps2|count_idle[5]~24\ = CARRY((!\game_control|u_ps2|count_idle[4]~22\) # (!\game_control|u_ps2|count_idle\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|count_idle\(5),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[4]~22\,
	combout => \game_control|u_ps2|count_idle[5]~23_combout\,
	cout => \game_control|u_ps2|count_idle[5]~24\);

-- Location: FF_X19_Y13_N17
\game_control|u_ps2|count_idle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[5]~23_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(5));

-- Location: LCCOMB_X19_Y13_N18
\game_control|u_ps2|count_idle[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[6]~25_combout\ = (\game_control|u_ps2|count_idle\(6) & (\game_control|u_ps2|count_idle[5]~24\ $ (GND))) # (!\game_control|u_ps2|count_idle\(6) & (!\game_control|u_ps2|count_idle[5]~24\ & VCC))
-- \game_control|u_ps2|count_idle[6]~26\ = CARRY((\game_control|u_ps2|count_idle\(6) & !\game_control|u_ps2|count_idle[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|count_idle\(6),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[5]~24\,
	combout => \game_control|u_ps2|count_idle[6]~25_combout\,
	cout => \game_control|u_ps2|count_idle[6]~26\);

-- Location: FF_X19_Y13_N19
\game_control|u_ps2|count_idle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[6]~25_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(6));

-- Location: LCCOMB_X19_Y13_N20
\game_control|u_ps2|count_idle[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[7]~27_combout\ = (\game_control|u_ps2|count_idle\(7) & (!\game_control|u_ps2|count_idle[6]~26\)) # (!\game_control|u_ps2|count_idle\(7) & ((\game_control|u_ps2|count_idle[6]~26\) # (GND)))
-- \game_control|u_ps2|count_idle[7]~28\ = CARRY((!\game_control|u_ps2|count_idle[6]~26\) # (!\game_control|u_ps2|count_idle\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|count_idle\(7),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[6]~26\,
	combout => \game_control|u_ps2|count_idle[7]~27_combout\,
	cout => \game_control|u_ps2|count_idle[7]~28\);

-- Location: FF_X19_Y13_N21
\game_control|u_ps2|count_idle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[7]~27_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(7));

-- Location: LCCOMB_X19_Y13_N22
\game_control|u_ps2|count_idle[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[8]~29_combout\ = (\game_control|u_ps2|count_idle\(8) & (\game_control|u_ps2|count_idle[7]~28\ $ (GND))) # (!\game_control|u_ps2|count_idle\(8) & (!\game_control|u_ps2|count_idle[7]~28\ & VCC))
-- \game_control|u_ps2|count_idle[8]~30\ = CARRY((\game_control|u_ps2|count_idle\(8) & !\game_control|u_ps2|count_idle[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|count_idle\(8),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[7]~28\,
	combout => \game_control|u_ps2|count_idle[8]~29_combout\,
	cout => \game_control|u_ps2|count_idle[8]~30\);

-- Location: FF_X19_Y13_N23
\game_control|u_ps2|count_idle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[8]~29_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(8));

-- Location: LCCOMB_X19_Y13_N24
\game_control|u_ps2|count_idle[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[9]~31_combout\ = (\game_control|u_ps2|count_idle\(9) & (!\game_control|u_ps2|count_idle[8]~30\)) # (!\game_control|u_ps2|count_idle\(9) & ((\game_control|u_ps2|count_idle[8]~30\) # (GND)))
-- \game_control|u_ps2|count_idle[9]~32\ = CARRY((!\game_control|u_ps2|count_idle[8]~30\) # (!\game_control|u_ps2|count_idle\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|count_idle\(9),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[8]~30\,
	combout => \game_control|u_ps2|count_idle[9]~31_combout\,
	cout => \game_control|u_ps2|count_idle[9]~32\);

-- Location: FF_X19_Y13_N25
\game_control|u_ps2|count_idle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[9]~31_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(9));

-- Location: LCCOMB_X19_Y13_N26
\game_control|u_ps2|count_idle[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[10]~33_combout\ = (\game_control|u_ps2|count_idle\(10) & (\game_control|u_ps2|count_idle[9]~32\ $ (GND))) # (!\game_control|u_ps2|count_idle\(10) & (!\game_control|u_ps2|count_idle[9]~32\ & VCC))
-- \game_control|u_ps2|count_idle[10]~34\ = CARRY((\game_control|u_ps2|count_idle\(10) & !\game_control|u_ps2|count_idle[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|count_idle\(10),
	datad => VCC,
	cin => \game_control|u_ps2|count_idle[9]~32\,
	combout => \game_control|u_ps2|count_idle[10]~33_combout\,
	cout => \game_control|u_ps2|count_idle[10]~34\);

-- Location: FF_X19_Y13_N27
\game_control|u_ps2|count_idle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[10]~33_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(10));

-- Location: LCCOMB_X19_Y13_N28
\game_control|u_ps2|count_idle[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|count_idle[11]~35_combout\ = \game_control|u_ps2|count_idle[10]~34\ $ (\game_control|u_ps2|count_idle\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|count_idle\(11),
	cin => \game_control|u_ps2|count_idle[10]~34\,
	combout => \game_control|u_ps2|count_idle[11]~35_combout\);

-- Location: FF_X19_Y13_N29
\game_control|u_ps2|count_idle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|count_idle[11]~35_combout\,
	sclr => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \game_control|u_ps2|count_idle[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|count_idle\(11));

-- Location: LCCOMB_X19_Y13_N4
\game_control|u_ps2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|Equal0~2_combout\ = (!\game_control|u_ps2|count_idle\(10) & (\game_control|u_ps2|count_idle\(11) & (!\game_control|u_ps2|count_idle\(8) & \game_control|u_ps2|count_idle\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|count_idle\(10),
	datab => \game_control|u_ps2|count_idle\(11),
	datac => \game_control|u_ps2|count_idle\(8),
	datad => \game_control|u_ps2|count_idle\(9),
	combout => \game_control|u_ps2|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y13_N28
\game_control|u_ps2|error~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|error~1_combout\ = \game_control|u_ps2|ps2_word\(8) $ (\game_control|u_ps2|ps2_word\(5) $ (\game_control|u_ps2|ps2_word\(6) $ (\game_control|u_ps2|ps2_word\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_word\(8),
	datab => \game_control|u_ps2|ps2_word\(5),
	datac => \game_control|u_ps2|ps2_word\(6),
	datad => \game_control|u_ps2|ps2_word\(7),
	combout => \game_control|u_ps2|error~1_combout\);

-- Location: LCCOMB_X16_Y13_N12
\game_control|u_ps2|ps2_word[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[2]~feeder_combout\ = \game_control|u_ps2|ps2_word\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|ps2_word\(3),
	combout => \game_control|u_ps2|ps2_word[2]~feeder_combout\);

-- Location: FF_X16_Y13_N13
\game_control|u_ps2|ps2_word[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(2));

-- Location: LCCOMB_X16_Y13_N22
\game_control|u_ps2|ps2_word[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_word[1]~feeder_combout\ = \game_control|u_ps2|ps2_word\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|ps2_word\(2),
	combout => \game_control|u_ps2|ps2_word[1]~feeder_combout\);

-- Location: FF_X16_Y13_N23
\game_control|u_ps2|ps2_word[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \game_control|u_ps2|ps2_word[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(1));

-- Location: FF_X16_Y13_N5
\game_control|u_ps2|ps2_word[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \game_control|u_ps2|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \game_control|u_ps2|ps2_word\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_word\(0));

-- Location: LCCOMB_X16_Y13_N4
\game_control|u_ps2|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|process_2~0_combout\ = (!\game_control|u_ps2|ps2_word\(0) & \game_control|u_ps2|ps2_word\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|u_ps2|ps2_word\(0),
	datad => \game_control|u_ps2|ps2_word\(10),
	combout => \game_control|u_ps2|process_2~0_combout\);

-- Location: LCCOMB_X16_Y13_N20
\game_control|u_ps2|error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|error~0_combout\ = \game_control|u_ps2|ps2_word\(2) $ (\game_control|u_ps2|ps2_word\(4) $ (\game_control|u_ps2|ps2_word\(1) $ (\game_control|u_ps2|ps2_word\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_word\(2),
	datab => \game_control|u_ps2|ps2_word\(4),
	datac => \game_control|u_ps2|ps2_word\(1),
	datad => \game_control|u_ps2|ps2_word\(3),
	combout => \game_control|u_ps2|error~0_combout\);

-- Location: LCCOMB_X16_Y13_N18
\game_control|u_ps2|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|process_2~1_combout\ = (\game_control|u_ps2|process_2~0_combout\ & (\game_control|u_ps2|ps2_word\(9) $ (\game_control|u_ps2|error~1_combout\ $ (\game_control|u_ps2|error~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_word\(9),
	datab => \game_control|u_ps2|error~1_combout\,
	datac => \game_control|u_ps2|process_2~0_combout\,
	datad => \game_control|u_ps2|error~0_combout\,
	combout => \game_control|u_ps2|process_2~1_combout\);

-- Location: LCCOMB_X15_Y13_N14
\game_control|u_ps2|process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|process_2~2_combout\ = (\game_control|u_ps2|Equal0~2_combout\ & (\game_control|u_ps2|Equal0~1_combout\ & (\game_control|u_ps2|Equal0~0_combout\ & \game_control|u_ps2|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|Equal0~2_combout\,
	datab => \game_control|u_ps2|Equal0~1_combout\,
	datac => \game_control|u_ps2|Equal0~0_combout\,
	datad => \game_control|u_ps2|process_2~1_combout\,
	combout => \game_control|u_ps2|process_2~2_combout\);

-- Location: FF_X15_Y13_N13
\game_control|u_ps2|ps2_code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|ps2_code[2]~feeder_combout\,
	ena => \game_control|u_ps2|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_code\(2));

-- Location: FF_X15_Y13_N15
\game_control|u_ps2|ps2_code_new\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_code_new~q\);

-- Location: LCCOMB_X15_Y13_N30
\game_control|u_ps2|ps2_code[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_code[7]~feeder_combout\ = \game_control|u_ps2|ps2_word\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|u_ps2|ps2_word\(8),
	combout => \game_control|u_ps2|ps2_code[7]~feeder_combout\);

-- Location: FF_X15_Y13_N31
\game_control|u_ps2|ps2_code[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|ps2_code[7]~feeder_combout\,
	ena => \game_control|u_ps2|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_code\(7));

-- Location: LCCOMB_X15_Y13_N16
\game_control|u_ps2|ps2_code[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_code[4]~feeder_combout\ = \game_control|u_ps2|ps2_word\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|ps2_word\(5),
	combout => \game_control|u_ps2|ps2_code[4]~feeder_combout\);

-- Location: FF_X15_Y13_N17
\game_control|u_ps2|ps2_code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|ps2_code[4]~feeder_combout\,
	ena => \game_control|u_ps2|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_code\(4));

-- Location: LCCOMB_X15_Y13_N26
\game_control|u_ps2|ps2_code[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_code[3]~feeder_combout\ = \game_control|u_ps2|ps2_word\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|u_ps2|ps2_word\(4),
	combout => \game_control|u_ps2|ps2_code[3]~feeder_combout\);

-- Location: FF_X15_Y13_N27
\game_control|u_ps2|ps2_code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|ps2_code[3]~feeder_combout\,
	ena => \game_control|u_ps2|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_code\(3));

-- Location: LCCOMB_X15_Y13_N8
\game_control|u_ps2|ps2_code[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_code[6]~feeder_combout\ = \game_control|u_ps2|ps2_word\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game_control|u_ps2|ps2_word\(7),
	combout => \game_control|u_ps2|ps2_code[6]~feeder_combout\);

-- Location: FF_X15_Y13_N9
\game_control|u_ps2|ps2_code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|ps2_code[6]~feeder_combout\,
	ena => \game_control|u_ps2|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_code\(6));

-- Location: FF_X15_Y13_N11
\game_control|u_ps2|ps2_code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \game_control|u_ps2|ps2_word\(2),
	sload => VCC,
	ena => \game_control|u_ps2|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_code\(1));

-- Location: LCCOMB_X15_Y13_N2
\game_control|u_ps2|ps2_code[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|u_ps2|ps2_code[5]~feeder_combout\ = \game_control|u_ps2|ps2_word\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|u_ps2|ps2_word\(6),
	combout => \game_control|u_ps2|ps2_code[5]~feeder_combout\);

-- Location: FF_X15_Y13_N3
\game_control|u_ps2|ps2_code[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|u_ps2|ps2_code[5]~feeder_combout\,
	ena => \game_control|u_ps2|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_code\(5));

-- Location: LCCOMB_X15_Y13_N24
\game_control|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Equal0~0_combout\ = (!\game_control|u_ps2|ps2_code\(3) & (\game_control|u_ps2|ps2_code\(6) & (!\game_control|u_ps2|ps2_code\(1) & \game_control|u_ps2|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(3),
	datab => \game_control|u_ps2|ps2_code\(6),
	datac => \game_control|u_ps2|ps2_code\(1),
	datad => \game_control|u_ps2|ps2_code\(5),
	combout => \game_control|Equal0~0_combout\);

-- Location: FF_X15_Y13_N19
\game_control|u_ps2|ps2_code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \game_control|u_ps2|ps2_word\(1),
	sload => VCC,
	ena => \game_control|u_ps2|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|u_ps2|ps2_code\(0));

-- Location: LCCOMB_X15_Y13_N18
\game_control|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Equal0~1_combout\ = (\game_control|u_ps2|ps2_code\(7) & (\game_control|Equal0~0_combout\ & (!\game_control|u_ps2|ps2_code\(0) & !\game_control|u_ps2|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(7),
	datab => \game_control|Equal0~0_combout\,
	datac => \game_control|u_ps2|ps2_code\(0),
	datad => \game_control|u_ps2|ps2_code\(2),
	combout => \game_control|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y13_N28
\game_control|is_e0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|is_e0~0_combout\ = (\game_control|u_ps2|ps2_code_new~q\ & (\game_control|Equal0~1_combout\ & ((\game_control|is_e0~q\) # (!\game_control|u_ps2|ps2_code\(4))))) # (!\game_control|u_ps2|ps2_code_new~q\ & (((\game_control|is_e0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code_new~q\,
	datab => \game_control|u_ps2|ps2_code\(4),
	datac => \game_control|is_e0~q\,
	datad => \game_control|Equal0~1_combout\,
	combout => \game_control|is_e0~0_combout\);

-- Location: FF_X15_Y13_N29
\game_control|is_e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|is_e0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|is_e0~q\);

-- Location: LCCOMB_X15_Y13_N0
\game_control|is_break~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|is_break~0_combout\ = (\game_control|u_ps2|ps2_code_new~q\ & (\game_control|Equal0~1_combout\ & ((\game_control|u_ps2|ps2_code\(4)) # (\game_control|is_break~q\)))) # (!\game_control|u_ps2|ps2_code_new~q\ & (((\game_control|is_break~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code_new~q\,
	datab => \game_control|u_ps2|ps2_code\(4),
	datac => \game_control|is_break~q\,
	datad => \game_control|Equal0~1_combout\,
	combout => \game_control|is_break~0_combout\);

-- Location: FF_X15_Y13_N1
\game_control|is_break\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|is_break~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|is_break~q\);

-- Location: LCCOMB_X15_Y13_N6
\game_control|turret_angle_int[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|turret_angle_int[6]~0_combout\ = (!\game_control|u_ps2|ps2_code\(3) & (!\game_control|is_break~q\ & (\game_control|u_ps2|ps2_code\(6) & \game_control|u_ps2|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(3),
	datab => \game_control|is_break~q\,
	datac => \game_control|u_ps2|ps2_code\(6),
	datad => \game_control|u_ps2|ps2_code\(5),
	combout => \game_control|turret_angle_int[6]~0_combout\);

-- Location: LCCOMB_X15_Y13_N4
\game_control|turret_angle_int[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|turret_angle_int[6]~1_combout\ = (!\game_control|u_ps2|ps2_code\(7) & (\game_control|u_ps2|ps2_code\(4) & (\game_control|is_e0~q\ & \game_control|turret_angle_int[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(7),
	datab => \game_control|u_ps2|ps2_code\(4),
	datac => \game_control|is_e0~q\,
	datad => \game_control|turret_angle_int[6]~0_combout\,
	combout => \game_control|turret_angle_int[6]~1_combout\);

-- Location: LCCOMB_X15_Y13_N20
\game_control|turret_angle_int[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|turret_angle_int[6]~2_combout\ = (\game_control|u_ps2|ps2_code_new~q\ & (\game_control|turret_angle_int[6]~1_combout\ & !\game_control|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code_new~q\,
	datac => \game_control|turret_angle_int[6]~1_combout\,
	datad => \game_control|Equal0~1_combout\,
	combout => \game_control|turret_angle_int[6]~2_combout\);

-- Location: LCCOMB_X15_Y13_N10
\game_control|turret_angle_int[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|turret_angle_int[0]~4_combout\ = (\game_control|u_ps2|ps2_code\(0) & ((\game_control|u_ps2|ps2_code\(1)) # (!\game_control|u_ps2|ps2_code\(2)))) # (!\game_control|u_ps2|ps2_code\(0) & ((\game_control|u_ps2|ps2_code\(2)) # 
-- (!\game_control|u_ps2|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(0),
	datac => \game_control|u_ps2|ps2_code\(1),
	datad => \game_control|u_ps2|ps2_code\(2),
	combout => \game_control|turret_angle_int[0]~4_combout\);

-- Location: LCCOMB_X16_Y17_N10
\game_control|Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux31~0_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\)) # (!\game_control|u_ps2|ps2_code\(2) & ((!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan0~1_combout\,
	datad => \game_control|LessThan1~9_combout\,
	combout => \game_control|Mux31~0_combout\);

-- Location: LCCOMB_X17_Y19_N28
\game_control|turret_angle_int[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|turret_angle_int[0]~5_combout\ = (\game_control|turret_angle_int\(0)) # ((\game_control|turret_angle_int[6]~2_combout\ & (!\game_control|turret_angle_int[0]~4_combout\ & !\game_control|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int[6]~2_combout\,
	datab => \game_control|turret_angle_int[0]~4_combout\,
	datac => \game_control|turret_angle_int\(0),
	datad => \game_control|Mux31~0_combout\,
	combout => \game_control|turret_angle_int[0]~5_combout\);

-- Location: FF_X17_Y19_N29
\game_control|turret_angle_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|turret_angle_int[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(0));

-- Location: LCCOMB_X14_Y18_N2
\game_control|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~0_combout\ = \game_control|turret_angle_int\(1) $ (VCC)
-- \game_control|Add1~1\ = CARRY(\game_control|turret_angle_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(1),
	datad => VCC,
	combout => \game_control|Add1~0_combout\,
	cout => \game_control|Add1~1\);

-- Location: LCCOMB_X16_Y16_N2
\game_control|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~0_combout\ = \game_control|turret_angle_int\(1) $ (VCC)
-- \game_control|Add0~1\ = CARRY(\game_control|turret_angle_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(1),
	datad => VCC,
	combout => \game_control|Add0~0_combout\,
	cout => \game_control|Add0~1\);

-- Location: LCCOMB_X16_Y18_N18
\game_control|Mux30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux30~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add0~0_combout\)) # (!\game_control|LessThan0~1_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan0~1_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add1~0_combout\,
	datad => \game_control|Add0~0_combout\,
	combout => \game_control|Mux30~2_combout\);

-- Location: LCCOMB_X16_Y18_N28
\game_control|Mux30~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux30~3_combout\ = (\game_control|Mux30~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux30~2_combout\,
	combout => \game_control|Mux30~3_combout\);

-- Location: LCCOMB_X15_Y13_N22
\game_control|turret_angle_int[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|turret_angle_int[6]~3_combout\ = (\game_control|turret_angle_int[6]~2_combout\ & ((\game_control|u_ps2|ps2_code\(2) & (!\game_control|u_ps2|ps2_code\(1) & \game_control|u_ps2|ps2_code\(0))) # (!\game_control|u_ps2|ps2_code\(2) & 
-- (\game_control|u_ps2|ps2_code\(1) & !\game_control|u_ps2|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|u_ps2|ps2_code\(1),
	datac => \game_control|u_ps2|ps2_code\(0),
	datad => \game_control|turret_angle_int[6]~2_combout\,
	combout => \game_control|turret_angle_int[6]~3_combout\);

-- Location: FF_X16_Y18_N29
\game_control|turret_angle_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux30~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(1));

-- Location: LCCOMB_X14_Y18_N4
\game_control|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~2_combout\ = (\game_control|turret_angle_int\(2) & (!\game_control|Add1~1\)) # (!\game_control|turret_angle_int\(2) & (\game_control|Add1~1\ & VCC))
-- \game_control|Add1~3\ = CARRY((\game_control|turret_angle_int\(2) & !\game_control|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(2),
	datad => VCC,
	cin => \game_control|Add1~1\,
	combout => \game_control|Add1~2_combout\,
	cout => \game_control|Add1~3\);

-- Location: LCCOMB_X16_Y16_N4
\game_control|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~2_combout\ = (\game_control|turret_angle_int\(2) & ((\game_control|Add0~1\) # (GND))) # (!\game_control|turret_angle_int\(2) & (!\game_control|Add0~1\))
-- \game_control|Add0~3\ = CARRY((\game_control|turret_angle_int\(2)) # (!\game_control|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(2),
	datad => VCC,
	cin => \game_control|Add0~1\,
	combout => \game_control|Add0~2_combout\,
	cout => \game_control|Add0~3\);

-- Location: LCCOMB_X17_Y18_N4
\game_control|Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux29~0_combout\ = ((\game_control|u_ps2|ps2_code\(2) & ((!\game_control|Add0~2_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (!\game_control|Add1~2_combout\))) # (!\game_control|Mux31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|Add1~2_combout\,
	datac => \game_control|Mux31~0_combout\,
	datad => \game_control|Add0~2_combout\,
	combout => \game_control|Mux29~0_combout\);

-- Location: FF_X17_Y18_N5
\game_control|turret_angle_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux29~0_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(2));

-- Location: LCCOMB_X16_Y18_N12
\render|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux0~4_combout\ = (\game_control|turret_angle_int\(3) & (!\game_control|turret_angle_int\(1) & \game_control|turret_angle_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(3),
	datac => \game_control|turret_angle_int\(1),
	datad => \game_control|turret_angle_int\(2),
	combout => \render|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y18_N20
\game_control|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan0~0_combout\ = ((\game_control|turret_angle_int\(4) & ((!\render|Mux0~4_combout\) # (!\game_control|turret_angle_int\(0))))) # (!\game_control|turret_angle_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(5),
	datab => \game_control|turret_angle_int\(4),
	datac => \game_control|turret_angle_int\(0),
	datad => \render|Mux0~4_combout\,
	combout => \game_control|LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y18_N26
\game_control|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux0~3_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\)) # (!\game_control|u_ps2|ps2_code\(2) & ((!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|LessThan1~9_combout\,
	combout => \game_control|Mux0~3_combout\);

-- Location: LCCOMB_X14_Y18_N12
\game_control|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~10_combout\ = (\game_control|turret_angle_int\(6) & (\game_control|Add1~9\ & VCC)) # (!\game_control|turret_angle_int\(6) & (!\game_control|Add1~9\))
-- \game_control|Add1~11\ = CARRY((!\game_control|turret_angle_int\(6) & !\game_control|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(6),
	datad => VCC,
	cin => \game_control|Add1~9\,
	combout => \game_control|Add1~10_combout\,
	cout => \game_control|Add1~11\);

-- Location: LCCOMB_X14_Y18_N14
\game_control|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~12_combout\ = (\game_control|turret_angle_int\(7) & ((GND) # (!\game_control|Add1~11\))) # (!\game_control|turret_angle_int\(7) & (\game_control|Add1~11\ $ (GND)))
-- \game_control|Add1~13\ = CARRY((\game_control|turret_angle_int\(7)) # (!\game_control|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(7),
	datad => VCC,
	cin => \game_control|Add1~11\,
	combout => \game_control|Add1~12_combout\,
	cout => \game_control|Add1~13\);

-- Location: LCCOMB_X16_Y16_N10
\game_control|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~8_combout\ = (\game_control|turret_angle_int\(5) & (!\game_control|Add0~7\ & VCC)) # (!\game_control|turret_angle_int\(5) & (\game_control|Add0~7\ $ (GND)))
-- \game_control|Add0~9\ = CARRY((!\game_control|turret_angle_int\(5) & !\game_control|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(5),
	datad => VCC,
	cin => \game_control|Add0~7\,
	combout => \game_control|Add0~8_combout\,
	cout => \game_control|Add0~9\);

-- Location: LCCOMB_X16_Y16_N12
\game_control|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~10_combout\ = (\game_control|turret_angle_int\(6) & (!\game_control|Add0~9\)) # (!\game_control|turret_angle_int\(6) & ((\game_control|Add0~9\) # (GND)))
-- \game_control|Add0~11\ = CARRY((!\game_control|Add0~9\) # (!\game_control|turret_angle_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(6),
	datad => VCC,
	cin => \game_control|Add0~9\,
	combout => \game_control|Add0~10_combout\,
	cout => \game_control|Add0~11\);

-- Location: LCCOMB_X16_Y16_N14
\game_control|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~12_combout\ = (\game_control|turret_angle_int\(7) & (\game_control|Add0~11\ $ (GND))) # (!\game_control|turret_angle_int\(7) & (!\game_control|Add0~11\ & VCC))
-- \game_control|Add0~13\ = CARRY((\game_control|turret_angle_int\(7) & !\game_control|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(7),
	datad => VCC,
	cin => \game_control|Add0~11\,
	combout => \game_control|Add0~12_combout\,
	cout => \game_control|Add0~13\);

-- Location: LCCOMB_X15_Y16_N10
\game_control|Mux24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux24~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add0~12_combout\ & \game_control|LessThan0~1_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (\game_control|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|Add1~12_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add0~12_combout\,
	datad => \game_control|LessThan0~1_combout\,
	combout => \game_control|Mux24~2_combout\);

-- Location: LCCOMB_X15_Y16_N8
\game_control|Mux24~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux24~3_combout\ = (\game_control|Mux24~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux24~2_combout\,
	combout => \game_control|Mux24~3_combout\);

-- Location: FF_X15_Y16_N9
\game_control|turret_angle_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux24~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(7));

-- Location: LCCOMB_X16_Y16_N16
\game_control|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~14_combout\ = (\game_control|turret_angle_int\(8) & (!\game_control|Add0~13\)) # (!\game_control|turret_angle_int\(8) & ((\game_control|Add0~13\) # (GND)))
-- \game_control|Add0~15\ = CARRY((!\game_control|Add0~13\) # (!\game_control|turret_angle_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(8),
	datad => VCC,
	cin => \game_control|Add0~13\,
	combout => \game_control|Add0~14_combout\,
	cout => \game_control|Add0~15\);

-- Location: LCCOMB_X14_Y18_N16
\game_control|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~14_combout\ = (\game_control|turret_angle_int\(8) & (\game_control|Add1~13\ & VCC)) # (!\game_control|turret_angle_int\(8) & (!\game_control|Add1~13\))
-- \game_control|Add1~15\ = CARRY((!\game_control|turret_angle_int\(8) & !\game_control|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(8),
	datad => VCC,
	cin => \game_control|Add1~13\,
	combout => \game_control|Add1~14_combout\,
	cout => \game_control|Add1~15\);

-- Location: LCCOMB_X15_Y16_N20
\game_control|Mux23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux23~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|Add0~14_combout\ & ((\game_control|LessThan0~1_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|Add0~14_combout\,
	datac => \game_control|Add1~14_combout\,
	datad => \game_control|LessThan0~1_combout\,
	combout => \game_control|Mux23~2_combout\);

-- Location: LCCOMB_X16_Y16_N0
\game_control|Mux23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux23~3_combout\ = (\game_control|Mux23~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux23~2_combout\,
	combout => \game_control|Mux23~3_combout\);

-- Location: FF_X16_Y16_N1
\game_control|turret_angle_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux23~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(8));

-- Location: LCCOMB_X14_Y18_N18
\game_control|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~16_combout\ = (\game_control|turret_angle_int\(9) & ((GND) # (!\game_control|Add1~15\))) # (!\game_control|turret_angle_int\(9) & (\game_control|Add1~15\ $ (GND)))
-- \game_control|Add1~17\ = CARRY((\game_control|turret_angle_int\(9)) # (!\game_control|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(9),
	datad => VCC,
	cin => \game_control|Add1~15\,
	combout => \game_control|Add1~16_combout\,
	cout => \game_control|Add1~17\);

-- Location: LCCOMB_X16_Y16_N18
\game_control|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~16_combout\ = (\game_control|turret_angle_int\(9) & (\game_control|Add0~15\ $ (GND))) # (!\game_control|turret_angle_int\(9) & (!\game_control|Add0~15\ & VCC))
-- \game_control|Add0~17\ = CARRY((\game_control|turret_angle_int\(9) & !\game_control|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(9),
	datad => VCC,
	cin => \game_control|Add0~15\,
	combout => \game_control|Add0~16_combout\,
	cout => \game_control|Add0~17\);

-- Location: LCCOMB_X15_Y17_N26
\game_control|Mux22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux22~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & ((\game_control|Add0~16_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add1~16_combout\,
	datad => \game_control|Add0~16_combout\,
	combout => \game_control|Mux22~2_combout\);

-- Location: LCCOMB_X15_Y17_N4
\game_control|Mux22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux22~3_combout\ = (\game_control|Mux22~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan1~9_combout\,
	datac => \game_control|Mux22~2_combout\,
	datad => \game_control|u_ps2|ps2_code\(2),
	combout => \game_control|Mux22~3_combout\);

-- Location: FF_X15_Y17_N5
\game_control|turret_angle_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux22~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(9));

-- Location: LCCOMB_X16_Y16_N20
\game_control|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~18_combout\ = (\game_control|turret_angle_int\(10) & (!\game_control|Add0~17\)) # (!\game_control|turret_angle_int\(10) & ((\game_control|Add0~17\) # (GND)))
-- \game_control|Add0~19\ = CARRY((!\game_control|Add0~17\) # (!\game_control|turret_angle_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(10),
	datad => VCC,
	cin => \game_control|Add0~17\,
	combout => \game_control|Add0~18_combout\,
	cout => \game_control|Add0~19\);

-- Location: LCCOMB_X14_Y18_N20
\game_control|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~18_combout\ = (\game_control|turret_angle_int\(10) & (\game_control|Add1~17\ & VCC)) # (!\game_control|turret_angle_int\(10) & (!\game_control|Add1~17\))
-- \game_control|Add1~19\ = CARRY((!\game_control|turret_angle_int\(10) & !\game_control|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(10),
	datad => VCC,
	cin => \game_control|Add1~17\,
	combout => \game_control|Add1~18_combout\,
	cout => \game_control|Add1~19\);

-- Location: LCCOMB_X15_Y16_N26
\game_control|Mux21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux21~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|Add0~18_combout\ & ((\game_control|LessThan0~1_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|Add0~18_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add1~18_combout\,
	datad => \game_control|LessThan0~1_combout\,
	combout => \game_control|Mux21~2_combout\);

-- Location: LCCOMB_X14_Y18_N0
\game_control|Mux21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux21~3_combout\ = (\game_control|Mux21~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux21~2_combout\,
	combout => \game_control|Mux21~3_combout\);

-- Location: FF_X14_Y18_N1
\game_control|turret_angle_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux21~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(10));

-- Location: LCCOMB_X14_Y18_N22
\game_control|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~20_combout\ = (\game_control|turret_angle_int\(11) & ((GND) # (!\game_control|Add1~19\))) # (!\game_control|turret_angle_int\(11) & (\game_control|Add1~19\ $ (GND)))
-- \game_control|Add1~21\ = CARRY((\game_control|turret_angle_int\(11)) # (!\game_control|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(11),
	datad => VCC,
	cin => \game_control|Add1~19\,
	combout => \game_control|Add1~20_combout\,
	cout => \game_control|Add1~21\);

-- Location: LCCOMB_X16_Y16_N22
\game_control|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~20_combout\ = (\game_control|turret_angle_int\(11) & (\game_control|Add0~19\ $ (GND))) # (!\game_control|turret_angle_int\(11) & (!\game_control|Add0~19\ & VCC))
-- \game_control|Add0~21\ = CARRY((\game_control|turret_angle_int\(11) & !\game_control|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(11),
	datad => VCC,
	cin => \game_control|Add0~19\,
	combout => \game_control|Add0~20_combout\,
	cout => \game_control|Add0~21\);

-- Location: LCCOMB_X15_Y16_N0
\game_control|Mux20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux20~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add0~20_combout\ & \game_control|LessThan0~1_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (\game_control|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|Add1~20_combout\,
	datac => \game_control|Add0~20_combout\,
	datad => \game_control|LessThan0~1_combout\,
	combout => \game_control|Mux20~2_combout\);

-- Location: LCCOMB_X15_Y16_N30
\game_control|Mux20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux20~3_combout\ = (\game_control|Mux20~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux20~2_combout\,
	combout => \game_control|Mux20~3_combout\);

-- Location: FF_X15_Y16_N31
\game_control|turret_angle_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux20~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(11));

-- Location: LCCOMB_X16_Y16_N24
\game_control|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~22_combout\ = (\game_control|turret_angle_int\(12) & (!\game_control|Add0~21\)) # (!\game_control|turret_angle_int\(12) & ((\game_control|Add0~21\) # (GND)))
-- \game_control|Add0~23\ = CARRY((!\game_control|Add0~21\) # (!\game_control|turret_angle_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(12),
	datad => VCC,
	cin => \game_control|Add0~21\,
	combout => \game_control|Add0~22_combout\,
	cout => \game_control|Add0~23\);

-- Location: LCCOMB_X14_Y18_N24
\game_control|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~22_combout\ = (\game_control|turret_angle_int\(12) & (\game_control|Add1~21\ & VCC)) # (!\game_control|turret_angle_int\(12) & (!\game_control|Add1~21\))
-- \game_control|Add1~23\ = CARRY((!\game_control|turret_angle_int\(12) & !\game_control|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(12),
	datad => VCC,
	cin => \game_control|Add1~21\,
	combout => \game_control|Add1~22_combout\,
	cout => \game_control|Add1~23\);

-- Location: LCCOMB_X15_Y16_N6
\game_control|Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux19~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|Add0~22_combout\ & ((\game_control|LessThan0~1_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|Add0~22_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add1~22_combout\,
	datad => \game_control|LessThan0~1_combout\,
	combout => \game_control|Mux19~2_combout\);

-- Location: LCCOMB_X15_Y16_N16
\game_control|Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux19~3_combout\ = (\game_control|Mux19~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux19~2_combout\,
	combout => \game_control|Mux19~3_combout\);

-- Location: FF_X15_Y16_N17
\game_control|turret_angle_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux19~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(12));

-- Location: LCCOMB_X16_Y16_N26
\game_control|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~24_combout\ = (\game_control|turret_angle_int\(13) & (\game_control|Add0~23\ $ (GND))) # (!\game_control|turret_angle_int\(13) & (!\game_control|Add0~23\ & VCC))
-- \game_control|Add0~25\ = CARRY((\game_control|turret_angle_int\(13) & !\game_control|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(13),
	datad => VCC,
	cin => \game_control|Add0~23\,
	combout => \game_control|Add0~24_combout\,
	cout => \game_control|Add0~25\);

-- Location: LCCOMB_X14_Y18_N26
\game_control|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~24_combout\ = (\game_control|turret_angle_int\(13) & ((GND) # (!\game_control|Add1~23\))) # (!\game_control|turret_angle_int\(13) & (\game_control|Add1~23\ $ (GND)))
-- \game_control|Add1~25\ = CARRY((\game_control|turret_angle_int\(13)) # (!\game_control|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(13),
	datad => VCC,
	cin => \game_control|Add1~23\,
	combout => \game_control|Add1~24_combout\,
	cout => \game_control|Add1~25\);

-- Location: LCCOMB_X15_Y16_N12
\game_control|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux18~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|Add0~24_combout\ & ((\game_control|LessThan0~1_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|Add0~24_combout\,
	datac => \game_control|Add1~24_combout\,
	datad => \game_control|LessThan0~1_combout\,
	combout => \game_control|Mux18~2_combout\);

-- Location: LCCOMB_X15_Y16_N14
\game_control|Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux18~3_combout\ = (\game_control|Mux18~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux18~2_combout\,
	combout => \game_control|Mux18~3_combout\);

-- Location: FF_X15_Y16_N15
\game_control|turret_angle_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux18~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(13));

-- Location: LCCOMB_X16_Y16_N28
\game_control|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~26_combout\ = (\game_control|turret_angle_int\(14) & (!\game_control|Add0~25\)) # (!\game_control|turret_angle_int\(14) & ((\game_control|Add0~25\) # (GND)))
-- \game_control|Add0~27\ = CARRY((!\game_control|Add0~25\) # (!\game_control|turret_angle_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(14),
	datad => VCC,
	cin => \game_control|Add0~25\,
	combout => \game_control|Add0~26_combout\,
	cout => \game_control|Add0~27\);

-- Location: LCCOMB_X14_Y18_N28
\game_control|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~26_combout\ = (\game_control|turret_angle_int\(14) & (\game_control|Add1~25\ & VCC)) # (!\game_control|turret_angle_int\(14) & (!\game_control|Add1~25\))
-- \game_control|Add1~27\ = CARRY((!\game_control|turret_angle_int\(14) & !\game_control|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(14),
	datad => VCC,
	cin => \game_control|Add1~25\,
	combout => \game_control|Add1~26_combout\,
	cout => \game_control|Add1~27\);

-- Location: LCCOMB_X15_Y16_N2
\game_control|Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux17~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & (\game_control|Add0~26_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add0~26_combout\,
	datad => \game_control|Add1~26_combout\,
	combout => \game_control|Mux17~2_combout\);

-- Location: LCCOMB_X15_Y16_N24
\game_control|Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux17~3_combout\ = (\game_control|Mux17~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux17~2_combout\,
	combout => \game_control|Mux17~3_combout\);

-- Location: FF_X15_Y16_N25
\game_control|turret_angle_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux17~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(14));

-- Location: LCCOMB_X16_Y16_N30
\game_control|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~28_combout\ = (\game_control|turret_angle_int\(15) & (\game_control|Add0~27\ $ (GND))) # (!\game_control|turret_angle_int\(15) & (!\game_control|Add0~27\ & VCC))
-- \game_control|Add0~29\ = CARRY((\game_control|turret_angle_int\(15) & !\game_control|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(15),
	datad => VCC,
	cin => \game_control|Add0~27\,
	combout => \game_control|Add0~28_combout\,
	cout => \game_control|Add0~29\);

-- Location: LCCOMB_X14_Y18_N30
\game_control|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~28_combout\ = (\game_control|turret_angle_int\(15) & ((GND) # (!\game_control|Add1~27\))) # (!\game_control|turret_angle_int\(15) & (\game_control|Add1~27\ $ (GND)))
-- \game_control|Add1~29\ = CARRY((\game_control|turret_angle_int\(15)) # (!\game_control|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(15),
	datad => VCC,
	cin => \game_control|Add1~27\,
	combout => \game_control|Add1~28_combout\,
	cout => \game_control|Add1~29\);

-- Location: LCCOMB_X15_Y17_N12
\game_control|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux16~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & (\game_control|Add0~28_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add0~28_combout\,
	datad => \game_control|Add1~28_combout\,
	combout => \game_control|Mux16~2_combout\);

-- Location: LCCOMB_X15_Y17_N8
\game_control|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux16~3_combout\ = (\game_control|Mux16~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux16~2_combout\,
	combout => \game_control|Mux16~3_combout\);

-- Location: FF_X15_Y17_N9
\game_control|turret_angle_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux16~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(15));

-- Location: LCCOMB_X14_Y17_N0
\game_control|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~30_combout\ = (\game_control|turret_angle_int\(16) & (\game_control|Add1~29\ & VCC)) # (!\game_control|turret_angle_int\(16) & (!\game_control|Add1~29\))
-- \game_control|Add1~31\ = CARRY((!\game_control|turret_angle_int\(16) & !\game_control|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(16),
	datad => VCC,
	cin => \game_control|Add1~29\,
	combout => \game_control|Add1~30_combout\,
	cout => \game_control|Add1~31\);

-- Location: LCCOMB_X16_Y15_N0
\game_control|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~30_combout\ = (\game_control|turret_angle_int\(16) & (!\game_control|Add0~29\)) # (!\game_control|turret_angle_int\(16) & ((\game_control|Add0~29\) # (GND)))
-- \game_control|Add0~31\ = CARRY((!\game_control|Add0~29\) # (!\game_control|turret_angle_int\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(16),
	datad => VCC,
	cin => \game_control|Add0~29\,
	combout => \game_control|Add0~30_combout\,
	cout => \game_control|Add0~31\);

-- Location: LCCOMB_X15_Y17_N18
\game_control|Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux15~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & ((\game_control|Add0~30_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add1~30_combout\,
	datad => \game_control|Add0~30_combout\,
	combout => \game_control|Mux15~2_combout\);

-- Location: LCCOMB_X15_Y17_N22
\game_control|Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux15~3_combout\ = (\game_control|Mux15~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux15~2_combout\,
	combout => \game_control|Mux15~3_combout\);

-- Location: FF_X15_Y17_N23
\game_control|turret_angle_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux15~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(16));

-- Location: LCCOMB_X16_Y15_N2
\game_control|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~32_combout\ = (\game_control|turret_angle_int\(17) & (\game_control|Add0~31\ $ (GND))) # (!\game_control|turret_angle_int\(17) & (!\game_control|Add0~31\ & VCC))
-- \game_control|Add0~33\ = CARRY((\game_control|turret_angle_int\(17) & !\game_control|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(17),
	datad => VCC,
	cin => \game_control|Add0~31\,
	combout => \game_control|Add0~32_combout\,
	cout => \game_control|Add0~33\);

-- Location: LCCOMB_X14_Y17_N2
\game_control|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~32_combout\ = (\game_control|turret_angle_int\(17) & ((GND) # (!\game_control|Add1~31\))) # (!\game_control|turret_angle_int\(17) & (\game_control|Add1~31\ $ (GND)))
-- \game_control|Add1~33\ = CARRY((\game_control|turret_angle_int\(17)) # (!\game_control|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(17),
	datad => VCC,
	cin => \game_control|Add1~31\,
	combout => \game_control|Add1~32_combout\,
	cout => \game_control|Add1~33\);

-- Location: LCCOMB_X15_Y17_N24
\game_control|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux14~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & (\game_control|Add0~32_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add0~32_combout\,
	datad => \game_control|Add1~32_combout\,
	combout => \game_control|Mux14~2_combout\);

-- Location: LCCOMB_X15_Y17_N28
\game_control|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux14~3_combout\ = (\game_control|Mux14~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux14~2_combout\,
	combout => \game_control|Mux14~3_combout\);

-- Location: FF_X15_Y17_N29
\game_control|turret_angle_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux14~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(17));

-- Location: LCCOMB_X14_Y17_N4
\game_control|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~34_combout\ = (\game_control|turret_angle_int\(18) & (\game_control|Add1~33\ & VCC)) # (!\game_control|turret_angle_int\(18) & (!\game_control|Add1~33\))
-- \game_control|Add1~35\ = CARRY((!\game_control|turret_angle_int\(18) & !\game_control|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(18),
	datad => VCC,
	cin => \game_control|Add1~33\,
	combout => \game_control|Add1~34_combout\,
	cout => \game_control|Add1~35\);

-- Location: LCCOMB_X16_Y15_N4
\game_control|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~34_combout\ = (\game_control|turret_angle_int\(18) & (!\game_control|Add0~33\)) # (!\game_control|turret_angle_int\(18) & ((\game_control|Add0~33\) # (GND)))
-- \game_control|Add0~35\ = CARRY((!\game_control|Add0~33\) # (!\game_control|turret_angle_int\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(18),
	datad => VCC,
	cin => \game_control|Add0~33\,
	combout => \game_control|Add0~34_combout\,
	cout => \game_control|Add0~35\);

-- Location: LCCOMB_X15_Y17_N10
\game_control|Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux13~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & ((\game_control|Add0~34_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add1~34_combout\,
	datad => \game_control|Add0~34_combout\,
	combout => \game_control|Mux13~2_combout\);

-- Location: LCCOMB_X15_Y17_N14
\game_control|Mux13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux13~3_combout\ = (\game_control|Mux13~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux13~2_combout\,
	combout => \game_control|Mux13~3_combout\);

-- Location: FF_X15_Y17_N15
\game_control|turret_angle_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux13~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(18));

-- Location: LCCOMB_X16_Y15_N6
\game_control|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~36_combout\ = (\game_control|turret_angle_int\(19) & (\game_control|Add0~35\ $ (GND))) # (!\game_control|turret_angle_int\(19) & (!\game_control|Add0~35\ & VCC))
-- \game_control|Add0~37\ = CARRY((\game_control|turret_angle_int\(19) & !\game_control|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(19),
	datad => VCC,
	cin => \game_control|Add0~35\,
	combout => \game_control|Add0~36_combout\,
	cout => \game_control|Add0~37\);

-- Location: LCCOMB_X14_Y17_N6
\game_control|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~36_combout\ = (\game_control|turret_angle_int\(19) & ((GND) # (!\game_control|Add1~35\))) # (!\game_control|turret_angle_int\(19) & (\game_control|Add1~35\ $ (GND)))
-- \game_control|Add1~37\ = CARRY((\game_control|turret_angle_int\(19)) # (!\game_control|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(19),
	datad => VCC,
	cin => \game_control|Add1~35\,
	combout => \game_control|Add1~36_combout\,
	cout => \game_control|Add1~37\);

-- Location: LCCOMB_X15_Y15_N30
\game_control|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux12~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & (\game_control|Add0~36_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan0~1_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add0~36_combout\,
	datad => \game_control|Add1~36_combout\,
	combout => \game_control|Mux12~2_combout\);

-- Location: LCCOMB_X15_Y15_N16
\game_control|Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux12~3_combout\ = (\game_control|Mux12~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Mux12~2_combout\,
	datad => \game_control|LessThan1~9_combout\,
	combout => \game_control|Mux12~3_combout\);

-- Location: FF_X15_Y15_N17
\game_control|turret_angle_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux12~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(19));

-- Location: LCCOMB_X16_Y15_N8
\game_control|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~38_combout\ = (\game_control|turret_angle_int\(20) & (!\game_control|Add0~37\)) # (!\game_control|turret_angle_int\(20) & ((\game_control|Add0~37\) # (GND)))
-- \game_control|Add0~39\ = CARRY((!\game_control|Add0~37\) # (!\game_control|turret_angle_int\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(20),
	datad => VCC,
	cin => \game_control|Add0~37\,
	combout => \game_control|Add0~38_combout\,
	cout => \game_control|Add0~39\);

-- Location: LCCOMB_X14_Y17_N8
\game_control|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~38_combout\ = (\game_control|turret_angle_int\(20) & (\game_control|Add1~37\ & VCC)) # (!\game_control|turret_angle_int\(20) & (!\game_control|Add1~37\))
-- \game_control|Add1~39\ = CARRY((!\game_control|turret_angle_int\(20) & !\game_control|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(20),
	datad => VCC,
	cin => \game_control|Add1~37\,
	combout => \game_control|Add1~38_combout\,
	cout => \game_control|Add1~39\);

-- Location: LCCOMB_X15_Y15_N0
\game_control|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux11~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|Add0~38_combout\ & ((\game_control|LessThan0~1_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|Add0~38_combout\,
	datac => \game_control|Add1~38_combout\,
	datad => \game_control|LessThan0~1_combout\,
	combout => \game_control|Mux11~2_combout\);

-- Location: LCCOMB_X15_Y15_N14
\game_control|Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux11~3_combout\ = (\game_control|Mux11~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux11~2_combout\,
	combout => \game_control|Mux11~3_combout\);

-- Location: FF_X15_Y15_N15
\game_control|turret_angle_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux11~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(20));

-- Location: LCCOMB_X16_Y15_N10
\game_control|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~40_combout\ = (\game_control|turret_angle_int\(21) & (\game_control|Add0~39\ $ (GND))) # (!\game_control|turret_angle_int\(21) & (!\game_control|Add0~39\ & VCC))
-- \game_control|Add0~41\ = CARRY((\game_control|turret_angle_int\(21) & !\game_control|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(21),
	datad => VCC,
	cin => \game_control|Add0~39\,
	combout => \game_control|Add0~40_combout\,
	cout => \game_control|Add0~41\);

-- Location: LCCOMB_X14_Y17_N10
\game_control|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~40_combout\ = (\game_control|turret_angle_int\(21) & ((GND) # (!\game_control|Add1~39\))) # (!\game_control|turret_angle_int\(21) & (\game_control|Add1~39\ $ (GND)))
-- \game_control|Add1~41\ = CARRY((\game_control|turret_angle_int\(21)) # (!\game_control|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(21),
	datad => VCC,
	cin => \game_control|Add1~39\,
	combout => \game_control|Add1~40_combout\,
	cout => \game_control|Add1~41\);

-- Location: LCCOMB_X15_Y15_N18
\game_control|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux10~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & (\game_control|Add0~40_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan0~1_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add0~40_combout\,
	datad => \game_control|Add1~40_combout\,
	combout => \game_control|Mux10~2_combout\);

-- Location: LCCOMB_X15_Y15_N12
\game_control|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux10~3_combout\ = (\game_control|Mux10~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux10~2_combout\,
	combout => \game_control|Mux10~3_combout\);

-- Location: FF_X15_Y15_N13
\game_control|turret_angle_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux10~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(21));

-- Location: LCCOMB_X16_Y15_N12
\game_control|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~42_combout\ = (\game_control|turret_angle_int\(22) & (!\game_control|Add0~41\)) # (!\game_control|turret_angle_int\(22) & ((\game_control|Add0~41\) # (GND)))
-- \game_control|Add0~43\ = CARRY((!\game_control|Add0~41\) # (!\game_control|turret_angle_int\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(22),
	datad => VCC,
	cin => \game_control|Add0~41\,
	combout => \game_control|Add0~42_combout\,
	cout => \game_control|Add0~43\);

-- Location: LCCOMB_X14_Y17_N12
\game_control|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~42_combout\ = (\game_control|turret_angle_int\(22) & (\game_control|Add1~41\ & VCC)) # (!\game_control|turret_angle_int\(22) & (!\game_control|Add1~41\))
-- \game_control|Add1~43\ = CARRY((!\game_control|turret_angle_int\(22) & !\game_control|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(22),
	datad => VCC,
	cin => \game_control|Add1~41\,
	combout => \game_control|Add1~42_combout\,
	cout => \game_control|Add1~43\);

-- Location: LCCOMB_X15_Y16_N28
\game_control|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux9~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & (\game_control|Add0~42_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add0~42_combout\,
	datad => \game_control|Add1~42_combout\,
	combout => \game_control|Mux9~2_combout\);

-- Location: LCCOMB_X15_Y16_N4
\game_control|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux9~3_combout\ = (\game_control|Mux9~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux9~2_combout\,
	combout => \game_control|Mux9~3_combout\);

-- Location: FF_X15_Y16_N5
\game_control|turret_angle_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux9~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(22));

-- Location: LCCOMB_X14_Y17_N14
\game_control|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~44_combout\ = (\game_control|turret_angle_int\(23) & ((GND) # (!\game_control|Add1~43\))) # (!\game_control|turret_angle_int\(23) & (\game_control|Add1~43\ $ (GND)))
-- \game_control|Add1~45\ = CARRY((\game_control|turret_angle_int\(23)) # (!\game_control|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(23),
	datad => VCC,
	cin => \game_control|Add1~43\,
	combout => \game_control|Add1~44_combout\,
	cout => \game_control|Add1~45\);

-- Location: LCCOMB_X16_Y15_N14
\game_control|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~44_combout\ = (\game_control|turret_angle_int\(23) & (\game_control|Add0~43\ $ (GND))) # (!\game_control|turret_angle_int\(23) & (!\game_control|Add0~43\ & VCC))
-- \game_control|Add0~45\ = CARRY((\game_control|turret_angle_int\(23) & !\game_control|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(23),
	datad => VCC,
	cin => \game_control|Add0~43\,
	combout => \game_control|Add0~44_combout\,
	cout => \game_control|Add0~45\);

-- Location: LCCOMB_X15_Y15_N28
\game_control|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux8~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & ((\game_control|Add0~44_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add1~44_combout\,
	datad => \game_control|Add0~44_combout\,
	combout => \game_control|Mux8~2_combout\);

-- Location: LCCOMB_X15_Y15_N4
\game_control|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux8~3_combout\ = (\game_control|Mux8~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux8~2_combout\,
	combout => \game_control|Mux8~3_combout\);

-- Location: FF_X15_Y15_N5
\game_control|turret_angle_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux8~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(23));

-- Location: LCCOMB_X14_Y17_N16
\game_control|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~46_combout\ = (\game_control|turret_angle_int\(24) & (\game_control|Add1~45\ & VCC)) # (!\game_control|turret_angle_int\(24) & (!\game_control|Add1~45\))
-- \game_control|Add1~47\ = CARRY((!\game_control|turret_angle_int\(24) & !\game_control|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(24),
	datad => VCC,
	cin => \game_control|Add1~45\,
	combout => \game_control|Add1~46_combout\,
	cout => \game_control|Add1~47\);

-- Location: LCCOMB_X16_Y15_N16
\game_control|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~46_combout\ = (\game_control|turret_angle_int\(24) & (!\game_control|Add0~45\)) # (!\game_control|turret_angle_int\(24) & ((\game_control|Add0~45\) # (GND)))
-- \game_control|Add0~47\ = CARRY((!\game_control|Add0~45\) # (!\game_control|turret_angle_int\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(24),
	datad => VCC,
	cin => \game_control|Add0~45\,
	combout => \game_control|Add0~46_combout\,
	cout => \game_control|Add0~47\);

-- Location: LCCOMB_X15_Y15_N10
\game_control|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux7~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & ((\game_control|Add0~46_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan0~1_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add1~46_combout\,
	datad => \game_control|Add0~46_combout\,
	combout => \game_control|Mux7~2_combout\);

-- Location: LCCOMB_X15_Y15_N6
\game_control|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux7~3_combout\ = (\game_control|Mux7~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux7~2_combout\,
	combout => \game_control|Mux7~3_combout\);

-- Location: FF_X15_Y15_N7
\game_control|turret_angle_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux7~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(24));

-- Location: LCCOMB_X14_Y17_N18
\game_control|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~48_combout\ = (\game_control|turret_angle_int\(25) & ((GND) # (!\game_control|Add1~47\))) # (!\game_control|turret_angle_int\(25) & (\game_control|Add1~47\ $ (GND)))
-- \game_control|Add1~49\ = CARRY((\game_control|turret_angle_int\(25)) # (!\game_control|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(25),
	datad => VCC,
	cin => \game_control|Add1~47\,
	combout => \game_control|Add1~48_combout\,
	cout => \game_control|Add1~49\);

-- Location: LCCOMB_X16_Y15_N18
\game_control|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~48_combout\ = (\game_control|turret_angle_int\(25) & (\game_control|Add0~47\ $ (GND))) # (!\game_control|turret_angle_int\(25) & (!\game_control|Add0~47\ & VCC))
-- \game_control|Add0~49\ = CARRY((\game_control|turret_angle_int\(25) & !\game_control|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(25),
	datad => VCC,
	cin => \game_control|Add0~47\,
	combout => \game_control|Add0~48_combout\,
	cout => \game_control|Add0~49\);

-- Location: LCCOMB_X15_Y15_N20
\game_control|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux6~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & ((\game_control|Add0~48_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan0~1_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add1~48_combout\,
	datad => \game_control|Add0~48_combout\,
	combout => \game_control|Mux6~2_combout\);

-- Location: LCCOMB_X15_Y15_N8
\game_control|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux6~3_combout\ = (\game_control|Mux6~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux6~2_combout\,
	combout => \game_control|Mux6~3_combout\);

-- Location: FF_X15_Y15_N9
\game_control|turret_angle_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux6~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(25));

-- Location: LCCOMB_X16_Y15_N20
\game_control|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~50_combout\ = (\game_control|turret_angle_int\(26) & (!\game_control|Add0~49\)) # (!\game_control|turret_angle_int\(26) & ((\game_control|Add0~49\) # (GND)))
-- \game_control|Add0~51\ = CARRY((!\game_control|Add0~49\) # (!\game_control|turret_angle_int\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(26),
	datad => VCC,
	cin => \game_control|Add0~49\,
	combout => \game_control|Add0~50_combout\,
	cout => \game_control|Add0~51\);

-- Location: LCCOMB_X14_Y17_N20
\game_control|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~50_combout\ = (\game_control|turret_angle_int\(26) & (\game_control|Add1~49\ & VCC)) # (!\game_control|turret_angle_int\(26) & (!\game_control|Add1~49\))
-- \game_control|Add1~51\ = CARRY((!\game_control|turret_angle_int\(26) & !\game_control|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(26),
	datad => VCC,
	cin => \game_control|Add1~49\,
	combout => \game_control|Add1~50_combout\,
	cout => \game_control|Add1~51\);

-- Location: LCCOMB_X15_Y15_N2
\game_control|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux5~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|Add0~50_combout\ & (\game_control|LessThan0~1_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|Add0~50_combout\,
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add1~50_combout\,
	datad => \game_control|u_ps2|ps2_code\(2),
	combout => \game_control|Mux5~2_combout\);

-- Location: LCCOMB_X15_Y15_N26
\game_control|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux5~3_combout\ = (\game_control|Mux5~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux5~2_combout\,
	combout => \game_control|Mux5~3_combout\);

-- Location: FF_X15_Y15_N27
\game_control|turret_angle_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux5~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(26));

-- Location: LCCOMB_X16_Y15_N22
\game_control|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~52_combout\ = (\game_control|turret_angle_int\(27) & (\game_control|Add0~51\ $ (GND))) # (!\game_control|turret_angle_int\(27) & (!\game_control|Add0~51\ & VCC))
-- \game_control|Add0~53\ = CARRY((\game_control|turret_angle_int\(27) & !\game_control|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(27),
	datad => VCC,
	cin => \game_control|Add0~51\,
	combout => \game_control|Add0~52_combout\,
	cout => \game_control|Add0~53\);

-- Location: LCCOMB_X14_Y17_N22
\game_control|Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~52_combout\ = (\game_control|turret_angle_int\(27) & ((GND) # (!\game_control|Add1~51\))) # (!\game_control|turret_angle_int\(27) & (\game_control|Add1~51\ $ (GND)))
-- \game_control|Add1~53\ = CARRY((\game_control|turret_angle_int\(27)) # (!\game_control|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(27),
	datad => VCC,
	cin => \game_control|Add1~51\,
	combout => \game_control|Add1~52_combout\,
	cout => \game_control|Add1~53\);

-- Location: LCCOMB_X15_Y18_N12
\game_control|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux4~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & (\game_control|Add0~52_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan0~1_combout\,
	datab => \game_control|Add0~52_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Add1~52_combout\,
	combout => \game_control|Mux4~2_combout\);

-- Location: LCCOMB_X15_Y18_N6
\game_control|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux4~3_combout\ = (\game_control|Mux4~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux4~2_combout\,
	combout => \game_control|Mux4~3_combout\);

-- Location: FF_X15_Y18_N7
\game_control|turret_angle_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux4~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(27));

-- Location: LCCOMB_X16_Y15_N24
\game_control|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~54_combout\ = (\game_control|turret_angle_int\(28) & (!\game_control|Add0~53\)) # (!\game_control|turret_angle_int\(28) & ((\game_control|Add0~53\) # (GND)))
-- \game_control|Add0~55\ = CARRY((!\game_control|Add0~53\) # (!\game_control|turret_angle_int\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(28),
	datad => VCC,
	cin => \game_control|Add0~53\,
	combout => \game_control|Add0~54_combout\,
	cout => \game_control|Add0~55\);

-- Location: LCCOMB_X14_Y17_N24
\game_control|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~54_combout\ = (\game_control|turret_angle_int\(28) & (\game_control|Add1~53\ & VCC)) # (!\game_control|turret_angle_int\(28) & (!\game_control|Add1~53\))
-- \game_control|Add1~55\ = CARRY((!\game_control|turret_angle_int\(28) & !\game_control|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(28),
	datad => VCC,
	cin => \game_control|Add1~53\,
	combout => \game_control|Add1~54_combout\,
	cout => \game_control|Add1~55\);

-- Location: LCCOMB_X15_Y18_N18
\game_control|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux3~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (\game_control|LessThan0~1_combout\ & (\game_control|Add0~54_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|Add0~54_combout\,
	datad => \game_control|Add1~54_combout\,
	combout => \game_control|Mux3~2_combout\);

-- Location: LCCOMB_X15_Y18_N8
\game_control|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux3~3_combout\ = (\game_control|Mux3~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux3~2_combout\,
	combout => \game_control|Mux3~3_combout\);

-- Location: FF_X15_Y18_N9
\game_control|turret_angle_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux3~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(28));

-- Location: LCCOMB_X14_Y17_N26
\game_control|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~56_combout\ = (\game_control|turret_angle_int\(29) & ((GND) # (!\game_control|Add1~55\))) # (!\game_control|turret_angle_int\(29) & (\game_control|Add1~55\ $ (GND)))
-- \game_control|Add1~57\ = CARRY((\game_control|turret_angle_int\(29)) # (!\game_control|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(29),
	datad => VCC,
	cin => \game_control|Add1~55\,
	combout => \game_control|Add1~56_combout\,
	cout => \game_control|Add1~57\);

-- Location: LCCOMB_X16_Y15_N26
\game_control|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~56_combout\ = (\game_control|turret_angle_int\(29) & (\game_control|Add0~55\ $ (GND))) # (!\game_control|turret_angle_int\(29) & (!\game_control|Add0~55\ & VCC))
-- \game_control|Add0~57\ = CARRY((\game_control|turret_angle_int\(29) & !\game_control|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(29),
	datad => VCC,
	cin => \game_control|Add0~55\,
	combout => \game_control|Add0~56_combout\,
	cout => \game_control|Add0~57\);

-- Location: LCCOMB_X15_Y18_N0
\game_control|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux2~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (((\game_control|LessThan0~1_combout\ & \game_control|Add0~56_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (\game_control|Add1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|Add1~56_combout\,
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Add0~56_combout\,
	combout => \game_control|Mux2~2_combout\);

-- Location: LCCOMB_X15_Y18_N10
\game_control|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux2~3_combout\ = (\game_control|Mux2~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux2~2_combout\,
	combout => \game_control|Mux2~3_combout\);

-- Location: FF_X15_Y18_N11
\game_control|turret_angle_int[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux2~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(29));

-- Location: LCCOMB_X14_Y17_N28
\game_control|Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~58_combout\ = (\game_control|turret_angle_int\(30) & (\game_control|Add1~57\ & VCC)) # (!\game_control|turret_angle_int\(30) & (!\game_control|Add1~57\))
-- \game_control|Add1~59\ = CARRY((!\game_control|turret_angle_int\(30) & !\game_control|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(30),
	datad => VCC,
	cin => \game_control|Add1~57\,
	combout => \game_control|Add1~58_combout\,
	cout => \game_control|Add1~59\);

-- Location: LCCOMB_X16_Y15_N28
\game_control|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~58_combout\ = (\game_control|turret_angle_int\(30) & (!\game_control|Add0~57\)) # (!\game_control|turret_angle_int\(30) & ((\game_control|Add0~57\) # (GND)))
-- \game_control|Add0~59\ = CARRY((!\game_control|Add0~57\) # (!\game_control|turret_angle_int\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(30),
	datad => VCC,
	cin => \game_control|Add0~57\,
	combout => \game_control|Add0~58_combout\,
	cout => \game_control|Add0~59\);

-- Location: LCCOMB_X15_Y18_N20
\game_control|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux1~2_combout\ = (\game_control|Mux0~3_combout\ & ((\game_control|u_ps2|ps2_code\(2) & ((\game_control|Add0~58_combout\))) # (!\game_control|u_ps2|ps2_code\(2) & (\game_control|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|Mux0~3_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add1~58_combout\,
	datad => \game_control|Add0~58_combout\,
	combout => \game_control|Mux1~2_combout\);

-- Location: FF_X15_Y18_N21
\game_control|turret_angle_int[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux1~2_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(30));

-- Location: LCCOMB_X16_Y15_N30
\game_control|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~60_combout\ = \game_control|Add0~59\ $ (!\game_control|turret_angle_int\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \game_control|turret_angle_int\(31),
	cin => \game_control|Add0~59\,
	combout => \game_control|Add0~60_combout\);

-- Location: LCCOMB_X14_Y17_N30
\game_control|Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~60_combout\ = \game_control|Add1~59\ $ (\game_control|turret_angle_int\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \game_control|turret_angle_int\(31),
	cin => \game_control|Add1~59\,
	combout => \game_control|Add1~60_combout\);

-- Location: LCCOMB_X15_Y18_N28
\game_control|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux0~2_combout\ = (\game_control|Mux0~3_combout\ & ((\game_control|u_ps2|ps2_code\(2) & (\game_control|Add0~60_combout\)) # (!\game_control|u_ps2|ps2_code\(2) & ((\game_control|Add1~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|Mux0~3_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add0~60_combout\,
	datad => \game_control|Add1~60_combout\,
	combout => \game_control|Mux0~2_combout\);

-- Location: FF_X15_Y18_N29
\game_control|turret_angle_int[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux0~2_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(31));

-- Location: LCCOMB_X15_Y15_N24
\game_control|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~5_combout\ = (!\game_control|turret_angle_int\(26) & (!\game_control|turret_angle_int\(23) & (!\game_control|turret_angle_int\(25) & !\game_control|turret_angle_int\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(26),
	datab => \game_control|turret_angle_int\(23),
	datac => \game_control|turret_angle_int\(25),
	datad => \game_control|turret_angle_int\(24),
	combout => \game_control|LessThan1~5_combout\);

-- Location: LCCOMB_X15_Y18_N30
\game_control|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~6_combout\ = (!\game_control|turret_angle_int\(27) & (!\game_control|turret_angle_int\(30) & (!\game_control|turret_angle_int\(28) & !\game_control|turret_angle_int\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(27),
	datab => \game_control|turret_angle_int\(30),
	datac => \game_control|turret_angle_int\(28),
	datad => \game_control|turret_angle_int\(29),
	combout => \game_control|LessThan1~6_combout\);

-- Location: LCCOMB_X15_Y16_N18
\game_control|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~1_combout\ = (!\game_control|turret_angle_int\(11) & (!\game_control|turret_angle_int\(12) & (!\game_control|turret_angle_int\(13) & !\game_control|turret_angle_int\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(11),
	datab => \game_control|turret_angle_int\(12),
	datac => \game_control|turret_angle_int\(13),
	datad => \game_control|turret_angle_int\(14),
	combout => \game_control|LessThan1~1_combout\);

-- Location: LCCOMB_X15_Y17_N20
\game_control|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~2_combout\ = (!\game_control|turret_angle_int\(16) & (!\game_control|turret_angle_int\(15) & (!\game_control|turret_angle_int\(18) & !\game_control|turret_angle_int\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(16),
	datab => \game_control|turret_angle_int\(15),
	datac => \game_control|turret_angle_int\(18),
	datad => \game_control|turret_angle_int\(17),
	combout => \game_control|LessThan1~2_combout\);

-- Location: LCCOMB_X15_Y15_N22
\game_control|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~3_combout\ = (!\game_control|turret_angle_int\(21) & (!\game_control|turret_angle_int\(19) & (!\game_control|turret_angle_int\(20) & !\game_control|turret_angle_int\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(21),
	datab => \game_control|turret_angle_int\(19),
	datac => \game_control|turret_angle_int\(20),
	datad => \game_control|turret_angle_int\(22),
	combout => \game_control|LessThan1~3_combout\);

-- Location: LCCOMB_X15_Y17_N2
\game_control|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~0_combout\ = (!\game_control|turret_angle_int\(7) & (!\game_control|turret_angle_int\(9) & (!\game_control|turret_angle_int\(8) & !\game_control|turret_angle_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(7),
	datab => \game_control|turret_angle_int\(9),
	datac => \game_control|turret_angle_int\(8),
	datad => \game_control|turret_angle_int\(10),
	combout => \game_control|LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y17_N6
\game_control|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~4_combout\ = (\game_control|LessThan1~1_combout\ & (\game_control|LessThan1~2_combout\ & (\game_control|LessThan1~3_combout\ & \game_control|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan1~1_combout\,
	datab => \game_control|LessThan1~2_combout\,
	datac => \game_control|LessThan1~3_combout\,
	datad => \game_control|LessThan1~0_combout\,
	combout => \game_control|LessThan1~4_combout\);

-- Location: LCCOMB_X15_Y17_N16
\game_control|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~7_combout\ = (\game_control|LessThan1~5_combout\ & (\game_control|LessThan1~6_combout\ & \game_control|LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|LessThan1~5_combout\,
	datac => \game_control|LessThan1~6_combout\,
	datad => \game_control|LessThan1~4_combout\,
	combout => \game_control|LessThan1~7_combout\);

-- Location: LCCOMB_X15_Y17_N0
\game_control|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan0~1_combout\ = (\game_control|turret_angle_int\(31)) # ((\game_control|LessThan1~7_combout\ & ((!\game_control|turret_angle_int\(6)) # (!\game_control|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan0~0_combout\,
	datab => \game_control|turret_angle_int\(31),
	datac => \game_control|turret_angle_int\(6),
	datad => \game_control|LessThan1~7_combout\,
	combout => \game_control|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y16_N6
\game_control|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~4_combout\ = (\game_control|turret_angle_int\(3) & (\game_control|Add0~3\ $ (GND))) # (!\game_control|turret_angle_int\(3) & ((GND) # (!\game_control|Add0~3\)))
-- \game_control|Add0~5\ = CARRY((!\game_control|Add0~3\) # (!\game_control|turret_angle_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(3),
	datad => VCC,
	cin => \game_control|Add0~3\,
	combout => \game_control|Add0~4_combout\,
	cout => \game_control|Add0~5\);

-- Location: LCCOMB_X14_Y18_N6
\game_control|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~4_combout\ = (\game_control|turret_angle_int\(3) & (!\game_control|Add1~3\ & VCC)) # (!\game_control|turret_angle_int\(3) & (\game_control|Add1~3\ $ (GND)))
-- \game_control|Add1~5\ = CARRY((!\game_control|turret_angle_int\(3) & !\game_control|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(3),
	datad => VCC,
	cin => \game_control|Add1~3\,
	combout => \game_control|Add1~4_combout\,
	cout => \game_control|Add1~5\);

-- Location: LCCOMB_X16_Y18_N2
\game_control|Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux28~0_combout\ = (!\game_control|u_ps2|ps2_code\(2) & (!\game_control|LessThan1~9_combout\ & \game_control|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Add1~4_combout\,
	combout => \game_control|Mux28~0_combout\);

-- Location: LCCOMB_X16_Y18_N16
\game_control|Mux28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux28~1_combout\ = (!\game_control|Mux28~0_combout\ & (((\game_control|LessThan0~1_combout\ & !\game_control|Add0~4_combout\)) # (!\game_control|u_ps2|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan0~1_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add0~4_combout\,
	datad => \game_control|Mux28~0_combout\,
	combout => \game_control|Mux28~1_combout\);

-- Location: FF_X16_Y18_N17
\game_control|turret_angle_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux28~1_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(3));

-- Location: LCCOMB_X16_Y16_N8
\game_control|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add0~6_combout\ = (\game_control|turret_angle_int\(4) & (!\game_control|Add0~5\)) # (!\game_control|turret_angle_int\(4) & ((\game_control|Add0~5\) # (GND)))
-- \game_control|Add0~7\ = CARRY((!\game_control|Add0~5\) # (!\game_control|turret_angle_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datad => VCC,
	cin => \game_control|Add0~5\,
	combout => \game_control|Add0~6_combout\,
	cout => \game_control|Add0~7\);

-- Location: LCCOMB_X14_Y18_N8
\game_control|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~6_combout\ = (\game_control|turret_angle_int\(4) & (\game_control|Add1~5\ & VCC)) # (!\game_control|turret_angle_int\(4) & (!\game_control|Add1~5\))
-- \game_control|Add1~7\ = CARRY((!\game_control|turret_angle_int\(4) & !\game_control|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datad => VCC,
	cin => \game_control|Add1~5\,
	combout => \game_control|Add1~6_combout\,
	cout => \game_control|Add1~7\);

-- Location: LCCOMB_X14_Y18_N10
\game_control|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Add1~8_combout\ = (\game_control|turret_angle_int\(5) & (\game_control|Add1~7\ $ (GND))) # (!\game_control|turret_angle_int\(5) & ((GND) # (!\game_control|Add1~7\)))
-- \game_control|Add1~9\ = CARRY((!\game_control|Add1~7\) # (!\game_control|turret_angle_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(5),
	datad => VCC,
	cin => \game_control|Add1~7\,
	combout => \game_control|Add1~8_combout\,
	cout => \game_control|Add1~9\);

-- Location: LCCOMB_X17_Y18_N14
\game_control|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux26~0_combout\ = ((\game_control|u_ps2|ps2_code\(2) & (!\game_control|Add0~8_combout\)) # (!\game_control|u_ps2|ps2_code\(2) & ((!\game_control|Add1~8_combout\)))) # (!\game_control|Mux31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|u_ps2|ps2_code\(2),
	datab => \game_control|Add0~8_combout\,
	datac => \game_control|Mux31~0_combout\,
	datad => \game_control|Add1~8_combout\,
	combout => \game_control|Mux26~0_combout\);

-- Location: FF_X17_Y18_N15
\game_control|turret_angle_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux26~0_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(5));

-- Location: LCCOMB_X15_Y18_N2
\game_control|Mux25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux25~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add0~10_combout\) # (!\game_control|LessThan0~1_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (\game_control|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|Add1~10_combout\,
	datab => \game_control|LessThan0~1_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Add0~10_combout\,
	combout => \game_control|Mux25~2_combout\);

-- Location: LCCOMB_X15_Y18_N4
\game_control|Mux25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux25~3_combout\ = (\game_control|Mux25~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|LessThan1~9_combout\,
	datac => \game_control|u_ps2|ps2_code\(2),
	datad => \game_control|Mux25~2_combout\,
	combout => \game_control|Mux25~3_combout\);

-- Location: FF_X15_Y18_N5
\game_control|turret_angle_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux25~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(6));

-- Location: LCCOMB_X16_Y19_N20
\game_control|LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~8_combout\ = (!\game_control|turret_angle_int\(6) & ((\game_control|turret_angle_int\(3)) # ((\game_control|turret_angle_int\(2) & !\game_control|turret_angle_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(6),
	datab => \game_control|turret_angle_int\(2),
	datac => \game_control|turret_angle_int\(1),
	datad => \game_control|turret_angle_int\(3),
	combout => \game_control|LessThan1~8_combout\);

-- Location: LCCOMB_X16_Y17_N0
\render|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux0~5_combout\ = (\game_control|turret_angle_int\(5) & !\game_control|turret_angle_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|turret_angle_int\(5),
	datad => \game_control|turret_angle_int\(4),
	combout => \render|Mux0~5_combout\);

-- Location: LCCOMB_X15_Y17_N30
\game_control|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|LessThan1~9_combout\ = (\game_control|turret_angle_int\(31)) # ((\game_control|LessThan1~8_combout\ & (\render|Mux0~5_combout\ & \game_control|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|LessThan1~8_combout\,
	datab => \game_control|turret_angle_int\(31),
	datac => \render|Mux0~5_combout\,
	datad => \game_control|LessThan1~7_combout\,
	combout => \game_control|LessThan1~9_combout\);

-- Location: LCCOMB_X15_Y18_N16
\game_control|Mux27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux27~2_combout\ = (\game_control|u_ps2|ps2_code\(2) & (((\game_control|Add0~6_combout\) # (!\game_control|LessThan0~1_combout\)))) # (!\game_control|u_ps2|ps2_code\(2) & (\game_control|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|Add1~6_combout\,
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|Add0~6_combout\,
	datad => \game_control|LessThan0~1_combout\,
	combout => \game_control|Mux27~2_combout\);

-- Location: LCCOMB_X16_Y18_N6
\game_control|Mux27~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game_control|Mux27~3_combout\ = (\game_control|Mux27~2_combout\ & ((\game_control|u_ps2|ps2_code\(2)) # (!\game_control|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|u_ps2|ps2_code\(2),
	datac => \game_control|LessThan1~9_combout\,
	datad => \game_control|Mux27~2_combout\,
	combout => \game_control|Mux27~3_combout\);

-- Location: FF_X16_Y18_N7
\game_control|turret_angle_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \game_control|Mux27~3_combout\,
	ena => \game_control|turret_angle_int[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_control|turret_angle_int\(4));

-- Location: LCCOMB_X17_Y19_N18
\render|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux8~0_combout\ = (\game_control|turret_angle_int\(0) & ((\game_control|turret_angle_int\(5) & (!\game_control|turret_angle_int\(1) & !\game_control|turret_angle_int\(2))) # (!\game_control|turret_angle_int\(5) & 
-- (\game_control|turret_angle_int\(1) & \game_control|turret_angle_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(5),
	datab => \game_control|turret_angle_int\(0),
	datac => \game_control|turret_angle_int\(1),
	datad => \game_control|turret_angle_int\(2),
	combout => \render|Mux8~0_combout\);

-- Location: LCCOMB_X17_Y19_N0
\render|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux8~1_combout\ = (\game_control|turret_angle_int\(4) & (!\game_control|turret_angle_int\(6) & (\game_control|turret_angle_int\(3) & \render|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \game_control|turret_angle_int\(6),
	datac => \game_control|turret_angle_int\(3),
	datad => \render|Mux8~0_combout\,
	combout => \render|Mux8~1_combout\);

-- Location: LCCOMB_X16_Y18_N22
\render|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux7~0_combout\ = (\game_control|turret_angle_int\(4) & (!\game_control|turret_angle_int\(3) & \game_control|turret_angle_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \game_control|turret_angle_int\(3),
	datad => \game_control|turret_angle_int\(1),
	combout => \render|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y19_N30
\render|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux7~1_combout\ = (\game_control|turret_angle_int\(5) & (\game_control|turret_angle_int\(0) & (!\game_control|turret_angle_int\(2) & \render|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(5),
	datab => \game_control|turret_angle_int\(0),
	datac => \game_control|turret_angle_int\(2),
	datad => \render|Mux7~0_combout\,
	combout => \render|Mux7~1_combout\);

-- Location: LCCOMB_X16_Y18_N14
\render|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux6~0_combout\ = (\game_control|turret_angle_int\(4) & (\game_control|turret_angle_int\(6) & (\game_control|turret_angle_int\(5) & \render|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \game_control|turret_angle_int\(6),
	datac => \game_control|turret_angle_int\(5),
	datad => \render|Mux0~4_combout\,
	combout => \render|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y18_N4
\render|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux6~1_combout\ = (\game_control|turret_angle_int\(4) & (\game_control|turret_angle_int\(3) & (\game_control|turret_angle_int\(1) & !\game_control|turret_angle_int\(5)))) # (!\game_control|turret_angle_int\(4) & 
-- (!\game_control|turret_angle_int\(3) & (\game_control|turret_angle_int\(1) $ (!\game_control|turret_angle_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \game_control|turret_angle_int\(3),
	datac => \game_control|turret_angle_int\(1),
	datad => \game_control|turret_angle_int\(5),
	combout => \render|Mux6~1_combout\);

-- Location: LCCOMB_X16_Y18_N10
\render|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux6~2_combout\ = (\game_control|turret_angle_int\(2) & (((\render|Mux6~1_combout\)))) # (!\game_control|turret_angle_int\(2) & (\render|Mux7~0_combout\ & ((\game_control|turret_angle_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux7~0_combout\,
	datab => \game_control|turret_angle_int\(2),
	datac => \render|Mux6~1_combout\,
	datad => \game_control|turret_angle_int\(5),
	combout => \render|Mux6~2_combout\);

-- Location: LCCOMB_X16_Y18_N8
\render|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux6~3_combout\ = (\game_control|turret_angle_int\(0) & ((\render|Mux6~0_combout\) # ((!\game_control|turret_angle_int\(6) & \render|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(0),
	datab => \game_control|turret_angle_int\(6),
	datac => \render|Mux6~0_combout\,
	datad => \render|Mux6~2_combout\,
	combout => \render|Mux6~3_combout\);

-- Location: LCCOMB_X17_Y19_N16
\render|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux5~0_combout\ = (\game_control|turret_angle_int\(0) & \game_control|turret_angle_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(0),
	datad => \game_control|turret_angle_int\(5),
	combout => \render|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y18_N0
\render|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux5~1_combout\ = (\game_control|turret_angle_int\(3) & (!\game_control|turret_angle_int\(4) & (\game_control|turret_angle_int\(6) & !\game_control|turret_angle_int\(2)))) # (!\game_control|turret_angle_int\(3) & 
-- (!\game_control|turret_angle_int\(6) & (\game_control|turret_angle_int\(4) $ (\game_control|turret_angle_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \game_control|turret_angle_int\(3),
	datac => \game_control|turret_angle_int\(6),
	datad => \game_control|turret_angle_int\(2),
	combout => \render|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y18_N26
\render|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux6~4_combout\ = (\game_control|turret_angle_int\(4) & (\game_control|turret_angle_int\(6) & \render|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datac => \game_control|turret_angle_int\(6),
	datad => \render|Mux0~4_combout\,
	combout => \render|Mux6~4_combout\);

-- Location: LCCOMB_X17_Y19_N6
\render|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux5~2_combout\ = (\render|Mux5~0_combout\ & ((\render|Mux6~4_combout\) # ((\game_control|turret_angle_int\(1) & \render|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(1),
	datab => \render|Mux5~0_combout\,
	datac => \render|Mux5~1_combout\,
	datad => \render|Mux6~4_combout\,
	combout => \render|Mux5~2_combout\);

-- Location: LCCOMB_X17_Y19_N4
\render|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux4~2_combout\ = (\game_control|turret_angle_int\(4) & (!\game_control|turret_angle_int\(6) & (\game_control|turret_angle_int\(1) $ (\game_control|turret_angle_int\(3))))) # (!\game_control|turret_angle_int\(4) & 
-- (\game_control|turret_angle_int\(1) & (\game_control|turret_angle_int\(6) & \game_control|turret_angle_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(1),
	datab => \game_control|turret_angle_int\(4),
	datac => \game_control|turret_angle_int\(6),
	datad => \game_control|turret_angle_int\(3),
	combout => \render|Mux4~2_combout\);

-- Location: LCCOMB_X15_Y18_N14
\render|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux4~0_combout\ = (!\game_control|turret_angle_int\(6) & \game_control|turret_angle_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|turret_angle_int\(6),
	datad => \game_control|turret_angle_int\(2),
	combout => \render|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y18_N0
\render|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux4~1_combout\ = (!\game_control|turret_angle_int\(3) & (!\game_control|turret_angle_int\(4) & (\game_control|turret_angle_int\(1) & \render|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(3),
	datab => \game_control|turret_angle_int\(4),
	datac => \game_control|turret_angle_int\(1),
	datad => \render|Mux4~0_combout\,
	combout => \render|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y19_N10
\render|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux4~3_combout\ = (\render|Mux5~0_combout\ & ((\render|Mux4~1_combout\) # ((!\game_control|turret_angle_int\(2) & \render|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(2),
	datab => \render|Mux5~0_combout\,
	datac => \render|Mux4~2_combout\,
	datad => \render|Mux4~1_combout\,
	combout => \render|Mux4~3_combout\);

-- Location: LCCOMB_X19_Y18_N14
\render|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux3~1_combout\ = (\game_control|turret_angle_int\(1) & ((\game_control|turret_angle_int\(4) & (!\game_control|turret_angle_int\(5) & \game_control|turret_angle_int\(3))) # (!\game_control|turret_angle_int\(4) & (\game_control|turret_angle_int\(5) 
-- & !\game_control|turret_angle_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \game_control|turret_angle_int\(1),
	datac => \game_control|turret_angle_int\(5),
	datad => \game_control|turret_angle_int\(3),
	combout => \render|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y18_N18
\render|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux3~0_combout\ = (\game_control|turret_angle_int\(3) & (!\game_control|turret_angle_int\(1) & (\game_control|turret_angle_int\(6) $ (!\game_control|turret_angle_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(6),
	datab => \game_control|turret_angle_int\(2),
	datac => \game_control|turret_angle_int\(3),
	datad => \game_control|turret_angle_int\(1),
	combout => \render|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y18_N24
\render|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux13~0_combout\ = (\game_control|turret_angle_int\(4) & (\game_control|turret_angle_int\(5) & \render|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datac => \game_control|turret_angle_int\(5),
	datad => \render|Mux3~0_combout\,
	combout => \render|Mux13~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\render|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux3~2_combout\ = (\game_control|turret_angle_int\(0) & ((\render|Mux13~0_combout\) # ((\render|Mux4~0_combout\ & \render|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux4~0_combout\,
	datab => \game_control|turret_angle_int\(0),
	datac => \render|Mux3~1_combout\,
	datad => \render|Mux13~0_combout\,
	combout => \render|Mux3~2_combout\);

-- Location: LCCOMB_X17_Y18_N26
\render|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux2~3_combout\ = (\game_control|turret_angle_int\(3) & (\game_control|turret_angle_int\(4) & (!\game_control|turret_angle_int\(2) & !\game_control|turret_angle_int\(1)))) # (!\game_control|turret_angle_int\(3) & 
-- (\game_control|turret_angle_int\(1) & (\game_control|turret_angle_int\(4) $ (\game_control|turret_angle_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(3),
	datab => \game_control|turret_angle_int\(4),
	datac => \game_control|turret_angle_int\(2),
	datad => \game_control|turret_angle_int\(1),
	combout => \render|Mux2~3_combout\);

-- Location: LCCOMB_X17_Y18_N20
\render|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux17~0_combout\ = (!\game_control|turret_angle_int\(3) & (\game_control|turret_angle_int\(2) & (!\game_control|turret_angle_int\(5) & !\game_control|turret_angle_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(3),
	datab => \game_control|turret_angle_int\(2),
	datac => \game_control|turret_angle_int\(5),
	datad => \game_control|turret_angle_int\(1),
	combout => \render|Mux17~0_combout\);

-- Location: LCCOMB_X17_Y18_N30
\render|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux2~4_combout\ = (\game_control|turret_angle_int\(4) & (\game_control|turret_angle_int\(5) & (\render|Mux2~3_combout\))) # (!\game_control|turret_angle_int\(4) & ((\render|Mux17~0_combout\) # ((\game_control|turret_angle_int\(5) & 
-- \render|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \game_control|turret_angle_int\(5),
	datac => \render|Mux2~3_combout\,
	datad => \render|Mux17~0_combout\,
	combout => \render|Mux2~4_combout\);

-- Location: LCCOMB_X17_Y18_N28
\render|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux2~2_combout\ = (\game_control|turret_angle_int\(3) & (!\game_control|turret_angle_int\(2) & (\game_control|turret_angle_int\(6) & \game_control|turret_angle_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(3),
	datab => \game_control|turret_angle_int\(2),
	datac => \game_control|turret_angle_int\(6),
	datad => \game_control|turret_angle_int\(1),
	combout => \render|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y18_N2
\render|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux2~6_combout\ = (\game_control|turret_angle_int\(5) & (!\game_control|turret_angle_int\(4) & \render|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(5),
	datac => \game_control|turret_angle_int\(4),
	datad => \render|Mux2~2_combout\,
	combout => \render|Mux2~6_combout\);

-- Location: LCCOMB_X17_Y18_N12
\render|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux2~5_combout\ = (\game_control|turret_angle_int\(0) & ((\render|Mux2~6_combout\) # ((!\game_control|turret_angle_int\(6) & \render|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(0),
	datab => \game_control|turret_angle_int\(6),
	datac => \render|Mux2~4_combout\,
	datad => \render|Mux2~6_combout\,
	combout => \render|Mux2~5_combout\);

-- Location: LCCOMB_X17_Y19_N24
\render|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux1~1_combout\ = (!\game_control|turret_angle_int\(3) & (\game_control|turret_angle_int\(2) & (\game_control|turret_angle_int\(5) $ (!\game_control|turret_angle_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(5),
	datab => \game_control|turret_angle_int\(3),
	datac => \game_control|turret_angle_int\(1),
	datad => \game_control|turret_angle_int\(2),
	combout => \render|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y19_N22
\render|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux1~0_combout\ = (\game_control|turret_angle_int\(5) & (!\game_control|turret_angle_int\(2) & (\game_control|turret_angle_int\(3) $ (\game_control|turret_angle_int\(1))))) # (!\game_control|turret_angle_int\(5) & 
-- ((\game_control|turret_angle_int\(3) & (\game_control|turret_angle_int\(1) & \game_control|turret_angle_int\(2))) # (!\game_control|turret_angle_int\(3) & (!\game_control|turret_angle_int\(1) & !\game_control|turret_angle_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(5),
	datab => \game_control|turret_angle_int\(3),
	datac => \game_control|turret_angle_int\(1),
	datad => \game_control|turret_angle_int\(2),
	combout => \render|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y19_N12
\render|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux0~6_combout\ = (\game_control|turret_angle_int\(0) & !\game_control|turret_angle_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_control|turret_angle_int\(0),
	datad => \game_control|turret_angle_int\(6),
	combout => \render|Mux0~6_combout\);

-- Location: LCCOMB_X17_Y19_N14
\render|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux1~2_combout\ = (\render|Mux0~6_combout\ & ((\game_control|turret_angle_int\(4) & ((\render|Mux1~0_combout\))) # (!\game_control|turret_angle_int\(4) & (\render|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \render|Mux1~1_combout\,
	datac => \render|Mux1~0_combout\,
	datad => \render|Mux0~6_combout\,
	combout => \render|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y19_N8
\render|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux0~7_combout\ = (\game_control|turret_angle_int\(5) & (!\game_control|turret_angle_int\(4) & (\render|Mux0~4_combout\ & \render|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(5),
	datab => \game_control|turret_angle_int\(4),
	datac => \render|Mux0~4_combout\,
	datad => \render|Mux0~6_combout\,
	combout => \render|Mux0~7_combout\);

-- Location: DSPMULT_X18_Y20_N0
\render|Mult3|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \render|Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \render|Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \render|Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y20_N2
\render|Mult3|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \render|Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X20_Y19_N4
\render|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~1_cout\ = CARRY(\u_VGA_sync|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(1),
	datad => VCC,
	cout => \render|Add2~1_cout\);

-- Location: LCCOMB_X20_Y19_N6
\render|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~2_combout\ = (\u_VGA_sync|h_count\(2) & (\render|Add2~1_cout\ & VCC)) # (!\u_VGA_sync|h_count\(2) & (!\render|Add2~1_cout\))
-- \render|Add2~3\ = CARRY((!\u_VGA_sync|h_count\(2) & !\render|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(2),
	datad => VCC,
	cin => \render|Add2~1_cout\,
	combout => \render|Add2~2_combout\,
	cout => \render|Add2~3\);

-- Location: LCCOMB_X20_Y19_N26
\render|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|WideOr3~combout\ = (\u_VGA_sync|h_count\(0)) # (!\u_VGA_sync|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_VGA_sync|h_count\(1),
	datad => \u_VGA_sync|h_count\(0),
	combout => \render|WideOr3~combout\);

-- Location: LCCOMB_X20_Y19_N8
\render|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~4_combout\ = (\u_VGA_sync|h_count\(3) & ((GND) # (!\render|Add2~3\))) # (!\u_VGA_sync|h_count\(3) & (\render|Add2~3\ $ (GND)))
-- \render|Add2~5\ = CARRY((\u_VGA_sync|h_count\(3)) # (!\render|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(3),
	datad => VCC,
	cin => \render|Add2~3\,
	combout => \render|Add2~4_combout\,
	cout => \render|Add2~5\);

-- Location: LCCOMB_X20_Y19_N10
\render|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~6_combout\ = (\u_VGA_sync|h_count\(4) & (!\render|Add2~5\)) # (!\u_VGA_sync|h_count\(4) & ((\render|Add2~5\) # (GND)))
-- \render|Add2~7\ = CARRY((!\render|Add2~5\) # (!\u_VGA_sync|h_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(4),
	datad => VCC,
	cin => \render|Add2~5\,
	combout => \render|Add2~6_combout\,
	cout => \render|Add2~7\);

-- Location: LCCOMB_X20_Y19_N12
\render|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~8_combout\ = (\u_VGA_sync|h_count\(5) & ((GND) # (!\render|Add2~7\))) # (!\u_VGA_sync|h_count\(5) & (\render|Add2~7\ $ (GND)))
-- \render|Add2~9\ = CARRY((\u_VGA_sync|h_count\(5)) # (!\render|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(5),
	datad => VCC,
	cin => \render|Add2~7\,
	combout => \render|Add2~8_combout\,
	cout => \render|Add2~9\);

-- Location: LCCOMB_X20_Y19_N14
\render|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~10_combout\ = (\u_VGA_sync|h_count\(6) & (!\render|Add2~9\)) # (!\u_VGA_sync|h_count\(6) & ((\render|Add2~9\) # (GND)))
-- \render|Add2~11\ = CARRY((!\render|Add2~9\) # (!\u_VGA_sync|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(6),
	datad => VCC,
	cin => \render|Add2~9\,
	combout => \render|Add2~10_combout\,
	cout => \render|Add2~11\);

-- Location: LCCOMB_X20_Y19_N16
\render|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~12_combout\ = (\u_VGA_sync|h_count\(7) & ((GND) # (!\render|Add2~11\))) # (!\u_VGA_sync|h_count\(7) & (\render|Add2~11\ $ (GND)))
-- \render|Add2~13\ = CARRY((\u_VGA_sync|h_count\(7)) # (!\render|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(7),
	datad => VCC,
	cin => \render|Add2~11\,
	combout => \render|Add2~12_combout\,
	cout => \render|Add2~13\);

-- Location: LCCOMB_X20_Y19_N18
\render|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~14_combout\ = (\u_VGA_sync|h_count\(8) & (\render|Add2~13\ & VCC)) # (!\u_VGA_sync|h_count\(8) & (!\render|Add2~13\))
-- \render|Add2~15\ = CARRY((!\u_VGA_sync|h_count\(8) & !\render|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(8),
	datad => VCC,
	cin => \render|Add2~13\,
	combout => \render|Add2~14_combout\,
	cout => \render|Add2~15\);

-- Location: LCCOMB_X20_Y19_N20
\render|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~16_combout\ = (\u_VGA_sync|h_count\(9) & ((GND) # (!\render|Add2~15\))) # (!\u_VGA_sync|h_count\(9) & (\render|Add2~15\ $ (GND)))
-- \render|Add2~17\ = CARRY((\u_VGA_sync|h_count\(9)) # (!\render|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(9),
	datad => VCC,
	cin => \render|Add2~15\,
	combout => \render|Add2~16_combout\,
	cout => \render|Add2~17\);

-- Location: LCCOMB_X20_Y19_N22
\render|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add2~18_combout\ = \render|Add2~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \render|Add2~17\,
	combout => \render|Add2~18_combout\);

-- Location: LCCOMB_X19_Y19_N0
\render|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~1_cout\ = CARRY((\render|WideOr3~combout\ & !\render|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|WideOr3~combout\,
	datab => \render|Add2~18_combout\,
	datad => VCC,
	cout => \render|Add3~1_cout\);

-- Location: LCCOMB_X19_Y19_N2
\render|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~2_combout\ = (\render|Add2~2_combout\ & (!\render|Add3~1_cout\)) # (!\render|Add2~2_combout\ & ((\render|Add3~1_cout\) # (GND)))
-- \render|Add3~3\ = CARRY((!\render|Add3~1_cout\) # (!\render|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add2~2_combout\,
	datad => VCC,
	cin => \render|Add3~1_cout\,
	combout => \render|Add3~2_combout\,
	cout => \render|Add3~3\);

-- Location: LCCOMB_X19_Y19_N4
\render|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~4_combout\ = (\render|Add2~4_combout\ & (\render|Add3~3\ $ (GND))) # (!\render|Add2~4_combout\ & (!\render|Add3~3\ & VCC))
-- \render|Add3~5\ = CARRY((\render|Add2~4_combout\ & !\render|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add2~4_combout\,
	datad => VCC,
	cin => \render|Add3~3\,
	combout => \render|Add3~4_combout\,
	cout => \render|Add3~5\);

-- Location: LCCOMB_X19_Y19_N6
\render|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~6_combout\ = (\render|Add2~6_combout\ & (!\render|Add3~5\)) # (!\render|Add2~6_combout\ & ((\render|Add3~5\) # (GND)))
-- \render|Add3~7\ = CARRY((!\render|Add3~5\) # (!\render|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add2~6_combout\,
	datad => VCC,
	cin => \render|Add3~5\,
	combout => \render|Add3~6_combout\,
	cout => \render|Add3~7\);

-- Location: LCCOMB_X19_Y19_N8
\render|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~8_combout\ = (\render|Add2~8_combout\ & (\render|Add3~7\ $ (GND))) # (!\render|Add2~8_combout\ & (!\render|Add3~7\ & VCC))
-- \render|Add3~9\ = CARRY((\render|Add2~8_combout\ & !\render|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add2~8_combout\,
	datad => VCC,
	cin => \render|Add3~7\,
	combout => \render|Add3~8_combout\,
	cout => \render|Add3~9\);

-- Location: LCCOMB_X19_Y19_N10
\render|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~10_combout\ = (\render|Add2~10_combout\ & (!\render|Add3~9\)) # (!\render|Add2~10_combout\ & ((\render|Add3~9\) # (GND)))
-- \render|Add3~11\ = CARRY((!\render|Add3~9\) # (!\render|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add2~10_combout\,
	datad => VCC,
	cin => \render|Add3~9\,
	combout => \render|Add3~10_combout\,
	cout => \render|Add3~11\);

-- Location: LCCOMB_X19_Y19_N12
\render|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~12_combout\ = (\render|Add2~12_combout\ & (\render|Add3~11\ $ (GND))) # (!\render|Add2~12_combout\ & (!\render|Add3~11\ & VCC))
-- \render|Add3~13\ = CARRY((\render|Add2~12_combout\ & !\render|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add2~12_combout\,
	datad => VCC,
	cin => \render|Add3~11\,
	combout => \render|Add3~12_combout\,
	cout => \render|Add3~13\);

-- Location: LCCOMB_X19_Y19_N14
\render|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~14_combout\ = (\render|Add2~14_combout\ & (!\render|Add3~13\)) # (!\render|Add2~14_combout\ & ((\render|Add3~13\) # (GND)))
-- \render|Add3~15\ = CARRY((!\render|Add3~13\) # (!\render|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add2~14_combout\,
	datad => VCC,
	cin => \render|Add3~13\,
	combout => \render|Add3~14_combout\,
	cout => \render|Add3~15\);

-- Location: LCCOMB_X19_Y19_N16
\render|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~16_combout\ = (\render|Add2~16_combout\ & (\render|Add3~15\ $ (GND))) # (!\render|Add2~16_combout\ & (!\render|Add3~15\ & VCC))
-- \render|Add3~17\ = CARRY((\render|Add2~16_combout\ & !\render|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add2~16_combout\,
	datad => VCC,
	cin => \render|Add3~15\,
	combout => \render|Add3~16_combout\,
	cout => \render|Add3~17\);

-- Location: LCCOMB_X19_Y19_N18
\render|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~18_combout\ = (\render|Add2~18_combout\ & ((\render|Add3~17\) # (GND))) # (!\render|Add2~18_combout\ & (!\render|Add3~17\))
-- \render|Add3~19\ = CARRY((\render|Add2~18_combout\) # (!\render|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Add2~18_combout\,
	datad => VCC,
	cin => \render|Add3~17\,
	combout => \render|Add3~18_combout\,
	cout => \render|Add3~19\);

-- Location: LCCOMB_X19_Y19_N20
\render|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add3~20_combout\ = \render|Add3~19\ $ (\render|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \render|Add2~18_combout\,
	cin => \render|Add3~19\,
	combout => \render|Add3~20_combout\);

-- Location: LCCOMB_X17_Y18_N10
\render|Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux17~2_combout\ = (\game_control|turret_angle_int\(3) & (\game_control|turret_angle_int\(5) & (!\game_control|turret_angle_int\(2) & \game_control|turret_angle_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(3),
	datab => \game_control|turret_angle_int\(5),
	datac => \game_control|turret_angle_int\(2),
	datad => \game_control|turret_angle_int\(1),
	combout => \render|Mux17~2_combout\);

-- Location: LCCOMB_X16_Y18_N30
\render|Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux17~1_combout\ = (\game_control|turret_angle_int\(0) & !\game_control|turret_angle_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|turret_angle_int\(0),
	datad => \game_control|turret_angle_int\(4),
	combout => \render|Mux17~1_combout\);

-- Location: LCCOMB_X17_Y18_N24
\render|Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux17~3_combout\ = (\render|Mux17~1_combout\ & ((\game_control|turret_angle_int\(6) & (\render|Mux17~2_combout\)) # (!\game_control|turret_angle_int\(6) & ((\render|Mux17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux17~2_combout\,
	datab => \render|Mux17~0_combout\,
	datac => \game_control|turret_angle_int\(6),
	datad => \render|Mux17~1_combout\,
	combout => \render|Mux17~3_combout\);

-- Location: LCCOMB_X19_Y18_N26
\render|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux16~0_combout\ = (!\game_control|turret_angle_int\(3) & (!\game_control|turret_angle_int\(1) & !\game_control|turret_angle_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(3),
	datac => \game_control|turret_angle_int\(1),
	datad => \game_control|turret_angle_int\(5),
	combout => \render|Mux16~0_combout\);

-- Location: LCCOMB_X19_Y18_N16
\render|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux16~1_combout\ = (\game_control|turret_angle_int\(4) & (!\game_control|turret_angle_int\(2) & (\render|Mux16~0_combout\ & \game_control|turret_angle_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \game_control|turret_angle_int\(2),
	datac => \render|Mux16~0_combout\,
	datad => \game_control|turret_angle_int\(0),
	combout => \render|Mux16~1_combout\);

-- Location: LCCOMB_X19_Y18_N22
\render|Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux15~2_combout\ = (!\game_control|turret_angle_int\(6) & (!\game_control|turret_angle_int\(2) & (\render|Mux16~0_combout\ & \game_control|turret_angle_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(6),
	datab => \game_control|turret_angle_int\(2),
	datac => \render|Mux16~0_combout\,
	datad => \game_control|turret_angle_int\(4),
	combout => \render|Mux15~2_combout\);

-- Location: LCCOMB_X19_Y18_N10
\render|Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux15~4_combout\ = (!\game_control|turret_angle_int\(6) & (\game_control|turret_angle_int\(2) & \render|Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(6),
	datac => \game_control|turret_angle_int\(2),
	datad => \render|Mux6~1_combout\,
	combout => \render|Mux15~4_combout\);

-- Location: LCCOMB_X19_Y18_N12
\render|Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux15~3_combout\ = (\game_control|turret_angle_int\(0) & ((\render|Mux6~0_combout\) # ((\render|Mux15~2_combout\) # (\render|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(0),
	datab => \render|Mux6~0_combout\,
	datac => \render|Mux15~2_combout\,
	datad => \render|Mux15~4_combout\,
	combout => \render|Mux15~3_combout\);

-- Location: LCCOMB_X19_Y18_N2
\render|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux14~0_combout\ = (\game_control|turret_angle_int\(5) & ((\render|Mux4~1_combout\) # ((\game_control|turret_angle_int\(4) & \render|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \render|Mux3~0_combout\,
	datac => \game_control|turret_angle_int\(5),
	datad => \render|Mux4~1_combout\,
	combout => \render|Mux14~0_combout\);

-- Location: LCCOMB_X19_Y18_N28
\render|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux14~1_combout\ = (\game_control|turret_angle_int\(0) & ((\render|Mux15~2_combout\) # (\render|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(0),
	datac => \render|Mux15~2_combout\,
	datad => \render|Mux14~0_combout\,
	combout => \render|Mux14~1_combout\);

-- Location: LCCOMB_X19_Y18_N30
\render|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux13~1_combout\ = (\game_control|turret_angle_int\(0) & ((\render|Mux13~0_combout\) # ((\render|Mux15~2_combout\) # (\render|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(0),
	datab => \render|Mux13~0_combout\,
	datac => \render|Mux15~2_combout\,
	datad => \render|Mux2~6_combout\,
	combout => \render|Mux13~1_combout\);

-- Location: LCCOMB_X19_Y18_N4
\render|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux12~0_combout\ = (\game_control|turret_angle_int\(1) & ((\game_control|turret_angle_int\(6) & (!\game_control|turret_angle_int\(2) & \game_control|turret_angle_int\(3))) # (!\game_control|turret_angle_int\(6) & 
-- (\game_control|turret_angle_int\(2) & !\game_control|turret_angle_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(6),
	datab => \game_control|turret_angle_int\(1),
	datac => \game_control|turret_angle_int\(2),
	datad => \game_control|turret_angle_int\(3),
	combout => \render|Mux12~0_combout\);

-- Location: LCCOMB_X19_Y18_N6
\render|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux12~1_combout\ = (\game_control|turret_angle_int\(5) & ((\render|Mux12~0_combout\) # ((\render|Mux16~0_combout\ & \render|Mux4~0_combout\)))) # (!\game_control|turret_angle_int\(5) & (((\render|Mux16~0_combout\ & \render|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(5),
	datab => \render|Mux12~0_combout\,
	datac => \render|Mux16~0_combout\,
	datad => \render|Mux4~0_combout\,
	combout => \render|Mux12~1_combout\);

-- Location: LCCOMB_X19_Y18_N20
\render|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux12~2_combout\ = (\game_control|turret_angle_int\(0) & ((\render|Mux6~0_combout\) # ((!\game_control|turret_angle_int\(4) & \render|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(0),
	datab => \game_control|turret_angle_int\(4),
	datac => \render|Mux6~0_combout\,
	datad => \render|Mux12~1_combout\,
	combout => \render|Mux12~2_combout\);

-- Location: LCCOMB_X15_Y18_N24
\render|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux11~0_combout\ = (\game_control|turret_angle_int\(5) & (!\game_control|turret_angle_int\(1) & (\game_control|turret_angle_int\(2) $ (!\game_control|turret_angle_int\(6))))) # (!\game_control|turret_angle_int\(5) & 
-- (\game_control|turret_angle_int\(2) & (!\game_control|turret_angle_int\(6) & \game_control|turret_angle_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(2),
	datab => \game_control|turret_angle_int\(6),
	datac => \game_control|turret_angle_int\(5),
	datad => \game_control|turret_angle_int\(1),
	combout => \render|Mux11~0_combout\);

-- Location: LCCOMB_X15_Y18_N22
\render|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux11~1_combout\ = (\game_control|turret_angle_int\(4) & (\game_control|turret_angle_int\(3) & \render|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(4),
	datab => \game_control|turret_angle_int\(3),
	datad => \render|Mux11~0_combout\,
	combout => \render|Mux11~1_combout\);

-- Location: LCCOMB_X17_Y18_N6
\render|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux11~2_combout\ = (\game_control|turret_angle_int\(0) & ((\render|Mux2~6_combout\) # ((\render|Mux11~1_combout\) # (\render|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(0),
	datab => \render|Mux2~6_combout\,
	datac => \render|Mux11~1_combout\,
	datad => \render|Mux15~2_combout\,
	combout => \render|Mux11~2_combout\);

-- Location: LCCOMB_X17_Y18_N22
\render|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux10~1_combout\ = (\game_control|turret_angle_int\(4) & (((\game_control|turret_angle_int\(6))))) # (!\game_control|turret_angle_int\(4) & ((\game_control|turret_angle_int\(6) & (\render|Mux17~2_combout\)) # (!\game_control|turret_angle_int\(6) & 
-- ((\render|Mux17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux17~2_combout\,
	datab => \game_control|turret_angle_int\(4),
	datac => \game_control|turret_angle_int\(6),
	datad => \render|Mux17~0_combout\,
	combout => \render|Mux10~1_combout\);

-- Location: LCCOMB_X17_Y18_N8
\render|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux10~0_combout\ = (\game_control|turret_angle_int\(3) & (\game_control|turret_angle_int\(2) & (!\game_control|turret_angle_int\(5) & \game_control|turret_angle_int\(1)))) # (!\game_control|turret_angle_int\(3) & 
-- (!\game_control|turret_angle_int\(2) & (\game_control|turret_angle_int\(5) $ (!\game_control|turret_angle_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(3),
	datab => \game_control|turret_angle_int\(2),
	datac => \game_control|turret_angle_int\(5),
	datad => \game_control|turret_angle_int\(1),
	combout => \render|Mux10~0_combout\);

-- Location: LCCOMB_X17_Y18_N16
\render|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux10~2_combout\ = (!\game_control|turret_angle_int\(1) & (\game_control|turret_angle_int\(5) & (\game_control|turret_angle_int\(2) & \game_control|turret_angle_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(1),
	datab => \game_control|turret_angle_int\(5),
	datac => \game_control|turret_angle_int\(2),
	datad => \game_control|turret_angle_int\(3),
	combout => \render|Mux10~2_combout\);

-- Location: LCCOMB_X17_Y18_N18
\render|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux10~3_combout\ = (\render|Mux10~1_combout\ & (((\render|Mux10~2_combout\)) # (!\game_control|turret_angle_int\(4)))) # (!\render|Mux10~1_combout\ & (\game_control|turret_angle_int\(4) & (\render|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux10~1_combout\,
	datab => \game_control|turret_angle_int\(4),
	datac => \render|Mux10~0_combout\,
	datad => \render|Mux10~2_combout\,
	combout => \render|Mux10~3_combout\);

-- Location: LCCOMB_X17_Y18_N0
\render|Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux10~4_combout\ = (\game_control|turret_angle_int\(0) & \render|Mux10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game_control|turret_angle_int\(0),
	datad => \render|Mux10~3_combout\,
	combout => \render|Mux10~4_combout\);

-- Location: LCCOMB_X16_Y18_N24
\render|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux9~0_combout\ = (\game_control|turret_angle_int\(1) & (!\game_control|turret_angle_int\(3) & (\game_control|turret_angle_int\(6) & \game_control|turret_angle_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_control|turret_angle_int\(1),
	datab => \game_control|turret_angle_int\(3),
	datac => \game_control|turret_angle_int\(6),
	datad => \game_control|turret_angle_int\(4),
	combout => \render|Mux9~0_combout\);

-- Location: DSPMULT_X18_Y17_N0
\render|Mult2|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \render|Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \render|Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \render|Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y17_N2
\render|Mult2|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \render|Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y17_N12
\render|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~0_combout\ = (\render|Mult2|auto_generated|mac_out2~dataout\ & (\render|Mult3|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\render|Mult2|auto_generated|mac_out2~dataout\ & (\render|Mult3|auto_generated|mac_out2~dataout\ & VCC))
-- \render|Add7~1\ = CARRY((\render|Mult2|auto_generated|mac_out2~dataout\ & \render|Mult3|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~dataout\,
	datab => \render|Mult3|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \render|Add7~0_combout\,
	cout => \render|Add7~1\);

-- Location: LCCOMB_X19_Y17_N14
\render|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~2_combout\ = (\render|Mult2|auto_generated|mac_out2~DATAOUT1\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT1\ & (\render|Add7~1\ & VCC)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT1\ & (!\render|Add7~1\)))) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT1\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT1\ & (!\render|Add7~1\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT1\ & ((\render|Add7~1\) # (GND)))))
-- \render|Add7~3\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT1\ & (!\render|Mult3|auto_generated|mac_out2~DATAOUT1\ & !\render|Add7~1\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT1\ & ((!\render|Add7~1\) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT1\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \render|Add7~1\,
	combout => \render|Add7~2_combout\,
	cout => \render|Add7~3\);

-- Location: LCCOMB_X19_Y17_N16
\render|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~4_combout\ = ((\render|Mult2|auto_generated|mac_out2~DATAOUT2\ $ (\render|Mult3|auto_generated|mac_out2~DATAOUT2\ $ (!\render|Add7~3\)))) # (GND)
-- \render|Add7~5\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT2\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT2\) # (!\render|Add7~3\))) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT2\ & (\render|Mult3|auto_generated|mac_out2~DATAOUT2\ & 
-- !\render|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT2\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \render|Add7~3\,
	combout => \render|Add7~4_combout\,
	cout => \render|Add7~5\);

-- Location: LCCOMB_X19_Y17_N18
\render|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~6_combout\ = (\render|Mult3|auto_generated|mac_out2~DATAOUT3\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT3\ & (\render|Add7~5\ & VCC)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT3\ & (!\render|Add7~5\)))) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT3\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT3\ & (!\render|Add7~5\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT3\ & ((\render|Add7~5\) # (GND)))))
-- \render|Add7~7\ = CARRY((\render|Mult3|auto_generated|mac_out2~DATAOUT3\ & (!\render|Mult2|auto_generated|mac_out2~DATAOUT3\ & !\render|Add7~5\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT3\ & ((!\render|Add7~5\) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult3|auto_generated|mac_out2~DATAOUT3\,
	datab => \render|Mult2|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \render|Add7~5\,
	combout => \render|Add7~6_combout\,
	cout => \render|Add7~7\);

-- Location: LCCOMB_X19_Y17_N20
\render|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~8_combout\ = ((\render|Mult3|auto_generated|mac_out2~DATAOUT4\ $ (\render|Mult2|auto_generated|mac_out2~DATAOUT4\ $ (!\render|Add7~7\)))) # (GND)
-- \render|Add7~9\ = CARRY((\render|Mult3|auto_generated|mac_out2~DATAOUT4\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT4\) # (!\render|Add7~7\))) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT4\ & (\render|Mult2|auto_generated|mac_out2~DATAOUT4\ & 
-- !\render|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult3|auto_generated|mac_out2~DATAOUT4\,
	datab => \render|Mult2|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \render|Add7~7\,
	combout => \render|Add7~8_combout\,
	cout => \render|Add7~9\);

-- Location: LCCOMB_X19_Y17_N22
\render|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~10_combout\ = (\render|Mult2|auto_generated|mac_out2~DATAOUT5\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT5\ & (\render|Add7~9\ & VCC)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT5\ & (!\render|Add7~9\)))) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT5\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT5\ & (!\render|Add7~9\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT5\ & ((\render|Add7~9\) # (GND)))))
-- \render|Add7~11\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT5\ & (!\render|Mult3|auto_generated|mac_out2~DATAOUT5\ & !\render|Add7~9\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT5\ & ((!\render|Add7~9\) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT5\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \render|Add7~9\,
	combout => \render|Add7~10_combout\,
	cout => \render|Add7~11\);

-- Location: LCCOMB_X19_Y17_N24
\render|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~12_combout\ = ((\render|Mult2|auto_generated|mac_out2~DATAOUT6\ $ (\render|Mult3|auto_generated|mac_out2~DATAOUT6\ $ (!\render|Add7~11\)))) # (GND)
-- \render|Add7~13\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT6\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT6\) # (!\render|Add7~11\))) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT6\ & (\render|Mult3|auto_generated|mac_out2~DATAOUT6\ & 
-- !\render|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT6\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \render|Add7~11\,
	combout => \render|Add7~12_combout\,
	cout => \render|Add7~13\);

-- Location: LCCOMB_X19_Y17_N26
\render|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~14_combout\ = (\render|Mult2|auto_generated|mac_out2~DATAOUT7\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT7\ & (\render|Add7~13\ & VCC)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT7\ & (!\render|Add7~13\)))) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT7\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT7\ & (!\render|Add7~13\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT7\ & ((\render|Add7~13\) # (GND)))))
-- \render|Add7~15\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT7\ & (!\render|Mult3|auto_generated|mac_out2~DATAOUT7\ & !\render|Add7~13\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT7\ & ((!\render|Add7~13\) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT7\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \render|Add7~13\,
	combout => \render|Add7~14_combout\,
	cout => \render|Add7~15\);

-- Location: LCCOMB_X19_Y17_N28
\render|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~16_combout\ = ((\render|Mult3|auto_generated|mac_out2~DATAOUT8\ $ (\render|Mult2|auto_generated|mac_out2~DATAOUT8\ $ (!\render|Add7~15\)))) # (GND)
-- \render|Add7~17\ = CARRY((\render|Mult3|auto_generated|mac_out2~DATAOUT8\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT8\) # (!\render|Add7~15\))) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT8\ & (\render|Mult2|auto_generated|mac_out2~DATAOUT8\ & 
-- !\render|Add7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult3|auto_generated|mac_out2~DATAOUT8\,
	datab => \render|Mult2|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \render|Add7~15\,
	combout => \render|Add7~16_combout\,
	cout => \render|Add7~17\);

-- Location: LCCOMB_X19_Y17_N30
\render|Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~18_combout\ = (\render|Mult2|auto_generated|mac_out2~DATAOUT9\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT9\ & (\render|Add7~17\ & VCC)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT9\ & (!\render|Add7~17\)))) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT9\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT9\ & (!\render|Add7~17\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT9\ & ((\render|Add7~17\) # (GND)))))
-- \render|Add7~19\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT9\ & (!\render|Mult3|auto_generated|mac_out2~DATAOUT9\ & !\render|Add7~17\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT9\ & ((!\render|Add7~17\) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT9\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \render|Add7~17\,
	combout => \render|Add7~18_combout\,
	cout => \render|Add7~19\);

-- Location: LCCOMB_X19_Y16_N0
\render|Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~20_combout\ = ((\render|Mult2|auto_generated|mac_out2~DATAOUT10\ $ (\render|Mult3|auto_generated|mac_out2~DATAOUT10\ $ (!\render|Add7~19\)))) # (GND)
-- \render|Add7~21\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT10\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT10\) # (!\render|Add7~19\))) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT10\ & 
-- (\render|Mult3|auto_generated|mac_out2~DATAOUT10\ & !\render|Add7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT10\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \render|Add7~19\,
	combout => \render|Add7~20_combout\,
	cout => \render|Add7~21\);

-- Location: LCCOMB_X19_Y16_N2
\render|Add7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~22_combout\ = (\render|Mult3|auto_generated|mac_out2~DATAOUT11\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT11\ & (\render|Add7~21\ & VCC)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT11\ & (!\render|Add7~21\)))) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT11\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT11\ & (!\render|Add7~21\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT11\ & ((\render|Add7~21\) # (GND)))))
-- \render|Add7~23\ = CARRY((\render|Mult3|auto_generated|mac_out2~DATAOUT11\ & (!\render|Mult2|auto_generated|mac_out2~DATAOUT11\ & !\render|Add7~21\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT11\ & ((!\render|Add7~21\) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult3|auto_generated|mac_out2~DATAOUT11\,
	datab => \render|Mult2|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \render|Add7~21\,
	combout => \render|Add7~22_combout\,
	cout => \render|Add7~23\);

-- Location: LCCOMB_X19_Y16_N4
\render|Add7~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~24_combout\ = ((\render|Mult2|auto_generated|mac_out2~DATAOUT12\ $ (\render|Mult3|auto_generated|mac_out2~DATAOUT12\ $ (!\render|Add7~23\)))) # (GND)
-- \render|Add7~25\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT12\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT12\) # (!\render|Add7~23\))) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT12\ & 
-- (\render|Mult3|auto_generated|mac_out2~DATAOUT12\ & !\render|Add7~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT12\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \render|Add7~23\,
	combout => \render|Add7~24_combout\,
	cout => \render|Add7~25\);

-- Location: LCCOMB_X19_Y16_N6
\render|Add7~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~26_combout\ = (\render|Mult3|auto_generated|mac_out2~DATAOUT13\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT13\ & (\render|Add7~25\ & VCC)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT13\ & (!\render|Add7~25\)))) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT13\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT13\ & (!\render|Add7~25\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT13\ & ((\render|Add7~25\) # (GND)))))
-- \render|Add7~27\ = CARRY((\render|Mult3|auto_generated|mac_out2~DATAOUT13\ & (!\render|Mult2|auto_generated|mac_out2~DATAOUT13\ & !\render|Add7~25\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT13\ & ((!\render|Add7~25\) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult3|auto_generated|mac_out2~DATAOUT13\,
	datab => \render|Mult2|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \render|Add7~25\,
	combout => \render|Add7~26_combout\,
	cout => \render|Add7~27\);

-- Location: LCCOMB_X19_Y16_N8
\render|Add7~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~28_combout\ = ((\render|Mult2|auto_generated|mac_out2~DATAOUT14\ $ (\render|Mult3|auto_generated|mac_out2~DATAOUT14\ $ (!\render|Add7~27\)))) # (GND)
-- \render|Add7~29\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT14\) # (!\render|Add7~27\))) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT14\ & 
-- (\render|Mult3|auto_generated|mac_out2~DATAOUT14\ & !\render|Add7~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT14\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \render|Add7~27\,
	combout => \render|Add7~28_combout\,
	cout => \render|Add7~29\);

-- Location: LCCOMB_X19_Y16_N10
\render|Add7~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~30_combout\ = (\render|Mult3|auto_generated|mac_out2~DATAOUT15\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT15\ & (\render|Add7~29\ & VCC)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT15\ & (!\render|Add7~29\)))) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT15\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT15\ & (!\render|Add7~29\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT15\ & ((\render|Add7~29\) # (GND)))))
-- \render|Add7~31\ = CARRY((\render|Mult3|auto_generated|mac_out2~DATAOUT15\ & (!\render|Mult2|auto_generated|mac_out2~DATAOUT15\ & !\render|Add7~29\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT15\ & ((!\render|Add7~29\) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult3|auto_generated|mac_out2~DATAOUT15\,
	datab => \render|Mult2|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \render|Add7~29\,
	combout => \render|Add7~30_combout\,
	cout => \render|Add7~31\);

-- Location: LCCOMB_X19_Y16_N12
\render|Add7~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~32_combout\ = ((\render|Mult3|auto_generated|mac_out2~DATAOUT16\ $ (\render|Mult2|auto_generated|mac_out2~DATAOUT16\ $ (!\render|Add7~31\)))) # (GND)
-- \render|Add7~33\ = CARRY((\render|Mult3|auto_generated|mac_out2~DATAOUT16\ & ((\render|Mult2|auto_generated|mac_out2~DATAOUT16\) # (!\render|Add7~31\))) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT16\ & 
-- (\render|Mult2|auto_generated|mac_out2~DATAOUT16\ & !\render|Add7~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult3|auto_generated|mac_out2~DATAOUT16\,
	datab => \render|Mult2|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \render|Add7~31\,
	combout => \render|Add7~32_combout\,
	cout => \render|Add7~33\);

-- Location: LCCOMB_X19_Y16_N14
\render|Add7~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~34_combout\ = (\render|Mult2|auto_generated|mac_out2~DATAOUT17\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT17\ & (\render|Add7~33\ & VCC)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT17\ & (!\render|Add7~33\)))) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT17\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT17\ & (!\render|Add7~33\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT17\ & ((\render|Add7~33\) # (GND)))))
-- \render|Add7~35\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT17\ & (!\render|Mult3|auto_generated|mac_out2~DATAOUT17\ & !\render|Add7~33\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT17\ & ((!\render|Add7~33\) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT17\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \render|Add7~33\,
	combout => \render|Add7~34_combout\,
	cout => \render|Add7~35\);

-- Location: LCCOMB_X19_Y16_N16
\render|Add7~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~36_combout\ = ((\render|Mult2|auto_generated|mac_out2~DATAOUT18\ $ (\render|Mult3|auto_generated|mac_out2~DATAOUT18\ $ (!\render|Add7~35\)))) # (GND)
-- \render|Add7~37\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT18\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT18\) # (!\render|Add7~35\))) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT18\ & 
-- (\render|Mult3|auto_generated|mac_out2~DATAOUT18\ & !\render|Add7~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT18\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \render|Add7~35\,
	combout => \render|Add7~36_combout\,
	cout => \render|Add7~37\);

-- Location: LCCOMB_X19_Y16_N18
\render|Add7~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~38_combout\ = (\render|Mult2|auto_generated|mac_out2~DATAOUT19\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT19\ & (\render|Add7~37\ & VCC)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT19\ & (!\render|Add7~37\)))) # 
-- (!\render|Mult2|auto_generated|mac_out2~DATAOUT19\ & ((\render|Mult3|auto_generated|mac_out2~DATAOUT19\ & (!\render|Add7~37\)) # (!\render|Mult3|auto_generated|mac_out2~DATAOUT19\ & ((\render|Add7~37\) # (GND)))))
-- \render|Add7~39\ = CARRY((\render|Mult2|auto_generated|mac_out2~DATAOUT19\ & (!\render|Mult3|auto_generated|mac_out2~DATAOUT19\ & !\render|Add7~37\)) # (!\render|Mult2|auto_generated|mac_out2~DATAOUT19\ & ((!\render|Add7~37\) # 
-- (!\render|Mult3|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT19\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \render|Add7~37\,
	combout => \render|Add7~38_combout\,
	cout => \render|Add7~39\);

-- Location: LCCOMB_X19_Y16_N30
\render|is_barrel~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~1_combout\ = (\render|Add7~36_combout\ & (\render|Add7~32_combout\ & (\render|Add7~34_combout\ & \render|Add7~38_combout\))) # (!\render|Add7~36_combout\ & (((!\render|Add7~34_combout\ & !\render|Add7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add7~32_combout\,
	datab => \render|Add7~36_combout\,
	datac => \render|Add7~34_combout\,
	datad => \render|Add7~38_combout\,
	combout => \render|is_barrel~1_combout\);

-- Location: DSPMULT_X18_Y19_N0
\render|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \render|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \render|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \render|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y19_N2
\render|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \render|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X18_Y18_N0
\render|Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \render|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \render|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \render|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y18_N2
\render|Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \render|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X20_Y18_N12
\render|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~0_combout\ = (\render|Mult1|auto_generated|mac_out2~dataout\ & (\render|Mult0|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\render|Mult1|auto_generated|mac_out2~dataout\ & ((\render|Mult0|auto_generated|mac_out2~dataout\) # (GND)))
-- \render|Add6~1\ = CARRY((\render|Mult0|auto_generated|mac_out2~dataout\) # (!\render|Mult1|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult1|auto_generated|mac_out2~dataout\,
	datab => \render|Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \render|Add6~0_combout\,
	cout => \render|Add6~1\);

-- Location: LCCOMB_X20_Y18_N14
\render|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~2_combout\ = (\render|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT1\ & (!\render|Add6~1\)) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT1\ & (\render|Add6~1\ & VCC)))) # 
-- (!\render|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT1\ & ((\render|Add6~1\) # (GND))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT1\ & (!\render|Add6~1\))))
-- \render|Add6~3\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT1\ & (\render|Mult1|auto_generated|mac_out2~DATAOUT1\ & !\render|Add6~1\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT1\) # 
-- (!\render|Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \render|Add6~1\,
	combout => \render|Add6~2_combout\,
	cout => \render|Add6~3\);

-- Location: LCCOMB_X20_Y18_N16
\render|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~4_combout\ = ((\render|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\render|Mult1|auto_generated|mac_out2~DATAOUT2\ $ (\render|Add6~3\)))) # (GND)
-- \render|Add6~5\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((!\render|Add6~3\) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT2\))) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT2\ & (!\render|Mult1|auto_generated|mac_out2~DATAOUT2\ & 
-- !\render|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \render|Add6~3\,
	combout => \render|Add6~4_combout\,
	cout => \render|Add6~5\);

-- Location: LCCOMB_X20_Y18_N18
\render|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~6_combout\ = (\render|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\render|Add6~5\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\render|Add6~5\) # (GND))))) # 
-- (!\render|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\render|Add6~5\ & VCC)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\render|Add6~5\))))
-- \render|Add6~7\ = CARRY((\render|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((!\render|Add6~5\) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT3\))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT3\ & (!\render|Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- !\render|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datab => \render|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \render|Add6~5\,
	combout => \render|Add6~6_combout\,
	cout => \render|Add6~7\);

-- Location: LCCOMB_X20_Y18_N20
\render|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~8_combout\ = ((\render|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (\render|Mult1|auto_generated|mac_out2~DATAOUT4\ $ (\render|Add6~7\)))) # (GND)
-- \render|Add6~9\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((!\render|Add6~7\) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT4\))) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT4\ & (!\render|Mult1|auto_generated|mac_out2~DATAOUT4\ & 
-- !\render|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \render|Add6~7\,
	combout => \render|Add6~8_combout\,
	cout => \render|Add6~9\);

-- Location: LCCOMB_X20_Y18_N22
\render|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~10_combout\ = (\render|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\render|Add6~9\)) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT5\ & (\render|Add6~9\ & VCC)))) # 
-- (!\render|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\render|Add6~9\) # (GND))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\render|Add6~9\))))
-- \render|Add6~11\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT5\ & (\render|Mult1|auto_generated|mac_out2~DATAOUT5\ & !\render|Add6~9\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT5\) # 
-- (!\render|Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \render|Add6~9\,
	combout => \render|Add6~10_combout\,
	cout => \render|Add6~11\);

-- Location: LCCOMB_X20_Y18_N24
\render|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~12_combout\ = ((\render|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (\render|Mult1|auto_generated|mac_out2~DATAOUT6\ $ (\render|Add6~11\)))) # (GND)
-- \render|Add6~13\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((!\render|Add6~11\) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT6\))) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT6\ & (!\render|Mult1|auto_generated|mac_out2~DATAOUT6\ 
-- & !\render|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \render|Add6~11\,
	combout => \render|Add6~12_combout\,
	cout => \render|Add6~13\);

-- Location: LCCOMB_X20_Y18_N26
\render|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~14_combout\ = (\render|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\render|Add6~13\)) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT7\ & (\render|Add6~13\ & VCC)))) # 
-- (!\render|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\render|Add6~13\) # (GND))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\render|Add6~13\))))
-- \render|Add6~15\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT7\ & (\render|Mult1|auto_generated|mac_out2~DATAOUT7\ & !\render|Add6~13\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT7\) # 
-- (!\render|Add6~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \render|Add6~13\,
	combout => \render|Add6~14_combout\,
	cout => \render|Add6~15\);

-- Location: LCCOMB_X20_Y18_N28
\render|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~16_combout\ = ((\render|Mult0|auto_generated|mac_out2~DATAOUT8\ $ (\render|Mult1|auto_generated|mac_out2~DATAOUT8\ $ (\render|Add6~15\)))) # (GND)
-- \render|Add6~17\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT8\ & ((!\render|Add6~15\) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT8\))) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\render|Mult1|auto_generated|mac_out2~DATAOUT8\ 
-- & !\render|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \render|Add6~15\,
	combout => \render|Add6~16_combout\,
	cout => \render|Add6~17\);

-- Location: LCCOMB_X20_Y18_N30
\render|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~18_combout\ = (\render|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\render|Add6~17\)) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT9\ & (\render|Add6~17\ & VCC)))) # 
-- (!\render|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT9\ & ((\render|Add6~17\) # (GND))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\render|Add6~17\))))
-- \render|Add6~19\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT9\ & (\render|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\render|Add6~17\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT9\) # 
-- (!\render|Add6~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \render|Add6~17\,
	combout => \render|Add6~18_combout\,
	cout => \render|Add6~19\);

-- Location: LCCOMB_X20_Y17_N0
\render|Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~20_combout\ = ((\render|Mult0|auto_generated|mac_out2~DATAOUT10\ $ (\render|Mult1|auto_generated|mac_out2~DATAOUT10\ $ (\render|Add6~19\)))) # (GND)
-- \render|Add6~21\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((!\render|Add6~19\) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT10\))) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- (!\render|Mult1|auto_generated|mac_out2~DATAOUT10\ & !\render|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \render|Add6~19\,
	combout => \render|Add6~20_combout\,
	cout => \render|Add6~21\);

-- Location: LCCOMB_X20_Y17_N2
\render|Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~22_combout\ = (\render|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\render|Add6~21\)) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT11\ & (\render|Add6~21\ & VCC)))) # 
-- (!\render|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\render|Add6~21\) # (GND))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\render|Add6~21\))))
-- \render|Add6~23\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT11\ & (\render|Mult1|auto_generated|mac_out2~DATAOUT11\ & !\render|Add6~21\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT11\) 
-- # (!\render|Add6~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \render|Add6~21\,
	combout => \render|Add6~22_combout\,
	cout => \render|Add6~23\);

-- Location: LCCOMB_X20_Y17_N4
\render|Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~24_combout\ = ((\render|Mult1|auto_generated|mac_out2~DATAOUT12\ $ (\render|Mult0|auto_generated|mac_out2~DATAOUT12\ $ (\render|Add6~23\)))) # (GND)
-- \render|Add6~25\ = CARRY((\render|Mult1|auto_generated|mac_out2~DATAOUT12\ & (\render|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\render|Add6~23\)) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT12\) 
-- # (!\render|Add6~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datab => \render|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \render|Add6~23\,
	combout => \render|Add6~24_combout\,
	cout => \render|Add6~25\);

-- Location: LCCOMB_X20_Y17_N6
\render|Add6~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~26_combout\ = (\render|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\render|Add6~25\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\render|Add6~25\) # (GND))))) # 
-- (!\render|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\render|Add6~25\ & VCC)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\render|Add6~25\))))
-- \render|Add6~27\ = CARRY((\render|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((!\render|Add6~25\) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT13\))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT13\ & 
-- (!\render|Mult0|auto_generated|mac_out2~DATAOUT13\ & !\render|Add6~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datab => \render|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \render|Add6~25\,
	combout => \render|Add6~26_combout\,
	cout => \render|Add6~27\);

-- Location: LCCOMB_X20_Y17_N8
\render|Add6~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~28_combout\ = ((\render|Mult0|auto_generated|mac_out2~DATAOUT14\ $ (\render|Mult1|auto_generated|mac_out2~DATAOUT14\ $ (\render|Add6~27\)))) # (GND)
-- \render|Add6~29\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((!\render|Add6~27\) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT14\))) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- (!\render|Mult1|auto_generated|mac_out2~DATAOUT14\ & !\render|Add6~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \render|Add6~27\,
	combout => \render|Add6~28_combout\,
	cout => \render|Add6~29\);

-- Location: LCCOMB_X20_Y17_N10
\render|Add6~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~30_combout\ = (\render|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\render|Add6~29\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\render|Add6~29\) # (GND))))) # 
-- (!\render|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\render|Add6~29\ & VCC)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\render|Add6~29\))))
-- \render|Add6~31\ = CARRY((\render|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((!\render|Add6~29\) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\render|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\render|Add6~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datab => \render|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \render|Add6~29\,
	combout => \render|Add6~30_combout\,
	cout => \render|Add6~31\);

-- Location: LCCOMB_X20_Y17_N12
\render|Add6~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~32_combout\ = ((\render|Mult1|auto_generated|mac_out2~DATAOUT16\ $ (\render|Mult0|auto_generated|mac_out2~DATAOUT16\ $ (\render|Add6~31\)))) # (GND)
-- \render|Add6~33\ = CARRY((\render|Mult1|auto_generated|mac_out2~DATAOUT16\ & (\render|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\render|Add6~31\)) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT16\) 
-- # (!\render|Add6~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \render|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \render|Add6~31\,
	combout => \render|Add6~32_combout\,
	cout => \render|Add6~33\);

-- Location: LCCOMB_X20_Y17_N14
\render|Add6~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~34_combout\ = (\render|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\render|Add6~33\)) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT17\ & (\render|Add6~33\ & VCC)))) # 
-- (!\render|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\render|Add6~33\) # (GND))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\render|Add6~33\))))
-- \render|Add6~35\ = CARRY((\render|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\render|Mult1|auto_generated|mac_out2~DATAOUT17\ & !\render|Add6~33\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\render|Mult1|auto_generated|mac_out2~DATAOUT17\) 
-- # (!\render|Add6~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \render|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \render|Add6~33\,
	combout => \render|Add6~34_combout\,
	cout => \render|Add6~35\);

-- Location: LCCOMB_X20_Y17_N16
\render|Add6~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~36_combout\ = ((\render|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (\render|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (\render|Add6~35\)))) # (GND)
-- \render|Add6~37\ = CARRY((\render|Mult1|auto_generated|mac_out2~DATAOUT18\ & (\render|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\render|Add6~35\)) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT18\) 
-- # (!\render|Add6~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \render|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \render|Add6~35\,
	combout => \render|Add6~36_combout\,
	cout => \render|Add6~37\);

-- Location: LCCOMB_X20_Y17_N30
\render|is_barrel~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~0_combout\ = (!\render|Add6~34_combout\ & !\render|Add6~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \render|Add6~34_combout\,
	datad => \render|Add6~36_combout\,
	combout => \render|is_barrel~0_combout\);

-- Location: LCCOMB_X19_Y16_N20
\render|Add7~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add7~40_combout\ = \render|Mult2|auto_generated|mac_out2~DATAOUT19\ $ (\render|Mult3|auto_generated|mac_out2~DATAOUT19\ $ (!\render|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult2|auto_generated|mac_out2~DATAOUT19\,
	datab => \render|Mult3|auto_generated|mac_out2~DATAOUT19\,
	cin => \render|Add7~39\,
	combout => \render|Add7~40_combout\);

-- Location: LCCOMB_X19_Y16_N26
\render|is_barrel~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~3_combout\ = (!\render|Add7~32_combout\ & (!\render|Add7~28_combout\ & (!\render|Add7~26_combout\ & !\render|Add7~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add7~32_combout\,
	datab => \render|Add7~28_combout\,
	datac => \render|Add7~26_combout\,
	datad => \render|Add7~30_combout\,
	combout => \render|is_barrel~3_combout\);

-- Location: LCCOMB_X19_Y16_N28
\render|is_barrel~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~2_combout\ = (\render|Add7~26_combout\ & (\render|Add7~24_combout\ & (\render|Add7~28_combout\ & \render|Add7~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add7~26_combout\,
	datab => \render|Add7~24_combout\,
	datac => \render|Add7~28_combout\,
	datad => \render|Add7~30_combout\,
	combout => \render|is_barrel~2_combout\);

-- Location: LCCOMB_X19_Y16_N24
\render|is_barrel~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~4_combout\ = (\render|Add7~38_combout\ & (\render|Add7~40_combout\ & ((\render|is_barrel~2_combout\)))) # (!\render|Add7~38_combout\ & (!\render|Add7~40_combout\ & (\render|is_barrel~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add7~38_combout\,
	datab => \render|Add7~40_combout\,
	datac => \render|is_barrel~3_combout\,
	datad => \render|is_barrel~2_combout\,
	combout => \render|is_barrel~4_combout\);

-- Location: LCCOMB_X20_Y17_N18
\render|Add6~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~38_combout\ = (\render|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\render|Add6~37\)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\render|Add6~37\) # (GND))))) # 
-- (!\render|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\render|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\render|Add6~37\ & VCC)) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\render|Add6~37\))))
-- \render|Add6~39\ = CARRY((\render|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((!\render|Add6~37\) # (!\render|Mult0|auto_generated|mac_out2~DATAOUT19\))) # (!\render|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\render|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\render|Add6~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \render|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \render|Add6~37\,
	combout => \render|Add6~38_combout\,
	cout => \render|Add6~39\);

-- Location: LCCOMB_X20_Y17_N20
\render|Add6~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add6~40_combout\ = \render|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\render|Add6~39\ $ (\render|Mult1|auto_generated|mac_out2~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \render|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => \render|Mult1|auto_generated|mac_out2~DATAOUT19\,
	cin => \render|Add6~39\,
	combout => \render|Add6~40_combout\);

-- Location: LCCOMB_X20_Y17_N24
\render|is_barrel~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~5_combout\ = (!\render|Add6~26_combout\ & (!\render|Add6~28_combout\ & (!\render|Add6~32_combout\ & !\render|Add6~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add6~26_combout\,
	datab => \render|Add6~28_combout\,
	datac => \render|Add6~32_combout\,
	datad => \render|Add6~30_combout\,
	combout => \render|is_barrel~5_combout\);

-- Location: LCCOMB_X19_Y17_N4
\render|is_barrel~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~10_combout\ = (\render|Add7~18_combout\ & (\render|Add7~20_combout\ & (\render|Add7~22_combout\ & \render|Add7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add7~18_combout\,
	datab => \render|Add7~20_combout\,
	datac => \render|Add7~22_combout\,
	datad => \render|Add7~16_combout\,
	combout => \render|is_barrel~10_combout\);

-- Location: LCCOMB_X20_Y18_N4
\render|is_barrel~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~6_combout\ = (!\render|Add6~0_combout\ & (!\render|Add6~4_combout\ & (!\render|Add6~2_combout\ & !\render|Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add6~0_combout\,
	datab => \render|Add6~4_combout\,
	datac => \render|Add6~2_combout\,
	datad => \render|Add6~6_combout\,
	combout => \render|is_barrel~6_combout\);

-- Location: LCCOMB_X20_Y18_N2
\render|is_barrel~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~7_combout\ = (!\render|Add6~10_combout\ & (!\render|Add6~12_combout\ & (!\render|Add6~14_combout\ & !\render|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add6~10_combout\,
	datab => \render|Add6~12_combout\,
	datac => \render|Add6~14_combout\,
	datad => \render|Add6~8_combout\,
	combout => \render|is_barrel~7_combout\);

-- Location: LCCOMB_X20_Y18_N0
\render|is_barrel~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~8_combout\ = (!\render|Add6~18_combout\ & (!\render|Add6~16_combout\ & (\render|is_barrel~6_combout\ & \render|is_barrel~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add6~18_combout\,
	datab => \render|Add6~16_combout\,
	datac => \render|is_barrel~6_combout\,
	datad => \render|is_barrel~7_combout\,
	combout => \render|is_barrel~8_combout\);

-- Location: LCCOMB_X20_Y17_N26
\render|is_barrel~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~9_combout\ = ((!\render|Add6~22_combout\ & ((\render|is_barrel~8_combout\) # (!\render|Add6~20_combout\)))) # (!\render|Add6~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add6~22_combout\,
	datab => \render|Add6~20_combout\,
	datac => \render|Add6~24_combout\,
	datad => \render|is_barrel~8_combout\,
	combout => \render|is_barrel~9_combout\);

-- Location: LCCOMB_X19_Y17_N10
\render|is_barrel~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~11_combout\ = (!\render|Add7~0_combout\ & (!\render|Add7~6_combout\ & (!\render|Add7~2_combout\ & !\render|Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add7~0_combout\,
	datab => \render|Add7~6_combout\,
	datac => \render|Add7~2_combout\,
	datad => \render|Add7~4_combout\,
	combout => \render|is_barrel~11_combout\);

-- Location: LCCOMB_X19_Y17_N0
\render|is_barrel~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~12_combout\ = (!\render|Add7~10_combout\ & (!\render|Add7~8_combout\ & (!\render|Add7~14_combout\ & !\render|Add7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add7~10_combout\,
	datab => \render|Add7~8_combout\,
	datac => \render|Add7~14_combout\,
	datad => \render|Add7~12_combout\,
	combout => \render|is_barrel~12_combout\);

-- Location: LCCOMB_X19_Y17_N6
\render|is_barrel~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~13_combout\ = (!\render|Add7~18_combout\ & (!\render|Add7~20_combout\ & (!\render|Add7~22_combout\ & !\render|Add7~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add7~18_combout\,
	datab => \render|Add7~20_combout\,
	datac => \render|Add7~22_combout\,
	datad => \render|Add7~24_combout\,
	combout => \render|is_barrel~13_combout\);

-- Location: LCCOMB_X19_Y17_N8
\render|is_barrel~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~14_combout\ = (\render|is_barrel~13_combout\ & (((\render|is_barrel~11_combout\ & \render|is_barrel~12_combout\)) # (!\render|Add7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|is_barrel~11_combout\,
	datab => \render|Add7~16_combout\,
	datac => \render|is_barrel~12_combout\,
	datad => \render|is_barrel~13_combout\,
	combout => \render|is_barrel~14_combout\);

-- Location: LCCOMB_X20_Y17_N28
\render|is_barrel~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~15_combout\ = (\render|is_barrel~9_combout\ & ((\render|Add7~34_combout\ & (\render|is_barrel~10_combout\)) # (!\render|Add7~34_combout\ & ((\render|is_barrel~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add7~34_combout\,
	datab => \render|is_barrel~10_combout\,
	datac => \render|is_barrel~9_combout\,
	datad => \render|is_barrel~14_combout\,
	combout => \render|is_barrel~15_combout\);

-- Location: LCCOMB_X20_Y17_N22
\render|is_barrel~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~16_combout\ = (!\render|Add6~38_combout\ & (!\render|Add6~40_combout\ & (\render|is_barrel~5_combout\ & \render|is_barrel~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add6~38_combout\,
	datab => \render|Add6~40_combout\,
	datac => \render|is_barrel~5_combout\,
	datad => \render|is_barrel~15_combout\,
	combout => \render|is_barrel~16_combout\);

-- Location: LCCOMB_X21_Y17_N10
\render|is_barrel~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_barrel~17_combout\ = (\render|is_barrel~1_combout\ & (\render|is_barrel~0_combout\ & (\render|is_barrel~4_combout\ & \render|is_barrel~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|is_barrel~1_combout\,
	datab => \render|is_barrel~0_combout\,
	datac => \render|is_barrel~4_combout\,
	datad => \render|is_barrel~16_combout\,
	combout => \render|is_barrel~17_combout\);

-- Location: LCCOMB_X19_Y21_N6
\render|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add14~0_combout\ = \u_VGA_sync|v_count\(2) $ (VCC)
-- \render|Add14~1\ = CARRY(\u_VGA_sync|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(2),
	datad => VCC,
	combout => \render|Add14~0_combout\,
	cout => \render|Add14~1\);

-- Location: LCCOMB_X19_Y21_N8
\render|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add14~2_combout\ = (\u_VGA_sync|v_count\(3) & (!\render|Add14~1\)) # (!\u_VGA_sync|v_count\(3) & ((\render|Add14~1\) # (GND)))
-- \render|Add14~3\ = CARRY((!\render|Add14~1\) # (!\u_VGA_sync|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(3),
	datad => VCC,
	cin => \render|Add14~1\,
	combout => \render|Add14~2_combout\,
	cout => \render|Add14~3\);

-- Location: LCCOMB_X19_Y21_N10
\render|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add14~4_combout\ = (\u_VGA_sync|v_count\(4) & (\render|Add14~3\ $ (GND))) # (!\u_VGA_sync|v_count\(4) & (!\render|Add14~3\ & VCC))
-- \render|Add14~5\ = CARRY((\u_VGA_sync|v_count\(4) & !\render|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(4),
	datad => VCC,
	cin => \render|Add14~3\,
	combout => \render|Add14~4_combout\,
	cout => \render|Add14~5\);

-- Location: LCCOMB_X19_Y21_N12
\render|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add14~6_combout\ = (\u_VGA_sync|v_count\(5) & (!\render|Add14~5\)) # (!\u_VGA_sync|v_count\(5) & ((\render|Add14~5\) # (GND)))
-- \render|Add14~7\ = CARRY((!\render|Add14~5\) # (!\u_VGA_sync|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(5),
	datad => VCC,
	cin => \render|Add14~5\,
	combout => \render|Add14~6_combout\,
	cout => \render|Add14~7\);

-- Location: LCCOMB_X19_Y21_N14
\render|Add14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add14~9_cout\ = CARRY((\u_VGA_sync|v_count\(6) & !\render|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(6),
	datad => VCC,
	cin => \render|Add14~7\,
	cout => \render|Add14~9_cout\);

-- Location: LCCOMB_X19_Y21_N16
\render|Add14~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add14~11_cout\ = CARRY((!\u_VGA_sync|v_count\(7) & !\render|Add14~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(7),
	datad => VCC,
	cin => \render|Add14~9_cout\,
	cout => \render|Add14~11_cout\);

-- Location: LCCOMB_X19_Y21_N18
\render|Add14~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add14~13_cout\ = CARRY((\u_VGA_sync|v_count\(8) & !\render|Add14~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(8),
	datad => VCC,
	cin => \render|Add14~11_cout\,
	cout => \render|Add14~13_cout\);

-- Location: LCCOMB_X19_Y21_N20
\render|Add14~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add14~15_cout\ = CARRY((!\u_VGA_sync|v_count\(9) & !\render|Add14~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(9),
	datad => VCC,
	cin => \render|Add14~13_cout\,
	cout => \render|Add14~15_cout\);

-- Location: LCCOMB_X19_Y21_N22
\render|Add14~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add14~16_combout\ = !\render|Add14~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \render|Add14~15_cout\,
	combout => \render|Add14~16_combout\);

-- Location: LCCOMB_X19_Y21_N2
\render|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add15~2_combout\ = \render|Add14~2_combout\ $ (((!\render|Add14~16_combout\ & (!\u_VGA_sync|Equal1~3_combout\ & \render|Add14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add14~16_combout\,
	datab => \u_VGA_sync|Equal1~3_combout\,
	datac => \render|Add14~2_combout\,
	datad => \render|Add14~0_combout\,
	combout => \render|Add15~2_combout\);

-- Location: LCCOMB_X19_Y21_N28
\render|Add15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add15~3_combout\ = (!\render|Add14~16_combout\ & (!\u_VGA_sync|Equal1~3_combout\ & (\render|Add14~2_combout\ & \render|Add14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add14~16_combout\,
	datab => \u_VGA_sync|Equal1~3_combout\,
	datac => \render|Add14~2_combout\,
	datad => \render|Add14~0_combout\,
	combout => \render|Add15~3_combout\);

-- Location: LCCOMB_X19_Y21_N24
\render|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add15~4_combout\ = \render|Add15~3_combout\ $ (\render|Add14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \render|Add15~3_combout\,
	datad => \render|Add14~4_combout\,
	combout => \render|Add15~4_combout\);

-- Location: LCCOMB_X19_Y21_N26
\render|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add15~6_combout\ = \render|Add14~0_combout\ $ (((!\render|Add14~16_combout\ & ((\u_VGA_sync|v_count\(1)) # (\u_VGA_sync|v_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(1),
	datab => \u_VGA_sync|v_count\(0),
	datac => \render|Add14~16_combout\,
	datad => \render|Add14~0_combout\,
	combout => \render|Add15~6_combout\);

-- Location: LCCOMB_X19_Y21_N30
\render|Add15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add15~5_combout\ = \render|Add14~6_combout\ $ (((\render|Add14~4_combout\ & \render|Add15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add14~4_combout\,
	datab => \render|Add15~3_combout\,
	datad => \render|Add14~6_combout\,
	combout => \render|Add15~5_combout\);

-- Location: LCCOMB_X20_Y21_N20
\render|Mux48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux48~0_combout\ = (\render|Add15~4_combout\ & (\render|Add15~2_combout\ & ((!\render|Add15~5_combout\)))) # (!\render|Add15~4_combout\ & (\render|Add15~5_combout\ & ((!\render|Add15~6_combout\) # (!\render|Add15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add15~2_combout\,
	datab => \render|Add15~4_combout\,
	datac => \render|Add15~6_combout\,
	datad => \render|Add15~5_combout\,
	combout => \render|Mux48~0_combout\);

-- Location: LCCOMB_X21_Y21_N0
\render|Add12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~1_cout\ = CARRY(\u_VGA_sync|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(1),
	datad => VCC,
	cout => \render|Add12~1_cout\);

-- Location: LCCOMB_X21_Y21_N2
\render|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~2_combout\ = (\u_VGA_sync|h_count\(2) & (\render|Add12~1_cout\ & VCC)) # (!\u_VGA_sync|h_count\(2) & (!\render|Add12~1_cout\))
-- \render|Add12~3\ = CARRY((!\u_VGA_sync|h_count\(2) & !\render|Add12~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(2),
	datad => VCC,
	cin => \render|Add12~1_cout\,
	combout => \render|Add12~2_combout\,
	cout => \render|Add12~3\);

-- Location: LCCOMB_X21_Y21_N4
\render|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~4_combout\ = (\u_VGA_sync|h_count\(3) & ((GND) # (!\render|Add12~3\))) # (!\u_VGA_sync|h_count\(3) & (\render|Add12~3\ $ (GND)))
-- \render|Add12~5\ = CARRY((\u_VGA_sync|h_count\(3)) # (!\render|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(3),
	datad => VCC,
	cin => \render|Add12~3\,
	combout => \render|Add12~4_combout\,
	cout => \render|Add12~5\);

-- Location: LCCOMB_X21_Y21_N6
\render|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~6_combout\ = (\u_VGA_sync|h_count\(4) & (!\render|Add12~5\)) # (!\u_VGA_sync|h_count\(4) & ((\render|Add12~5\) # (GND)))
-- \render|Add12~7\ = CARRY((!\render|Add12~5\) # (!\u_VGA_sync|h_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(4),
	datad => VCC,
	cin => \render|Add12~5\,
	combout => \render|Add12~6_combout\,
	cout => \render|Add12~7\);

-- Location: LCCOMB_X21_Y21_N8
\render|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~8_combout\ = (\u_VGA_sync|h_count\(5) & (\render|Add12~7\ $ (GND))) # (!\u_VGA_sync|h_count\(5) & (!\render|Add12~7\ & VCC))
-- \render|Add12~9\ = CARRY((\u_VGA_sync|h_count\(5) & !\render|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(5),
	datad => VCC,
	cin => \render|Add12~7\,
	combout => \render|Add12~8_combout\,
	cout => \render|Add12~9\);

-- Location: LCCOMB_X21_Y21_N10
\render|Add12~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~11_cout\ = CARRY((!\u_VGA_sync|h_count\(6) & !\render|Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(6),
	datad => VCC,
	cin => \render|Add12~9\,
	cout => \render|Add12~11_cout\);

-- Location: LCCOMB_X21_Y21_N12
\render|Add12~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~13_cout\ = CARRY((\u_VGA_sync|h_count\(7)) # (!\render|Add12~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(7),
	datad => VCC,
	cin => \render|Add12~11_cout\,
	cout => \render|Add12~13_cout\);

-- Location: LCCOMB_X21_Y21_N14
\render|Add12~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~15_cout\ = CARRY((!\u_VGA_sync|h_count\(8) & !\render|Add12~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(8),
	datad => VCC,
	cin => \render|Add12~13_cout\,
	cout => \render|Add12~15_cout\);

-- Location: LCCOMB_X21_Y21_N16
\render|Add12~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~17_cout\ = CARRY((\u_VGA_sync|h_count\(9)) # (!\render|Add12~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|h_count\(9),
	datad => VCC,
	cin => \render|Add12~15_cout\,
	cout => \render|Add12~17_cout\);

-- Location: LCCOMB_X21_Y21_N18
\render|Add12~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add12~18_combout\ = \render|Add12~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \render|Add12~17_cout\,
	combout => \render|Add12~18_combout\);

-- Location: LCCOMB_X21_Y21_N26
\render|Add13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add13~3_combout\ = (\render|WideOr3~combout\ & (\render|Add12~2_combout\ & (\render|Add12~4_combout\ & !\render|Add12~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|WideOr3~combout\,
	datab => \render|Add12~2_combout\,
	datac => \render|Add12~4_combout\,
	datad => \render|Add12~18_combout\,
	combout => \render|Add13~3_combout\);

-- Location: LCCOMB_X21_Y21_N28
\render|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add13~4_combout\ = \render|Add13~3_combout\ $ (\render|Add12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \render|Add13~3_combout\,
	datad => \render|Add12~6_combout\,
	combout => \render|Add13~4_combout\);

-- Location: LCCOMB_X21_Y21_N30
\render|Add13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add13~5_combout\ = \render|Add12~8_combout\ $ (((\render|Add13~3_combout\ & \render|Add12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add13~3_combout\,
	datac => \render|Add12~8_combout\,
	datad => \render|Add12~6_combout\,
	combout => \render|Add13~5_combout\);

-- Location: LCCOMB_X21_Y21_N24
\render|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add13~2_combout\ = \render|Add12~4_combout\ $ (((\render|WideOr3~combout\ & (!\render|Add12~18_combout\ & \render|Add12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|WideOr3~combout\,
	datab => \render|Add12~18_combout\,
	datac => \render|Add12~4_combout\,
	datad => \render|Add12~2_combout\,
	combout => \render|Add13~2_combout\);

-- Location: LCCOMB_X20_Y21_N22
\render|Mux48~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux48~1_combout\ = (\render|Mux48~0_combout\ & (\render|Add13~4_combout\ & (!\render|Add13~5_combout\ & \render|Add13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux48~0_combout\,
	datab => \render|Add13~4_combout\,
	datac => \render|Add13~5_combout\,
	datad => \render|Add13~2_combout\,
	combout => \render|Mux48~1_combout\);

-- Location: LCCOMB_X19_Y21_N0
\render|Mux56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux56~0_combout\ = (\render|Add15~2_combout\ & (\render|Add14~6_combout\ $ (((\render|Add15~3_combout\) # (\render|Add14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add14~6_combout\,
	datab => \render|Add15~3_combout\,
	datac => \render|Add15~2_combout\,
	datad => \render|Add14~4_combout\,
	combout => \render|Mux56~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\render|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Add13~6_combout\ = \render|Add12~2_combout\ $ (((!\render|Add12~18_combout\ & ((\u_VGA_sync|h_count\(0)) # (!\u_VGA_sync|h_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(0),
	datab => \render|Add12~18_combout\,
	datac => \u_VGA_sync|h_count\(1),
	datad => \render|Add12~2_combout\,
	combout => \render|Add13~6_combout\);

-- Location: LCCOMB_X20_Y21_N16
\render|Mux49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux49~0_combout\ = (\render|Add13~2_combout\ & (!\render|Add13~6_combout\ & (\render|Add13~4_combout\ $ (\render|Add13~5_combout\)))) # (!\render|Add13~2_combout\ & (\render|Add13~4_combout\ $ ((\render|Add13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add13~4_combout\,
	datab => \render|Add13~2_combout\,
	datac => \render|Add13~5_combout\,
	datad => \render|Add13~6_combout\,
	combout => \render|Mux49~0_combout\);

-- Location: LCCOMB_X20_Y21_N26
\render|Mux56~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux56~2_combout\ = (\render|Add15~2_combout\ & (\render|Add15~4_combout\ & (\render|Add15~6_combout\ & !\render|Add15~5_combout\))) # (!\render|Add15~2_combout\ & (!\render|Add15~4_combout\ & ((\render|Add15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add15~2_combout\,
	datab => \render|Add15~4_combout\,
	datac => \render|Add15~6_combout\,
	datad => \render|Add15~5_combout\,
	combout => \render|Mux56~2_combout\);

-- Location: LCCOMB_X20_Y21_N2
\render|Mux50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux50~0_combout\ = (\render|Add13~4_combout\ & (!\render|Add13~5_combout\ & (\render|Add13~6_combout\ $ (\render|Add13~2_combout\)))) # (!\render|Add13~4_combout\ & (((\render|Add13~5_combout\ & !\render|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add13~6_combout\,
	datab => \render|Add13~4_combout\,
	datac => \render|Add13~5_combout\,
	datad => \render|Add13~2_combout\,
	combout => \render|Mux50~0_combout\);

-- Location: LCCOMB_X20_Y21_N28
\render|Mux56~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux56~1_combout\ = (!\render|Add15~6_combout\ & \render|Mux50~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \render|Add15~6_combout\,
	datad => \render|Mux50~0_combout\,
	combout => \render|Mux56~1_combout\);

-- Location: LCCOMB_X20_Y21_N24
\render|Mux56~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux56~3_combout\ = (\render|Mux56~0_combout\ & ((\render|Mux56~1_combout\) # ((\render|Mux49~0_combout\ & \render|Mux56~2_combout\)))) # (!\render|Mux56~0_combout\ & (\render|Mux49~0_combout\ & (\render|Mux56~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux56~0_combout\,
	datab => \render|Mux49~0_combout\,
	datac => \render|Mux56~2_combout\,
	datad => \render|Mux56~1_combout\,
	combout => \render|Mux56~3_combout\);

-- Location: LCCOMB_X20_Y21_N4
\render|Mux48~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux48~3_combout\ = (\render|Add15~2_combout\ & (!\render|Add13~2_combout\ & ((\render|Add15~6_combout\) # (\render|Add13~6_combout\)))) # (!\render|Add15~2_combout\ & (\render|Add13~6_combout\ & (\render|Add13~2_combout\ $ 
-- (\render|Add15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add15~2_combout\,
	datab => \render|Add13~2_combout\,
	datac => \render|Add15~6_combout\,
	datad => \render|Add13~6_combout\,
	combout => \render|Mux48~3_combout\);

-- Location: LCCOMB_X20_Y21_N10
\render|Mux48~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux48~4_combout\ = (\render|Add13~5_combout\ & (!\render|Add13~4_combout\ & ((!\render|Add13~2_combout\) # (!\render|Mux48~3_combout\)))) # (!\render|Add13~5_combout\ & (\render|Add13~4_combout\ & ((\render|Mux48~3_combout\) # 
-- (\render|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add13~5_combout\,
	datab => \render|Add13~4_combout\,
	datac => \render|Mux48~3_combout\,
	datad => \render|Add13~2_combout\,
	combout => \render|Mux48~4_combout\);

-- Location: LCCOMB_X20_Y21_N14
\render|Mux48~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux48~6_combout\ = (\render|Add13~5_combout\ & ((\render|Add13~4_combout\ & (!\render|Add13~2_combout\)) # (!\render|Add13~4_combout\ & ((\render|Mux48~3_combout\))))) # (!\render|Add13~5_combout\ & (!\render|Mux48~3_combout\ & 
-- ((\render|Add13~2_combout\) # (\render|Add13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add13~5_combout\,
	datab => \render|Add13~2_combout\,
	datac => \render|Mux48~3_combout\,
	datad => \render|Add13~4_combout\,
	combout => \render|Mux48~6_combout\);

-- Location: LCCOMB_X20_Y21_N0
\render|Mux48~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux48~5_combout\ = (\render|Add15~2_combout\ & ((\render|Add13~6_combout\ & ((\render|Add15~6_combout\))) # (!\render|Add13~6_combout\ & (!\render|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add15~2_combout\,
	datab => \render|Add13~2_combout\,
	datac => \render|Add15~6_combout\,
	datad => \render|Add13~6_combout\,
	combout => \render|Mux48~5_combout\);

-- Location: LCCOMB_X20_Y21_N8
\render|Mux48~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux48~7_combout\ = (\render|Mux48~6_combout\ & \render|Mux48~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \render|Mux48~6_combout\,
	datad => \render|Mux48~5_combout\,
	combout => \render|Mux48~7_combout\);

-- Location: LCCOMB_X20_Y21_N30
\render|Mux48~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux48~8_combout\ = (\render|Add15~5_combout\ & ((\render|Mux48~4_combout\ & ((\render|Add15~4_combout\) # (\render|Mux48~7_combout\))) # (!\render|Mux48~4_combout\ & (\render|Add15~4_combout\ & \render|Mux48~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux48~4_combout\,
	datab => \render|Add15~4_combout\,
	datac => \render|Mux48~7_combout\,
	datad => \render|Add15~5_combout\,
	combout => \render|Mux48~8_combout\);

-- Location: LCCOMB_X20_Y21_N6
\render|Mux58~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux58~4_combout\ = (!\render|Mux56~3_combout\ & ((\render|Mux48~8_combout\) # ((\render|Mux48~1_combout\ & \render|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux48~1_combout\,
	datab => \render|Mux56~3_combout\,
	datac => \render|Mux48~8_combout\,
	datad => \render|Add13~6_combout\,
	combout => \render|Mux58~4_combout\);

-- Location: LCCOMB_X21_Y20_N6
\render|is_base~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_base~4_combout\ = (!\u_VGA_sync|v_count\(9) & (!\u_VGA_sync|h_count\(9) & ((\u_VGA_sync|v_count\(6)) # (\u_VGA_sync|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(6),
	datab => \u_VGA_sync|v_count\(9),
	datac => \u_VGA_sync|v_count\(7),
	datad => \u_VGA_sync|h_count\(9),
	combout => \render|is_base~4_combout\);

-- Location: LCCOMB_X21_Y20_N16
\render|is_base~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_base~3_combout\ = (!\u_VGA_sync|h_count\(7) & (!\u_VGA_sync|h_count\(8) & ((\u_VGA_sync|h_count\(5)) # (\u_VGA_sync|h_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(7),
	datab => \u_VGA_sync|h_count\(5),
	datac => \u_VGA_sync|h_count\(6),
	datad => \u_VGA_sync|h_count\(8),
	combout => \render|is_base~3_combout\);

-- Location: LCCOMB_X17_Y20_N4
\render|is_base~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_base~0_combout\ = (\u_VGA_sync|v_count\(2) & (\u_VGA_sync|v_count\(5) & \u_VGA_sync|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(2),
	datac => \u_VGA_sync|v_count\(5),
	datad => \u_VGA_sync|v_count\(3),
	combout => \render|is_base~0_combout\);

-- Location: LCCOMB_X21_Y20_N26
\render|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan4~0_combout\ = (!\u_VGA_sync|h_count\(1) & (!\u_VGA_sync|h_count\(2) & !\u_VGA_sync|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(1),
	datac => \u_VGA_sync|h_count\(2),
	datad => \u_VGA_sync|h_count\(3),
	combout => \render|LessThan4~0_combout\);

-- Location: LCCOMB_X21_Y20_N24
\render|is_base~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_base~1_combout\ = (\u_VGA_sync|h_count\(4) & (((\render|LessThan4~0_combout\) # (!\u_VGA_sync|h_count\(5))) # (!\u_VGA_sync|h_count\(6)))) # (!\u_VGA_sync|h_count\(4) & (\u_VGA_sync|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|h_count\(4),
	datab => \u_VGA_sync|h_count\(6),
	datac => \render|LessThan4~0_combout\,
	datad => \u_VGA_sync|h_count\(5),
	combout => \render|is_base~1_combout\);

-- Location: LCCOMB_X21_Y20_N18
\render|is_base~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_base~2_combout\ = (\render|is_base~1_combout\ & ((\u_VGA_sync|v_count\(7)) # ((\render|is_base~0_combout\ & \u_VGA_sync|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(7),
	datab => \render|is_base~0_combout\,
	datac => \u_VGA_sync|v_count\(4),
	datad => \render|is_base~1_combout\,
	combout => \render|is_base~2_combout\);

-- Location: LCCOMB_X21_Y20_N12
\render|is_base~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_base~5_combout\ = (\render|is_base~4_combout\ & (\render|is_base~3_combout\ & (\u_VGA_sync|v_count\(8) & \render|is_base~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|is_base~4_combout\,
	datab => \render|is_base~3_combout\,
	datac => \u_VGA_sync|v_count\(8),
	datad => \render|is_base~2_combout\,
	combout => \render|is_base~5_combout\);

-- Location: LCCOMB_X19_Y20_N24
\render|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan7~0_combout\ = (((!\u_VGA_sync|v_count\(5)) # (!\u_VGA_sync|v_count\(2))) # (!\u_VGA_sync|v_count\(3))) # (!\u_VGA_sync|v_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|v_count\(4),
	datab => \u_VGA_sync|v_count\(3),
	datac => \u_VGA_sync|v_count\(2),
	datad => \u_VGA_sync|v_count\(5),
	combout => \render|LessThan7~0_combout\);

-- Location: LCCOMB_X20_Y20_N12
\render|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|LessThan7~1_combout\ = ((!\u_VGA_sync|v_count\(6) & \render|LessThan7~0_combout\)) # (!\u_VGA_sync|v_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_VGA_sync|v_count\(6),
	datac => \u_VGA_sync|v_count\(7),
	datad => \render|LessThan7~0_combout\,
	combout => \render|LessThan7~1_combout\);

-- Location: LCCOMB_X21_Y20_N2
\render|is_base~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|is_base~6_combout\ = (\render|is_base~5_combout\ & (\render|LessThan7~1_combout\ & ((\u_VGA_sync|h_count\(6)) # (!\render|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|is_base~5_combout\,
	datab => \u_VGA_sync|h_count\(6),
	datac => \render|LessThan4~0_combout\,
	datad => \render|LessThan7~1_combout\,
	combout => \render|is_base~6_combout\);

-- Location: LCCOMB_X21_Y17_N28
\render|VGA_R~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~4_combout\ = (\render|is_base~6_combout\ & !\render|is_barrel~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \render|is_base~6_combout\,
	datad => \render|is_barrel~17_combout\,
	combout => \render|VGA_R~4_combout\);

-- Location: LCCOMB_X21_Y17_N20
\render|VGA_B[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_B[0]~0_combout\ = (\render|VGA_R~4_combout\ & ((\render|Mux58~4_combout\))) # (!\render|VGA_R~4_combout\ & (\render|is_barrel~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|is_barrel~17_combout\,
	datab => \render|Mux58~4_combout\,
	datad => \render|VGA_R~4_combout\,
	combout => \render|VGA_B[0]~0_combout\);

-- Location: LCCOMB_X21_Y17_N24
\render|VGA_R~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~5_combout\ = (\render|VGA_R~14_combout\ & ((\render|VGA_B[0]~0_combout\) # ((\render|Mux26~8_combout\ & \render|VGA_R~13_combout\)))) # (!\render|VGA_R~14_combout\ & (\render|Mux26~8_combout\ & (\render|VGA_R~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|VGA_R~14_combout\,
	datab => \render|Mux26~8_combout\,
	datac => \render|VGA_R~13_combout\,
	datad => \render|VGA_B[0]~0_combout\,
	combout => \render|VGA_R~5_combout\);

-- Location: LCCOMB_X21_Y17_N26
\render|VGA_R[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R[0]~feeder_combout\ = \render|VGA_R~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \render|VGA_R~5_combout\,
	combout => \render|VGA_R[0]~feeder_combout\);

-- Location: FF_X21_Y17_N27
\render|VGA_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_R[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_R\(0));

-- Location: LCCOMB_X20_Y20_N30
\render|Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux33~0_combout\ = (\render|Add9~3_combout\ & (((!\render|Add9~4_combout\)) # (!\render|Add9~2_combout\))) # (!\render|Add9~3_combout\ & ((\render|Add9~2_combout\) # ((\render|Add9~0_combout\) # (\render|Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add9~3_combout\,
	datab => \render|Add9~2_combout\,
	datac => \render|Add9~0_combout\,
	datad => \render|Add9~4_combout\,
	combout => \render|Mux33~0_combout\);

-- Location: LCCOMB_X21_Y20_N4
\render|Mux35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux35~0_combout\ = (!\render|Add8~10_combout\ & (\render|Add8~8_combout\ $ (((\render|Add8~6_combout\ & \render|Add9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add8~8_combout\,
	datab => \render|Add8~10_combout\,
	datac => \render|Add8~6_combout\,
	datad => \render|Add9~1_combout\,
	combout => \render|Mux35~0_combout\);

-- Location: LCCOMB_X20_Y20_N24
\render|Mux35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux35~1_combout\ = (\render|Mux26~6_combout\ & ((\render|Add11~4_combout\ & (\render|Mux33~0_combout\)) # (!\render|Add11~4_combout\ & ((\render|Mux35~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux26~6_combout\,
	datab => \render|Add11~4_combout\,
	datac => \render|Mux33~0_combout\,
	datad => \render|Mux35~0_combout\,
	combout => \render|Mux35~1_combout\);

-- Location: LCCOMB_X20_Y20_N16
\render|Mux35~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux35~3_combout\ = (\render|Add9~3_combout\ & (((!\render|Add9~4_combout\) # (!\render|Add9~2_combout\)))) # (!\render|Add9~3_combout\ & ((\render|Add9~4_combout\) # ((!\render|Add11~4_combout\ & \render|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add9~3_combout\,
	datab => \render|Add11~4_combout\,
	datac => \render|Add9~2_combout\,
	datad => \render|Add9~4_combout\,
	combout => \render|Mux35~3_combout\);

-- Location: LCCOMB_X20_Y20_N8
\render|Mux35~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux35~4_combout\ = (\render|Add11~2_combout\ & (\render|Mux26~0_combout\ & \render|Mux35~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add11~2_combout\,
	datab => \render|Mux26~0_combout\,
	datad => \render|Mux35~3_combout\,
	combout => \render|Mux35~4_combout\);

-- Location: LCCOMB_X21_Y20_N10
\render|Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux30~0_combout\ = (\render|Add9~3_combout\ & (!\render|Add9~4_combout\ & (\render|Add9~0_combout\ & \render|Add9~2_combout\))) # (!\render|Add9~3_combout\ & (\render|Add9~4_combout\ & ((!\render|Add9~2_combout\) # (!\render|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add9~3_combout\,
	datab => \render|Add9~4_combout\,
	datac => \render|Add9~0_combout\,
	datad => \render|Add9~2_combout\,
	combout => \render|Mux30~0_combout\);

-- Location: LCCOMB_X20_Y20_N10
\render|Mux35~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux35~2_combout\ = (!\render|Add11~2_combout\ & (\render|Mux26~0_combout\ & (\render|Mux30~0_combout\ & !\render|Add11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Add11~2_combout\,
	datab => \render|Mux26~0_combout\,
	datac => \render|Mux30~0_combout\,
	datad => \render|Add11~4_combout\,
	combout => \render|Mux35~2_combout\);

-- Location: LCCOMB_X20_Y20_N6
\render|VGA_R~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~6_combout\ = (\render|VGA_R~13_combout\ & ((\render|Mux35~1_combout\) # ((\render|Mux35~4_combout\) # (\render|Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|VGA_R~13_combout\,
	datab => \render|Mux35~1_combout\,
	datac => \render|Mux35~4_combout\,
	datad => \render|Mux35~2_combout\,
	combout => \render|VGA_R~6_combout\);

-- Location: LCCOMB_X20_Y20_N22
\render|VGA_R~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~7_combout\ = (\render|Mux26~8_combout\ & \render|VGA_R~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \render|Mux26~8_combout\,
	datad => \render|VGA_R~6_combout\,
	combout => \render|VGA_R~7_combout\);

-- Location: FF_X20_Y20_N9
\render|VGA_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	asdata => \render|VGA_R~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_R\(1));

-- Location: LCCOMB_X20_Y20_N0
\render|Mux35~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux35~5_combout\ = (\render|Mux35~2_combout\) # ((\render|Mux35~4_combout\) # (\render|Mux35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux35~2_combout\,
	datac => \render|Mux35~4_combout\,
	datad => \render|Mux35~1_combout\,
	combout => \render|Mux35~5_combout\);

-- Location: LCCOMB_X20_Y21_N12
\render|Mux58~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux58~5_combout\ = \render|Mux56~3_combout\ $ (((\render|Mux48~8_combout\) # ((\render|Mux48~1_combout\ & \render|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux48~1_combout\,
	datab => \render|Mux56~3_combout\,
	datac => \render|Mux48~8_combout\,
	datad => \render|Add13~6_combout\,
	combout => \render|Mux58~5_combout\);

-- Location: LCCOMB_X21_Y17_N2
\render|VGA_R~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~8_combout\ = ((!\render|is_barrel~17_combout\ & ((!\render|is_base~6_combout\) # (!\render|Mux58~5_combout\)))) # (!\render|VGA_R~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|VGA_R~14_combout\,
	datab => \render|Mux58~5_combout\,
	datac => \render|is_base~6_combout\,
	datad => \render|is_barrel~17_combout\,
	combout => \render|VGA_R~8_combout\);

-- Location: LCCOMB_X21_Y17_N4
\render|VGA_R~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~9_combout\ = ((\render|VGA_R~13_combout\ & ((\render|Mux35~5_combout\) # (\render|Mux26~8_combout\)))) # (!\render|VGA_R~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux35~5_combout\,
	datab => \render|Mux26~8_combout\,
	datac => \render|VGA_R~13_combout\,
	datad => \render|VGA_R~8_combout\,
	combout => \render|VGA_R~9_combout\);

-- Location: FF_X21_Y17_N5
\render|VGA_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_R~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_R\(2));

-- Location: LCCOMB_X21_Y21_N20
\render|Mux48~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux48~2_combout\ = (\render|Add13~6_combout\ & \render|Mux48~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \render|Add13~6_combout\,
	datad => \render|Mux48~1_combout\,
	combout => \render|Mux48~2_combout\);

-- Location: LCCOMB_X17_Y17_N8
\u_VGA_sync|video_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_VGA_sync|video_on~1_combout\ = (!\u_VGA_sync|LessThan5~0_combout\ & \u_VGA_sync|video_on~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_VGA_sync|LessThan5~0_combout\,
	datad => \u_VGA_sync|video_on~0_combout\,
	combout => \u_VGA_sync|video_on~1_combout\);

-- Location: LCCOMB_X21_Y17_N16
\render|VGA_R~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~10_combout\ = (\u_VGA_sync|video_on~1_combout\ & (!\render|is_plane~9_combout\ & (\render|is_base~6_combout\ & !\render|is_barrel~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_VGA_sync|video_on~1_combout\,
	datab => \render|is_plane~9_combout\,
	datac => \render|is_base~6_combout\,
	datad => \render|is_barrel~17_combout\,
	combout => \render|VGA_R~10_combout\);

-- Location: LCCOMB_X21_Y17_N6
\render|VGA_R~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~11_combout\ = (!\render|Mux48~2_combout\ & (!\render|Mux48~8_combout\ & (\render|Mux56~3_combout\ & \render|VGA_R~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux48~2_combout\,
	datab => \render|Mux48~8_combout\,
	datac => \render|Mux56~3_combout\,
	datad => \render|VGA_R~10_combout\,
	combout => \render|VGA_R~11_combout\);

-- Location: LCCOMB_X21_Y17_N22
\render|VGA_R~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_R~12_combout\ = (\render|VGA_R~11_combout\) # ((\render|Mux35~5_combout\ & \render|VGA_R~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux35~5_combout\,
	datac => \render|VGA_R~13_combout\,
	datad => \render|VGA_R~11_combout\,
	combout => \render|VGA_R~12_combout\);

-- Location: FF_X21_Y17_N23
\render|VGA_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_R~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_R\(3));

-- Location: FF_X21_Y17_N25
\render|VGA_G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_R~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_G\(0));

-- Location: FF_X20_Y20_N23
\render|VGA_G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_R~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_G\(1));

-- Location: LCCOMB_X21_Y17_N18
\render|VGA_G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_G~0_combout\ = ((\render|VGA_R~13_combout\ & (\render|Mux35~5_combout\ $ (\render|Mux26~8_combout\)))) # (!\render|VGA_R~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux35~5_combout\,
	datab => \render|Mux26~8_combout\,
	datac => \render|VGA_R~13_combout\,
	datad => \render|VGA_R~8_combout\,
	combout => \render|VGA_G~0_combout\);

-- Location: LCCOMB_X21_Y17_N30
\render|VGA_G[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_G[2]~feeder_combout\ = \render|VGA_G~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \render|VGA_G~0_combout\,
	combout => \render|VGA_G[2]~feeder_combout\);

-- Location: FF_X21_Y17_N31
\render|VGA_G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_G[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_G\(2));

-- Location: LCCOMB_X21_Y17_N12
\render|VGA_G~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_G~1_combout\ = (\render|VGA_R~11_combout\) # ((!\render|Mux26~8_combout\ & \render|VGA_R~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \render|Mux26~8_combout\,
	datac => \render|VGA_R~6_combout\,
	datad => \render|VGA_R~11_combout\,
	combout => \render|VGA_G~1_combout\);

-- Location: LCCOMB_X21_Y17_N0
\render|VGA_G[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|VGA_G[3]~feeder_combout\ = \render|VGA_G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \render|VGA_G~1_combout\,
	combout => \render|VGA_G[3]~feeder_combout\);

-- Location: FF_X21_Y17_N1
\render|VGA_G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_G[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_G\(3));

-- Location: LCCOMB_X20_Y20_N18
\render|Mux36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \render|Mux36~2_combout\ = (!\render|Mux35~2_combout\ & (!\render|Mux35~1_combout\ & (!\render|Mux35~4_combout\ & \render|Mux26~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \render|Mux35~2_combout\,
	datab => \render|Mux35~1_combout\,
	datac => \render|Mux35~4_combout\,
	datad => \render|Mux26~8_combout\,
	combout => \render|Mux36~2_combout\);

-- Location: FF_X21_Y17_N21
\render|VGA_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_B[0]~0_combout\,
	asdata => \render|Mux36~2_combout\,
	sclr => \u_VGA_sync|ALT_INV_video_on~1_combout\,
	sload => \render|is_plane~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_B\(0));

-- Location: FF_X21_Y17_N19
\render|VGA_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_B\(2));

-- Location: FF_X21_Y17_N13
\render|VGA_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_60hz|twoHZ~clkctrl_outclk\,
	d => \render|VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \render|VGA_B\(3));

-- Location: IOIBUF_X0_Y21_N8
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDG(9) <= \LEDG[9]~output_o\;
END structure;


