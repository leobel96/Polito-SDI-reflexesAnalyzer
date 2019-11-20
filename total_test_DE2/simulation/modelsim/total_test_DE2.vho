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

-- DATE "02/13/2019 13:30:15"

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

ENTITY 	total_test_DE2 IS
    PORT (
	UART_TXD : OUT std_logic;
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	UART_RXD : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END total_test_DE2;

-- Design Ports Information
-- UART_TXD	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF total_test_DE2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|CK_div2_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE.IDLE_1~regout\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.WAIT_CHAR~regout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.DONE_STATE~regout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst11|CK_div2_int~regout\ : std_logic;
SIGNAL \inst13|inst1|inst3|TC_216~1_combout\ : std_logic;
SIGNAL \inst13|inst1|inst2|END_TX~0_combout\ : std_logic;
SIGNAL \inst13|inst1|inst2|END_TX~1_combout\ : std_logic;
SIGNAL \inst13|inst1|inst2|END_TX~2_combout\ : std_logic;
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|_~1_combout\ : std_logic;
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|_~2_combout\ : std_logic;
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|_~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\ : std_logic;
SIGNAL \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ : std_logic;
SIGNAL \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ : std_logic;
SIGNAL \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~1_combout\ : std_logic;
SIGNAL \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[7]~2_combout\ : std_logic;
SIGNAL \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[5]~3_combout\ : std_logic;
SIGNAL \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[3]~4_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.SHIFT_DOUT~regout\ : std_logic;
SIGNAL \inst|b2v_inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.DECIDE_STATE~regout\ : std_logic;
SIGNAL \inst2|inst1|inst3|match~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~5_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~6_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~8_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~9_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~10_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~11_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~14_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~17_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~18_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~21_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~23_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE~17_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\ : std_logic;
SIGNAL \inst2|inst|DONE~combout\ : std_logic;
SIGNAL \inst12|inst6|NEXT_STATE.SHIFT_DOUT~0_combout\ : std_logic;
SIGNAL \inst2|inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE~15_combout\ : std_logic;
SIGNAL \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[5]~3_combout\ : std_logic;
SIGNAL \inst12|inst6|WideOr10~1_combout\ : std_logic;
SIGNAL \inst2|inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[1]~6_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \inst11|CK_div2_int~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \UART_RXD~combout\ : std_logic;
SIGNAL \inst11|CK_div2_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[12]~feeder_combout\ : std_logic;
SIGNAL \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[10]~feeder_combout\ : std_logic;
SIGNAL \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst9|inst|CurrentState.ResetState~feeder_combout\ : std_logic;
SIGNAL \SW[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|inst|CurrentState.ResetState~regout\ : std_logic;
SIGNAL \inst13|inst|SCLEAR_CNT_216~combout\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst13|inst1|inst3|TC_216~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst13|inst|PRESENT_STATE.START_TX~regout\ : std_logic;
SIGNAL \inst13|inst|NEXT_STATE.NEXT_TX~0_combout\ : std_logic;
SIGNAL \inst13|inst|PRESENT_STATE.NEXT_TX~regout\ : std_logic;
SIGNAL \inst9|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst9|inst|CurrentState.SendT~regout\ : std_logic;
SIGNAL \inst9|inst|CurrentState.SendA~regout\ : std_logic;
SIGNAL \inst9|inst|CurrentState.SendB~regout\ : std_logic;
SIGNAL \inst9|inst|CurrentState.SendC~regout\ : std_logic;
SIGNAL \inst9|inst|CurrentState.SendD~feeder_combout\ : std_logic;
SIGNAL \inst9|inst|CurrentState.SendD~regout\ : std_logic;
SIGNAL \inst9|inst|NextState.DoneState~0_combout\ : std_logic;
SIGNAL \inst9|inst|CurrentState.DoneState~regout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE~14_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE.RESET~regout\ : std_logic;
SIGNAL \inst|b2v_inst|WideOr3~combout\ : std_logic;
SIGNAL \inst|b2v_inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE.END_STATE~regout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE~20_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\ : std_logic;
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst12|inst|inst4|TC_26~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst4|TC_26~combout\ : std_logic;
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst12|inst|inst5|TC_8~0_combout\ : std_logic;
SIGNAL \inst12|inst6|NEXT_STATE.RESET~2_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.RESET~regout\ : std_logic;
SIGNAL \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[4]~4_combout\ : std_logic;
SIGNAL \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[7]~5_combout\ : std_logic;
SIGNAL \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[6]~2_combout\ : std_logic;
SIGNAL \inst12|inst|inst1|VOTER_OUT~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[3]~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst1|VOTER_OUT~1_combout\ : std_logic;
SIGNAL \inst12|inst|inst1|VOTER_OUT~2_combout\ : std_logic;
SIGNAL \inst12|inst6|Selector5~1_combout\ : std_logic;
SIGNAL \inst12|inst6|Selector5~0_combout\ : std_logic;
SIGNAL \inst12|inst6|Selector5~2_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ : std_logic;
SIGNAL \inst12|inst6|SCLEAR_ALL~combout\ : std_logic;
SIGNAL \inst12|inst6|SCLEAR_ALL~_wirecell_combout\ : std_logic;
SIGNAL \inst12|inst6|Selector4~0_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.IDLE_3~regout\ : std_logic;
SIGNAL \inst12|inst6|NEXT_STATE.SHIFT_IN_3~0_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\ : std_logic;
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst12|inst|inst6|TC_12~0_combout\ : std_logic;
SIGNAL \inst12|inst6|Selector2~0_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.IDLE_2~regout\ : std_logic;
SIGNAL \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[2]~1_combout\ : std_logic;
SIGNAL \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[0]~7_combout\ : std_logic;
SIGNAL \inst12|inst|inst|START_BIT_CHECK~1_combout\ : std_logic;
SIGNAL \inst12|inst|inst|START_BIT_CHECK~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst|START_BIT_CHECK~combout\ : std_logic;
SIGNAL \inst12|inst6|Selector1~0_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.SHIFT_IN_1~regout\ : std_logic;
SIGNAL \inst12|inst6|WideOr10~0_combout\ : std_logic;
SIGNAL \inst12|inst6|Selector0~0_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.IDLE_1~regout\ : std_logic;
SIGNAL \inst12|inst6|Selector3~0_combout\ : std_logic;
SIGNAL \inst12|inst6|Selector3~1_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.SHIFT_IN_2~regout\ : std_logic;
SIGNAL \inst12|inst6|WideOr10~combout\ : std_logic;
SIGNAL \inst12|inst6|NEXT_STATE.SHIFT_IN_4~0_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.RESET~0_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.RESET~regout\ : std_logic;
SIGNAL \inst2|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \inst12|inst6|Selector6~2_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\ : std_logic;
SIGNAL \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[7]~5_combout\ : std_logic;
SIGNAL \inst12|inst6|NEXT_STATE.END_STATE_SHIFT_IN~0_combout\ : std_logic;
SIGNAL \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ : std_logic;
SIGNAL \inst12|inst6|WideOr11~combout\ : std_logic;
SIGNAL \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[6]~6_combout\ : std_logic;
SIGNAL \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[5]~3_combout\ : std_logic;
SIGNAL \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[4]~4_combout\ : std_logic;
SIGNAL \inst12|inst6|DAV~combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE~11_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\ : std_logic;
SIGNAL \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[3]~7_combout\ : std_logic;
SIGNAL \inst2|inst1|inst2|match~1_combout\ : std_logic;
SIGNAL \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[2]~2_combout\ : std_logic;
SIGNAL \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[1]~1_combout\ : std_logic;
SIGNAL \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst1|inst2|match~0_combout\ : std_logic;
SIGNAL \inst2|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE~16_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.TOGGLE_FF~regout\ : std_logic;
SIGNAL \inst2|inst|en_ff_L~combout\ : std_logic;
SIGNAL \inst2|inst1|inst3|match~0_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE~12_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE~13_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.TOGGLE_FF_AV~regout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE~14_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\ : std_logic;
SIGNAL \inst2|inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|inst|PRESENT_STATE.WAIT_CHAR_AV~regout\ : std_logic;
SIGNAL \inst|b2v_inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE~15_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\ : std_logic;
SIGNAL \inst|b2v_inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst73|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst74|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst75|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst76|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst77|O~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst78|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst79|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst70|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst67|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst68|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst69|O~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst80|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~20_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~24_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~25_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~26_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~27_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst71|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst72|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~13_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~16_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~12_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~7_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~3_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE~19_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ : std_logic;
SIGNAL \inst|b2v_inst|EN_FF_BUTTON~combout\ : std_logic;
SIGNAL \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst|b2v_inst|EN_FF_LNUM~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|MUX_KEY|O~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|MUX_KEY|O~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE~16_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE~18_combout\ : std_logic;
SIGNAL \inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\ : std_logic;
SIGNAL \inst9|inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst9|inst|CurrentState.WaitForData~regout\ : std_logic;
SIGNAL \inst13|inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst13|inst|PRESENT_STATE.IDLE~regout\ : std_logic;
SIGNAL \inst13|inst|NEXT_STATE.LOAD~0_combout\ : std_logic;
SIGNAL \inst13|inst|PRESENT_STATE.LOAD~regout\ : std_logic;
SIGNAL \inst9|inst|WideOr6~0_combout\ : std_logic;
SIGNAL \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[11]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|NEXT_STATE.LOAD~1_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|_~4_combout\ : std_logic;
SIGNAL \inst13|inst|EN_TX_REG~0_combout\ : std_logic;
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|_~5_combout\ : std_logic;
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|_~6_combout\ : std_logic;
SIGNAL \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[1]~5_combout\ : std_logic;
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|_~7_combout\ : std_logic;
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|_~0_combout\ : std_logic;
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \inst13|inst1|inst5~combout\ : std_logic;
SIGNAL \inst2|inst1|inst4|cmd~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0_combout\ : std_logic;
SIGNAL \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0_combout\ : std_logic;
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|inst1|LPM_SHIFTREG_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst2|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst4|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst1|lpm_ff_component|dffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|inst|InSel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst14|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst7|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst8|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst10|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst3|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|inst|ALT_INV_CurrentState.ResetState~regout\ : std_logic;
SIGNAL \inst|b2v_inst|ALT_INV_PRESENT_STATE.RESET~regout\ : std_logic;
SIGNAL \inst|b2v_inst|ALT_INV_EN_FF_BUTTON~combout\ : std_logic;

BEGIN

UART_TXD <= ww_UART_TXD;
LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_UART_RXD <= UART_RXD;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst11|CK_div2_int~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst11|CK_div2_int~regout\);

\SW[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SW~combout\(0));
\inst9|inst|ALT_INV_CurrentState.ResetState~regout\ <= NOT \inst9|inst|CurrentState.ResetState~regout\;
\inst|b2v_inst|ALT_INV_PRESENT_STATE.RESET~regout\ <= NOT \inst|b2v_inst|PRESENT_STATE.RESET~regout\;
\inst|b2v_inst|ALT_INV_EN_FF_BUTTON~combout\ <= NOT \inst|b2v_inst|EN_FF_BUTTON~combout\;

-- Location: LCFF_X43_Y24_N21
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst13|inst|SCLEAR_CNT_216~combout\,
	ena => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCFF_X43_Y24_N11
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst13|inst|SCLEAR_CNT_216~combout\,
	ena => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCFF_X43_Y24_N7
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst13|inst|SCLEAR_CNT_216~combout\,
	ena => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCFF_X43_Y24_N13
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst13|inst|SCLEAR_CNT_216~combout\,
	ena => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X41_Y24_N19
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~1_combout\,
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCFF_X41_Y24_N13
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~2_combout\,
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCFF_X41_Y24_N7
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~3_combout\,
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X43_Y24_N6
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X43_Y24_N10
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X43_Y24_N12
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X43_Y24_N18
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X43_Y24_N20
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(7) $ (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(7),
	cin => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\);

-- Location: LCFF_X41_Y24_N25
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\(6),
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCFF_X41_Y24_N21
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\(2),
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCFF_X48_Y24_N11
\inst|b2v_inst|PRESENT_STATE.IDLE_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst|Selector0~1_combout\,
	sclr => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst|PRESENT_STATE.IDLE_1~regout\);

-- Location: LCFF_X44_Y25_N21
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10));

-- Location: LCFF_X44_Y25_N17
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X42_Y25_N16
\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ = (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ $ (VCC))) # 
-- (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & VCC))
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\ = CARRY((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	cout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X42_Y25_N20
\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ = ((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ $ (\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ $ 
-- (!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))) # (GND)
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\ = CARRY((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ & ((\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\) # 
-- (!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\))) # (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ & (\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & 
-- !\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\,
	datab => \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\,
	combout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	cout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X42_Y25_N22
\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ = (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ & (!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # 
-- (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ & ((\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # (GND)))
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\ = CARRY((!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	datad => VCC,
	cin => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\,
	combout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	cout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X42_Y25_N24
\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ = \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\ $ (GND)
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\ = CARRY(!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\,
	combout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	cout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\);

-- Location: LCCOMB_X42_Y25_N26
\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ = (\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & ((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ & 
-- ((\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\) # (GND))) # (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ & (!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\)))) # 
-- (!\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & (((!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\))))
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\ = CARRY(((\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\)) # 
-- (!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	datab => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	datad => VCC,
	cin => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\,
	combout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	cout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\);

-- Location: LCCOMB_X42_Y25_N28
\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ = (\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\ & (\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & 
-- (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ & VCC))) # (!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\ & ((((\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & 
-- \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\)))))
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\ = CARRY((\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ & 
-- !\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	datab => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	datad => VCC,
	cin => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\,
	combout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	cout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\);

-- Location: LCCOMB_X42_Y25_N30
\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ = \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\,
	combout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\);

-- Location: LCFF_X48_Y24_N25
\inst2|inst|PRESENT_STATE.WAIT_CHAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst|Selector0~0_combout\,
	sclr => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst|PRESENT_STATE.WAIT_CHAR~regout\);

-- Location: LCCOMB_X44_Y25_N16
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8) & !\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X44_Y25_N20
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10) & 
-- !\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X47_Y26_N4
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~9_combout\ & ((\inst|b2v_inst1|inst|inst79|O~0_combout\ & 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\ & VCC)) # (!\inst|b2v_inst1|inst|inst79|O~0_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\)))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~9_combout\ & ((\inst|b2v_inst1|inst|inst79|O~0_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # 
-- (!\inst|b2v_inst1|inst|inst79|O~0_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (GND)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~9_combout\ & (!\inst|b2v_inst1|inst|inst79|O~0_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~9_combout\ & 
-- ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (!\inst|b2v_inst1|inst|inst79|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~9_combout\,
	datab => \inst|b2v_inst1|inst|inst79|O~0_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\);

-- Location: LCCOMB_X47_Y26_N6
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~8_combout\ $ (\inst|b2v_inst1|inst|inst76|O~0_combout\)))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ & 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~8_combout\ $ (\inst|b2v_inst1|inst|inst76|O~0_combout\ $ (VCC))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\ & 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~8_combout\ $ (\inst|b2v_inst1|inst|inst76|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~8_combout\,
	datab => \inst|b2v_inst1|inst|inst76|O~0_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~3\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\);

-- Location: LCCOMB_X47_Y26_N8
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~7_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~7_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\) # (GND)))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~7_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~5\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\);

-- Location: LCCOMB_X47_Y26_N10
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ = ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~6_combout\ $ (\inst|b2v_inst1|inst|inst78|O~0_combout\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~6_combout\ & 
-- ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\) # (!\inst|b2v_inst1|inst|inst78|O~0_combout\))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~6_combout\ & 
-- (!\inst|b2v_inst1|inst|inst78|O~0_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~6_combout\,
	datab => \inst|b2v_inst1|inst|inst78|O~0_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~7\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\);

-- Location: LCCOMB_X47_Y26_N16
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~2_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ & 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\ & VCC)))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~2_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\) # (GND))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~2_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ 
-- & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~2_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~2_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\);

-- Location: LCCOMB_X47_Y26_N20
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~0_combout\ & ((\inst|b2v_inst1|inst|inst78|O~0_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\)) # (!\inst|b2v_inst1|inst|inst78|O~0_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\ & VCC)))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~0_combout\ & ((\inst|b2v_inst1|inst|inst78|O~0_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\) # (GND))) # 
-- (!\inst|b2v_inst1|inst|inst78|O~0_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~0_combout\ & (\inst|b2v_inst1|inst|inst78|O~0_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~0_combout\ & ((\inst|b2v_inst1|inst|inst78|O~0_combout\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~0_combout\,
	datab => \inst|b2v_inst1|inst|inst78|O~0_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\);

-- Location: LCCOMB_X48_Y25_N16
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\ = ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~17_combout\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~16_combout\ $ (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~17_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~16_combout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~17_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~16_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~17_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~16_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\);

-- Location: LCCOMB_X48_Y25_N24
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~11_combout\ & 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\ $ (GND))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~11_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\ & VCC))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~11_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~11_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\);

-- Location: LCCOMB_X48_Y25_N26
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ = \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~10_combout\,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~25\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\);

-- Location: LCCOMB_X47_Y25_N4
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\inst|b2v_inst1|inst|inst76|O~0_combout\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\ $ (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\inst|b2v_inst1|inst|inst76|O~0_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\))) # 
-- (!\inst|b2v_inst1|inst|inst76|O~0_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst76|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X47_Y25_N6
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\inst|b2v_inst1|inst|inst77|O~combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\inst|b2v_inst1|inst|inst77|O~combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\inst|b2v_inst1|inst|inst77|O~combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst|b2v_inst1|inst|inst77|O~combout\ & ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst77|O~combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X47_Y25_N16
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\ $ (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[16]~24_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X47_Y25_N26
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\) # (GND)))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\);

-- Location: LCCOMB_X46_Y25_N18
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & ((GND) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\ $ (GND)))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\);

-- Location: LCCOMB_X46_Y25_N22
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\ $ (GND))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\ & VCC))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & 
-- !\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\);

-- Location: LCFF_X45_Y24_N29
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14));

-- Location: LCFF_X45_Y24_N7
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3));

-- Location: LCFF_X45_Y23_N7
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \inst12|inst6|SCLEAR_ALL~_wirecell_combout\,
	sload => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCFF_X46_Y23_N17
\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst6|SCLEAR_ALL~combout\,
	ena => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCFF_X47_Y24_N17
\inst2|inst|PRESENT_STATE.DONE_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst|Selector1~1_combout\,
	sclr => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst|PRESENT_STATE.DONE_STATE~regout\);

-- Location: LCFF_X44_Y23_N25
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X45_Y24_N6
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3) & ((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X45_Y24_N26
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13) & ((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCCOMB_X45_Y24_N28
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ = \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ $ (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14),
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita14~combout\);

-- Location: LCCOMB_X45_Y23_N6
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X46_Y23_N16
\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X44_Y23_N22
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X44_Y23_N24
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(4) $ (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(4),
	cin => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\);

-- Location: LCFF_X1_Y18_N13
\inst11|CK_div2_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \inst11|CK_div2_int~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|CK_div2_int~regout\);

-- Location: LCCOMB_X43_Y24_N26
\inst13|inst1|inst3|TC_216~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst3|TC_216~1_combout\ = (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst13|inst1|inst3|TC_216~1_combout\);

-- Location: LCFF_X40_Y24_N17
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	sload => VCC,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCCOMB_X40_Y24_N16
\inst13|inst1|inst2|END_TX~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst2|END_TX~0_combout\ = ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(7)) # ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(9)) # (\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(8)))) # 
-- (!\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(0),
	datab => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(7),
	datac => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(9),
	datad => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(8),
	combout => \inst13|inst1|inst2|END_TX~0_combout\);

-- Location: LCCOMB_X41_Y24_N4
\inst13|inst1|inst2|END_TX~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst2|END_TX~1_combout\ = (\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(4)) # ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(3)) # ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(5)) # 
-- (\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(4),
	datab => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(3),
	datac => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(5),
	datad => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst13|inst1|inst2|END_TX~1_combout\);

-- Location: LCCOMB_X41_Y24_N14
\inst13|inst1|inst2|END_TX~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst2|END_TX~2_combout\ = (\inst13|inst1|inst2|END_TX~0_combout\) # ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(2)) # ((\inst13|inst1|inst2|END_TX~1_combout\) # (\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst2|END_TX~0_combout\,
	datab => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(2),
	datac => \inst13|inst1|inst2|END_TX~1_combout\,
	datad => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst13|inst1|inst2|END_TX~2_combout\);

-- Location: LCFF_X41_Y25_N17
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCFF_X42_Y25_N9
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X41_Y24_N18
\inst13|inst1|inst1|LPM_SHIFTREG_component|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst1|LPM_SHIFTREG_component|_~1_combout\ = (\inst13|inst|PRESENT_STATE.LOAD~regout\ & (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(7))) # (!\inst13|inst|PRESENT_STATE.LOAD~regout\ & 
-- ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(7),
	datab => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(9),
	datac => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	combout => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~1_combout\);

-- Location: LCCOMB_X41_Y24_N12
\inst13|inst1|inst1|LPM_SHIFTREG_component|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst1|LPM_SHIFTREG_component|_~2_combout\ = (\inst13|inst|PRESENT_STATE.LOAD~regout\ & (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(6))) # (!\inst13|inst|PRESENT_STATE.LOAD~regout\ & 
-- ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(6),
	datab => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(8),
	datac => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	combout => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~2_combout\);

-- Location: LCFF_X42_Y25_N3
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X41_Y24_N6
\inst13|inst1|inst1|LPM_SHIFTREG_component|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst1|LPM_SHIFTREG_component|_~3_combout\ = (\inst13|inst|PRESENT_STATE.LOAD~regout\ & ((\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(5)))) # (!\inst13|inst|PRESENT_STATE.LOAD~regout\ & 
-- (\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(7),
	datac => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	datad => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(5),
	combout => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~3_combout\);

-- Location: LCFF_X41_Y25_N11
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X43_Y25_N10
\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10) & 
-- (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8) & \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9),
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10),
	datac => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8),
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11),
	combout => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\);

-- Location: LCFF_X43_Y25_N27
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCFF_X43_Y25_N21
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(8),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCFF_X43_Y25_N31
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[12]~feeder_combout\,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(12));

-- Location: LCCOMB_X43_Y25_N20
\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (\inst9|inst|WideOr6~0_combout\ & (\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(12) & ((!\inst9|inst|InSel\(1))))) # (!\inst9|inst|WideOr6~0_combout\ & 
-- (((\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(8)) # (\inst9|inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|WideOr6~0_combout\,
	datab => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(12),
	datac => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(8),
	datad => \inst9|inst|InSel\(1),
	combout => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCFF_X43_Y25_N9
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X43_Y25_N26
\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(0)) # ((!\inst9|inst|InSel\(1))))) # 
-- (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (((\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(4) & \inst9|inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(0),
	datac => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst9|inst|InSel\(1),
	combout => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X43_Y25_N13
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCFF_X42_Y25_N13
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCFF_X42_Y25_N15
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[10]~feeder_combout\,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(10));

-- Location: LCFF_X42_Y25_N1
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(14));

-- Location: LCCOMB_X42_Y25_N0
\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ = (\inst9|inst|InSel\(1) & (!\inst9|inst|WideOr6~0_combout\)) # (!\inst9|inst|InSel\(1) & ((\inst9|inst|WideOr6~0_combout\ & 
-- (\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(14))) # (!\inst9|inst|WideOr6~0_combout\ & ((\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|InSel\(1),
	datab => \inst9|inst|WideOr6~0_combout\,
	datac => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(14),
	datad => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(10),
	combout => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~6_combout\);

-- Location: LCFF_X42_Y25_N11
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X42_Y25_N10
\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ = (\inst9|inst|InSel\(1) & ((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ & (\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(2))) # 
-- (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ & ((\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(6)))))) # (!\inst9|inst|InSel\(1) & (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|InSel\(1),
	datab => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~6_combout\,
	datac => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(2),
	datad => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\);

-- Location: LCCOMB_X41_Y25_N16
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~1_combout\ = (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\ & \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	datac => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	combout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~1_combout\);

-- Location: LCCOMB_X42_Y25_N6
\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ = (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\) # (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\,
	datad => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	combout => \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X42_Y25_N8
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[7]~2_combout\ = (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\ & \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	datad => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	combout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[7]~2_combout\);

-- Location: LCCOMB_X41_Y24_N24
\inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\(6) = (\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\) # ((!\inst9|inst|CurrentState.SendC~regout\ & (!\inst9|inst|CurrentState.SendA~regout\ & 
-- \inst9|inst|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.SendC~regout\,
	datab => \inst9|inst|CurrentState.SendA~regout\,
	datac => \inst9|inst|WideOr6~0_combout\,
	datad => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	combout => \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\(6));

-- Location: LCCOMB_X42_Y25_N2
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[5]~3_combout\ = (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\ & \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	datad => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	combout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[5]~3_combout\);

-- Location: LCCOMB_X41_Y25_N10
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[3]~4_combout\ = (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\ & \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	datad => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	combout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[3]~4_combout\);

-- Location: LCCOMB_X41_Y24_N20
\inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\(2) = (\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\) # ((!\inst9|inst|CurrentState.SendC~regout\ & (!\inst9|inst|CurrentState.SendA~regout\ & 
-- \inst9|inst|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.SendC~regout\,
	datab => \inst9|inst|CurrentState.SendA~regout\,
	datac => \inst9|inst|WideOr6~0_combout\,
	datad => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	combout => \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\(2));

-- Location: LCFF_X47_Y23_N7
\inst12|inst6|PRESENT_STATE.SHIFT_DOUT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|NEXT_STATE.SHIFT_DOUT~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.SHIFT_DOUT~regout\);

-- Location: LCCOMB_X48_Y24_N10
\inst|b2v_inst|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|Selector0~1_combout\ = ((\inst|b2v_inst|PRESENT_STATE.IDLE_1~regout\ & \inst|b2v_inst|Selector0~0_combout\)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \inst|b2v_inst|PRESENT_STATE.IDLE_1~regout\,
	datad => \inst|b2v_inst|Selector0~0_combout\,
	combout => \inst|b2v_inst|Selector0~1_combout\);

-- Location: LCFF_X47_Y24_N7
\inst2|inst|PRESENT_STATE.DECIDE_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst|PRESENT_STATE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst|PRESENT_STATE.DECIDE_STATE~regout\);

-- Location: LCFF_X48_Y23_N19
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	ena => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCFF_X48_Y23_N13
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\,
	ena => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X48_Y23_N6
\inst2|inst1|inst3|match~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst3|match~1_combout\ = (!\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(7) & (!\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(6) & (\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(4) & \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(7),
	datab => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(6),
	datac => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(5),
	combout => \inst2|inst1|inst3|match~1_combout\);

-- Location: LCCOMB_X48_Y26_N4
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~0_combout\ = (\inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0) & (\inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0) & (\inst|b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0) & 
-- \inst|b2v_inst|PRESENT_STATE.RESET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0),
	datab => \inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0),
	datac => \inst|b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][17]~0_combout\);

-- Location: LCCOMB_X48_Y26_N26
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & ((!\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\);

-- Location: LCCOMB_X48_Y26_N2
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~2_combout\ = (\inst|b2v_inst1|inst|inst76|O~0_combout\ & (((!\inst|b2v_inst1|inst|inst74|O~0_combout\ & !\inst|b2v_inst1|inst|inst77|O~combout\)) # 
-- (!\inst|b2v_inst1|inst|inst75|O~0_combout\))) # (!\inst|b2v_inst1|inst|inst76|O~0_combout\ & (((\inst|b2v_inst1|inst|inst75|O~0_combout\ & \inst|b2v_inst1|inst|inst77|O~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst74|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst76|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst75|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst77|O~combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][15]~2_combout\);

-- Location: LCCOMB_X48_Y26_N6
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\ = (\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # ((\inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	datac => \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\);

-- Location: LCCOMB_X48_Y26_N16
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~5_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0) $ (\inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	datac => \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~5_combout\);

-- Location: LCCOMB_X47_Y26_N28
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~6_combout\ = (\inst|b2v_inst1|inst|inst75|O~0_combout\ & (\inst|b2v_inst1|inst|inst74|O~0_combout\ & (!\inst|b2v_inst1|inst|inst77|O~combout\))) # 
-- (!\inst|b2v_inst1|inst|inst75|O~0_combout\ & ((\inst|b2v_inst1|inst|inst77|O~combout\) # ((!\inst|b2v_inst1|inst|inst74|O~0_combout\ & \inst|b2v_inst1|inst|inst76|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst75|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst74|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst77|O~combout\,
	datad => \inst|b2v_inst1|inst|inst76|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][12]~6_combout\);

-- Location: LCCOMB_X49_Y26_N28
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~8_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & ((\inst|b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0)) # (\inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0),
	datac => \inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][10]~8_combout\);

-- Location: LCCOMB_X49_Y26_N30
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~9_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (\inst|b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0) $ (\inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0),
	datac => \inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][9]~9_combout\);

-- Location: LCFF_X49_Y26_N11
\inst|b2v_inst1|inst|inst7|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst|inst72|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X49_Y26_N10
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~10_combout\ = (\inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0) & (\inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0) & (\inst|b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0) & 
-- \inst|b2v_inst|PRESENT_STATE.RESET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0),
	datab => \inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0),
	datac => \inst|b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][17]~10_combout\);

-- Location: LCCOMB_X49_Y26_N16
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~11_combout\ = (\inst|b2v_inst1|inst|inst72|O~0_combout\ & ((\inst|b2v_inst1|inst|inst73|O~0_combout\ & ((\inst|b2v_inst1|inst|inst71|O~0_combout\))) # 
-- (!\inst|b2v_inst1|inst|inst73|O~0_combout\ & (\inst|b2v_inst1|inst|inst80|O~0_combout\ & !\inst|b2v_inst1|inst|inst71|O~0_combout\)))) # (!\inst|b2v_inst1|inst|inst72|O~0_combout\ & (\inst|b2v_inst1|inst|inst73|O~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst72|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst73|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst80|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst71|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][16]~11_combout\);

-- Location: LCCOMB_X49_Y26_N6
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~14_combout\ = (\inst|b2v_inst1|inst|inst72|O~0_combout\ & ((\inst|b2v_inst1|inst|inst80|O~0_combout\ & (\inst|b2v_inst1|inst|inst73|O~0_combout\ & 
-- \inst|b2v_inst1|inst|inst71|O~0_combout\)) # (!\inst|b2v_inst1|inst|inst80|O~0_combout\ & ((!\inst|b2v_inst1|inst|inst71|O~0_combout\))))) # (!\inst|b2v_inst1|inst|inst72|O~0_combout\ & (\inst|b2v_inst1|inst|inst80|O~0_combout\ $ 
-- (((\inst|b2v_inst1|inst|inst73|O~0_combout\ & \inst|b2v_inst1|inst|inst71|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst72|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst73|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst80|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst71|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~14_combout\);

-- Location: LCCOMB_X49_Y25_N26
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~17_combout\ = (\inst|b2v_inst1|inst|inst68|O~0_combout\ & ((\inst|b2v_inst1|inst|inst69|O~combout\ & (!\inst|b2v_inst1|inst|inst70|O~0_combout\ & 
-- !\inst|b2v_inst1|inst|inst67|O~0_combout\)) # (!\inst|b2v_inst1|inst|inst69|O~combout\ & (\inst|b2v_inst1|inst|inst70|O~0_combout\)))) # (!\inst|b2v_inst1|inst|inst68|O~0_combout\ & (((\inst|b2v_inst1|inst|inst70|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst68|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst69|O~combout\,
	datac => \inst|b2v_inst1|inst|inst70|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst67|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][16]~17_combout\);

-- Location: LCCOMB_X49_Y26_N18
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~18_combout\ = \inst|b2v_inst1|inst|inst73|O~0_combout\ $ (((!\inst|b2v_inst1|inst|inst80|O~0_combout\ & ((\inst|b2v_inst1|inst|inst72|O~0_combout\) # 
-- (!\inst|b2v_inst1|inst|inst71|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst73|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst72|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst80|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst71|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~18_combout\);

-- Location: LCCOMB_X49_Y25_N6
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~21_combout\ = (\inst|b2v_inst1|inst|inst68|O~0_combout\ & (\inst|b2v_inst1|inst|inst70|O~0_combout\ $ (((\inst|b2v_inst1|inst|inst67|O~0_combout\) # 
-- (!\inst|b2v_inst1|inst|inst69|O~combout\))))) # (!\inst|b2v_inst1|inst|inst68|O~0_combout\ & ((\inst|b2v_inst1|inst|inst69|O~combout\ & ((\inst|b2v_inst1|inst|inst70|O~0_combout\) # (!\inst|b2v_inst1|inst|inst67|O~0_combout\))) # 
-- (!\inst|b2v_inst1|inst|inst69|O~combout\ & (\inst|b2v_inst1|inst|inst70|O~0_combout\ & !\inst|b2v_inst1|inst|inst67|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst68|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst69|O~combout\,
	datac => \inst|b2v_inst1|inst|inst70|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst67|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~21_combout\);

-- Location: LCCOMB_X49_Y26_N14
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~23_combout\ = (\inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0) $ (\inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0))) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~23_combout\);

-- Location: LCCOMB_X49_Y23_N8
\inst|b2v_inst|PRESENT_STATE~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|PRESENT_STATE~17_combout\ = (!\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\ & ((!\inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst1|MUX_KEY|O~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|MUX_KEY|O~1_combout\,
	datab => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\,
	datac => \inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst|PRESENT_STATE~17_combout\);

-- Location: LCCOMB_X45_Y26_N8
\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1) & (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2) & 
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1),
	datac => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2),
	datad => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0),
	combout => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\);

-- Location: LCFF_X46_Y23_N7
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[5]~3_combout\,
	ena => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X47_Y23_N10
\inst2|inst|DONE\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|DONE~combout\ = (\inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\) # (\inst2|inst|PRESENT_STATE.DONE_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\,
	datac => \inst2|inst|PRESENT_STATE.DONE_STATE~regout\,
	combout => \inst2|inst|DONE~combout\);

-- Location: LCCOMB_X47_Y23_N6
\inst12|inst6|NEXT_STATE.SHIFT_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|NEXT_STATE.SHIFT_DOUT~0_combout\ = (\inst12|inst|inst6|TC_12~0_combout\ & (\inst12|inst6|PRESENT_STATE.IDLE_2~regout\ & \inst12|inst|inst5|TC_8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst6|TC_12~0_combout\,
	datac => \inst12|inst6|PRESENT_STATE.IDLE_2~regout\,
	datad => \inst12|inst|inst5|TC_8~0_combout\,
	combout => \inst12|inst6|NEXT_STATE.SHIFT_DOUT~0_combout\);

-- Location: LCCOMB_X48_Y24_N24
\inst2|inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|Selector0~0_combout\ = (\inst2|inst|PRESENT_STATE.DONE_STATE~regout\) # (((!\inst12|inst6|DAV~combout\ & \inst2|inst|PRESENT_STATE.WAIT_CHAR~regout\)) # (!\inst2|inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|PRESENT_STATE.DONE_STATE~regout\,
	datab => \inst12|inst6|DAV~combout\,
	datac => \inst2|inst|PRESENT_STATE.WAIT_CHAR~regout\,
	datad => \inst2|inst|PRESENT_STATE.RESET~regout\,
	combout => \inst2|inst|Selector0~0_combout\);

-- Location: LCCOMB_X47_Y24_N6
\inst2|inst|PRESENT_STATE~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|PRESENT_STATE~15_combout\ = (\inst2|inst|PRESENT_STATE.STORE_CHAR~regout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\,
	datad => \SW~combout\(0),
	combout => \inst2|inst|PRESENT_STATE~15_combout\);

-- Location: LCCOMB_X46_Y23_N6
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[5]~3_combout\ = (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6) & (!\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ & \inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6),
	datac => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[5]~3_combout\);

-- Location: LCCOMB_X45_Y23_N24
\inst12|inst6|WideOr10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|WideOr10~1_combout\ = (!\inst12|inst6|PRESENT_STATE.SHIFT_IN_2~regout\ & !\inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.SHIFT_IN_2~regout\,
	datad => \inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\,
	combout => \inst12|inst6|WideOr10~1_combout\);

-- Location: LCCOMB_X47_Y24_N16
\inst2|inst|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|Selector1~1_combout\ = (\inst2|inst|PRESENT_STATE.TOGGLE_FF~regout\) # ((\inst2|inst|PRESENT_STATE.DECIDE_STATE~regout\ & \inst2|inst|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|PRESENT_STATE.DECIDE_STATE~regout\,
	datac => \inst2|inst|Selector1~0_combout\,
	datad => \inst2|inst|PRESENT_STATE.TOGGLE_FF~regout\,
	combout => \inst2|inst|Selector1~1_combout\);

-- Location: LCFF_X44_Y23_N13
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[1]~6_combout\,
	ena => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X44_Y23_N12
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[1]~6_combout\ = (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(2) & (!\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ & \inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(2),
	datab => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[1]~6_combout\);

-- Location: LCCOMB_X45_Y25_N10
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & 
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~20_combout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X45_Y25_N30
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & 
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~16_combout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~36_combout\);

-- Location: LCCOMB_X1_Y18_N12
\inst11|CK_div2_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|CK_div2_int~0_combout\ = !\inst11|CK_div2_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|CK_div2_int~regout\,
	combout => \inst11|CK_div2_int~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RXD~I\ : cycloneii_io
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
	padio => ww_UART_RXD,
	combout => \UART_RXD~combout\);

-- Location: CLKCTRL_G0
\inst11|CK_div2_int~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|CK_div2_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|CK_div2_int~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y25_N30
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[12]~feeder_combout\ = \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12),
	combout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[12]~feeder_combout\);

-- Location: LCCOMB_X42_Y25_N14
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[10]~feeder_combout\ = \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(10),
	combout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[10]~feeder_combout\);

-- Location: LCCOMB_X42_Y25_N12
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ = \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6),
	combout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[6]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N18
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(5),
	combout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X48_Y23_N12
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ = \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(7),
	combout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N8
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X43_Y24_N4
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

-- Location: LCCOMB_X38_Y24_N16
\inst9|inst|CurrentState.ResetState~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst|CurrentState.ResetState~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst9|inst|CurrentState.ResetState~feeder_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: CLKCTRL_G6
\SW[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[0]~clkctrl_outclk\);

-- Location: LCFF_X38_Y24_N17
\inst9|inst|CurrentState.ResetState\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|inst|CurrentState.ResetState~feeder_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst|CurrentState.ResetState~regout\);

-- Location: LCCOMB_X42_Y24_N16
\inst13|inst|SCLEAR_CNT_216\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|SCLEAR_CNT_216~combout\ = (\inst13|inst|PRESENT_STATE.NEXT_TX~regout\) # (!\inst9|inst|CurrentState.ResetState~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|CurrentState.ResetState~regout\,
	datad => \inst13|inst|PRESENT_STATE.NEXT_TX~regout\,
	combout => \inst13|inst|SCLEAR_CNT_216~combout\);

-- Location: LCCOMB_X42_Y24_N30
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst13|inst|PRESENT_STATE.NEXT_TX~regout\) # ((\inst13|inst|PRESENT_STATE.START_TX~regout\) # (!\inst9|inst|CurrentState.ResetState~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|PRESENT_STATE.NEXT_TX~regout\,
	datac => \inst9|inst|CurrentState.ResetState~regout\,
	datad => \inst13|inst|PRESENT_STATE.START_TX~regout\,
	combout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: LCFF_X43_Y24_N9
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst13|inst|SCLEAR_CNT_216~combout\,
	ena => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X43_Y24_N14
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X43_Y24_N15
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst13|inst|SCLEAR_CNT_216~combout\,
	ena => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X43_Y24_N16
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X43_Y24_N17
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst13|inst|SCLEAR_CNT_216~combout\,
	ena => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X43_Y24_N19
\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst13|inst|SCLEAR_CNT_216~combout\,
	ena => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X43_Y24_N24
\inst13|inst1|inst3|TC_216~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst3|TC_216~0_combout\ = (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(7) & (\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datac => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst13|inst1|inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst13|inst1|inst3|TC_216~0_combout\);

-- Location: LCCOMB_X41_Y24_N2
\inst13|inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector1~0_combout\ = (\inst13|inst|PRESENT_STATE.LOAD~regout\) # ((\inst13|inst|PRESENT_STATE.START_TX~regout\ & ((!\inst13|inst1|inst3|TC_216~0_combout\) # (!\inst13|inst1|inst3|TC_216~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst3|TC_216~1_combout\,
	datab => \inst13|inst|PRESENT_STATE.START_TX~regout\,
	datac => \inst13|inst1|inst3|TC_216~0_combout\,
	datad => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	combout => \inst13|inst|Selector1~0_combout\);

-- Location: LCCOMB_X42_Y24_N6
\inst13|inst|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector1~1_combout\ = (\inst13|inst|Selector1~0_combout\) # ((\inst13|inst1|inst2|END_TX~2_combout\ & \inst13|inst|PRESENT_STATE.NEXT_TX~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst2|END_TX~2_combout\,
	datab => \inst13|inst|PRESENT_STATE.NEXT_TX~regout\,
	datad => \inst13|inst|Selector1~0_combout\,
	combout => \inst13|inst|Selector1~1_combout\);

-- Location: LCFF_X42_Y24_N7
\inst13|inst|PRESENT_STATE.START_TX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst|Selector1~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst|PRESENT_STATE.START_TX~regout\);

-- Location: LCCOMB_X41_Y24_N16
\inst13|inst|NEXT_STATE.NEXT_TX~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|NEXT_STATE.NEXT_TX~0_combout\ = (\inst13|inst1|inst3|TC_216~1_combout\ & (\inst13|inst|PRESENT_STATE.START_TX~regout\ & \inst13|inst1|inst3|TC_216~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst3|TC_216~1_combout\,
	datab => \inst13|inst|PRESENT_STATE.START_TX~regout\,
	datac => \inst13|inst1|inst3|TC_216~0_combout\,
	combout => \inst13|inst|NEXT_STATE.NEXT_TX~0_combout\);

-- Location: LCFF_X41_Y24_N17
\inst13|inst|PRESENT_STATE.NEXT_TX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst|NEXT_STATE.NEXT_TX~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst|PRESENT_STATE.NEXT_TX~regout\);

-- Location: LCCOMB_X42_Y24_N12
\inst9|inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst|Selector1~0_combout\ = (\inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\ & ((\inst9|inst|CurrentState.WaitForData~regout\) # ((\inst9|inst|CurrentState.SendT~regout\ & !\inst13|inst|PRESENT_STATE.IDLE~regout\)))) # 
-- (!\inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\ & (((\inst9|inst|CurrentState.SendT~regout\ & !\inst13|inst|PRESENT_STATE.IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\,
	datab => \inst9|inst|CurrentState.WaitForData~regout\,
	datac => \inst9|inst|CurrentState.SendT~regout\,
	datad => \inst13|inst|PRESENT_STATE.IDLE~regout\,
	combout => \inst9|inst|Selector1~0_combout\);

-- Location: LCFF_X42_Y24_N13
\inst9|inst|CurrentState.SendT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|inst|Selector1~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst|CurrentState.SendT~regout\);

-- Location: LCFF_X42_Y24_N9
\inst9|inst|CurrentState.SendA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst9|inst|CurrentState.SendT~regout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst13|inst|PRESENT_STATE.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst|CurrentState.SendA~regout\);

-- Location: LCFF_X42_Y24_N25
\inst9|inst|CurrentState.SendB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst9|inst|CurrentState.SendA~regout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst13|inst|PRESENT_STATE.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst|CurrentState.SendB~regout\);

-- Location: LCFF_X42_Y24_N3
\inst9|inst|CurrentState.SendC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst9|inst|CurrentState.SendB~regout\,
	aclr => \SW[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst13|inst|PRESENT_STATE.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst|CurrentState.SendC~regout\);

-- Location: LCCOMB_X42_Y24_N4
\inst9|inst|CurrentState.SendD~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst|CurrentState.SendD~feeder_combout\ = \inst9|inst|CurrentState.SendC~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|inst|CurrentState.SendC~regout\,
	combout => \inst9|inst|CurrentState.SendD~feeder_combout\);

-- Location: LCFF_X42_Y24_N5
\inst9|inst|CurrentState.SendD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|inst|CurrentState.SendD~feeder_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	ena => \inst13|inst|PRESENT_STATE.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst|CurrentState.SendD~regout\);

-- Location: LCCOMB_X42_Y24_N18
\inst9|inst|NextState.DoneState~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst|NextState.DoneState~0_combout\ = (\inst9|inst|CurrentState.SendD~regout\ & \inst13|inst|PRESENT_STATE.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|CurrentState.SendD~regout\,
	datad => \inst13|inst|PRESENT_STATE.IDLE~regout\,
	combout => \inst9|inst|NextState.DoneState~0_combout\);

-- Location: LCFF_X42_Y24_N19
\inst9|inst|CurrentState.DoneState\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|inst|NextState.DoneState~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst|CurrentState.DoneState~regout\);

-- Location: LCCOMB_X45_Y24_N0
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X49_Y25_N0
\inst|b2v_inst|PRESENT_STATE~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|PRESENT_STATE~14_combout\ = (!\SW~combout\(0) & ((!\inst9|inst|CurrentState.DoneState~regout\) # (!\inst|b2v_inst|PRESENT_STATE.END_STATE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.END_STATE~regout\,
	datab => \inst9|inst|CurrentState.DoneState~regout\,
	datac => \SW~combout\(0),
	combout => \inst|b2v_inst|PRESENT_STATE~14_combout\);

-- Location: LCFF_X49_Y25_N1
\inst|b2v_inst|PRESENT_STATE.RESET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst|PRESENT_STATE~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst|PRESENT_STATE.RESET~regout\);

-- Location: LCCOMB_X48_Y24_N4
\inst|b2v_inst|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|WideOr3~combout\ = (\inst|b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\) # ((\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\,
	datac => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	combout => \inst|b2v_inst|WideOr3~combout\);

-- Location: LCCOMB_X48_Y24_N0
\inst|b2v_inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|Selector2~0_combout\ = (\inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\) # ((!\inst9|inst|CurrentState.DoneState~regout\ & \inst|b2v_inst|PRESENT_STATE.END_STATE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.DoneState~regout\,
	datac => \inst|b2v_inst|PRESENT_STATE.END_STATE~regout\,
	datad => \inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\,
	combout => \inst|b2v_inst|Selector2~0_combout\);

-- Location: LCFF_X48_Y24_N1
\inst|b2v_inst|PRESENT_STATE.END_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst|Selector2~0_combout\,
	sclr => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst|PRESENT_STATE.END_STATE~regout\);

-- Location: LCCOMB_X48_Y24_N6
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\ = (\inst|b2v_inst|WideOr3~combout\) # ((!\inst|b2v_inst|PRESENT_STATE.IDLE_1~regout\ & (!\inst|b2v_inst|PRESENT_STATE.END_STATE~regout\ & 
-- !\inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.IDLE_1~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.END_STATE~regout\,
	datac => \inst|b2v_inst|WideOr3~combout\,
	datad => \inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\);

-- Location: LCFF_X45_Y24_N1
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X45_Y24_N2
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1) & ((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X45_Y24_N3
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X45_Y24_N4
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2) & (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2) & !\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X45_Y24_N5
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X45_Y24_N8
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4) & (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4) & !\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X45_Y24_N9
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X45_Y24_N10
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5) & ((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X45_Y24_N11
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X45_Y24_N12
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6) & (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6) & !\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X45_Y24_N13
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X45_Y24_N30
\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\ = (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3) & (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5) & 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4) & !\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(3),
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(5),
	datac => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(4),
	datad => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(6),
	combout => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\);

-- Location: LCCOMB_X45_Y24_N14
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7) & ((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X45_Y24_N15
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X45_Y24_N16
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8) & (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8) & !\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X45_Y24_N18
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9) & ((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X45_Y24_N19
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X45_Y24_N20
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10) & (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10) & !\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X45_Y24_N22
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11) & ((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X45_Y24_N23
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X45_Y24_N24
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12) & (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12) & !\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X45_Y24_N25
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12));

-- Location: LCFF_X45_Y24_N27
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X44_Y24_N24
\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12) & 
-- (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13) & !\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(14),
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(12),
	datac => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(13),
	datad => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(11),
	combout => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\);

-- Location: LCFF_X45_Y24_N21
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10));

-- Location: LCFF_X45_Y24_N17
\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst|b2v_inst|WideOr3~combout\,
	ena => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X46_Y24_N24
\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\ = (\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7) & (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9) & 
-- (!\inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10) & \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(7),
	datab => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(9),
	datac => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(10),
	datad => \inst|b2v_inst1|inst3|lpm_counter_component|auto_generated|safe_q\(8),
	combout => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\);

-- Location: LCCOMB_X48_Y24_N2
\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\ = (\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\ & (\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\ & 
-- (\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\ & \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~3_combout\,
	datab => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~2_combout\,
	datac => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~0_combout\,
	datad => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~1_combout\,
	combout => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\);

-- Location: LCCOMB_X48_Y24_N30
\inst|b2v_inst|PRESENT_STATE~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|PRESENT_STATE~20_combout\ = (\inst|b2v_inst|PRESENT_STATE~17_combout\ & (\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\ & (\inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\ & !\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE~17_combout\,
	datab => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\,
	datac => \inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\,
	datad => \SW~combout\(0),
	combout => \inst|b2v_inst|PRESENT_STATE~20_combout\);

-- Location: LCFF_X48_Y24_N31
\inst|b2v_inst|PRESENT_STATE.END_CNT_1ms\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst|PRESENT_STATE~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\);

-- Location: LCCOMB_X44_Y23_N16
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X44_Y23_N18
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X44_Y23_N19
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X44_Y23_N20
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X44_Y23_N23
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X44_Y23_N21
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X44_Y23_N10
\inst12|inst|inst4|TC_26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst4|TC_26~0_combout\ = (\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(2) & 
-- !\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst12|inst|inst4|TC_26~0_combout\);

-- Location: LCCOMB_X47_Y23_N20
\inst12|inst|inst4|TC_26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst4|TC_26~combout\ = (\inst12|inst|inst4|TC_26~0_combout\ & \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst4|TC_26~0_combout\,
	datad => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst12|inst|inst4|TC_26~combout\);

-- Location: LCCOMB_X45_Y23_N2
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X46_Y23_N18
\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X46_Y23_N4
\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst12|inst6|PRESENT_STATE.SHIFT_DOUT~regout\) # ((\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\) # (!\inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.SHIFT_DOUT~regout\,
	datac => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: LCFF_X46_Y23_N19
\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst6|SCLEAR_ALL~combout\,
	ena => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X46_Y23_N20
\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X46_Y23_N22
\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ $ (\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(3),
	cin => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: LCFF_X46_Y23_N23
\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst6|SCLEAR_ALL~combout\,
	ena => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X46_Y23_N21
\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst6|SCLEAR_ALL~combout\,
	ena => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X46_Y23_N14
\inst12|inst|inst5|TC_8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst5|TC_8~0_combout\ = (\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(0)) # (((\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(2)) # (\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(1))) # 
-- (!\inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \inst12|inst|inst3|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst12|inst|inst5|TC_8~0_combout\);

-- Location: LCCOMB_X47_Y23_N24
\inst12|inst6|NEXT_STATE.RESET~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|NEXT_STATE.RESET~2_combout\ = ((\inst12|inst|inst1|VOTER_OUT~2_combout\) # ((\inst12|inst|inst5|TC_8~0_combout\) # (!\inst12|inst6|PRESENT_STATE.IDLE_2~regout\))) # (!\inst12|inst|inst6|TC_12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst6|TC_12~0_combout\,
	datab => \inst12|inst|inst1|VOTER_OUT~2_combout\,
	datac => \inst12|inst6|PRESENT_STATE.IDLE_2~regout\,
	datad => \inst12|inst|inst5|TC_8~0_combout\,
	combout => \inst12|inst6|NEXT_STATE.RESET~2_combout\);

-- Location: LCFF_X47_Y23_N25
\inst12|inst6|PRESENT_STATE.RESET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|NEXT_STATE.RESET~2_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.RESET~regout\);

-- Location: LCCOMB_X46_Y23_N8
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[4]~4_combout\ = (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5) & (!\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ & \inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5),
	datac => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[4]~4_combout\);

-- Location: LCFF_X46_Y23_N9
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[4]~4_combout\,
	ena => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X46_Y23_N24
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[7]~5_combout\ = (\UART_RXD~combout\ & (\inst12|inst6|PRESENT_STATE.RESET~regout\ & !\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RXD~combout\,
	datab => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datac => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	combout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[7]~5_combout\);

-- Location: LCFF_X46_Y23_N25
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[7]~5_combout\,
	ena => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X46_Y23_N12
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[6]~2_combout\ = (!\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ & (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(7) & \inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datac => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(7),
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[6]~2_combout\);

-- Location: LCFF_X46_Y23_N13
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[6]~2_combout\,
	ena => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X46_Y23_N26
\inst12|inst|inst1|VOTER_OUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst1|VOTER_OUT~0_combout\ = \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5) $ (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4) $ (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5),
	datac => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst12|inst|inst1|VOTER_OUT~0_combout\);

-- Location: LCCOMB_X46_Y23_N0
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[3]~0_combout\ = (!\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ & (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4) & \inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datac => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[3]~0_combout\);

-- Location: LCFF_X46_Y23_N1
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[3]~0_combout\,
	ena => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X46_Y23_N28
\inst12|inst|inst1|VOTER_OUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst1|VOTER_OUT~1_combout\ = (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5) & ((\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4)) # (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6)))) # 
-- (!\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5) & (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4) & \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5),
	datac => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst12|inst|inst1|VOTER_OUT~1_combout\);

-- Location: LCCOMB_X47_Y23_N30
\inst12|inst|inst1|VOTER_OUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst1|VOTER_OUT~2_combout\ = (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(2) & ((\inst12|inst|inst1|VOTER_OUT~1_combout\) # ((\inst12|inst|inst1|VOTER_OUT~0_combout\ & \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(3))))) # 
-- (!\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(2) & (\inst12|inst|inst1|VOTER_OUT~1_combout\ & ((\inst12|inst|inst1|VOTER_OUT~0_combout\) # (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(2),
	datab => \inst12|inst|inst1|VOTER_OUT~0_combout\,
	datac => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst12|inst|inst1|VOTER_OUT~1_combout\,
	combout => \inst12|inst|inst1|VOTER_OUT~2_combout\);

-- Location: LCCOMB_X47_Y23_N4
\inst12|inst6|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector5~1_combout\ = (\inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\) # ((\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ & ((!\inst12|inst|inst4|TC_26~0_combout\) # 
-- (!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\,
	datab => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \inst12|inst|inst4|TC_26~0_combout\,
	datad => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	combout => \inst12|inst6|Selector5~1_combout\);

-- Location: LCCOMB_X47_Y23_N0
\inst12|inst6|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector5~0_combout\ = (\inst12|inst|inst6|TC_12~0_combout\ & (\inst12|inst6|PRESENT_STATE.IDLE_2~regout\ & !\inst12|inst|inst5|TC_8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst6|TC_12~0_combout\,
	datac => \inst12|inst6|PRESENT_STATE.IDLE_2~regout\,
	datad => \inst12|inst|inst5|TC_8~0_combout\,
	combout => \inst12|inst6|Selector5~0_combout\);

-- Location: LCCOMB_X47_Y23_N26
\inst12|inst6|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector5~2_combout\ = (\inst2|inst|DONE~combout\ & (\inst12|inst|inst1|VOTER_OUT~2_combout\ & ((\inst12|inst6|Selector5~0_combout\)))) # (!\inst2|inst|DONE~combout\ & ((\inst12|inst6|Selector5~1_combout\) # 
-- ((\inst12|inst|inst1|VOTER_OUT~2_combout\ & \inst12|inst6|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|DONE~combout\,
	datab => \inst12|inst|inst1|VOTER_OUT~2_combout\,
	datac => \inst12|inst6|Selector5~1_combout\,
	datad => \inst12|inst6|Selector5~0_combout\,
	combout => \inst12|inst6|Selector5~2_combout\);

-- Location: LCFF_X47_Y23_N27
\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|Selector5~2_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\);

-- Location: LCCOMB_X46_Y23_N2
\inst12|inst6|SCLEAR_ALL\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|SCLEAR_ALL~combout\ = (\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\) # (!\inst12|inst6|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst6|SCLEAR_ALL~combout\);

-- Location: LCCOMB_X45_Y23_N14
\inst12|inst6|SCLEAR_ALL~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|SCLEAR_ALL~_wirecell_combout\ = !\inst12|inst6|SCLEAR_ALL~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst6|SCLEAR_ALL~combout\,
	combout => \inst12|inst6|SCLEAR_ALL~_wirecell_combout\);

-- Location: LCCOMB_X47_Y23_N14
\inst12|inst6|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector4~0_combout\ = (\inst12|inst6|PRESENT_STATE.SHIFT_DOUT~regout\) # ((\inst12|inst6|PRESENT_STATE.IDLE_3~regout\ & ((!\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0)) # (!\inst12|inst|inst4|TC_26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.SHIFT_DOUT~regout\,
	datab => \inst12|inst|inst4|TC_26~0_combout\,
	datac => \inst12|inst6|PRESENT_STATE.IDLE_3~regout\,
	datad => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst12|inst6|Selector4~0_combout\);

-- Location: LCFF_X47_Y23_N15
\inst12|inst6|PRESENT_STATE.IDLE_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|Selector4~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.IDLE_3~regout\);

-- Location: LCCOMB_X47_Y23_N18
\inst12|inst6|NEXT_STATE.SHIFT_IN_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|NEXT_STATE.SHIFT_IN_3~0_combout\ = (\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst12|inst6|PRESENT_STATE.IDLE_3~regout\ & \inst12|inst|inst4|TC_26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \inst12|inst6|PRESENT_STATE.IDLE_3~regout\,
	datad => \inst12|inst|inst4|TC_26~0_combout\,
	combout => \inst12|inst6|NEXT_STATE.SHIFT_IN_3~0_combout\);

-- Location: LCFF_X47_Y23_N19
\inst12|inst6|PRESENT_STATE.SHIFT_IN_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|NEXT_STATE.SHIFT_IN_3~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\);

-- Location: LCCOMB_X45_Y23_N26
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]~0_combout\ = ((\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\) # (\inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\)) # (!\inst12|inst6|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datac => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datad => \inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\,
	combout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]~0_combout\);

-- Location: LCCOMB_X45_Y23_N28
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst12|inst6|PRESENT_STATE.SHIFT_IN_2~regout\) # (((\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\) # (\inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\)) # 
-- (!\inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.SHIFT_IN_2~regout\,
	datab => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datac => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datad => \inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\,
	combout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: LCFF_X45_Y23_N3
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \inst12|inst6|SCLEAR_ALL~_wirecell_combout\,
	sload => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X45_Y23_N4
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X45_Y23_N5
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X45_Y23_N8
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(3),
	cin => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: LCFF_X45_Y23_N9
\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]~0_combout\,
	ena => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X45_Y23_N10
\inst12|inst|inst6|TC_12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst6|TC_12~0_combout\ = (\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- !\inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => \inst12|inst|inst15|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst12|inst|inst6|TC_12~0_combout\);

-- Location: LCCOMB_X45_Y23_N0
\inst12|inst6|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector2~0_combout\ = ((!\inst12|inst|inst4|TC_26~combout\ & (\inst12|inst6|PRESENT_STATE.IDLE_2~regout\ & !\inst12|inst|inst6|TC_12~0_combout\))) # (!\inst12|inst6|WideOr10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|WideOr10~1_combout\,
	datab => \inst12|inst|inst4|TC_26~combout\,
	datac => \inst12|inst6|PRESENT_STATE.IDLE_2~regout\,
	datad => \inst12|inst|inst6|TC_12~0_combout\,
	combout => \inst12|inst6|Selector2~0_combout\);

-- Location: LCFF_X45_Y23_N1
\inst12|inst6|PRESENT_STATE.IDLE_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|Selector2~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.IDLE_2~regout\);

-- Location: LCCOMB_X46_Y23_N10
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[2]~1_combout\ = (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(3) & (!\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ & \inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(3),
	datac => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[2]~1_combout\);

-- Location: LCFF_X46_Y23_N11
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[2]~1_combout\,
	ena => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X44_Y23_N14
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[0]~7_combout\ = (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(1) & (!\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ & \inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(1),
	datab => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[0]~7_combout\);

-- Location: LCFF_X44_Y23_N15
\inst12|inst|inst8|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs[0]~7_combout\,
	ena => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X45_Y23_N16
\inst12|inst|inst|START_BIT_CHECK~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst|START_BIT_CHECK~1_combout\ = (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(1) & (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(3) & (\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(2) & 
-- \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(1),
	datab => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(3),
	datac => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(2),
	datad => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst12|inst|inst|START_BIT_CHECK~1_combout\);

-- Location: LCCOMB_X46_Y23_N30
\inst12|inst|inst|START_BIT_CHECK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst|START_BIT_CHECK~0_combout\ = (!\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5) & (!\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4) & (!\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(7) & 
-- !\inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(5),
	datab => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(4),
	datac => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(7),
	datad => \inst12|inst|inst8|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst12|inst|inst|START_BIT_CHECK~0_combout\);

-- Location: LCCOMB_X45_Y23_N20
\inst12|inst|inst|START_BIT_CHECK\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst|START_BIT_CHECK~combout\ = (\inst12|inst|inst|START_BIT_CHECK~1_combout\ & \inst12|inst|inst|START_BIT_CHECK~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst|START_BIT_CHECK~1_combout\,
	datad => \inst12|inst|inst|START_BIT_CHECK~0_combout\,
	combout => \inst12|inst|inst|START_BIT_CHECK~combout\);

-- Location: LCCOMB_X45_Y23_N22
\inst12|inst6|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector1~0_combout\ = (\inst12|inst|inst4|TC_26~combout\ & ((\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\) # ((\inst12|inst6|PRESENT_STATE.IDLE_1~regout\ & !\inst12|inst|inst|START_BIT_CHECK~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	datab => \inst12|inst6|PRESENT_STATE.IDLE_1~regout\,
	datac => \inst12|inst|inst|START_BIT_CHECK~combout\,
	datad => \inst12|inst|inst4|TC_26~combout\,
	combout => \inst12|inst6|Selector1~0_combout\);

-- Location: LCFF_X45_Y23_N23
\inst12|inst6|PRESENT_STATE.SHIFT_IN_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|Selector1~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.SHIFT_IN_1~regout\);

-- Location: LCCOMB_X48_Y23_N0
\inst12|inst6|WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|WideOr10~0_combout\ = (!\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ & (!\inst12|inst6|PRESENT_STATE.SHIFT_IN_1~regout\ & \inst12|inst6|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	datac => \inst12|inst6|PRESENT_STATE.SHIFT_IN_1~regout\,
	datad => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	combout => \inst12|inst6|WideOr10~0_combout\);

-- Location: LCCOMB_X45_Y23_N30
\inst12|inst6|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector0~0_combout\ = ((!\inst12|inst|inst4|TC_26~combout\ & ((\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\) # (\inst12|inst6|PRESENT_STATE.IDLE_1~regout\)))) # (!\inst12|inst6|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	datab => \inst12|inst|inst4|TC_26~combout\,
	datac => \inst12|inst6|PRESENT_STATE.IDLE_1~regout\,
	datad => \inst12|inst6|WideOr10~0_combout\,
	combout => \inst12|inst6|Selector0~0_combout\);

-- Location: LCFF_X45_Y23_N31
\inst12|inst6|PRESENT_STATE.IDLE_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|Selector0~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.IDLE_1~regout\);

-- Location: LCCOMB_X45_Y23_N18
\inst12|inst6|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector3~0_combout\ = (\inst12|inst6|PRESENT_STATE.IDLE_1~regout\ & (\inst12|inst|inst|START_BIT_CHECK~1_combout\ & \inst12|inst|inst|START_BIT_CHECK~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst6|PRESENT_STATE.IDLE_1~regout\,
	datac => \inst12|inst|inst|START_BIT_CHECK~1_combout\,
	datad => \inst12|inst|inst|START_BIT_CHECK~0_combout\,
	combout => \inst12|inst6|Selector3~0_combout\);

-- Location: LCCOMB_X45_Y23_N12
\inst12|inst6|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector3~1_combout\ = (\inst12|inst|inst4|TC_26~combout\ & ((\inst12|inst6|Selector3~0_combout\) # ((!\inst12|inst|inst6|TC_12~0_combout\ & \inst12|inst6|PRESENT_STATE.IDLE_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst6|TC_12~0_combout\,
	datab => \inst12|inst6|PRESENT_STATE.IDLE_2~regout\,
	datac => \inst12|inst6|Selector3~0_combout\,
	datad => \inst12|inst|inst4|TC_26~combout\,
	combout => \inst12|inst6|Selector3~1_combout\);

-- Location: LCFF_X45_Y23_N13
\inst12|inst6|PRESENT_STATE.SHIFT_IN_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|Selector3~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.SHIFT_IN_2~regout\);

-- Location: LCCOMB_X48_Y23_N26
\inst12|inst6|WideOr10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|WideOr10~combout\ = (\inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\) # ((\inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\) # ((\inst12|inst6|PRESENT_STATE.SHIFT_IN_2~regout\) # (!\inst12|inst6|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.SHIFT_IN_3~regout\,
	datab => \inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\,
	datac => \inst12|inst6|PRESENT_STATE.SHIFT_IN_2~regout\,
	datad => \inst12|inst6|WideOr10~0_combout\,
	combout => \inst12|inst6|WideOr10~combout\);

-- Location: LCFF_X44_Y23_N17
\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst12|inst6|WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X47_Y23_N28
\inst12|inst6|NEXT_STATE.SHIFT_IN_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|NEXT_STATE.SHIFT_IN_4~0_combout\ = (!\inst2|inst|DONE~combout\ & (\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst12|inst|inst4|TC_26~0_combout\ & \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|DONE~combout\,
	datab => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \inst12|inst|inst4|TC_26~0_combout\,
	datad => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	combout => \inst12|inst6|NEXT_STATE.SHIFT_IN_4~0_combout\);

-- Location: LCFF_X47_Y23_N29
\inst12|inst6|PRESENT_STATE.SHIFT_IN_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|NEXT_STATE.SHIFT_IN_4~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\);

-- Location: LCCOMB_X47_Y24_N26
\inst2|inst|PRESENT_STATE.RESET~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|PRESENT_STATE.RESET~0_combout\ = !\SW~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(0),
	combout => \inst2|inst|PRESENT_STATE.RESET~0_combout\);

-- Location: LCFF_X47_Y24_N27
\inst2|inst|PRESENT_STATE.RESET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst|PRESENT_STATE.RESET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst|PRESENT_STATE.RESET~regout\);

-- Location: LCCOMB_X47_Y24_N0
\inst2|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\ = (!\inst2|inst1|inst1|LPM_SHIFTREG_component|dffs\(0) & \inst2|inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst1|inst1|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst2|inst|PRESENT_STATE.RESET~regout\,
	combout => \inst2|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\);

-- Location: LCCOMB_X47_Y23_N2
\inst12|inst6|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|Selector6~2_combout\ = (\inst12|inst6|Selector5~1_combout\ & ((\inst2|inst|PRESENT_STATE.DONE_STATE~regout\) # (\inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|PRESENT_STATE.DONE_STATE~regout\,
	datab => \inst12|inst6|Selector5~1_combout\,
	datac => \inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\,
	combout => \inst12|inst6|Selector6~2_combout\);

-- Location: LCFF_X47_Y23_N3
\inst12|inst6|PRESENT_STATE.END_STATE_COUNT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|Selector6~2_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\);

-- Location: LCCOMB_X47_Y23_N22
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[7]~5_combout\ = (!\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ & (\inst12|inst|inst1|VOTER_OUT~2_combout\ & (\inst12|inst6|PRESENT_STATE.RESET~regout\ & 
-- !\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	datab => \inst12|inst|inst1|VOTER_OUT~2_combout\,
	datac => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datad => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	combout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[7]~5_combout\);

-- Location: LCCOMB_X47_Y23_N12
\inst12|inst6|NEXT_STATE.END_STATE_SHIFT_IN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|NEXT_STATE.END_STATE_SHIFT_IN~0_combout\ = (\inst2|inst|DONE~combout\ & (\inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst12|inst|inst4|TC_26~0_combout\ & \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|DONE~combout\,
	datab => \inst12|inst|inst14|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \inst12|inst|inst4|TC_26~0_combout\,
	datad => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	combout => \inst12|inst6|NEXT_STATE.END_STATE_SHIFT_IN~0_combout\);

-- Location: LCFF_X47_Y23_N13
\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst6|NEXT_STATE.END_STATE_SHIFT_IN~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\);

-- Location: LCCOMB_X47_Y23_N16
\inst12|inst6|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|WideOr11~combout\ = (\inst12|inst6|PRESENT_STATE.SHIFT_DOUT~regout\) # ((\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\) # ((\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\) # (!\inst12|inst6|PRESENT_STATE.RESET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.SHIFT_DOUT~regout\,
	datab => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	datac => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datad => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	combout => \inst12|inst6|WideOr11~combout\);

-- Location: LCFF_X47_Y23_N23
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[7]~5_combout\,
	ena => \inst12|inst6|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X47_Y23_N8
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[6]~6_combout\ = (!\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ & (\inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(7) & (\inst12|inst6|PRESENT_STATE.RESET~regout\ & 
-- !\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	datab => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(7),
	datac => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datad => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	combout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[6]~6_combout\);

-- Location: LCFF_X47_Y23_N9
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[6]~6_combout\,
	ena => \inst12|inst6|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X48_Y23_N30
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[5]~3_combout\ = (\inst12|inst6|PRESENT_STATE.RESET~regout\ & (\inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(6) & (!\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ & 
-- !\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datab => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(6),
	datac => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	datad => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	combout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[5]~3_combout\);

-- Location: LCFF_X48_Y23_N31
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[5]~3_combout\,
	ena => \inst12|inst6|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X48_Y23_N4
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[4]~4_combout\ = (\inst12|inst6|PRESENT_STATE.RESET~regout\ & (\inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(5) & (!\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ & 
-- !\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datab => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(5),
	datac => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	datad => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	combout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[4]~4_combout\);

-- Location: LCFF_X48_Y23_N5
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[4]~4_combout\,
	ena => \inst12|inst6|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X44_Y23_N0
\inst12|inst6|DAV\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|DAV~combout\ = (\inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\) # (\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\,
	datad => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	combout => \inst12|inst6|DAV~combout\);

-- Location: LCCOMB_X48_Y24_N22
\inst2|inst|PRESENT_STATE~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|PRESENT_STATE~11_combout\ = (\inst12|inst6|DAV~combout\ & (!\SW~combout\(0) & ((\inst2|inst|PRESENT_STATE.WAIT_CHAR~regout\) # (\inst2|inst|PRESENT_STATE.WAIT_CHAR_AV~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|PRESENT_STATE.WAIT_CHAR~regout\,
	datab => \inst12|inst6|DAV~combout\,
	datac => \inst2|inst|PRESENT_STATE.WAIT_CHAR_AV~regout\,
	datad => \SW~combout\(0),
	combout => \inst2|inst|PRESENT_STATE~11_combout\);

-- Location: LCFF_X48_Y24_N23
\inst2|inst|PRESENT_STATE.STORE_CHAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst|PRESENT_STATE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\);

-- Location: LCFF_X48_Y23_N7
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(4),
	sload => VCC,
	ena => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCFF_X48_Y23_N29
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(6),
	sload => VCC,
	ena => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X48_Y23_N14
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[3]~7_combout\ = (\inst12|inst6|PRESENT_STATE.RESET~regout\ & (!\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ & (\inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(4) & 
-- !\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datab => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	datac => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	combout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[3]~7_combout\);

-- Location: LCFF_X48_Y23_N15
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[3]~7_combout\,
	ena => \inst12|inst6|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCFF_X48_Y23_N23
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(3),
	sload => VCC,
	ena => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X48_Y23_N28
\inst2|inst1|inst2|match~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst2|match~1_combout\ = (\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(5)) # ((\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(4)) # ((!\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(3)) # 
-- (!\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(5),
	datab => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(4),
	datac => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(6),
	datad => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst2|inst1|inst2|match~1_combout\);

-- Location: LCCOMB_X48_Y23_N16
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[2]~2_combout\ = (\inst12|inst6|PRESENT_STATE.RESET~regout\ & (!\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ & (\inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(3) & 
-- !\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datab => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	datac => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	combout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[2]~2_combout\);

-- Location: LCFF_X48_Y23_N17
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[2]~2_combout\,
	ena => \inst12|inst6|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X48_Y23_N2
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[1]~1_combout\ = (\inst12|inst6|PRESENT_STATE.RESET~regout\ & (!\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ & (\inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(2) & 
-- !\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datab => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	datac => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(2),
	datad => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	combout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[1]~1_combout\);

-- Location: LCFF_X48_Y23_N3
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[1]~1_combout\,
	ena => \inst12|inst6|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X48_Y23_N20
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[0]~0_combout\ = (\inst12|inst6|PRESENT_STATE.RESET~regout\ & (\inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(1) & (!\inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\ & 
-- !\inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.RESET~regout\,
	datab => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(1),
	datac => \inst12|inst6|PRESENT_STATE.END_STATE_SHIFT_IN~regout\,
	datad => \inst12|inst6|PRESENT_STATE.END_STATE_COUNT~regout\,
	combout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[0]~0_combout\);

-- Location: LCFF_X48_Y23_N21
\inst12|inst|inst9|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	ena => \inst12|inst6|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCFF_X48_Y23_N9
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(0),
	sload => VCC,
	ena => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCFF_X48_Y23_N25
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(2),
	sload => VCC,
	ena => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X48_Y23_N10
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst|inst9|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X48_Y23_N11
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	ena => \inst2|inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X48_Y23_N24
\inst2|inst1|inst2|match~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst2|match~0_combout\ = (\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(7)) # ((\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(0)) # ((\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(1)) # 
-- (!\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(7),
	datab => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(0),
	datac => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(2),
	datad => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst2|inst1|inst2|match~0_combout\);

-- Location: LCCOMB_X47_Y24_N8
\inst2|inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|Selector1~0_combout\ = (!\inst2|inst1|inst1|LPM_SHIFTREG_component|dffs\(0) & ((\inst2|inst1|inst2|match~1_combout\) # (\inst2|inst1|inst2|match~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|inst1|LPM_SHIFTREG_component|dffs\(0),
	datac => \inst2|inst1|inst2|match~1_combout\,
	datad => \inst2|inst1|inst2|match~0_combout\,
	combout => \inst2|inst|Selector1~0_combout\);

-- Location: LCCOMB_X47_Y24_N28
\inst2|inst|PRESENT_STATE~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|PRESENT_STATE~16_combout\ = (\inst2|inst|PRESENT_STATE.DECIDE_STATE~regout\ & (!\inst2|inst|Selector1~0_combout\ & (!\inst2|inst|PRESENT_STATE~12_combout\ & !\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|PRESENT_STATE.DECIDE_STATE~regout\,
	datab => \inst2|inst|Selector1~0_combout\,
	datac => \inst2|inst|PRESENT_STATE~12_combout\,
	datad => \SW~combout\(0),
	combout => \inst2|inst|PRESENT_STATE~16_combout\);

-- Location: LCFF_X47_Y24_N29
\inst2|inst|PRESENT_STATE.TOGGLE_FF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst|PRESENT_STATE~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst|PRESENT_STATE.TOGGLE_FF~regout\);

-- Location: LCCOMB_X47_Y24_N30
\inst2|inst|en_ff_L\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|en_ff_L~combout\ = (\inst2|inst|PRESENT_STATE.TOGGLE_FF~regout\) # (\inst2|inst|PRESENT_STATE.TOGGLE_FF_AV~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|PRESENT_STATE.TOGGLE_FF~regout\,
	datad => \inst2|inst|PRESENT_STATE.TOGGLE_FF_AV~regout\,
	combout => \inst2|inst|en_ff_L~combout\);

-- Location: LCFF_X47_Y24_N1
\inst2|inst1|inst1|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	ena => \inst2|inst|en_ff_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst1|inst1|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X48_Y23_N8
\inst2|inst1|inst3|match~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst3|match~0_combout\ = \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(2) $ (((\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(0)) # (\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(2),
	datac => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst2|inst1|inst3|match~0_combout\);

-- Location: LCCOMB_X48_Y23_N22
\inst2|inst|PRESENT_STATE~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|PRESENT_STATE~12_combout\ = (\inst2|inst1|inst1|LPM_SHIFTREG_component|dffs\(0) & ((\inst2|inst1|inst3|match~0_combout\) # ((\inst2|inst1|inst3|match~1_combout\ & !\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|inst3|match~1_combout\,
	datab => \inst2|inst1|inst1|LPM_SHIFTREG_component|dffs\(0),
	datac => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst2|inst1|inst3|match~0_combout\,
	combout => \inst2|inst|PRESENT_STATE~12_combout\);

-- Location: LCCOMB_X47_Y24_N2
\inst2|inst|PRESENT_STATE~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|PRESENT_STATE~13_combout\ = (\inst2|inst|PRESENT_STATE.DECIDE_STATE~regout\ & (\inst2|inst|PRESENT_STATE~12_combout\ & !\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|PRESENT_STATE.DECIDE_STATE~regout\,
	datac => \inst2|inst|PRESENT_STATE~12_combout\,
	datad => \SW~combout\(0),
	combout => \inst2|inst|PRESENT_STATE~13_combout\);

-- Location: LCFF_X47_Y24_N3
\inst2|inst|PRESENT_STATE.TOGGLE_FF_AV\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst|PRESENT_STATE~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst|PRESENT_STATE.TOGGLE_FF_AV~regout\);

-- Location: LCCOMB_X47_Y24_N12
\inst2|inst|PRESENT_STATE~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|PRESENT_STATE~14_combout\ = (\inst2|inst|PRESENT_STATE.TOGGLE_FF_AV~regout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|PRESENT_STATE.TOGGLE_FF_AV~regout\,
	datad => \SW~combout\(0),
	combout => \inst2|inst|PRESENT_STATE~14_combout\);

-- Location: LCFF_X47_Y24_N13
\inst2|inst|PRESENT_STATE.DONE_STATE_AV\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst|PRESENT_STATE~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\);

-- Location: LCCOMB_X48_Y24_N20
\inst2|inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|Selector2~0_combout\ = (\inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\) # ((!\inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\ & (!\inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\ & \inst2|inst|PRESENT_STATE.WAIT_CHAR_AV~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst6|PRESENT_STATE.DATA_AVAILABLE~regout\,
	datab => \inst12|inst6|PRESENT_STATE.SHIFT_IN_4~regout\,
	datac => \inst2|inst|PRESENT_STATE.WAIT_CHAR_AV~regout\,
	datad => \inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\,
	combout => \inst2|inst|Selector2~0_combout\);

-- Location: LCFF_X48_Y24_N21
\inst2|inst|PRESENT_STATE.WAIT_CHAR_AV\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst|Selector2~0_combout\,
	sclr => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst|PRESENT_STATE.WAIT_CHAR_AV~regout\);

-- Location: LCCOMB_X48_Y24_N16
\inst|b2v_inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|Selector0~0_combout\ = (!\inst2|inst|PRESENT_STATE.TOGGLE_FF_AV~regout\ & (!\inst2|inst|PRESENT_STATE.WAIT_CHAR_AV~regout\ & !\inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|PRESENT_STATE.TOGGLE_FF_AV~regout\,
	datac => \inst2|inst|PRESENT_STATE.WAIT_CHAR_AV~regout\,
	datad => \inst2|inst|PRESENT_STATE.DONE_STATE_AV~regout\,
	combout => \inst|b2v_inst|Selector0~0_combout\);

-- Location: LCCOMB_X48_Y24_N18
\inst|b2v_inst|PRESENT_STATE~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|PRESENT_STATE~15_combout\ = (\inst|b2v_inst|PRESENT_STATE.IDLE_1~regout\ & (!\inst|b2v_inst|Selector0~0_combout\ & !\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.IDLE_1~regout\,
	datac => \inst|b2v_inst|Selector0~0_combout\,
	datad => \SW~combout\(0),
	combout => \inst|b2v_inst|PRESENT_STATE~15_combout\);

-- Location: LCFF_X48_Y24_N19
\inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst|PRESENT_STATE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\);

-- Location: LCCOMB_X48_Y24_N8
\inst|b2v_inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|Selector1~0_combout\ = (\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\) # ((\inst|b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\) # (\inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\,
	datad => \inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\,
	combout => \inst|b2v_inst|Selector1~0_combout\);

-- Location: LCCOMB_X48_Y24_N14
\inst|b2v_inst|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|Selector1~1_combout\ = (\inst|b2v_inst|Selector1~0_combout\) # ((\inst|b2v_inst|PRESENT_STATE~17_combout\ & (\inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\ & !\inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE~17_combout\,
	datab => \inst|b2v_inst|Selector1~0_combout\,
	datac => \inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\,
	datad => \inst|b2v_inst1|inst23|lpm_and_component|and_node[0][14]~4_combout\,
	combout => \inst|b2v_inst|Selector1~1_combout\);

-- Location: LCFF_X48_Y24_N15
\inst|b2v_inst|PRESENT_STATE.IDLE_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst|Selector1~1_combout\,
	sclr => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\);

-- Location: LCCOMB_X44_Y25_N0
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X46_Y25_N2
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\ = \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (VCC)
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\ = CARRY(\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X45_Y25_N22
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~0_combout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44_combout\);

-- Location: LCCOMB_X45_Y25_N24
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\ = ((\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\) # (\inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\);

-- Location: LCCOMB_X45_Y25_N2
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\ = (\inst|b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\) # ((\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\) # ((\inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\) # 
-- (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.END_CNT_1ms~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\,
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\);

-- Location: LCFF_X44_Y25_N1
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~44_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X44_Y25_N2
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1) & ((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X46_Y25_N4
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\ & VCC)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- !\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[0]~1\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X45_Y25_N28
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~2_combout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43_combout\);

-- Location: LCFF_X44_Y25_N3
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~43_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X44_Y25_N4
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2) & !\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X49_Y26_N22
\inst|b2v_inst1|inst|inst73|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst73|O~0_combout\ = (\inst|b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0) & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst7|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst73|O~0_combout\);

-- Location: LCFF_X49_Y26_N3
\inst|b2v_inst1|inst|inst8|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst|inst73|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X49_Y26_N2
\inst|b2v_inst1|inst|inst74|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst74|O~0_combout\ = (\inst|b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0) & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst1|inst|inst8|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst74|O~0_combout\);

-- Location: LCFF_X49_Y26_N9
\inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst|inst74|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X49_Y26_N8
\inst|b2v_inst1|inst|inst75|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst75|O~0_combout\ = (\inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0) & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst1|inst|inst9|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst75|O~0_combout\);

-- Location: LCFF_X49_Y25_N11
\inst|b2v_inst1|inst|inst10|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst|inst75|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X48_Y26_N30
\inst|b2v_inst1|inst|inst76|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst76|O~0_combout\ = (\inst|b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0) & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst76|O~0_combout\);

-- Location: LCCOMB_X48_Y26_N18
\inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs[0]~feeder_combout\ = \inst|b2v_inst1|inst|inst76|O~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst|inst76|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X48_Y26_N19
\inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X48_Y26_N12
\inst|b2v_inst1|inst|inst77|O\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst77|O~combout\ = (\inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst11|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst77|O~combout\);

-- Location: LCCOMB_X48_Y26_N22
\inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs[0]~feeder_combout\ = \inst|b2v_inst1|inst|inst77|O~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst|inst77|O~combout\,
	combout => \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X48_Y26_N23
\inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X48_Y26_N24
\inst|b2v_inst1|inst|inst78|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst78|O~0_combout\ = (!\inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0) & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst78|O~0_combout\);

-- Location: LCCOMB_X47_Y26_N2
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ = (\inst|b2v_inst1|inst|inst74|O~0_combout\ & (\inst|b2v_inst1|inst|inst78|O~0_combout\ $ (GND))) # (!\inst|b2v_inst1|inst|inst74|O~0_combout\ & 
-- (!\inst|b2v_inst1|inst|inst78|O~0_combout\ & VCC))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\ = CARRY((\inst|b2v_inst1|inst|inst74|O~0_combout\ & !\inst|b2v_inst1|inst|inst78|O~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst74|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst78|O~0_combout\,
	datad => VCC,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~1\);

-- Location: LCCOMB_X48_Y26_N0
\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0_combout\ = !\inst|b2v_inst1|inst|inst78|O~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst1|inst|inst78|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0_combout\);

-- Location: LCFF_X48_Y26_N1
\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X48_Y26_N10
\inst|b2v_inst1|inst|inst79|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst79|O~0_combout\ = (\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst79|O~0_combout\);

-- Location: LCFF_X48_Y25_N29
\inst|b2v_inst1|inst|inst14|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst|inst79|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0));

-- Location: LCFF_X49_Y25_N3
\inst|b2v_inst1|inst|inst3|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst|inst69|O~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X49_Y25_N16
\inst|b2v_inst1|inst|inst70|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst70|O~0_combout\ = (\inst|b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0) & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst70|O~0_combout\);

-- Location: LCFF_X49_Y25_N17
\inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst|inst70|O~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X49_Y25_N24
\inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\ = (\inst|b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0) $ (\inst|b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0) $ (\inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0)))) # 
-- (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst10|lpm_ff_component|dffs\(0),
	datab => \inst|b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0),
	datac => \inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\);

-- Location: LCCOMB_X48_Y25_N28
\inst|b2v_inst1|inst|inst67|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst67|O~0_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (\inst|b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0) $ (!\inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \inst|b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\,
	combout => \inst|b2v_inst1|inst|inst67|O~0_combout\);

-- Location: LCCOMB_X49_Y25_N30
\inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0_combout\ = !\inst|b2v_inst1|inst|inst67|O~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst|inst67|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0_combout\);

-- Location: LCFF_X49_Y25_N31
\inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X49_Y25_N10
\inst|b2v_inst1|inst|inst68|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst68|O~0_combout\ = (\inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst|inst68|O~0_combout\);

-- Location: LCFF_X49_Y25_N21
\inst|b2v_inst1|inst|inst2|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst|inst68|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X49_Y25_N28
\inst|b2v_inst1|inst|inst69|O\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst69|O~combout\ = (\inst|b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \inst|b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst|inst69|O~combout\);

-- Location: LCCOMB_X49_Y25_N12
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\ = (\inst|b2v_inst1|inst|inst68|O~0_combout\ & ((\inst|b2v_inst1|inst|inst69|O~combout\ & (!\inst|b2v_inst1|inst|inst70|O~0_combout\ & 
-- \inst|b2v_inst1|inst|inst67|O~0_combout\)) # (!\inst|b2v_inst1|inst|inst69|O~combout\ & (\inst|b2v_inst1|inst|inst70|O~0_combout\)))) # (!\inst|b2v_inst1|inst|inst68|O~0_combout\ & (\inst|b2v_inst1|inst|inst69|O~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst68|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst69|O~combout\,
	datac => \inst|b2v_inst1|inst|inst70|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst67|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\);

-- Location: LCCOMB_X49_Y25_N2
\inst|b2v_inst1|inst|inst80|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst80|O~0_combout\ = (\inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0) & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst80|O~0_combout\);

-- Location: LCFF_X49_Y25_N29
\inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst|inst80|O~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X49_Y26_N20
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~20_combout\ = (\inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0) $ (((\inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0)) # (\inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0))))) 
-- # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0),
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst|inst4|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~20_combout\);

-- Location: LCCOMB_X49_Y25_N8
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\ = (\inst|b2v_inst1|inst|inst68|O~0_combout\ & (\inst|b2v_inst1|inst|inst69|O~combout\ $ (((!\inst|b2v_inst1|inst|inst67|O~0_combout\))))) # 
-- (!\inst|b2v_inst1|inst|inst68|O~0_combout\ & ((\inst|b2v_inst1|inst|inst69|O~combout\ & (\inst|b2v_inst1|inst|inst70|O~0_combout\ & !\inst|b2v_inst1|inst|inst67|O~0_combout\)) # (!\inst|b2v_inst1|inst|inst69|O~combout\ & 
-- (\inst|b2v_inst1|inst|inst70|O~0_combout\ $ (!\inst|b2v_inst1|inst|inst67|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst68|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst69|O~combout\,
	datac => \inst|b2v_inst1|inst|inst70|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst67|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\);

-- Location: LCCOMB_X49_Y25_N18
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~24_combout\ = (\inst|b2v_inst1|inst|inst68|O~0_combout\ & (((!\inst|b2v_inst1|inst|inst70|O~0_combout\ & !\inst|b2v_inst1|inst|inst67|O~0_combout\)))) # 
-- (!\inst|b2v_inst1|inst|inst68|O~0_combout\ & ((\inst|b2v_inst1|inst|inst70|O~0_combout\) # ((\inst|b2v_inst1|inst|inst69|O~combout\ & \inst|b2v_inst1|inst|inst67|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst68|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst69|O~combout\,
	datac => \inst|b2v_inst1|inst|inst70|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst67|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~24_combout\);

-- Location: LCCOMB_X48_Y25_N30
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~25_combout\ = \inst|b2v_inst1|inst|inst70|O~0_combout\ $ (((\inst|b2v_inst1|inst|inst67|O~0_combout\ & ((\inst|b2v_inst1|inst|inst68|O~0_combout\) # 
-- (\inst|b2v_inst1|inst|inst69|O~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst68|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst69|O~combout\,
	datac => \inst|b2v_inst1|inst|inst70|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst67|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~25_combout\);

-- Location: LCCOMB_X49_Y25_N4
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~26_combout\ = \inst|b2v_inst1|inst|inst69|O~combout\ $ (((\inst|b2v_inst1|inst|inst68|O~0_combout\) # (\inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\ $ 
-- (\inst|b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst68|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst69|O~combout\,
	datac => \inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\,
	datad => \inst|b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~26_combout\);

-- Location: LCCOMB_X49_Y25_N22
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~27_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (\inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0) $ 
-- (\inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\ $ (\inst|b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0),
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \inst|b2v_inst1|inst|inst15|lpm_xor_component|xor_cascade[0][3]~0_combout\,
	datad => \inst|b2v_inst1|inst|inst14|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~27_combout\);

-- Location: LCCOMB_X48_Y25_N0
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\ = CARRY((\inst|b2v_inst1|inst|inst80|O~0_combout\ & !\inst|b2v_inst1|inst|inst67|O~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst80|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst67|O~0_combout\,
	datad => VCC,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\);

-- Location: LCCOMB_X48_Y25_N2
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\ = CARRY((\inst|b2v_inst1|inst|inst71|O~0_combout\ & 
-- ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~27_combout\))) # (!\inst|b2v_inst1|inst|inst71|O~0_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~27_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst71|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][9]~27_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[4]~1_cout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\);

-- Location: LCCOMB_X48_Y25_N4
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\ = CARRY((\inst|b2v_inst1|inst|inst72|O~0_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~26_combout\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\))) # (!\inst|b2v_inst1|inst|inst72|O~0_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~26_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst72|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][10]~26_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[5]~3_cout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\);

-- Location: LCCOMB_X48_Y25_N6
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\ = CARRY((\inst|b2v_inst1|inst|inst73|O~0_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~25_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\)) # (!\inst|b2v_inst1|inst|inst73|O~0_combout\ & 
-- ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst73|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][11]~25_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[6]~5_cout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\);

-- Location: LCCOMB_X48_Y25_N8
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\ = ((\inst|b2v_inst1|inst|inst80|O~0_combout\ $ (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~24_combout\ $ 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\ = CARRY((\inst|b2v_inst1|inst|inst80|O~0_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~24_combout\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\))) # (!\inst|b2v_inst1|inst|inst80|O~0_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~24_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst80|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][12]~24_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[7]~7_cout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\);

-- Location: LCCOMB_X48_Y25_N10
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~23_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\ & VCC)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\)))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~23_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\) # (GND)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~23_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~23_combout\ & ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][9]~23_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][13]~22_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~9\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\);

-- Location: LCCOMB_X48_Y25_N12
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\ = ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~21_combout\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~20_combout\ $ (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~21_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~20_combout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~21_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~20_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][14]~21_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][10]~20_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~11\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~12_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\);

-- Location: LCCOMB_X48_Y25_N14
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~18_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\ & VCC)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\)))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~18_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\) # (GND)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~18_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~18_combout\ & ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][11]~18_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][15]~19_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[10]~13\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~14_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[11]~15\);

-- Location: LCCOMB_X47_Y25_N0
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\inst|b2v_inst1|inst|inst74|O~0_combout\ & 
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst74|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[8]~8_combout\,
	datad => VCC,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X47_Y25_N2
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\inst|b2v_inst1|inst|inst75|O~0_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\)) # 
-- (!\inst|b2v_inst1|inst|inst75|O~0_combout\ & ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst75|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[9]~10_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X47_Y25_N8
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ $ (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~16_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X46_Y25_N6
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((GND) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\ $ (GND)))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[1]~3\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X45_Y25_N18
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~4_combout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42_combout\);

-- Location: LCFF_X44_Y25_N5
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~42_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X44_Y25_N6
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3) & ((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X44_Y25_N8
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4) & !\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X49_Y25_N14
\inst|b2v_inst1|inst|inst71|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst71|O~0_combout\ = (!\inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0) & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst1|inst|inst5|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst71|O~0_combout\);

-- Location: LCCOMB_X49_Y26_N24
\inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0_combout\ = !\inst|b2v_inst1|inst|inst71|O~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst|inst71|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0_combout\);

-- Location: LCFF_X49_Y26_N25
\inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X49_Y26_N4
\inst|b2v_inst1|inst|inst72|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst72|O~0_combout\ = (\inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0) & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst1|inst|inst6|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst|inst72|O~0_combout\);

-- Location: LCCOMB_X49_Y26_N12
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~13_combout\ = (\inst|b2v_inst1|inst|inst73|O~0_combout\ & ((\inst|b2v_inst1|inst|inst80|O~0_combout\ & ((\inst|b2v_inst1|inst|inst72|O~0_combout\) # 
-- (\inst|b2v_inst1|inst|inst71|O~0_combout\))) # (!\inst|b2v_inst1|inst|inst80|O~0_combout\ & (\inst|b2v_inst1|inst|inst72|O~0_combout\ & \inst|b2v_inst1|inst|inst71|O~0_combout\)))) # (!\inst|b2v_inst1|inst|inst73|O~0_combout\ & 
-- (\inst|b2v_inst1|inst|inst71|O~0_combout\ $ (((!\inst|b2v_inst1|inst|inst72|O~0_combout\) # (!\inst|b2v_inst1|inst|inst80|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst80|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst73|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst72|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst71|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~13_combout\);

-- Location: LCCOMB_X49_Y25_N20
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\ = (\inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0) & (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (\inst|b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0) & 
-- \inst|b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst1|lpm_ff_component|dffs\(0),
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \inst|b2v_inst1|inst|inst2|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst|inst3|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\);

-- Location: LCCOMB_X49_Y26_N0
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~16_combout\ = (\inst|b2v_inst1|inst|inst73|O~0_combout\ & (((\inst|b2v_inst1|inst|inst71|O~0_combout\)))) # (!\inst|b2v_inst1|inst|inst73|O~0_combout\ & 
-- ((\inst|b2v_inst1|inst|inst71|O~0_combout\ & (\inst|b2v_inst1|inst|inst72|O~0_combout\ & !\inst|b2v_inst1|inst|inst80|O~0_combout\)) # (!\inst|b2v_inst1|inst|inst71|O~0_combout\ & ((\inst|b2v_inst1|inst|inst80|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst72|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst73|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst71|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst80|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][12]~16_combout\);

-- Location: LCCOMB_X48_Y25_N18
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~14_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\ & VCC)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\)))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~14_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\) # (GND)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~14_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~14_combout\ & ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][13]~14_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[0][17]~15_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[12]~17\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\);

-- Location: LCCOMB_X48_Y25_N20
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~13_combout\ & 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\ $ (GND))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~13_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\ & VCC))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~13_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][14]~13_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~19\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\);

-- Location: LCCOMB_X47_Y25_N10
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[13]~18_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X47_Y25_N12
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\ $ (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~20_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X46_Y25_N8
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\ & VCC)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[2]~5\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X46_Y25_N10
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & ((GND) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\ $ (GND)))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~7\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\);

-- Location: LCCOMB_X45_Y25_N6
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40_combout\ = (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\ & \inst|b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~8_combout\,
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40_combout\);

-- Location: LCFF_X44_Y25_N9
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~40_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X44_Y25_N10
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5) & ((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X44_Y25_N12
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6) & !\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X49_Y26_N26
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~12_combout\ = (\inst|b2v_inst1|inst|inst72|O~0_combout\ & ((\inst|b2v_inst1|inst|inst71|O~0_combout\) # ((!\inst|b2v_inst1|inst|inst73|O~0_combout\ & 
-- !\inst|b2v_inst1|inst|inst80|O~0_combout\)))) # (!\inst|b2v_inst1|inst|inst72|O~0_combout\ & (\inst|b2v_inst1|inst|inst73|O~0_combout\ & (!\inst|b2v_inst1|inst|inst71|O~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst72|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst73|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst71|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst80|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~12_combout\);

-- Location: LCCOMB_X48_Y25_N22
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~12_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~12_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\) # (GND)))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[1][15]~12_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[14]~21\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~23\);

-- Location: LCCOMB_X47_Y25_N14
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[15]~22_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X46_Y25_N12
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & 
-- ((\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\) # (GND)))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\ = CARRY((!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[4]~9\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\);

-- Location: LCCOMB_X46_Y25_N14
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & ((GND) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\ $ (GND)))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~11\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\);

-- Location: LCCOMB_X45_Y25_N26
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38_combout\ = (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\ & 
-- \inst|b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~12_combout\,
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38_combout\);

-- Location: LCFF_X44_Y25_N13
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~38_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X45_Y25_N20
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39_combout\ = (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\ & 
-- \inst|b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[5]~10_combout\,
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39_combout\);

-- Location: LCFF_X44_Y25_N11
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~39_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X43_Y25_N4
\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6) & 
-- (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5) & \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7),
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(6),
	datac => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(5),
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(4),
	combout => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\);

-- Location: LCCOMB_X45_Y25_N0
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41_combout\ = (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\ & \inst|b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[3]~6_combout\,
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41_combout\);

-- Location: LCFF_X44_Y25_N7
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~41_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X43_Y25_N14
\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3) & 
-- (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0) & \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(2),
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3),
	datac => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(0),
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1),
	combout => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\);

-- Location: LCCOMB_X44_Y25_N14
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7) & ((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X47_Y26_N26
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\ = (\inst|b2v_inst1|inst|inst75|O~0_combout\ & (\inst|b2v_inst1|inst|inst74|O~0_combout\ $ (((\inst|b2v_inst1|inst|inst76|O~0_combout\))))) # 
-- (!\inst|b2v_inst1|inst|inst75|O~0_combout\ & ((\inst|b2v_inst1|inst|inst74|O~0_combout\ & (\inst|b2v_inst1|inst|inst77|O~combout\ $ (!\inst|b2v_inst1|inst|inst76|O~0_combout\))) # (!\inst|b2v_inst1|inst|inst74|O~0_combout\ & 
-- (\inst|b2v_inst1|inst|inst77|O~combout\ & !\inst|b2v_inst1|inst|inst76|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst75|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst74|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst77|O~combout\,
	datad => \inst|b2v_inst1|inst|inst76|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\);

-- Location: LCCOMB_X47_Y26_N30
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~7_combout\ = \inst|b2v_inst1|inst|inst77|O~combout\ $ (((!\inst|b2v_inst1|inst|inst74|O~0_combout\ & ((\inst|b2v_inst1|inst|inst75|O~0_combout\) # 
-- (\inst|b2v_inst1|inst|inst76|O~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst75|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst74|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst77|O~combout\,
	datad => \inst|b2v_inst1|inst|inst76|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][11]~7_combout\);

-- Location: LCCOMB_X47_Y26_N12
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~5_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\ & VCC)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\)))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~5_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\) # (GND)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~5_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~5_combout\ & ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][9]~5_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][13]~4_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~9\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\);

-- Location: LCCOMB_X47_Y25_N18
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ & VCC)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ & ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\ & ((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[0]|auto_generated|result[17]~26_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X46_Y25_N16
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\ & VCC)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[6]~13\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~15\);

-- Location: LCCOMB_X45_Y25_N16
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37_combout\ = (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\ & 
-- \inst|b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[7]~14_combout\,
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37_combout\);

-- Location: LCFF_X44_Y25_N15
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~37_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X44_Y25_N18
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9) & ((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X47_Y26_N0
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~3_combout\ = (\inst|b2v_inst1|inst|inst75|O~0_combout\ & (\inst|b2v_inst1|inst|inst77|O~combout\ $ (((!\inst|b2v_inst1|inst|inst76|O~0_combout\) # 
-- (!\inst|b2v_inst1|inst|inst74|O~0_combout\))))) # (!\inst|b2v_inst1|inst|inst75|O~0_combout\ & ((\inst|b2v_inst1|inst|inst74|O~0_combout\ & ((\inst|b2v_inst1|inst|inst77|O~combout\) # (\inst|b2v_inst1|inst|inst76|O~0_combout\))) # 
-- (!\inst|b2v_inst1|inst|inst74|O~0_combout\ & (\inst|b2v_inst1|inst|inst77|O~combout\ & \inst|b2v_inst1|inst|inst76|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst75|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst74|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst77|O~combout\,
	datad => \inst|b2v_inst1|inst|inst76|O~0_combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~3_combout\);

-- Location: LCCOMB_X47_Y26_N14
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ = ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~3_combout\ $ (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~3_combout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\))) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~3_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[3][10]~combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][14]~3_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~11\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~13\);

-- Location: LCCOMB_X47_Y25_N20
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ $ (GND))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ & VCC))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X47_Y25_N22
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X46_Y25_N20
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & 
-- ((\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\) # (GND)))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\ = CARRY((!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[8]~17\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~19\);

-- Location: LCCOMB_X45_Y25_N4
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & 
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[9]~18_combout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35_combout\);

-- Location: LCFF_X44_Y25_N19
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~35_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X44_Y25_N22
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\)) 
-- # (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11) & ((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X48_Y26_N8
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~1_combout\ = (\inst|b2v_inst1|inst|inst76|O~0_combout\ & ((\inst|b2v_inst1|inst|inst75|O~0_combout\ & (\inst|b2v_inst1|inst|inst74|O~0_combout\ & 
-- !\inst|b2v_inst1|inst|inst77|O~combout\)) # (!\inst|b2v_inst1|inst|inst75|O~0_combout\ & ((\inst|b2v_inst1|inst|inst77|O~combout\))))) # (!\inst|b2v_inst1|inst|inst76|O~0_combout\ & (((\inst|b2v_inst1|inst|inst77|O~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst74|O~0_combout\,
	datab => \inst|b2v_inst1|inst|inst76|O~0_combout\,
	datac => \inst|b2v_inst1|inst|inst75|O~0_combout\,
	datad => \inst|b2v_inst1|inst|inst77|O~combout\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~1_combout\);

-- Location: LCCOMB_X48_Y26_N20
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\ = ((\inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0))) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datac => \inst|b2v_inst1|inst|inst12|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~1_combout\);

-- Location: LCCOMB_X47_Y26_N18
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ = ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~1_combout\ $ (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\)))) # (GND)
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ & (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~1_combout\ 
-- & !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\ & 
-- ((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~1_combout\) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|_~0_combout\,
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|romout[2][16]~1_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~15\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~17\);

-- Location: LCCOMB_X47_Y25_N24
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ $ (GND))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ & VCC))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\);

-- Location: LCCOMB_X46_Y25_N24
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ & 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ & 
-- ((\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\) # (GND)))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\ = CARRY((!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\) # 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[10]~21\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\);

-- Location: LCCOMB_X45_Y25_N8
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & 
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~22_combout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33_combout\);

-- Location: LCFF_X44_Y25_N23
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~33_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X44_Y25_N24
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12) & 
-- !\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X44_Y25_N26
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\)) 
-- # (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13) & ((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\) # 
-- (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCCOMB_X47_Y26_N22
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ & 
-- (((\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ & 
-- ((((\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)))))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\ & 
-- ((\inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0)) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst|inst13|lpm_ff_component|dffs\(0),
	datab => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~19\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\);

-- Location: LCCOMB_X47_Y26_N24
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\ = \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~21\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X47_Y25_N28
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ & 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ $ (GND))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ & 
-- (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ & VCC))
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ & 
-- !\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\,
	cout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\);

-- Location: LCCOMB_X47_Y25_N30
\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ = \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\ $ 
-- (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\,
	cin => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\,
	combout => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\);

-- Location: LCCOMB_X46_Y25_N26
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ & ((GND) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\))) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\ $ (GND)))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\ = CARRY((\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\) # 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[11]~23\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\);

-- Location: LCCOMB_X46_Y25_N28
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\ = (\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ & 
-- (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\ & VCC)) # (!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ & 
-- (!\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\))
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\ = CARRY((!\inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ & 
-- !\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst|inst|lpm_mult_component|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~25\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\,
	cout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\);

-- Location: LCCOMB_X45_Y25_N12
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31_combout\ = (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & 
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datad => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~26_combout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31_combout\);

-- Location: LCFF_X44_Y25_N27
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~31_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X44_Y25_N28
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ $ 
-- (GND))) # (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14) & (!\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14) & 
-- !\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X46_Y25_N30
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\ = !\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[13]~27\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\);

-- Location: LCCOMB_X46_Y25_N0
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30_combout\ = (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\inst|b2v_inst|PRESENT_STATE.RESET~regout\ & 
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[14]~28_combout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30_combout\);

-- Location: LCFF_X44_Y25_N29
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~30_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X45_Y25_N14
\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32_combout\ = (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & (\inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\ & 
-- \inst|b2v_inst|PRESENT_STATE.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|result[12]~24_combout\,
	datad => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32_combout\);

-- Location: LCFF_X44_Y25_N25
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \inst|b2v_inst1|inst24|lpm_add_sub_component|auto_generated|op_1~32_combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X43_Y25_N0
\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\ = (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15) & (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14) & 
-- (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13) & \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15),
	datab => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(14),
	datac => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13),
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(12),
	combout => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\);

-- Location: LCCOMB_X43_Y25_N16
\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\ = (\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\ & (\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\ & 
-- (\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\ & \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~1_combout\,
	datab => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~2_combout\,
	datac => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~3_combout\,
	datad => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~0_combout\,
	combout => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\);

-- Location: LCCOMB_X48_Y24_N28
\inst|b2v_inst|PRESENT_STATE~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|PRESENT_STATE~19_combout\ = (!\SW~combout\(0) & (\inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\ & (!\inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0) & \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\,
	datac => \inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\,
	combout => \inst|b2v_inst|PRESENT_STATE~19_combout\);

-- Location: LCFF_X48_Y24_N29
\inst|b2v_inst|PRESENT_STATE.LED_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst|PRESENT_STATE~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\);

-- Location: LCCOMB_X49_Y23_N4
\inst|b2v_inst|EN_FF_BUTTON\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|EN_FF_BUTTON~combout\ = (!\inst|b2v_inst|PRESENT_STATE.LED_ON~regout\ & \inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	datac => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	combout => \inst|b2v_inst|EN_FF_BUTTON~combout\);

-- Location: LCFF_X49_Y23_N9
\inst|b2v_inst1|inst4|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst|PRESENT_STATE.LED_ON~regout\,
	sload => VCC,
	ena => \inst|b2v_inst|ALT_INV_EN_FF_BUTTON~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X50_Y23_N24
\inst2|inst1|inst|LPM_SHIFTREG_component|dffs[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[0]~_wirecell_combout\ = !\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[0]~_wirecell_combout\);

-- Location: LCCOMB_X49_Y23_N2
\inst|b2v_inst|EN_FF_LNUM\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|EN_FF_LNUM~combout\ = (\inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\) # (!\inst|b2v_inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|PRESENT_STATE.RESET~regout\,
	datad => \inst|b2v_inst|PRESENT_STATE.LOAD_LED_TIME~regout\,
	combout => \inst|b2v_inst|EN_FF_LNUM~combout\);

-- Location: LCFF_X50_Y23_N25
\inst|b2v_inst1|inst1|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs[0]~_wirecell_combout\,
	sclr => \inst|b2v_inst|ALT_INV_PRESENT_STATE.RESET~regout\,
	ena => \inst|b2v_inst|EN_FF_LNUM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X49_Y23_N30
\inst|b2v_inst1|MUX_KEY|O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|MUX_KEY|O~0_combout\ = (\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1) & ((\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0)) # ((!\KEY~combout\(2))))) # (!\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1) & 
-- (!\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0) & ((!\KEY~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	datab => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	datac => \KEY~combout\(2),
	datad => \KEY~combout\(0),
	combout => \inst|b2v_inst1|MUX_KEY|O~0_combout\);

-- Location: LCCOMB_X49_Y23_N24
\inst|b2v_inst1|MUX_KEY|O~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|MUX_KEY|O~1_combout\ = (\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0) & ((\inst|b2v_inst1|MUX_KEY|O~0_combout\ & ((!\KEY~combout\(3)))) # (!\inst|b2v_inst1|MUX_KEY|O~0_combout\ & (!\KEY~combout\(1))))) # 
-- (!\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0) & (((\inst|b2v_inst1|MUX_KEY|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	datac => \KEY~combout\(3),
	datad => \inst|b2v_inst1|MUX_KEY|O~0_combout\,
	combout => \inst|b2v_inst1|MUX_KEY|O~1_combout\);

-- Location: LCCOMB_X48_Y24_N26
\inst|b2v_inst|PRESENT_STATE~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|PRESENT_STATE~16_combout\ = (\inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\ & !\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|b2v_inst|PRESENT_STATE.IDLE_2~regout\,
	datad => \SW~combout\(0),
	combout => \inst|b2v_inst|PRESENT_STATE~16_combout\);

-- Location: LCCOMB_X48_Y24_N12
\inst|b2v_inst|PRESENT_STATE~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|PRESENT_STATE~18_combout\ = (\inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0) & (\inst|b2v_inst|PRESENT_STATE~16_combout\ & ((\inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\) # (\inst|b2v_inst1|MUX_KEY|O~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst22|lpm_and_component|and_node[0][15]~4_combout\,
	datab => \inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datac => \inst|b2v_inst1|MUX_KEY|O~1_combout\,
	datad => \inst|b2v_inst|PRESENT_STATE~16_combout\,
	combout => \inst|b2v_inst|PRESENT_STATE~18_combout\);

-- Location: LCFF_X48_Y24_N13
\inst|b2v_inst|PRESENT_STATE.END_BUTTON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst|PRESENT_STATE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\);

-- Location: LCCOMB_X42_Y24_N20
\inst9|inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst|Selector0~0_combout\ = ((\inst9|inst|CurrentState.DoneState~regout\) # ((\inst9|inst|CurrentState.WaitForData~regout\ & !\inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\))) # (!\inst9|inst|CurrentState.ResetState~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.ResetState~regout\,
	datab => \inst9|inst|CurrentState.DoneState~regout\,
	datac => \inst9|inst|CurrentState.WaitForData~regout\,
	datad => \inst|b2v_inst|PRESENT_STATE.END_BUTTON~regout\,
	combout => \inst9|inst|Selector0~0_combout\);

-- Location: LCFF_X42_Y24_N21
\inst9|inst|CurrentState.WaitForData\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|inst|Selector0~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst|CurrentState.WaitForData~regout\);

-- Location: LCCOMB_X42_Y24_N28
\inst13|inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~0_combout\ = ((\inst13|inst|PRESENT_STATE.IDLE~regout\ & ((\inst9|inst|CurrentState.WaitForData~regout\) # (\inst9|inst|CurrentState.DoneState~regout\)))) # (!\inst9|inst|CurrentState.ResetState~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.ResetState~regout\,
	datab => \inst13|inst|PRESENT_STATE.IDLE~regout\,
	datac => \inst9|inst|CurrentState.WaitForData~regout\,
	datad => \inst9|inst|CurrentState.DoneState~regout\,
	combout => \inst13|inst|Selector0~0_combout\);

-- Location: LCCOMB_X42_Y24_N22
\inst13|inst|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~1_combout\ = (\inst13|inst|Selector0~0_combout\) # ((!\inst13|inst1|inst2|END_TX~2_combout\ & \inst13|inst|PRESENT_STATE.NEXT_TX~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst2|END_TX~2_combout\,
	datab => \inst13|inst|PRESENT_STATE.NEXT_TX~regout\,
	datad => \inst13|inst|Selector0~0_combout\,
	combout => \inst13|inst|Selector0~1_combout\);

-- Location: LCFF_X42_Y24_N23
\inst13|inst|PRESENT_STATE.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst|Selector0~1_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst|PRESENT_STATE.IDLE~regout\);

-- Location: LCCOMB_X42_Y24_N14
\inst13|inst|NEXT_STATE.LOAD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|NEXT_STATE.LOAD~0_combout\ = (\inst9|inst|CurrentState.ResetState~regout\ & (\inst13|inst|PRESENT_STATE.IDLE~regout\ & (!\inst9|inst|CurrentState.WaitForData~regout\ & !\inst9|inst|CurrentState.DoneState~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.ResetState~regout\,
	datab => \inst13|inst|PRESENT_STATE.IDLE~regout\,
	datac => \inst9|inst|CurrentState.WaitForData~regout\,
	datad => \inst9|inst|CurrentState.DoneState~regout\,
	combout => \inst13|inst|NEXT_STATE.LOAD~0_combout\);

-- Location: LCFF_X42_Y24_N15
\inst13|inst|PRESENT_STATE.LOAD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst|NEXT_STATE.LOAD~0_combout\,
	aclr => \SW[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst|PRESENT_STATE.LOAD~regout\);

-- Location: LCCOMB_X42_Y24_N26
\inst9|inst|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst|WideOr6~0_combout\ = (!\inst9|inst|CurrentState.SendB~regout\ & !\inst9|inst|CurrentState.SendD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.SendB~regout\,
	datac => \inst9|inst|CurrentState.SendD~regout\,
	combout => \inst9|inst|WideOr6~0_combout\);

-- Location: LCCOMB_X43_Y25_N2
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[11]~feeder_combout\ = \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(11),
	combout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[11]~feeder_combout\);

-- Location: LCCOMB_X42_Y24_N0
\inst13|inst|NEXT_STATE.LOAD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|NEXT_STATE.LOAD~1_combout\ = (!\inst9|inst|CurrentState.WaitForData~regout\ & (\inst9|inst|CurrentState.ResetState~regout\ & !\inst9|inst|CurrentState.DoneState~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst|CurrentState.WaitForData~regout\,
	datac => \inst9|inst|CurrentState.ResetState~regout\,
	datad => \inst9|inst|CurrentState.DoneState~regout\,
	combout => \inst13|inst|NEXT_STATE.LOAD~1_combout\);

-- Location: LCFF_X43_Y25_N3
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[11]~feeder_combout\,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(11));

-- Location: LCFF_X43_Y25_N25
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(3),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCFF_X43_Y25_N29
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(7),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X44_Y25_N30
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15~combout\ = \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\ $ (\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15),
	cin => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15~combout\);

-- Location: LCFF_X44_Y25_N31
\inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \inst|b2v_inst|EN_FF_BUTTON~combout\,
	sload => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|counter_reg_bit1a[15]~0_combout\,
	ena => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15));

-- Location: LCFF_X43_Y25_N23
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(15),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(15));

-- Location: LCCOMB_X42_Y24_N10
\inst9|inst|InSel[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst|InSel\(1) = (\inst9|inst|CurrentState.SendD~regout\) # (\inst9|inst|CurrentState.SendC~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|CurrentState.SendD~regout\,
	datad => \inst9|inst|CurrentState.SendC~regout\,
	combout => \inst9|inst|InSel\(1));

-- Location: LCCOMB_X43_Y25_N22
\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ = (\inst9|inst|WideOr6~0_combout\ & ((\inst9|inst|InSel\(1) & (\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(7))) # (!\inst9|inst|InSel\(1) & 
-- ((\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(15)))))) # (!\inst9|inst|WideOr6~0_combout\ & (((\inst9|inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|WideOr6~0_combout\,
	datab => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(7),
	datac => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(15),
	datad => \inst9|inst|InSel\(1),
	combout => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y25_N24
\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ = (\inst9|inst|WideOr6~0_combout\ & (((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~2_combout\)))) # (!\inst9|inst|WideOr6~0_combout\ & 
-- ((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ & ((\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(3)))) # (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ & 
-- (\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|WideOr6~0_combout\,
	datab => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(11),
	datac => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~2_combout\,
	combout => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X40_Y25_N8
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(1),
	combout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y25_N9
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCFF_X43_Y25_N19
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(9),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCFF_X43_Y25_N7
\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	sdata => \inst|b2v_inst1|inst19|lpm_counter_component|auto_generated|safe_q\(13),
	sload => VCC,
	ena => \inst13|inst|NEXT_STATE.LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(13));

-- Location: LCCOMB_X43_Y25_N6
\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ = (\inst9|inst|WideOr6~0_combout\ & ((\inst9|inst|InSel\(1) & (\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(5))) # (!\inst9|inst|InSel\(1) & 
-- ((\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(13)))))) # (!\inst9|inst|WideOr6~0_combout\ & (((\inst9|inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(5),
	datab => \inst9|inst|WideOr6~0_combout\,
	datac => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(13),
	datad => \inst9|inst|InSel\(1),
	combout => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X43_Y25_N18
\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ = (\inst9|inst|WideOr6~0_combout\ & (((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~4_combout\)))) # (!\inst9|inst|WideOr6~0_combout\ & 
-- ((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ & (\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(1))) # (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ & 
-- ((\inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|WideOr6~0_combout\,
	datab => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(1),
	datac => \inst9|reg_in_imp|LPM_SHIFTREG_component|dffs\(9),
	datad => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~4_combout\,
	combout => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X42_Y25_N4
\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ & ((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\) # 
-- (\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~7_combout\,
	datab => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	datad => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	combout => \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X42_Y25_N18
\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ = (\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & ((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & 
-- (\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\ & VCC)) # (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & (!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\)))) # 
-- (!\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & ((\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & (!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # 
-- (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & ((\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # (GND)))))
-- \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\ = CARRY((\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & 
-- !\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # (!\inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & ((!\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # 
-- (!\inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datab => \inst9|reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datad => VCC,
	cin => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\,
	combout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	cout => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X41_Y24_N26
\inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\(4) = (\inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\) # ((!\inst9|inst|CurrentState.SendC~regout\ & (!\inst9|inst|CurrentState.SendA~regout\ & 
-- \inst9|inst|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.SendC~regout\,
	datab => \inst9|inst|CurrentState.SendA~regout\,
	datac => \inst9|inst|WideOr6~0_combout\,
	datad => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	combout => \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\(4));

-- Location: LCFF_X41_Y24_N27
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst9|out_mux_imp|LPM_MUX_component|auto_generated|result_node\(4),
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X41_Y24_N8
\inst13|inst1|inst1|LPM_SHIFTREG_component|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst1|LPM_SHIFTREG_component|_~4_combout\ = (\inst13|inst|PRESENT_STATE.LOAD~regout\ & ((\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(4)))) # (!\inst13|inst|PRESENT_STATE.LOAD~regout\ & 
-- (\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(6),
	datab => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(4),
	datac => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	combout => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~4_combout\);

-- Location: LCCOMB_X42_Y24_N24
\inst13|inst|EN_TX_REG~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|EN_TX_REG~0_combout\ = (!\inst13|inst|PRESENT_STATE.IDLE~regout\ & !\inst13|inst|PRESENT_STATE.START_TX~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|PRESENT_STATE.IDLE~regout\,
	datad => \inst13|inst|PRESENT_STATE.START_TX~regout\,
	combout => \inst13|inst|EN_TX_REG~0_combout\);

-- Location: LCFF_X41_Y24_N9
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~4_combout\,
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X41_Y24_N10
\inst13|inst1|inst1|LPM_SHIFTREG_component|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst1|LPM_SHIFTREG_component|_~5_combout\ = (\inst13|inst|PRESENT_STATE.LOAD~regout\ & (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(3))) # (!\inst13|inst|PRESENT_STATE.LOAD~regout\ & 
-- ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(3),
	datab => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(5),
	datac => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	combout => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~5_combout\);

-- Location: LCFF_X41_Y24_N11
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~5_combout\,
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X41_Y24_N28
\inst13|inst1|inst1|LPM_SHIFTREG_component|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst1|LPM_SHIFTREG_component|_~6_combout\ = (\inst13|inst|PRESENT_STATE.LOAD~regout\ & (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(2))) # (!\inst13|inst|PRESENT_STATE.LOAD~regout\ & 
-- ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(2),
	datac => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	datad => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~6_combout\);

-- Location: LCFF_X41_Y24_N29
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~6_combout\,
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X42_Y24_N8
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\ = (\inst9|inst|CurrentState.ResetState~regout\ & ((\inst9|inst|CurrentState.SendC~regout\) # ((\inst9|inst|CurrentState.SendA~regout\) # (!\inst9|inst|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.ResetState~regout\,
	datab => \inst9|inst|CurrentState.SendC~regout\,
	datac => \inst9|inst|CurrentState.SendA~regout\,
	datad => \inst9|inst|WideOr6~0_combout\,
	combout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\);

-- Location: LCCOMB_X41_Y25_N12
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[1]~5_combout\ = (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\ & \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	datad => \inst9|main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	combout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[1]~5_combout\);

-- Location: LCFF_X41_Y25_N13
\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X41_Y24_N22
\inst13|inst1|inst1|LPM_SHIFTREG_component|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst1|LPM_SHIFTREG_component|_~7_combout\ = (\inst13|inst|PRESENT_STATE.LOAD~regout\ & ((\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(1)))) # (!\inst13|inst|PRESENT_STATE.LOAD~regout\ & 
-- (\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(3),
	datac => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	datad => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~7_combout\);

-- Location: LCFF_X41_Y24_N23
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~7_combout\,
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X41_Y24_N0
\inst13|inst1|inst1|LPM_SHIFTREG_component|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst1|LPM_SHIFTREG_component|_~0_combout\ = (\inst13|inst|PRESENT_STATE.LOAD~regout\ & (\inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(0))) # (!\inst13|inst|PRESENT_STATE.LOAD~regout\ & 
-- ((\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst8|LPM_SHIFTREG_component|dffs\(0),
	datab => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(2),
	datac => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	combout => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~0_combout\);

-- Location: LCFF_X41_Y24_N1
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst1|LPM_SHIFTREG_component|_~0_combout\,
	sclr => \inst9|inst|ALT_INV_CurrentState.ResetState~regout\,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X41_Y24_N30
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\ = (\inst9|inst|CurrentState.ResetState~regout\ & (!\inst13|inst|PRESENT_STATE.LOAD~regout\ & \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|CurrentState.ResetState~regout\,
	datac => \inst13|inst|PRESENT_STATE.LOAD~regout\,
	datad => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\);

-- Location: LCFF_X41_Y24_N31
\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	ena => \inst13|inst|EN_TX_REG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X42_Y24_N2
\inst13|inst1|inst5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst5~combout\ = (\inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(0)) # ((!\inst13|inst|PRESENT_STATE.NEXT_TX~regout\ & !\inst13|inst|PRESENT_STATE.START_TX~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst1|LPM_SHIFTREG_component|dffs\(0),
	datab => \inst13|inst|PRESENT_STATE.NEXT_TX~regout\,
	datad => \inst13|inst|PRESENT_STATE.START_TX~regout\,
	combout => \inst13|inst1|inst5~combout\);

-- Location: LCCOMB_X50_Y23_N2
\inst2|inst1|inst4|cmd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst4|cmd~0_combout\ = \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(1) $ (!\inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(1),
	datad => \inst2|inst1|inst|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst2|inst1|inst4|cmd~0_combout\);

-- Location: LCFF_X50_Y23_N3
\inst|b2v_inst1|inst1|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst11|CK_div2_int~clkctrl_outclk\,
	datain => \inst2|inst1|inst4|cmd~0_combout\,
	sclr => \inst|b2v_inst|ALT_INV_PRESENT_STATE.RESET~regout\,
	ena => \inst|b2v_inst|EN_FF_LNUM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X49_Y23_N18
\inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0_combout\ = (\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1) & (\inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0) & \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	datac => \inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0_combout\);

-- Location: LCCOMB_X49_Y23_N12
\inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0_combout\ = (\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1) & (\inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0) & !\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	datac => \inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0_combout\);

-- Location: LCCOMB_X49_Y23_N22
\inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0_combout\ = (!\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1) & (\inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0) & \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	datac => \inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0_combout\);

-- Location: LCCOMB_X49_Y23_N16
\inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0_combout\ = (!\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1) & (\inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0) & !\inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(1),
	datac => \inst|b2v_inst1|inst4|lpm_ff_component|dffs\(0),
	datad => \inst|b2v_inst1|inst1|lpm_ff_component|dffs\(0),
	combout => \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0_combout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TXD~I\ : cycloneii_io
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
	datain => \inst13|inst1|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TXD);

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	datain => \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode30w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	datain => \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode22w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode14w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \inst|b2v_inst1|inst6|lpm_decode_component|auto_generated|w_anode1w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));
END structure;


