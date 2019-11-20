-- Copyright (C) 1991-2011 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Web Edition"

-- DATE "01/18/2019 18:07:19"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reflexes IS
    PORT (
	TIMEAV : OUT std_logic;
	LED0 : OUT std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	\TIME\ : OUT std_logic_vector(15 DOWNTO 0);
	CK : IN std_logic;
	RST : IN std_logic;
	LNUMAV : IN std_logic;
	FIN : IN std_logic;
	KEY0 : IN std_logic;
	KEY1 : IN std_logic;
	KEY2 : IN std_logic;
	KEY3 : IN std_logic;
	LNUM : IN std_logic_vector(1 DOWNTO 0)
	);
END reflexes;

-- Design Ports Information
-- TIMEAV	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED0	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[0]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[1]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[2]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[3]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[5]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[6]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[7]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[8]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[9]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[10]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[11]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[12]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[13]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[14]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIME[15]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RST	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY1	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY2	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY3	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LNUM[0]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LNUM[1]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LNUMAV	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF reflexes IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TIMEAV : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL \ww_TIME\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_LNUMAV : std_logic;
SIGNAL ww_FIN : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_LNUM : std_logic_vector(1 DOWNTO 0);
SIGNAL \CK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\ : std_logic;
SIGNAL \KEY2~combout\ : std_logic;
SIGNAL \KEY3~combout\ : std_logic;
SIGNAL \CK~combout\ : std_logic;
SIGNAL \CK~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \FIN~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~21_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE.END_STATE~regout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~19_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE.RESET~regout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \LNUMAV~combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~22_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE.IDLE_1~regout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~20_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \b2v_inst|WideOr3~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~17_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~18_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE.IDLE_2~regout\ : std_logic;
SIGNAL \KEY0~combout\ : std_logic;
SIGNAL \b2v_inst|EN_FF_LNUM~combout\ : std_logic;
SIGNAL \b2v_inst1|MUX_KEY|O~0_combout\ : std_logic;
SIGNAL \KEY1~combout\ : std_logic;
SIGNAL \b2v_inst1|MUX_KEY|O~1_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~16_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~24_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst69|O~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst70|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst80|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst72|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst73|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst74|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst9|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst75|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst76|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst77|O~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst78|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst79|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst67|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst68|O~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \b2v_inst|EN_FF_BUTTON~combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~23_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE.LED_ON~regout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~14_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE~15_combout\ : std_logic;
SIGNAL \b2v_inst|PRESENT_STATE.END_BUTTON~regout\ : std_logic;
SIGNAL \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35_combout\ : std_logic;
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \LNUM~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst2|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst1|inst4|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst1|lpm_ff_component|dffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst11|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst12|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst13|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst14|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst5|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst6|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst7|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst8|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst9|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst10|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst3|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst4|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst1|inst|inst1|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst|ALT_INV_PRESENT_STATE.RESET~regout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_EN_FF_BUTTON~combout\ : std_logic;

BEGIN

TIMEAV <= ww_TIMEAV;
LED0 <= ww_LED0;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
\TIME\ <= \ww_TIME\;
ww_CK <= CK;
ww_RST <= RST;
ww_LNUMAV <= LNUMAV;
ww_FIN <= FIN;
ww_KEY0 <= KEY0;
ww_KEY1 <= KEY1;
ww_KEY2 <= KEY2;
ww_KEY3 <= KEY3;
ww_LNUM <= LNUM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CK~combout\);
\b2v_inst|ALT_INV_PRESENT_STATE.RESET~regout\ <= NOT \b2v_inst|PRESENT_STATE.RESET~regout\;
\b2v_inst|ALT_INV_EN_FF_BUTTON~combout\ <= NOT \b2v_inst|EN_FF_BUTTON~combout\;

-- Location: LCCOMB_X50_Y32_N16
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\ = ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~0_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~1_combout\ $ (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~0_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~1_combout\) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~0_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~1_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~1_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\);

-- Location: LCCOMB_X49_Y32_N4
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\ $ (\b2v_inst1|inst|inst76|O~0_combout\ 
-- $ (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\ & ((\b2v_inst1|inst|inst76|O~0_combout\) 
-- # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\ & 
-- (\b2v_inst1|inst|inst76|O~0_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\,
	datab => \b2v_inst1|inst|inst76|O~0_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X49_Y32_N6
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\b2v_inst1|inst|inst77|O~combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # (!\b2v_inst1|inst|inst77|O~combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\b2v_inst1|inst|inst77|O~combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\b2v_inst1|inst|inst77|O~combout\ & ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst77|O~combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X54_Y32_N0
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ = (\b2v_inst1|inst|inst74|O~0_combout\ & (\b2v_inst1|inst|inst78|O~0_combout\ $ (GND))) # (!\b2v_inst1|inst|inst74|O~0_combout\ & 
-- (!\b2v_inst1|inst|inst78|O~0_combout\ & VCC))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\ = CARRY((\b2v_inst1|inst|inst74|O~0_combout\ & !\b2v_inst1|inst|inst78|O~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst74|O~0_combout\,
	datab => \b2v_inst1|inst|inst78|O~0_combout\,
	datad => VCC,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\);

-- Location: LCCOMB_X54_Y32_N2
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~15_combout\ & ((\b2v_inst1|inst|inst79|O~0_combout\ & 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\ & VCC)) # (!\b2v_inst1|inst|inst79|O~0_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\)))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~15_combout\ & ((\b2v_inst1|inst|inst79|O~0_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!\b2v_inst1|inst|inst79|O~0_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (GND)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~15_combout\ & (!\b2v_inst1|inst|inst79|O~0_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~15_combout\ & 
-- ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (!\b2v_inst1|inst|inst79|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~15_combout\,
	datab => \b2v_inst1|inst|inst79|O~0_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\);

-- Location: LCCOMB_X54_Y32_N4
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ & ((\b2v_inst1|inst|inst76|O~0_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~17_combout\)))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ & (\b2v_inst1|inst|inst76|O~0_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~17_combout\ $ (VCC))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ & (\b2v_inst1|inst|inst76|O~0_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst76|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~17_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\);

-- Location: LCCOMB_X50_Y32_N26
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~18_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~18_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\) # (GND)))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~18_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\);

-- Location: LCCOMB_X54_Y32_N8
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ = ((\b2v_inst1|inst|inst78|O~0_combout\ $ (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~21_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\ = CARRY((\b2v_inst1|inst|inst78|O~0_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~21_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\)) # (!\b2v_inst1|inst|inst78|O~0_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~21_combout\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst78|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~21_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\);

-- Location: LCCOMB_X49_Y32_N16
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\ $ (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X54_Y32_N10
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~24_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\ 
-- & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\ & VCC)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\)))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~24_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\) # (GND)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~24_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~24_combout\ & 
-- ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~24_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\);

-- Location: LCCOMB_X54_Y32_N16
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ = ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~27_combout\ $ (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~27_combout\ & 
-- ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~27_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~27_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\);

-- Location: LCCOMB_X49_Y32_N26
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\) # (GND)))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\);

-- Location: LCCOMB_X54_Y32_N20
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ & (((\b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # 
-- (!\b2v_inst|PRESENT_STATE.RESET~regout\)))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ & ((((\b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ & ((\b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # 
-- (!\b2v_inst|PRESENT_STATE.RESET~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\);

-- Location: LCFF_X49_Y33_N11
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X49_Y33_N10
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5) & ((\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X47_Y35_N6
\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3) & 
-- (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0) & \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1),
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3),
	datac => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0),
	datad => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2),
	combout => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\);

-- Location: LCCOMB_X53_Y32_N28
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~0_combout\ = (\b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0) $ (((\b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0)) # (\b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0))))) # 
-- (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0),
	datab => \b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0),
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~0_combout\);

-- Location: LCCOMB_X53_Y32_N22
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~3_combout\ = (\b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0) $ (\b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0))) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~3_combout\);

-- Location: LCCOMB_X51_Y32_N16
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~6_combout\ = \b2v_inst1|inst|inst69|O~combout\ $ (((\b2v_inst1|inst|inst68|O~0_combout\) # (\b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0) $ 
-- (\b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0),
	datab => \b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\,
	datac => \b2v_inst1|inst|inst68|O~0_combout\,
	datad => \b2v_inst1|inst|inst69|O~combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~6_combout\);

-- Location: LCCOMB_X51_Y32_N26
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~7_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (\b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0) $ (\b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0) $ 
-- (\b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~7_combout\);

-- Location: LCCOMB_X53_Y32_N18
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~9_combout\ = \b2v_inst1|inst|inst73|O~0_combout\ $ (((!\b2v_inst1|inst|inst80|O~0_combout\ & ((\b2v_inst1|inst|inst72|O~0_combout\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst80|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\,
	datac => \b2v_inst1|inst|inst72|O~0_combout\,
	datad => \b2v_inst1|inst|inst73|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~9_combout\);

-- Location: LCCOMB_X53_Y32_N12
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~11_combout\ = (\b2v_inst1|inst|inst80|O~0_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ $ (((!\b2v_inst1|inst|inst73|O~0_combout\))))) # 
-- (!\b2v_inst1|inst|inst80|O~0_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & ((\b2v_inst1|inst|inst72|O~0_combout\) # (\b2v_inst1|inst|inst73|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst80|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\,
	datac => \b2v_inst1|inst|inst72|O~0_combout\,
	datad => \b2v_inst1|inst|inst73|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~11_combout\);

-- Location: LCCOMB_X53_Y32_N30
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~13_combout\ = (\b2v_inst1|inst|inst80|O~0_combout\ & (\b2v_inst1|inst|inst72|O~0_combout\ $ (((!\b2v_inst1|inst|inst73|O~0_combout\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\))))) # (!\b2v_inst1|inst|inst80|O~0_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & (!\b2v_inst1|inst|inst72|O~0_combout\ & 
-- \b2v_inst1|inst|inst73|O~0_combout\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & (\b2v_inst1|inst|inst72|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst80|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\,
	datac => \b2v_inst1|inst|inst72|O~0_combout\,
	datad => \b2v_inst1|inst|inst73|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~13_combout\);

-- Location: LCCOMB_X53_Y32_N8
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~15_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (\b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0) $ (\b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0),
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~15_combout\);

-- Location: LCCOMB_X53_Y32_N26
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~16_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & ((\b2v_inst1|inst|inst72|O~0_combout\ & ((\b2v_inst1|inst|inst80|O~0_combout\) # 
-- (\b2v_inst1|inst|inst73|O~0_combout\))) # (!\b2v_inst1|inst|inst72|O~0_combout\ & (\b2v_inst1|inst|inst80|O~0_combout\ & \b2v_inst1|inst|inst73|O~0_combout\)))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & 
-- (\b2v_inst1|inst|inst73|O~0_combout\ $ (((!\b2v_inst1|inst|inst80|O~0_combout\) # (!\b2v_inst1|inst|inst72|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst72|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\,
	datac => \b2v_inst1|inst|inst80|O~0_combout\,
	datad => \b2v_inst1|inst|inst73|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~16_combout\);

-- Location: LCCOMB_X54_Y32_N24
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~19_combout\ = \b2v_inst1|inst|inst77|O~combout\ $ (((!\b2v_inst1|inst|inst74|O~0_combout\ & ((\b2v_inst1|inst|inst76|O~0_combout\) # (\b2v_inst1|inst|inst75|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst76|O~0_combout\,
	datab => \b2v_inst1|inst|inst77|O~combout\,
	datac => \b2v_inst1|inst|inst74|O~0_combout\,
	datad => \b2v_inst1|inst|inst75|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~19_combout\);

-- Location: LCCOMB_X55_Y32_N0
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~24_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (\b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0) $ (\b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~24_combout\);

-- Location: LCCOMB_X54_Y32_N30
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~25_combout\ = (\b2v_inst1|inst|inst77|O~combout\ & ((\b2v_inst1|inst|inst76|O~0_combout\ & ((\b2v_inst1|inst|inst74|O~0_combout\) # (!\b2v_inst1|inst|inst75|O~0_combout\))) # 
-- (!\b2v_inst1|inst|inst76|O~0_combout\ & (\b2v_inst1|inst|inst74|O~0_combout\ & !\b2v_inst1|inst|inst75|O~0_combout\)))) # (!\b2v_inst1|inst|inst77|O~combout\ & (\b2v_inst1|inst|inst75|O~0_combout\ $ (((\b2v_inst1|inst|inst76|O~0_combout\ & 
-- \b2v_inst1|inst|inst74|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst76|O~0_combout\,
	datab => \b2v_inst1|inst|inst77|O~combout\,
	datac => \b2v_inst1|inst|inst74|O~0_combout\,
	datad => \b2v_inst1|inst|inst75|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~25_combout\);

-- Location: LCCOMB_X55_Y32_N4
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~26_combout\ = (\b2v_inst1|inst|inst76|O~0_combout\ & (((!\b2v_inst1|inst|inst77|O~combout\ & !\b2v_inst1|inst|inst74|O~0_combout\)) # (!\b2v_inst1|inst|inst75|O~0_combout\))) # 
-- (!\b2v_inst1|inst|inst76|O~0_combout\ & (\b2v_inst1|inst|inst77|O~combout\ & (\b2v_inst1|inst|inst75|O~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst76|O~0_combout\,
	datab => \b2v_inst1|inst|inst77|O~combout\,
	datac => \b2v_inst1|inst|inst75|O~0_combout\,
	datad => \b2v_inst1|inst|inst74|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~26_combout\);

-- Location: LCCOMB_X55_Y32_N26
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~27_combout\ = (\b2v_inst1|inst|inst76|O~0_combout\ & ((\b2v_inst1|inst|inst77|O~combout\ & (!\b2v_inst1|inst|inst75|O~0_combout\)) # (!\b2v_inst1|inst|inst77|O~combout\ & 
-- (\b2v_inst1|inst|inst75|O~0_combout\ & \b2v_inst1|inst|inst74|O~0_combout\)))) # (!\b2v_inst1|inst|inst76|O~0_combout\ & (\b2v_inst1|inst|inst77|O~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst76|O~0_combout\,
	datab => \b2v_inst1|inst|inst77|O~combout\,
	datac => \b2v_inst1|inst|inst75|O~0_combout\,
	datad => \b2v_inst1|inst|inst74|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~27_combout\);

-- Location: LCCOMB_X49_Y33_N30
\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0) & (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2) & 
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0),
	datac => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2),
	datad => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1),
	combout => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY2,
	combout => \KEY2~combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY3,
	combout => \KEY3~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CK,
	combout => \CK~combout\);

-- Location: CLKCTRL_G3
\CK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y34_N0
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0) $ (VCC)
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FIN,
	combout => \FIN~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: LCCOMB_X50_Y34_N18
\b2v_inst|PRESENT_STATE~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~21_combout\ = (!\RST~combout\ & ((\b2v_inst|PRESENT_STATE.END_BUTTON~regout\) # ((!\FIN~combout\ & \b2v_inst|PRESENT_STATE.END_STATE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIN~combout\,
	datab => \b2v_inst|PRESENT_STATE.END_BUTTON~regout\,
	datac => \b2v_inst|PRESENT_STATE.END_STATE~regout\,
	datad => \RST~combout\,
	combout => \b2v_inst|PRESENT_STATE~21_combout\);

-- Location: LCFF_X50_Y34_N19
\b2v_inst|PRESENT_STATE.END_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst|PRESENT_STATE~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|PRESENT_STATE.END_STATE~regout\);

-- Location: LCCOMB_X51_Y32_N24
\b2v_inst|PRESENT_STATE~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~19_combout\ = (!\RST~combout\ & ((!\b2v_inst|PRESENT_STATE.END_STATE~regout\) # (!\FIN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIN~combout\,
	datac => \b2v_inst|PRESENT_STATE.END_STATE~regout\,
	datad => \RST~combout\,
	combout => \b2v_inst|PRESENT_STATE~19_combout\);

-- Location: LCFF_X51_Y32_N25
\b2v_inst|PRESENT_STATE.RESET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst|PRESENT_STATE~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|PRESENT_STATE.RESET~regout\);

-- Location: LCCOMB_X48_Y32_N0
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\ = \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (VCC)
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\ = CARRY(\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X48_Y34_N28
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30_combout\ = (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30_combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LNUMAV~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LNUMAV,
	combout => \LNUMAV~combout\);

-- Location: LCCOMB_X50_Y34_N4
\b2v_inst|PRESENT_STATE~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~22_combout\ = (!\RST~combout\ & (((\b2v_inst|PRESENT_STATE.IDLE_1~regout\ & !\LNUMAV~combout\)) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \b2v_inst|PRESENT_STATE.IDLE_1~regout\,
	datad => \LNUMAV~combout\,
	combout => \b2v_inst|PRESENT_STATE~22_combout\);

-- Location: LCFF_X50_Y34_N5
\b2v_inst|PRESENT_STATE.IDLE_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst|PRESENT_STATE~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|PRESENT_STATE.IDLE_1~regout\);

-- Location: LCCOMB_X50_Y34_N2
\b2v_inst|PRESENT_STATE~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~20_combout\ = (!\RST~combout\ & (\b2v_inst|PRESENT_STATE.IDLE_1~regout\ & \LNUMAV~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datac => \b2v_inst|PRESENT_STATE.IDLE_1~regout\,
	datad => \LNUMAV~combout\,
	combout => \b2v_inst|PRESENT_STATE~20_combout\);

-- Location: LCFF_X50_Y34_N3
\b2v_inst|PRESENT_STATE.LOAD_LED_TIME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst|PRESENT_STATE~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\);

-- Location: LCCOMB_X48_Y34_N24
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\ = (\b2v_inst|PRESENT_STATE.LED_ON~regout\) # ((\b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\) # (!\b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\);

-- Location: LCCOMB_X49_Y33_N0
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0) $ (VCC)
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X51_Y33_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X50_Y34_N30
\b2v_inst|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|WideOr3~combout\ = ((\b2v_inst|PRESENT_STATE.LED_ON~regout\) # (\b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\)) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\,
	combout => \b2v_inst|WideOr3~combout\);

-- Location: LCCOMB_X50_Y34_N20
\b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\ = (\b2v_inst|WideOr3~combout\) # ((!\b2v_inst|PRESENT_STATE.END_STATE~regout\ & (!\b2v_inst|PRESENT_STATE.IDLE_1~regout\ & !\b2v_inst|PRESENT_STATE.END_BUTTON~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|WideOr3~combout\,
	datab => \b2v_inst|PRESENT_STATE.END_STATE~regout\,
	datac => \b2v_inst|PRESENT_STATE.IDLE_1~regout\,
	datad => \b2v_inst|PRESENT_STATE.END_BUTTON~regout\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\);

-- Location: LCFF_X49_Y33_N1
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X49_Y33_N2
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1) & ((\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X49_Y33_N3
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X49_Y33_N4
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2) & (\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2) & !\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X49_Y33_N5
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X49_Y33_N6
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3) & ((\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X49_Y33_N8
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4) & (\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4) & !\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X49_Y33_N9
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X49_Y33_N12
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6) & (\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6) & !\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X49_Y33_N14
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7) & ((\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X49_Y33_N15
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X49_Y33_N16
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8) & (\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8) & !\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X49_Y33_N18
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9) & ((\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X49_Y33_N19
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X49_Y33_N20
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10) & (\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10) & !\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X49_Y33_N22
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11) & ((\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X49_Y33_N23
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X49_Y33_N24
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12) & (\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12) & !\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X49_Y33_N26
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13) & ((\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	cout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X49_Y33_N27
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X49_Y33_N28
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ = \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ $ (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14),
	cin => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14~combout\);

-- Location: LCFF_X49_Y33_N29
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14));

-- Location: LCFF_X49_Y33_N25
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X49_Y34_N24
\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13) & (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14) & 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12) & !\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13),
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14),
	datac => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12),
	datad => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11),
	combout => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\);

-- Location: LCFF_X49_Y33_N17
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8));

-- Location: LCFF_X49_Y33_N21
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X49_Y31_N24
\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\ = (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9) & (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8) & 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10) & \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9),
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8),
	datac => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10),
	datad => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7),
	combout => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\);

-- Location: LCFF_X49_Y33_N13
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6));

-- Location: LCFF_X49_Y33_N7
\b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \b2v_inst|WideOr3~combout\,
	ena => \b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X50_Y33_N0
\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\ = (\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5) & (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6) & 
-- (!\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3) & !\b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5),
	datab => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6),
	datac => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3),
	datad => \b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4),
	combout => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\);

-- Location: LCCOMB_X50_Y34_N8
\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\ = (\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\ & (\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\ & 
-- (\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\ & \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\,
	datab => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\,
	datac => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\,
	datad => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\,
	combout => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\);

-- Location: LCCOMB_X50_Y34_N16
\b2v_inst|PRESENT_STATE~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~17_combout\ = (\b2v_inst|PRESENT_STATE.LED_ON~regout\) # ((\b2v_inst|PRESENT_STATE~16_combout\ & (!\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\ & \b2v_inst|PRESENT_STATE.IDLE_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE~16_combout\,
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\,
	datad => \b2v_inst|PRESENT_STATE.IDLE_2~regout\,
	combout => \b2v_inst|PRESENT_STATE~17_combout\);

-- Location: LCCOMB_X50_Y34_N12
\b2v_inst|PRESENT_STATE~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~18_combout\ = (!\RST~combout\ & ((\b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\) # ((\b2v_inst|PRESENT_STATE~17_combout\) # (\b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\,
	datac => \b2v_inst|PRESENT_STATE~17_combout\,
	datad => \b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\,
	combout => \b2v_inst|PRESENT_STATE~18_combout\);

-- Location: LCFF_X50_Y34_N13
\b2v_inst|PRESENT_STATE.IDLE_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst|PRESENT_STATE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|PRESENT_STATE.IDLE_2~regout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY0,
	combout => \KEY0~combout\);

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LNUM[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LNUM(0),
	combout => \LNUM~combout\(0));

-- Location: LCCOMB_X51_Y34_N8
\b2v_inst|EN_FF_LNUM\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|EN_FF_LNUM~combout\ = (\b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\,
	combout => \b2v_inst|EN_FF_LNUM~combout\);

-- Location: LCFF_X51_Y34_N17
\b2v_inst1|inst1|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \LNUM~combout\(0),
	sclr => \b2v_inst|ALT_INV_PRESENT_STATE.RESET~regout\,
	sload => VCC,
	ena => \b2v_inst|EN_FF_LNUM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|lpm_ff_component|dffs\(0));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LNUM[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LNUM(1),
	combout => \LNUM~combout\(1));

-- Location: LCFF_X51_Y34_N11
\b2v_inst1|inst1|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \LNUM~combout\(1),
	sclr => \b2v_inst|ALT_INV_PRESENT_STATE.RESET~regout\,
	sload => VCC,
	ena => \b2v_inst|EN_FF_LNUM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X51_Y34_N16
\b2v_inst1|MUX_KEY|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|MUX_KEY|O~0_combout\ = (\b2v_inst1|inst1|lpm_ff_component|dffs\(0) & (((\b2v_inst1|inst1|lpm_ff_component|dffs\(1))))) # (!\b2v_inst1|inst1|lpm_ff_component|dffs\(0) & ((\b2v_inst1|inst1|lpm_ff_component|dffs\(1) & (!\KEY2~combout\)) # 
-- (!\b2v_inst1|inst1|lpm_ff_component|dffs\(1) & ((!\KEY0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2~combout\,
	datab => \KEY0~combout\,
	datac => \b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	combout => \b2v_inst1|MUX_KEY|O~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY1,
	combout => \KEY1~combout\);

-- Location: LCCOMB_X50_Y34_N6
\b2v_inst1|MUX_KEY|O~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|MUX_KEY|O~1_combout\ = (\b2v_inst1|MUX_KEY|O~0_combout\ & (((!\b2v_inst1|inst1|lpm_ff_component|dffs\(0))) # (!\KEY3~combout\))) # (!\b2v_inst1|MUX_KEY|O~0_combout\ & (((!\KEY1~combout\ & \b2v_inst1|inst1|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3~combout\,
	datab => \b2v_inst1|MUX_KEY|O~0_combout\,
	datac => \KEY1~combout\,
	datad => \b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|MUX_KEY|O~1_combout\);

-- Location: LCCOMB_X50_Y34_N14
\b2v_inst|PRESENT_STATE~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~16_combout\ = (!\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\ & ((!\b2v_inst1|MUX_KEY|O~1_combout\) # (!\b2v_inst1|inst4|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\,
	datac => \b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|MUX_KEY|O~1_combout\,
	combout => \b2v_inst|PRESENT_STATE~16_combout\);

-- Location: LCCOMB_X50_Y34_N26
\b2v_inst|PRESENT_STATE~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~24_combout\ = (!\RST~combout\ & (\b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\ & (\b2v_inst|PRESENT_STATE.IDLE_2~regout\ & \b2v_inst|PRESENT_STATE~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\,
	datac => \b2v_inst|PRESENT_STATE.IDLE_2~regout\,
	datad => \b2v_inst|PRESENT_STATE~16_combout\,
	combout => \b2v_inst|PRESENT_STATE~24_combout\);

-- Location: LCFF_X50_Y34_N27
\b2v_inst|PRESENT_STATE.END_CNT_1ms\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst|PRESENT_STATE~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\);

-- Location: LCCOMB_X48_Y34_N2
\b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\ = ((\b2v_inst|PRESENT_STATE.LED_ON~regout\) # ((\b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\) # (\b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\))) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\,
	datad => \b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\);

-- Location: LCFF_X47_Y34_N1
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X47_Y34_N2
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1) & ((\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X48_Y32_N2
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\ & VCC)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- !\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X48_Y34_N22
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31_combout\ = (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31_combout\);

-- Location: LCFF_X47_Y34_N3
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X47_Y34_N4
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2) & !\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X51_Y32_N1
\b2v_inst1|inst|inst2|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst1|inst|inst68|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X51_Y32_N10
\b2v_inst1|inst|inst69|O\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst69|O~combout\ = (\b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0)) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst69|O~combout\);

-- Location: LCFF_X51_Y32_N5
\b2v_inst1|inst|inst3|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst1|inst|inst69|O~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X51_Y32_N2
\b2v_inst1|inst|inst70|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst70|O~0_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst70|O~0_combout\);

-- Location: LCFF_X51_Y32_N3
\b2v_inst1|inst|inst4|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst70|O~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X51_Y32_N6
\b2v_inst1|inst|inst80|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst80|O~0_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst80|O~0_combout\);

-- Location: LCFF_X53_Y32_N25
\b2v_inst1|inst|inst5|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst1|inst|inst80|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X53_Y32_N14
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ = (!\b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0) & \b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\);

-- Location: LCCOMB_X53_Y32_N2
\b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0_combout\ = !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\,
	combout => \b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0_combout\);

-- Location: LCFF_X53_Y32_N3
\b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X53_Y32_N20
\b2v_inst1|inst|inst72|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst72|O~0_combout\ = (\b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0) & \b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst72|O~0_combout\);

-- Location: LCFF_X53_Y32_N17
\b2v_inst1|inst|inst7|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst1|inst|inst72|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X53_Y32_N10
\b2v_inst1|inst|inst73|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst73|O~0_combout\ = (\b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0) & \b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst73|O~0_combout\);

-- Location: LCFF_X53_Y32_N1
\b2v_inst1|inst|inst8|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst1|inst|inst73|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X53_Y32_N0
\b2v_inst1|inst|inst74|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst74|O~0_combout\ = (\b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0) & \b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst74|O~0_combout\);

-- Location: LCCOMB_X55_Y32_N24
\b2v_inst1|inst|inst9|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst9|lpm_ff_component|dffs[0]~feeder_combout\ = \b2v_inst1|inst|inst74|O~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|inst|inst74|O~0_combout\,
	combout => \b2v_inst1|inst|inst9|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X55_Y32_N25
\b2v_inst1|inst|inst9|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst9|lpm_ff_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X55_Y32_N2
\b2v_inst1|inst|inst75|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst75|O~0_combout\ = (\b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0) & \b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst75|O~0_combout\);

-- Location: LCFF_X51_Y32_N29
\b2v_inst1|inst|inst10|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst1|inst|inst75|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X51_Y32_N28
\b2v_inst1|inst|inst76|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst76|O~0_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst76|O~0_combout\);

-- Location: LCFF_X55_Y32_N21
\b2v_inst1|inst|inst11|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst1|inst|inst76|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X55_Y32_N30
\b2v_inst1|inst|inst77|O\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst77|O~combout\ = (\b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0)) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst77|O~combout\);

-- Location: LCFF_X55_Y32_N17
\b2v_inst1|inst|inst12|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst1|inst|inst77|O~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X55_Y32_N10
\b2v_inst1|inst|inst78|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst78|O~0_combout\ = (!\b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0) & \b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst78|O~0_combout\);

-- Location: LCCOMB_X55_Y32_N28
\b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0_combout\ = !\b2v_inst1|inst|inst78|O~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|inst|inst78|O~0_combout\,
	combout => \b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0_combout\);

-- Location: LCFF_X55_Y32_N29
\b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X55_Y32_N14
\b2v_inst1|inst|inst79|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst79|O~0_combout\ = (\b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst79|O~0_combout\);

-- Location: LCFF_X50_Y32_N1
\b2v_inst1|inst|inst14|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst1|inst|inst79|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X51_Y32_N30
\b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\ = (\b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0) $ (\b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0) $ (\b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0)))) # 
-- (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0),
	datab => \b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0),
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\);

-- Location: LCCOMB_X50_Y32_N0
\b2v_inst1|inst|inst67|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst67|O~0_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (\b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0) $ (!\b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\,
	combout => \b2v_inst1|inst|inst67|O~0_combout\);

-- Location: LCCOMB_X51_Y32_N22
\b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0_combout\ = !\b2v_inst1|inst|inst67|O~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|inst|inst67|O~0_combout\,
	combout => \b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0_combout\);

-- Location: LCFF_X51_Y32_N23
\b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X51_Y32_N4
\b2v_inst1|inst|inst68|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst68|O~0_combout\ = (\b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0)) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst68|O~0_combout\);

-- Location: LCCOMB_X51_Y32_N14
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~12_combout\ = (\b2v_inst1|inst|inst69|O~combout\ & ((\b2v_inst1|inst|inst68|O~0_combout\ & (!\b2v_inst1|inst|inst70|O~0_combout\ & !\b2v_inst1|inst|inst67|O~0_combout\)) # 
-- (!\b2v_inst1|inst|inst68|O~0_combout\ & (\b2v_inst1|inst|inst70|O~0_combout\)))) # (!\b2v_inst1|inst|inst69|O~combout\ & (((\b2v_inst1|inst|inst70|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst69|O~combout\,
	datab => \b2v_inst1|inst|inst68|O~0_combout\,
	datac => \b2v_inst1|inst|inst70|O~0_combout\,
	datad => \b2v_inst1|inst|inst67|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~12_combout\);

-- Location: LCCOMB_X51_Y32_N12
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\ = (\b2v_inst1|inst|inst69|O~combout\ & (((!\b2v_inst1|inst|inst70|O~0_combout\ & \b2v_inst1|inst|inst67|O~0_combout\)) # (!\b2v_inst1|inst|inst68|O~0_combout\))) # 
-- (!\b2v_inst1|inst|inst69|O~combout\ & (\b2v_inst1|inst|inst68|O~0_combout\ & (\b2v_inst1|inst|inst70|O~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst69|O~combout\,
	datab => \b2v_inst1|inst|inst68|O~0_combout\,
	datac => \b2v_inst1|inst|inst70|O~0_combout\,
	datad => \b2v_inst1|inst|inst67|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\);

-- Location: LCCOMB_X51_Y32_N8
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~1_combout\ = (\b2v_inst1|inst|inst68|O~0_combout\ & (\b2v_inst1|inst|inst70|O~0_combout\ $ (((\b2v_inst1|inst|inst67|O~0_combout\) # (!\b2v_inst1|inst|inst69|O~combout\))))) # 
-- (!\b2v_inst1|inst|inst68|O~0_combout\ & ((\b2v_inst1|inst|inst69|O~combout\ & ((\b2v_inst1|inst|inst70|O~0_combout\) # (!\b2v_inst1|inst|inst67|O~0_combout\))) # (!\b2v_inst1|inst|inst69|O~combout\ & (\b2v_inst1|inst|inst70|O~0_combout\ & 
-- !\b2v_inst1|inst|inst67|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst69|O~combout\,
	datab => \b2v_inst1|inst|inst68|O~0_combout\,
	datac => \b2v_inst1|inst|inst70|O~0_combout\,
	datad => \b2v_inst1|inst|inst67|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~1_combout\);

-- Location: LCCOMB_X51_Y32_N18
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\ = (\b2v_inst1|inst|inst69|O~combout\ & ((\b2v_inst1|inst|inst68|O~0_combout\ & ((\b2v_inst1|inst|inst67|O~0_combout\))) # (!\b2v_inst1|inst|inst68|O~0_combout\ & 
-- (\b2v_inst1|inst|inst70|O~0_combout\ & !\b2v_inst1|inst|inst67|O~0_combout\)))) # (!\b2v_inst1|inst|inst69|O~combout\ & (\b2v_inst1|inst|inst67|O~0_combout\ $ (((\b2v_inst1|inst|inst68|O~0_combout\) # (!\b2v_inst1|inst|inst70|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst69|O~combout\,
	datab => \b2v_inst1|inst|inst68|O~0_combout\,
	datac => \b2v_inst1|inst|inst70|O~0_combout\,
	datad => \b2v_inst1|inst|inst67|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\);

-- Location: LCCOMB_X51_Y32_N20
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~4_combout\ = (\b2v_inst1|inst|inst70|O~0_combout\ & (((!\b2v_inst1|inst|inst68|O~0_combout\)))) # (!\b2v_inst1|inst|inst70|O~0_combout\ & ((\b2v_inst1|inst|inst68|O~0_combout\ & 
-- ((!\b2v_inst1|inst|inst67|O~0_combout\))) # (!\b2v_inst1|inst|inst68|O~0_combout\ & (\b2v_inst1|inst|inst69|O~combout\ & \b2v_inst1|inst|inst67|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst69|O~combout\,
	datab => \b2v_inst1|inst|inst70|O~0_combout\,
	datac => \b2v_inst1|inst|inst68|O~0_combout\,
	datad => \b2v_inst1|inst|inst67|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~4_combout\);

-- Location: LCCOMB_X50_Y32_N2
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~5_combout\ = \b2v_inst1|inst|inst70|O~0_combout\ $ (((\b2v_inst1|inst|inst67|O~0_combout\ & ((\b2v_inst1|inst|inst68|O~0_combout\) # (\b2v_inst1|inst|inst69|O~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst68|O~0_combout\,
	datab => \b2v_inst1|inst|inst69|O~combout\,
	datac => \b2v_inst1|inst|inst67|O~0_combout\,
	datad => \b2v_inst1|inst|inst70|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~5_combout\);

-- Location: LCCOMB_X50_Y32_N4
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\ = CARRY((\b2v_inst1|inst|inst80|O~0_combout\ & !\b2v_inst1|inst|inst67|O~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst80|O~0_combout\,
	datab => \b2v_inst1|inst|inst67|O~0_combout\,
	datad => VCC,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\);

-- Location: LCCOMB_X50_Y32_N6
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~7_combout\ & 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~7_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~7_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\);

-- Location: LCCOMB_X50_Y32_N8
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~6_combout\ & ((\b2v_inst1|inst|inst72|O~0_combout\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~6_combout\ & (\b2v_inst1|inst|inst72|O~0_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~6_combout\,
	datab => \b2v_inst1|inst|inst72|O~0_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\);

-- Location: LCCOMB_X50_Y32_N10
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\ = CARRY((\b2v_inst1|inst|inst73|O~0_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~5_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\)) # (!\b2v_inst1|inst|inst73|O~0_combout\ & ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst73|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~5_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\);

-- Location: LCCOMB_X50_Y32_N12
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\ = ((\b2v_inst1|inst|inst80|O~0_combout\ $ (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~4_combout\ $ 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\ = CARRY((\b2v_inst1|inst|inst80|O~0_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~4_combout\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\))) # (!\b2v_inst1|inst|inst80|O~0_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~4_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst80|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~4_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\);

-- Location: LCCOMB_X50_Y32_N14
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~3_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\ & VCC)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\)))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~3_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\)) 
-- # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\) # (GND)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~3_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~3_combout\ & 
-- ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~3_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~2_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\);

-- Location: LCCOMB_X50_Y32_N18
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~9_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\ & VCC)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\)))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~9_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\) # (GND)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~9_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~9_combout\ & ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~9_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~10_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\);

-- Location: LCCOMB_X50_Y32_N20
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\ = ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~11_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~12_combout\ $ (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~11_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~12_combout\) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~11_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~12_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~11_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~12_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\);

-- Location: LCCOMB_X49_Y32_N0
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\b2v_inst1|inst|inst74|O~0_combout\ & 
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst74|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\,
	datad => VCC,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X49_Y32_N2
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\b2v_inst1|inst|inst75|O~0_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\)) # (!\b2v_inst1|inst|inst75|O~0_combout\ 
-- & ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst75|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X49_Y32_N8
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\ $ (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X48_Y32_N4
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((GND) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\ $ (GND)))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X48_Y34_N16
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32_combout\ = (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32_combout\);

-- Location: LCFF_X47_Y34_N5
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X47_Y34_N6
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3) & ((\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X47_Y34_N8
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4) & !\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X51_Y32_N0
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (\b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0) & (\b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0) & 
-- \b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\);

-- Location: LCCOMB_X50_Y32_N22
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~13_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\ & VCC)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\)))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~13_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\) # (GND)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~13_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~13_combout\ & ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~13_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~14_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\);

-- Location: LCCOMB_X50_Y32_N24
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~16_combout\ & 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\ $ (GND))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~16_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\ & VCC))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~16_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~16_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\);

-- Location: LCCOMB_X49_Y32_N10
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X49_Y32_N12
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\ $ (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X48_Y32_N6
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\ & VCC)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X48_Y32_N8
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & ((GND) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\ $ (GND)))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\);

-- Location: LCCOMB_X48_Y34_N20
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34_combout\ = (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34_combout\);

-- Location: LCFF_X47_Y34_N9
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X47_Y34_N10
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5) & ((\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X47_Y34_N12
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6) & !\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X47_Y34_N14
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7) & ((\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X53_Y32_N24
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~22_combout\ = (\b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0) & (\b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0) & (\b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0) & 
-- \b2v_inst|PRESENT_STATE.RESET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0),
	datab => \b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~22_combout\);

-- Location: LCCOMB_X53_Y32_N6
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~20_combout\ = (\b2v_inst1|inst|inst72|O~0_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & ((\b2v_inst1|inst|inst73|O~0_combout\))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & (\b2v_inst1|inst|inst80|O~0_combout\ & !\b2v_inst1|inst|inst73|O~0_combout\)))) # (!\b2v_inst1|inst|inst72|O~0_combout\ & (((\b2v_inst1|inst|inst73|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst72|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\,
	datac => \b2v_inst1|inst|inst80|O~0_combout\,
	datad => \b2v_inst1|inst|inst73|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~20_combout\);

-- Location: LCCOMB_X53_Y32_N4
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~18_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & (((\b2v_inst1|inst|inst72|O~0_combout\)))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\ & ((\b2v_inst1|inst|inst72|O~0_combout\ & (!\b2v_inst1|inst|inst80|O~0_combout\ & !\b2v_inst1|inst|inst73|O~0_combout\)) # (!\b2v_inst1|inst|inst72|O~0_combout\ & 
-- ((\b2v_inst1|inst|inst73|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst80|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~8_combout\,
	datac => \b2v_inst1|inst|inst72|O~0_combout\,
	datad => \b2v_inst1|inst|inst73|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~18_combout\);

-- Location: LCCOMB_X50_Y32_N28
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~20_combout\ & 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\ $ (GND))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~20_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\ & VCC))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~20_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~20_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\);

-- Location: LCCOMB_X50_Y32_N30
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ = \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~22_combout\,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\);

-- Location: LCCOMB_X53_Y32_N16
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~17_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & ((\b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0)) # (\b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~17_combout\);

-- Location: LCCOMB_X54_Y32_N6
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~19_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~19_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\) # (GND)))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~19_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\);

-- Location: LCCOMB_X49_Y32_N14
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ & ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X49_Y32_N18
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ & VCC)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)))) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ & !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X48_Y32_N10
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & 
-- ((\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\) # (GND)))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\ = CARRY((!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\);

-- Location: LCCOMB_X48_Y32_N12
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & ((GND) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\ $ (GND)))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\);

-- Location: LCCOMB_X48_Y32_N14
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\ & VCC)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\);

-- Location: LCCOMB_X48_Y34_N26
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37_combout\);

-- Location: LCFF_X47_Y34_N15
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X47_Y34_N16
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8) & !\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X47_Y34_N18
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9) & ((\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X55_Y32_N22
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ = (\b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0)) # ((!\b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # (!\b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\);

-- Location: LCCOMB_X55_Y32_N18
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\ = ((\b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0)) # (\b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0))) # (!\b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\);

-- Location: LCCOMB_X54_Y32_N28
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\ = (\b2v_inst1|inst|inst76|O~0_combout\ & ((\b2v_inst1|inst|inst74|O~0_combout\ & (\b2v_inst1|inst|inst77|O~combout\ & !\b2v_inst1|inst|inst75|O~0_combout\)) # 
-- (!\b2v_inst1|inst|inst74|O~0_combout\ & ((\b2v_inst1|inst|inst75|O~0_combout\))))) # (!\b2v_inst1|inst|inst76|O~0_combout\ & (\b2v_inst1|inst|inst74|O~0_combout\ $ (((\b2v_inst1|inst|inst77|O~combout\ & !\b2v_inst1|inst|inst75|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst76|O~0_combout\,
	datab => \b2v_inst1|inst|inst77|O~combout\,
	datac => \b2v_inst1|inst|inst74|O~0_combout\,
	datad => \b2v_inst1|inst|inst75|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~23_combout\);

-- Location: LCCOMB_X54_Y32_N26
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~21_combout\ = (\b2v_inst1|inst|inst77|O~combout\ & (((!\b2v_inst1|inst|inst75|O~0_combout\)))) # (!\b2v_inst1|inst|inst77|O~combout\ & ((\b2v_inst1|inst|inst74|O~0_combout\ & 
-- ((\b2v_inst1|inst|inst75|O~0_combout\))) # (!\b2v_inst1|inst|inst74|O~0_combout\ & (\b2v_inst1|inst|inst76|O~0_combout\ & !\b2v_inst1|inst|inst75|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst76|O~0_combout\,
	datab => \b2v_inst1|inst|inst77|O~combout\,
	datac => \b2v_inst1|inst|inst74|O~0_combout\,
	datad => \b2v_inst1|inst|inst75|O~0_combout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~21_combout\);

-- Location: LCCOMB_X54_Y32_N12
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ = ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~25_combout\ $ (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\ $ 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\)))) # (GND)
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~25_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~25_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~25_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\);

-- Location: LCCOMB_X54_Y32_N14
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~26_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\ & 
-- VCC)))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~26_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\) # 
-- (GND))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~26_combout\ & (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~26_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~26_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\);

-- Location: LCCOMB_X49_Y32_N20
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ $ (GND))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ & VCC))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X49_Y32_N22
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X48_Y32_N16
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & ((GND) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\ $ (GND)))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\);

-- Location: LCCOMB_X48_Y32_N18
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & 
-- ((\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\) # (GND)))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\ = CARRY((!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\);

-- Location: LCCOMB_X48_Y34_N6
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39_combout\);

-- Location: LCFF_X47_Y34_N19
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X47_Y34_N20
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10) & !\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X47_Y34_N22
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11) & ((\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X49_Y32_N24
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ $ (GND))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ & VCC))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\);

-- Location: LCCOMB_X48_Y32_N20
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\ $ (GND))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\ & VCC))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & 
-- !\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\);

-- Location: LCCOMB_X48_Y32_N22
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ & 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ & 
-- ((\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\) # (GND)))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\ = CARRY((!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\);

-- Location: LCCOMB_X48_Y34_N10
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41_combout\ = (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41_combout\);

-- Location: LCFF_X47_Y34_N23
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X47_Y34_N24
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12) & !\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X47_Y34_N26
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13) & ((\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCCOMB_X55_Y32_N12
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\ = (\b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0) & (\b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0) & (\b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0) & 
-- \b2v_inst|PRESENT_STATE.RESET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0),
	datab => \b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0),
	datad => \b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\);

-- Location: LCCOMB_X55_Y32_N8
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & ((!\b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # (!\b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\);

-- Location: LCCOMB_X54_Y32_N18
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ = (\b2v_inst1|inst|inst78|O~0_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\ & 
-- ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\) # (GND))))) # (!\b2v_inst1|inst|inst78|O~0_combout\ & ((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\ & 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\ & VCC)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\))))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ = CARRY((\b2v_inst1|inst|inst78|O~0_combout\ & ((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\) # 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\))) # (!\b2v_inst1|inst|inst78|O~0_combout\ & (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst78|O~0_combout\,
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~28_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\);

-- Location: LCCOMB_X54_Y32_N22
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\ = \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X49_Y32_N28
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ & 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ $ (GND))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ & 
-- (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ & VCC))
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ & 
-- !\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\,
	cout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\);

-- Location: LCCOMB_X49_Y32_N30
\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ = \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\ $ 
-- (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\,
	cin => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\,
	combout => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\);

-- Location: LCCOMB_X48_Y32_N24
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ & ((GND) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\))) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\ $ (GND)))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\ = CARRY((\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\) # 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\);

-- Location: LCCOMB_X48_Y32_N26
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\ = (\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ & 
-- (\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\ & VCC)) # (!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ & 
-- (!\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\))
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\ = CARRY((!\b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ & 
-- !\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\,
	cout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\);

-- Location: LCCOMB_X48_Y34_N14
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43_combout\);

-- Location: LCFF_X47_Y34_N27
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X47_Y34_N28
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14) & (!\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14) & !\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~combout\,
	cout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X48_Y32_N28
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\ = !\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\);

-- Location: LCCOMB_X48_Y32_N30
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44_combout\ = (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44_combout\);

-- Location: LCFF_X47_Y34_N29
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X47_Y34_N30
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15~combout\ = \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\ $ (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15),
	cin => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15~combout\);

-- Location: LCCOMB_X50_Y34_N28
\b2v_inst|EN_FF_BUTTON\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|EN_FF_BUTTON~combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & !\b2v_inst|PRESENT_STATE.LED_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	combout => \b2v_inst|EN_FF_BUTTON~combout\);

-- Location: LCFF_X47_Y34_N31
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \b2v_inst|EN_FF_BUTTON~combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X48_Y34_N12
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42_combout\ = (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42_combout\);

-- Location: LCFF_X47_Y34_N25
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X47_Y35_N0
\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14) & 
-- (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15) & \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13),
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14),
	datac => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15),
	datad => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12),
	combout => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\);

-- Location: LCCOMB_X48_Y34_N0
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36_combout\);

-- Location: LCFF_X47_Y34_N13
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X47_Y35_N20
\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6) & 
-- (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7) & \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5),
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6),
	datac => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7),
	datad => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4),
	combout => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\);

-- Location: LCCOMB_X48_Y34_N8
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40_combout\);

-- Location: LCFF_X47_Y34_N21
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X47_Y35_N2
\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\ = (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8) & (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9) & 
-- (\b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10) & \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8),
	datab => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9),
	datac => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10),
	datad => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11),
	combout => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\);

-- Location: LCCOMB_X47_Y35_N16
\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\ = (\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\ & (\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\ & 
-- (\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\ & \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\,
	datab => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\,
	datac => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\,
	datad => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\,
	combout => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\);

-- Location: LCCOMB_X50_Y34_N0
\b2v_inst|PRESENT_STATE~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~23_combout\ = (!\RST~combout\ & (!\b2v_inst1|inst4|lpm_ff_component|dffs\(0) & (\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\ & \b2v_inst|PRESENT_STATE.IDLE_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\,
	datad => \b2v_inst|PRESENT_STATE.IDLE_2~regout\,
	combout => \b2v_inst|PRESENT_STATE~23_combout\);

-- Location: LCFF_X50_Y34_N1
\b2v_inst|PRESENT_STATE.LED_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst|PRESENT_STATE~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|PRESENT_STATE.LED_ON~regout\);

-- Location: LCFF_X50_Y34_N15
\b2v_inst1|inst4|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	sload => VCC,
	ena => \b2v_inst|ALT_INV_EN_FF_BUTTON~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst4|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X50_Y34_N10
\b2v_inst|PRESENT_STATE~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~14_combout\ = (!\RST~combout\ & \b2v_inst|PRESENT_STATE.IDLE_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datad => \b2v_inst|PRESENT_STATE.IDLE_2~regout\,
	combout => \b2v_inst|PRESENT_STATE~14_combout\);

-- Location: LCCOMB_X50_Y34_N22
\b2v_inst|PRESENT_STATE~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|PRESENT_STATE~15_combout\ = (\b2v_inst1|inst4|lpm_ff_component|dffs\(0) & (\b2v_inst|PRESENT_STATE~14_combout\ & ((\b2v_inst1|MUX_KEY|O~1_combout\) # (\b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MUX_KEY|O~1_combout\,
	datab => \b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\,
	datad => \b2v_inst|PRESENT_STATE~14_combout\,
	combout => \b2v_inst|PRESENT_STATE~15_combout\);

-- Location: LCFF_X50_Y34_N23
\b2v_inst|PRESENT_STATE.END_BUTTON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst|PRESENT_STATE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|PRESENT_STATE.END_BUTTON~regout\);

-- Location: LCCOMB_X51_Y34_N10
\b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0_combout\ = (!\b2v_inst1|inst1|lpm_ff_component|dffs\(0) & (!\b2v_inst1|inst1|lpm_ff_component|dffs\(1) & \b2v_inst1|inst4|lpm_ff_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	datad => \b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0_combout\);

-- Location: LCCOMB_X50_Y34_N24
\b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0_combout\ = (!\b2v_inst1|inst1|lpm_ff_component|dffs\(1) & (\b2v_inst1|inst4|lpm_ff_component|dffs\(0) & \b2v_inst1|inst1|lpm_ff_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	datac => \b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	combout => \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0_combout\);

-- Location: LCCOMB_X51_Y34_N28
\b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0_combout\ = (\b2v_inst1|inst4|lpm_ff_component|dffs\(0) & (!\b2v_inst1|inst1|lpm_ff_component|dffs\(0) & \b2v_inst1|inst1|lpm_ff_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	combout => \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0_combout\);

-- Location: LCCOMB_X51_Y34_N22
\b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0_combout\ = (\b2v_inst1|inst4|lpm_ff_component|dffs\(0) & (\b2v_inst1|inst1|lpm_ff_component|dffs\(0) & \b2v_inst1|inst1|lpm_ff_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datac => \b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	datad => \b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	combout => \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0_combout\);

-- Location: LCCOMB_X48_Y34_N18
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33_combout\ = (\b2v_inst|PRESENT_STATE.RESET~regout\ & (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33_combout\);

-- Location: LCFF_X47_Y34_N7
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X48_Y34_N30
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35_combout\ = (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35_combout\);

-- Location: LCFF_X47_Y34_N11
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X48_Y34_N4
\b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38_combout\ = (!\b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\b2v_inst|PRESENT_STATE.RESET~regout\ & \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\,
	combout => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38_combout\);

-- Location: LCFF_X47_Y34_N17
\b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38_combout\,
	sload => \b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIMEAV~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|PRESENT_STATE.END_BUTTON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TIMEAV);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED0);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(0));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(1));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(2));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(3));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(4));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(5));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(6));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(7));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(8));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(9));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(10));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(11));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(12));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(13));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(14));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TIME[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_TIME\(15));
END structure;


