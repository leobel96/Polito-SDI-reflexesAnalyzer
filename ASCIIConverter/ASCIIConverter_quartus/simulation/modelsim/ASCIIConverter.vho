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

-- DATE "01/18/2019 18:23:21"

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

ENTITY 	ASCIIConverter IS
    PORT (
	FIN : OUT std_logic;
	WR : OUT std_logic;
	DIN : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	TOUT : IN std_logic_vector(15 DOWNTO 0);
	TX_RDY : IN std_logic;
	TAV : IN std_logic
	);
END ASCIIConverter;

-- Design Ports Information
-- FIN	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WR	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DIN[7]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DIN[6]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DIN[5]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DIN[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DIN[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DIN[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DIN[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DIN[0]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TX_RDY	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TAV	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[9]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[5]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[13]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[6]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[10]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[14]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[2]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[11]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[7]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[15]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[4]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[8]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[12]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TOUT[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ASCIIConverter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_FIN : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL ww_DIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_TOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_TX_RDY : std_logic;
SIGNAL ww_TAV : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \TAV~combout\ : std_logic;
SIGNAL \reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \reg_in_imp|LPM_SHIFTREG_component|dffs[14]~feeder_combout\ : std_logic;
SIGNAL \reg_in_imp|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \TX_RDY~combout\ : std_logic;
SIGNAL \inst|CurrentState.ResetState~feeder_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \inst|CurrentState.ResetState~regout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|CurrentState.WaitForData~regout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|CurrentState.SendT~regout\ : std_logic;
SIGNAL \inst|CurrentState.SendA~regout\ : std_logic;
SIGNAL \inst|CurrentState.SendB~regout\ : std_logic;
SIGNAL \inst|CurrentState.SendC~regout\ : std_logic;
SIGNAL \inst|CurrentState.SendD~regout\ : std_logic;
SIGNAL \inst|NextState.DoneState~0_combout\ : std_logic;
SIGNAL \inst|CurrentState.DoneState~regout\ : std_logic;
SIGNAL \inst|WideOr8~combout\ : std_logic;
SIGNAL \inst|WideOr6~0_combout\ : std_logic;
SIGNAL \reg_in_imp|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ : std_logic;
SIGNAL \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~5_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~7_combout\ : std_logic;
SIGNAL \TOUT~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_in_imp|LPM_SHIFTREG_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|InSel\ : std_logic_vector(1 DOWNTO 0);

BEGIN

FIN <= ww_FIN;
WR <= ww_WR;
DIN <= ww_DIN;
ww_CLK <= CLK;
ww_RST <= RST;
ww_TOUT <= TOUT;
ww_TX_RDY <= TX_RDY;
ww_TAV <= TAV;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);

-- Location: LCFF_X24_Y28_N21
\reg_in_imp|LPM_SHIFTREG_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(13),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(13));

-- Location: LCFF_X24_Y28_N15
\reg_in_imp|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCFF_X24_Y28_N27
\reg_in_imp|LPM_SHIFTREG_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(10),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(10));

-- Location: LCFF_X24_Y28_N5
\reg_in_imp|LPM_SHIFTREG_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \reg_in_imp|LPM_SHIFTREG_component|dffs[14]~feeder_combout\,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(14));

-- Location: LCCOMB_X24_Y28_N26
\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ = (\inst|WideOr6~0_combout\ & (\reg_in_imp|LPM_SHIFTREG_component|dffs\(14) & ((!\inst|InSel\(1))))) # (!\inst|WideOr6~0_combout\ & 
-- (((\reg_in_imp|LPM_SHIFTREG_component|dffs\(10)) # (\inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in_imp|LPM_SHIFTREG_component|dffs\(14),
	datab => \inst|WideOr6~0_combout\,
	datac => \reg_in_imp|LPM_SHIFTREG_component|dffs\(10),
	datad => \inst|InSel\(1),
	combout => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X24_Y28_N13
\reg_in_imp|LPM_SHIFTREG_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(15),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(15));

-- Location: LCFF_X24_Y28_N7
\reg_in_imp|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \reg_in_imp|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCFF_X25_Y28_N13
\reg_in_imp|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(4),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCFF_X25_Y28_N3
\reg_in_imp|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(8),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCFF_X25_Y28_N1
\reg_in_imp|LPM_SHIFTREG_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(12),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(12));

-- Location: LCCOMB_X25_Y28_N2
\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\inst|WideOr6~0_combout\ & (\reg_in_imp|LPM_SHIFTREG_component|dffs\(12) & ((!\inst|InSel\(1))))) # (!\inst|WideOr6~0_combout\ & (((\reg_in_imp|LPM_SHIFTREG_component|dffs\(8)) 
-- # (\inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \reg_in_imp|LPM_SHIFTREG_component|dffs\(12),
	datac => \reg_in_imp|LPM_SHIFTREG_component|dffs\(8),
	datad => \inst|InSel\(1),
	combout => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCFF_X25_Y28_N7
\reg_in_imp|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(0),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X25_Y28_N12
\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & ((\reg_in_imp|LPM_SHIFTREG_component|dffs\(0)) # ((!\inst|InSel\(1))))) # 
-- (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & (((\reg_in_imp|LPM_SHIFTREG_component|dffs\(4) & \inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in_imp|LPM_SHIFTREG_component|dffs\(0),
	datab => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \reg_in_imp|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst|InSel\(1),
	combout => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TAV~I\ : cycloneii_io
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
	padio => ww_TAV,
	combout => \TAV~combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[13]~I\ : cycloneii_io
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
	padio => ww_TOUT(13),
	combout => \TOUT~combout\(13));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[1]~I\ : cycloneii_io
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
	padio => ww_TOUT(1),
	combout => \TOUT~combout\(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[10]~I\ : cycloneii_io
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
	padio => ww_TOUT(10),
	combout => \TOUT~combout\(10));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[14]~I\ : cycloneii_io
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
	padio => ww_TOUT(14),
	combout => \TOUT~combout\(14));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[15]~I\ : cycloneii_io
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
	padio => ww_TOUT(15),
	combout => \TOUT~combout\(15));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[3]~I\ : cycloneii_io
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
	padio => ww_TOUT(3),
	combout => \TOUT~combout\(3));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[4]~I\ : cycloneii_io
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
	padio => ww_TOUT(4),
	combout => \TOUT~combout\(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[8]~I\ : cycloneii_io
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
	padio => ww_TOUT(8),
	combout => \TOUT~combout\(8));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[12]~I\ : cycloneii_io
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
	padio => ww_TOUT(12),
	combout => \TOUT~combout\(12));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[0]~I\ : cycloneii_io
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
	padio => ww_TOUT(0),
	combout => \TOUT~combout\(0));

-- Location: LCCOMB_X24_Y28_N14
\reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \TOUT~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TOUT~combout\(1),
	combout => \reg_in_imp|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X24_Y28_N4
\reg_in_imp|LPM_SHIFTREG_component|dffs[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_in_imp|LPM_SHIFTREG_component|dffs[14]~feeder_combout\ = \TOUT~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TOUT~combout\(14),
	combout => \reg_in_imp|LPM_SHIFTREG_component|dffs[14]~feeder_combout\);

-- Location: LCCOMB_X24_Y28_N6
\reg_in_imp|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_in_imp|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \TOUT~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TOUT~combout\(3),
	combout => \reg_in_imp|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TX_RDY~I\ : cycloneii_io
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
	padio => ww_TX_RDY,
	combout => \TX_RDY~combout\);

-- Location: LCCOMB_X24_Y28_N28
\inst|CurrentState.ResetState~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|CurrentState.ResetState~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|CurrentState.ResetState~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: LCFF_X24_Y28_N29
\inst|CurrentState.ResetState\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|CurrentState.ResetState~feeder_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CurrentState.ResetState~regout\);

-- Location: LCCOMB_X24_Y28_N2
\inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = ((\inst|CurrentState.DoneState~regout\) # ((!\TAV~combout\ & \inst|CurrentState.WaitForData~regout\))) # (!\inst|CurrentState.ResetState~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TAV~combout\,
	datab => \inst|CurrentState.ResetState~regout\,
	datac => \inst|CurrentState.WaitForData~regout\,
	datad => \inst|CurrentState.DoneState~regout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCFF_X24_Y28_N3
\inst|CurrentState.WaitForData\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|Selector0~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CurrentState.WaitForData~regout\);

-- Location: LCCOMB_X23_Y32_N8
\inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\TAV~combout\ & ((\inst|CurrentState.WaitForData~regout\) # ((!\TX_RDY~combout\ & \inst|CurrentState.SendT~regout\)))) # (!\TAV~combout\ & (!\TX_RDY~combout\ & (\inst|CurrentState.SendT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TAV~combout\,
	datab => \TX_RDY~combout\,
	datac => \inst|CurrentState.SendT~regout\,
	datad => \inst|CurrentState.WaitForData~regout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCFF_X23_Y32_N9
\inst|CurrentState.SendT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|Selector1~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CurrentState.SendT~regout\);

-- Location: LCFF_X25_Y28_N5
\inst|CurrentState.SendA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|CurrentState.SendT~regout\,
	aclr => \RST~clkctrl_outclk\,
	sload => VCC,
	ena => \TX_RDY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CurrentState.SendA~regout\);

-- Location: LCFF_X25_Y28_N11
\inst|CurrentState.SendB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|CurrentState.SendA~regout\,
	aclr => \RST~clkctrl_outclk\,
	sload => VCC,
	ena => \TX_RDY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CurrentState.SendB~regout\);

-- Location: LCFF_X25_Y28_N9
\inst|CurrentState.SendC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|CurrentState.SendB~regout\,
	aclr => \RST~clkctrl_outclk\,
	sload => VCC,
	ena => \TX_RDY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CurrentState.SendC~regout\);

-- Location: LCFF_X25_Y28_N31
\inst|CurrentState.SendD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|CurrentState.SendC~regout\,
	aclr => \RST~clkctrl_outclk\,
	sload => VCC,
	ena => \TX_RDY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CurrentState.SendD~regout\);

-- Location: LCCOMB_X24_Y28_N16
\inst|NextState.DoneState~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|NextState.DoneState~0_combout\ = (\inst|CurrentState.SendD~regout\ & \TX_RDY~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|CurrentState.SendD~regout\,
	datad => \TX_RDY~combout\,
	combout => \inst|NextState.DoneState~0_combout\);

-- Location: LCFF_X24_Y28_N17
\inst|CurrentState.DoneState\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|NextState.DoneState~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|CurrentState.DoneState~regout\);

-- Location: LCCOMB_X24_Y28_N30
\inst|WideOr8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr8~combout\ = (!\inst|CurrentState.WaitForData~regout\ & (!\inst|CurrentState.DoneState~regout\ & \inst|CurrentState.ResetState~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|CurrentState.WaitForData~regout\,
	datac => \inst|CurrentState.DoneState~regout\,
	datad => \inst|CurrentState.ResetState~regout\,
	combout => \inst|WideOr8~combout\);

-- Location: LCCOMB_X25_Y28_N10
\inst|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr6~0_combout\ = (!\inst|CurrentState.SendB~regout\ & !\inst|CurrentState.SendD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|CurrentState.SendB~regout\,
	datad => \inst|CurrentState.SendD~regout\,
	combout => \inst|WideOr6~0_combout\);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[2]~I\ : cycloneii_io
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
	padio => ww_TOUT(2),
	combout => \TOUT~combout\(2));

-- Location: LCCOMB_X24_Y28_N22
\reg_in_imp|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_in_imp|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \TOUT~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TOUT~combout\(2),
	combout => \reg_in_imp|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X24_Y28_N23
\reg_in_imp|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \reg_in_imp|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[6]~I\ : cycloneii_io
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
	padio => ww_TOUT(6),
	combout => \TOUT~combout\(6));

-- Location: LCFF_X24_Y28_N25
\reg_in_imp|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(6),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X25_Y28_N30
\inst|InSel[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|InSel\(1) = (\inst|CurrentState.SendC~regout\) # (\inst|CurrentState.SendD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|CurrentState.SendC~regout\,
	datac => \inst|CurrentState.SendD~regout\,
	combout => \inst|InSel\(1));

-- Location: LCCOMB_X24_Y28_N24
\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ = (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & ((\reg_in_imp|LPM_SHIFTREG_component|dffs\(2)) # ((!\inst|InSel\(1))))) # 
-- (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & (((\reg_in_imp|LPM_SHIFTREG_component|dffs\(6) & \inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~2_combout\,
	datab => \reg_in_imp|LPM_SHIFTREG_component|dffs\(2),
	datac => \reg_in_imp|LPM_SHIFTREG_component|dffs\(6),
	datad => \inst|InSel\(1),
	combout => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[9]~I\ : cycloneii_io
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
	padio => ww_TOUT(9),
	combout => \TOUT~combout\(9));

-- Location: LCFF_X24_Y28_N1
\reg_in_imp|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(9),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(9));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[5]~I\ : cycloneii_io
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
	padio => ww_TOUT(5),
	combout => \TOUT~combout\(5));

-- Location: LCFF_X24_Y28_N11
\reg_in_imp|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(5),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X24_Y28_N10
\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~0_combout\ = (\inst|WideOr6~0_combout\ & ((\inst|InSel\(1) & ((\reg_in_imp|LPM_SHIFTREG_component|dffs\(5)))) # (!\inst|InSel\(1) & (\reg_in_imp|LPM_SHIFTREG_component|dffs\(13))))) # 
-- (!\inst|WideOr6~0_combout\ & (((\inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in_imp|LPM_SHIFTREG_component|dffs\(13),
	datab => \inst|WideOr6~0_combout\,
	datac => \reg_in_imp|LPM_SHIFTREG_component|dffs\(5),
	datad => \inst|InSel\(1),
	combout => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X24_Y28_N0
\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ = (\inst|WideOr6~0_combout\ & (((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~0_combout\)))) # (!\inst|WideOr6~0_combout\ & 
-- ((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~0_combout\ & (\reg_in_imp|LPM_SHIFTREG_component|dffs\(1))) # (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~0_combout\ & 
-- ((\reg_in_imp|LPM_SHIFTREG_component|dffs\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in_imp|LPM_SHIFTREG_component|dffs\(1),
	datab => \inst|WideOr6~0_combout\,
	datac => \reg_in_imp|LPM_SHIFTREG_component|dffs\(9),
	datad => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~0_combout\,
	combout => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X25_Y27_N0
\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\) # (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\,
	combout => \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[11]~I\ : cycloneii_io
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
	padio => ww_TOUT(11),
	combout => \TOUT~combout\(11));

-- Location: LCFF_X24_Y28_N9
\reg_in_imp|LPM_SHIFTREG_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(11),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(11));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TOUT[7]~I\ : cycloneii_io
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
	padio => ww_TOUT(7),
	combout => \TOUT~combout\(7));

-- Location: LCFF_X24_Y28_N19
\reg_in_imp|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TOUT~combout\(7),
	sload => VCC,
	ena => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_in_imp|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X24_Y28_N18
\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = (\inst|WideOr6~0_combout\ & ((\inst|InSel\(1) & ((\reg_in_imp|LPM_SHIFTREG_component|dffs\(7)))) # (!\inst|InSel\(1) & (\reg_in_imp|LPM_SHIFTREG_component|dffs\(15))))) # 
-- (!\inst|WideOr6~0_combout\ & (((\inst|InSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in_imp|LPM_SHIFTREG_component|dffs\(15),
	datab => \inst|WideOr6~0_combout\,
	datac => \reg_in_imp|LPM_SHIFTREG_component|dffs\(7),
	datad => \inst|InSel\(1),
	combout => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X24_Y28_N8
\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ = (\inst|WideOr6~0_combout\ & (((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~4_combout\)))) # (!\inst|WideOr6~0_combout\ & 
-- ((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & (\reg_in_imp|LPM_SHIFTREG_component|dffs\(3))) # (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & 
-- ((\reg_in_imp|LPM_SHIFTREG_component|dffs\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in_imp|LPM_SHIFTREG_component|dffs\(3),
	datab => \inst|WideOr6~0_combout\,
	datac => \reg_in_imp|LPM_SHIFTREG_component|dffs\(11),
	datad => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	combout => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\);

-- Location: LCCOMB_X25_Y27_N10
\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ = (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & ((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\) # 
-- (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datac => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\,
	datad => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\,
	combout => \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X25_Y28_N14
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ = (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & (\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ $ (VCC))) # 
-- (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & (\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & VCC))
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\ = CARRY((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datab => \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	datad => VCC,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	cout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X25_Y28_N16
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ = (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ & ((\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & 
-- (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\ & VCC)) # (!\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & (!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\)))) # 
-- (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ & ((\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & (!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # 
-- (!\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & ((\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # (GND)))))
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\ = CARRY((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ & (!\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & 
-- !\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\ & ((!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # 
-- (!\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[1]~1_combout\,
	datab => \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	datad => VCC,
	cin => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~1\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	cout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X25_Y28_N18
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ = ((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ $ (\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ $ 
-- (!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))) # (GND)
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\ = CARRY((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & ((\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\) # 
-- (!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\))) # (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & (\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & 
-- !\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datab => \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	datad => VCC,
	cin => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~3\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	cout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X25_Y28_N20
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ = (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & (!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # 
-- (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & ((\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # (GND)))
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\ = CARRY((!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\,
	datad => VCC,
	cin => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~5\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	cout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X25_Y28_N22
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ = \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\ $ (GND)
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\ = CARRY(!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~7\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	cout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\);

-- Location: LCCOMB_X25_Y28_N24
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ = (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & ((\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & 
-- ((\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\) # (GND))) # (!\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & (!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\)))) # 
-- (!\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & (((!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\))))
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\ = CARRY(((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\)) # 
-- (!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\,
	datab => \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~9\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	cout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\);

-- Location: LCCOMB_X25_Y28_N26
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ = (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\ & (\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & 
-- (\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & VCC))) # (!\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\ & ((((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & 
-- \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\)))))
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\ = CARRY((\reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & (\out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & 
-- !\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out_mux_imp|LPM_MUX_component|auto_generated|result_node[3]~5_combout\,
	datab => \out_cmp_imp|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~11\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	cout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\);

-- Location: LCCOMB_X25_Y28_N28
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ = \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~13\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\);

-- Location: LCCOMB_X25_Y28_N8
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & (((\inst|CurrentState.SendA~regout\) # (\inst|CurrentState.SendC~regout\)) # (!\inst|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \inst|CurrentState.SendA~regout\,
	datac => \inst|CurrentState.SendC~regout\,
	datad => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X25_Y29_N24
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~1_combout\ = (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\) # ((\inst|WideOr6~0_combout\ & (!\inst|CurrentState.SendA~regout\ & !\inst|CurrentState.SendC~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \inst|CurrentState.SendA~regout\,
	datac => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	datad => \inst|CurrentState.SendC~regout\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X25_Y29_N2
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & (((\inst|CurrentState.SendA~regout\) # (\inst|CurrentState.SendC~regout\)) # (!\inst|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \inst|CurrentState.SendA~regout\,
	datac => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	datad => \inst|CurrentState.SendC~regout\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X25_Y29_N12
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~3_combout\ = (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\) # ((\inst|WideOr6~0_combout\ & (!\inst|CurrentState.SendA~regout\ & !\inst|CurrentState.SendC~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	datac => \inst|CurrentState.SendA~regout\,
	datad => \inst|CurrentState.SendC~regout\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X25_Y29_N6
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & (((\inst|CurrentState.SendC~regout\) # (\inst|CurrentState.SendA~regout\)) # (!\inst|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \inst|CurrentState.SendC~regout\,
	datac => \inst|CurrentState.SendA~regout\,
	datad => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X25_Y29_N8
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~5_combout\ = (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\) # ((\inst|WideOr6~0_combout\ & (!\inst|CurrentState.SendA~regout\ & !\inst|CurrentState.SendC~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \inst|CurrentState.SendA~regout\,
	datac => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	datad => \inst|CurrentState.SendC~regout\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~5_combout\);

-- Location: LCCOMB_X25_Y29_N10
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & (((\inst|CurrentState.SendC~regout\) # (\inst|CurrentState.SendA~regout\)) # (!\inst|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \inst|CurrentState.SendC~regout\,
	datac => \inst|CurrentState.SendA~regout\,
	datad => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X25_Y28_N4
\main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~7_combout\ = (\main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ & (((\inst|CurrentState.SendC~regout\) # (\inst|CurrentState.SendA~regout\)) # (!\inst|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0_combout\,
	datab => \inst|CurrentState.SendC~regout\,
	datac => \inst|CurrentState.SendA~regout\,
	datad => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	combout => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~7_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|CurrentState.DoneState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FIN);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WR~I\ : cycloneii_io
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
	datain => \inst|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WR);

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DIN[7]~I\ : cycloneii_io
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
	datain => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DIN(7));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DIN[6]~I\ : cycloneii_io
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
	datain => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DIN(6));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DIN[5]~I\ : cycloneii_io
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
	datain => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DIN(5));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DIN[4]~I\ : cycloneii_io
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
	datain => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DIN(4));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DIN[3]~I\ : cycloneii_io
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
	datain => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DIN(3));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DIN[2]~I\ : cycloneii_io
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
	datain => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DIN(2));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DIN[1]~I\ : cycloneii_io
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
	datain => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DIN(1));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DIN[0]~I\ : cycloneii_io
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
	datain => \main_adder_imp|LPM_ADD_SUB_component|auto_generated|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DIN(0));
END structure;


