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

-- DATE "01/02/2019 15:20:22"

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

ENTITY 	parser IS
    PORT (
	DONE : OUT std_logic;
	CMDAV : OUT std_logic;
	CMD : OUT std_logic_vector(1 DOWNTO 0);
	CK : IN std_logic;
	RST : IN std_logic;
	START : IN std_logic;
	CHARIN : IN std_logic_vector(7 DOWNTO 0)
	);
END parser;

-- Design Ports Information
-- DONE	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMDAV	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMD[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CMD[0]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RST	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- START	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CHARIN[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CHARIN[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CHARIN[7]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CHARIN[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CHARIN[5]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CHARIN[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CHARIN[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CHARIN[3]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF parser IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DONE : std_logic;
SIGNAL ww_CMDAV : std_logic;
SIGNAL ww_CMD : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_CHARIN : std_logic_vector(7 DOWNTO 0);
SIGNAL \CK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CK~combout\ : std_logic;
SIGNAL \CK~clkctrl_outclk\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE.RESET~0_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE.RESET~regout\ : std_logic;
SIGNAL \inst1|inst|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2|match~0_combout\ : std_logic;
SIGNAL \inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|match~0_combout\ : std_logic;
SIGNAL \inst1|inst|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst3|match~1_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE~12_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE~15_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE.TOGGLE_FF~regout\ : std_logic;
SIGNAL \inst|en_ff_L~combout\ : std_logic;
SIGNAL \inst1|inst2|match~1_combout\ : std_logic;
SIGNAL \inst|NEXT_STATE~2_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE~10_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE.DONE_STATE~regout\ : std_logic;
SIGNAL \inst|PRESENT_STATE~17_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE~18_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE.WAIT_CHAR~regout\ : std_logic;
SIGNAL \START~combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE~14_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE.WAIT_CHAR_AV~regout\ : std_logic;
SIGNAL \inst|PRESENT_STATE~16_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE.STORE_CHAR~regout\ : std_logic;
SIGNAL \inst|PRESENT_STATE~13_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE.TOGGLE_FF_AV~regout\ : std_logic;
SIGNAL \inst|PRESENT_STATE~11_combout\ : std_logic;
SIGNAL \inst|PRESENT_STATE.DONE_STATE_AV~regout\ : std_logic;
SIGNAL \inst|DONE~combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst1|inst4|cmd~0_combout\ : std_logic;
SIGNAL \CHARIN~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst|LPM_SHIFTREG_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst1|LPM_SHIFTREG_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|inst|LPM_SHIFTREG_component|ALT_INV_dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|inst4|ALT_INV_cmd~0_combout\ : std_logic;

BEGIN

DONE <= ww_DONE;
CMDAV <= ww_CMDAV;
CMD <= ww_CMD;
ww_CK <= CK;
ww_RST <= RST;
ww_START <= START;
ww_CHARIN <= CHARIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CK~combout\);
\inst1|inst|LPM_SHIFTREG_component|ALT_INV_dffs\(0) <= NOT \inst1|inst|LPM_SHIFTREG_component|dffs\(0);
\inst1|inst4|ALT_INV_cmd~0_combout\ <= NOT \inst1|inst4|cmd~0_combout\;

-- Location: LCFF_X34_Y29_N11
\inst1|inst|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \CHARIN~combout\(5),
	sload => VCC,
	ena => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|LPM_SHIFTREG_component|dffs\(5));

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

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CHARIN[5]~I\ : cycloneii_io
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
	padio => ww_CHARIN(5),
	combout => \CHARIN~combout\(5));

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

-- Location: LCCOMB_X33_Y29_N2
\inst|PRESENT_STATE.RESET~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE.RESET~0_combout\ = !\RST~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RST~combout\,
	combout => \inst|PRESENT_STATE.RESET~0_combout\);

-- Location: LCFF_X33_Y29_N3
\inst|PRESENT_STATE.RESET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst|PRESENT_STATE.RESET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PRESENT_STATE.RESET~regout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CHARIN[2]~I\ : cycloneii_io
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
	padio => ww_CHARIN(2),
	combout => \CHARIN~combout\(2));

-- Location: LCCOMB_X34_Y29_N8
\inst1|inst|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \CHARIN~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CHARIN~combout\(2),
	combout => \inst1|inst|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X34_Y29_N9
\inst1|inst|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst1|inst|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	ena => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|LPM_SHIFTREG_component|dffs\(2));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CHARIN[0]~I\ : cycloneii_io
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
	padio => ww_CHARIN(0),
	combout => \CHARIN~combout\(0));

-- Location: LCFF_X34_Y29_N17
\inst1|inst|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \CHARIN~combout\(0),
	sload => VCC,
	ena => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|LPM_SHIFTREG_component|dffs\(0));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CHARIN[7]~I\ : cycloneii_io
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
	padio => ww_CHARIN(7),
	combout => \CHARIN~combout\(7));

-- Location: LCFF_X34_Y29_N31
\inst1|inst|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \CHARIN~combout\(7),
	sload => VCC,
	ena => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X34_Y29_N26
\inst1|inst2|match~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|match~0_combout\ = (\inst1|inst|LPM_SHIFTREG_component|dffs\(1)) # (((\inst1|inst|LPM_SHIFTREG_component|dffs\(0)) # (\inst1|inst|LPM_SHIFTREG_component|dffs\(7))) # (!\inst1|inst|LPM_SHIFTREG_component|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|LPM_SHIFTREG_component|dffs\(1),
	datab => \inst1|inst|LPM_SHIFTREG_component|dffs\(2),
	datac => \inst1|inst|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst1|inst|LPM_SHIFTREG_component|dffs\(7),
	combout => \inst1|inst2|match~0_combout\);

-- Location: LCCOMB_X33_Y29_N30
\inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\ = (!\inst1|inst1|LPM_SHIFTREG_component|dffs\(0) & \inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst|PRESENT_STATE.RESET~regout\,
	combout => \inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\);

-- Location: LCCOMB_X34_Y29_N22
\inst1|inst3|match~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|match~0_combout\ = \inst1|inst|LPM_SHIFTREG_component|dffs\(2) $ (((\inst1|inst|LPM_SHIFTREG_component|dffs\(1)) # (\inst1|inst|LPM_SHIFTREG_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|LPM_SHIFTREG_component|dffs\(1),
	datac => \inst1|inst|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst1|inst|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst1|inst3|match~0_combout\);

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CHARIN[3]~I\ : cycloneii_io
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
	padio => ww_CHARIN(3),
	combout => \CHARIN~combout\(3));

-- Location: LCFF_X34_Y29_N1
\inst1|inst|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \CHARIN~combout\(3),
	sload => VCC,
	ena => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|LPM_SHIFTREG_component|dffs\(3));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CHARIN[4]~I\ : cycloneii_io
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
	padio => ww_CHARIN(4),
	combout => \CHARIN~combout\(4));

-- Location: LCCOMB_X34_Y29_N4
\inst1|inst|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \CHARIN~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CHARIN~combout\(4),
	combout => \inst1|inst|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X34_Y29_N5
\inst1|inst|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst1|inst|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	ena => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|LPM_SHIFTREG_component|dffs\(4));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CHARIN[6]~I\ : cycloneii_io
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
	padio => ww_CHARIN(6),
	combout => \CHARIN~combout\(6));

-- Location: LCCOMB_X34_Y29_N14
\inst1|inst|LPM_SHIFTREG_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ = \CHARIN~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CHARIN~combout\(6),
	combout => \inst1|inst|LPM_SHIFTREG_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X34_Y29_N15
\inst1|inst|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst1|inst|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	ena => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X34_Y29_N30
\inst1|inst3|match~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|match~1_combout\ = (\inst1|inst|LPM_SHIFTREG_component|dffs\(5) & (\inst1|inst|LPM_SHIFTREG_component|dffs\(4) & (!\inst1|inst|LPM_SHIFTREG_component|dffs\(7) & !\inst1|inst|LPM_SHIFTREG_component|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|LPM_SHIFTREG_component|dffs\(5),
	datab => \inst1|inst|LPM_SHIFTREG_component|dffs\(4),
	datac => \inst1|inst|LPM_SHIFTREG_component|dffs\(7),
	datad => \inst1|inst|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst1|inst3|match~1_combout\);

-- Location: LCCOMB_X34_Y29_N0
\inst|PRESENT_STATE~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE~12_combout\ = (\inst1|inst1|LPM_SHIFTREG_component|dffs\(0) & ((\inst1|inst3|match~0_combout\) # ((!\inst1|inst|LPM_SHIFTREG_component|dffs\(3) & \inst1|inst3|match~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|LPM_SHIFTREG_component|dffs\(0),
	datab => \inst1|inst3|match~0_combout\,
	datac => \inst1|inst|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst1|inst3|match~1_combout\,
	combout => \inst|PRESENT_STATE~12_combout\);

-- Location: LCCOMB_X34_Y29_N12
\inst|PRESENT_STATE~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE~15_combout\ = (!\RST~combout\ & (\inst|PRESENT_STATE.STORE_CHAR~regout\ & (!\inst|PRESENT_STATE~12_combout\ & !\inst|NEXT_STATE~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	datac => \inst|PRESENT_STATE~12_combout\,
	datad => \inst|NEXT_STATE~2_combout\,
	combout => \inst|PRESENT_STATE~15_combout\);

-- Location: LCFF_X34_Y29_N13
\inst|PRESENT_STATE.TOGGLE_FF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst|PRESENT_STATE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PRESENT_STATE.TOGGLE_FF~regout\);

-- Location: LCCOMB_X34_Y29_N16
\inst|en_ff_L\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|en_ff_L~combout\ = (\inst|PRESENT_STATE.TOGGLE_FF_AV~regout\) # (\inst|PRESENT_STATE.TOGGLE_FF~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PRESENT_STATE.TOGGLE_FF_AV~regout\,
	datad => \inst|PRESENT_STATE.TOGGLE_FF~regout\,
	combout => \inst|en_ff_L~combout\);

-- Location: LCFF_X33_Y29_N31
\inst1|inst1|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst1|inst1|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	ena => \inst|en_ff_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X34_Y29_N2
\inst1|inst2|match~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|match~1_combout\ = (\inst1|inst|LPM_SHIFTREG_component|dffs\(5)) # (((\inst1|inst|LPM_SHIFTREG_component|dffs\(4)) # (!\inst1|inst|LPM_SHIFTREG_component|dffs\(6))) # (!\inst1|inst|LPM_SHIFTREG_component|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|LPM_SHIFTREG_component|dffs\(5),
	datab => \inst1|inst|LPM_SHIFTREG_component|dffs\(3),
	datac => \inst1|inst|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst1|inst|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst1|inst2|match~1_combout\);

-- Location: LCCOMB_X34_Y29_N20
\inst|NEXT_STATE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|NEXT_STATE~2_combout\ = (!\inst1|inst1|LPM_SHIFTREG_component|dffs\(0) & ((\inst1|inst2|match~0_combout\) # (\inst1|inst2|match~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|match~0_combout\,
	datac => \inst1|inst1|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst1|inst2|match~1_combout\,
	combout => \inst|NEXT_STATE~2_combout\);

-- Location: LCCOMB_X34_Y29_N24
\inst|PRESENT_STATE~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE~10_combout\ = (!\RST~combout\ & ((\inst|PRESENT_STATE.TOGGLE_FF~regout\) # ((\inst|PRESENT_STATE.STORE_CHAR~regout\ & \inst|NEXT_STATE~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	datac => \inst|NEXT_STATE~2_combout\,
	datad => \inst|PRESENT_STATE.TOGGLE_FF~regout\,
	combout => \inst|PRESENT_STATE~10_combout\);

-- Location: LCFF_X34_Y29_N25
\inst|PRESENT_STATE.DONE_STATE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst|PRESENT_STATE~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PRESENT_STATE.DONE_STATE~regout\);

-- Location: LCCOMB_X33_Y29_N12
\inst|PRESENT_STATE~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE~17_combout\ = ((\inst|PRESENT_STATE.DONE_STATE~regout\) # ((!\START~combout\ & \inst|PRESENT_STATE.WAIT_CHAR~regout\))) # (!\inst|PRESENT_STATE.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~combout\,
	datab => \inst|PRESENT_STATE.RESET~regout\,
	datac => \inst|PRESENT_STATE.WAIT_CHAR~regout\,
	datad => \inst|PRESENT_STATE.DONE_STATE~regout\,
	combout => \inst|PRESENT_STATE~17_combout\);

-- Location: LCCOMB_X33_Y29_N8
\inst|PRESENT_STATE~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE~18_combout\ = (!\RST~combout\ & \inst|PRESENT_STATE~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datad => \inst|PRESENT_STATE~17_combout\,
	combout => \inst|PRESENT_STATE~18_combout\);

-- Location: LCFF_X33_Y29_N9
\inst|PRESENT_STATE.WAIT_CHAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst|PRESENT_STATE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PRESENT_STATE.WAIT_CHAR~regout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\START~I\ : cycloneii_io
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
	padio => ww_START,
	combout => \START~combout\);

-- Location: LCCOMB_X33_Y29_N26
\inst|PRESENT_STATE~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE~14_combout\ = (!\RST~combout\ & ((\inst|PRESENT_STATE.DONE_STATE_AV~regout\) # ((!\START~combout\ & \inst|PRESENT_STATE.WAIT_CHAR_AV~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \START~combout\,
	datac => \inst|PRESENT_STATE.WAIT_CHAR_AV~regout\,
	datad => \inst|PRESENT_STATE.DONE_STATE_AV~regout\,
	combout => \inst|PRESENT_STATE~14_combout\);

-- Location: LCFF_X33_Y29_N27
\inst|PRESENT_STATE.WAIT_CHAR_AV\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst|PRESENT_STATE~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PRESENT_STATE.WAIT_CHAR_AV~regout\);

-- Location: LCCOMB_X33_Y29_N28
\inst|PRESENT_STATE~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE~16_combout\ = (!\RST~combout\ & (\START~combout\ & ((\inst|PRESENT_STATE.WAIT_CHAR~regout\) # (\inst|PRESENT_STATE.WAIT_CHAR_AV~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \inst|PRESENT_STATE.WAIT_CHAR~regout\,
	datac => \START~combout\,
	datad => \inst|PRESENT_STATE.WAIT_CHAR_AV~regout\,
	combout => \inst|PRESENT_STATE~16_combout\);

-- Location: LCFF_X33_Y29_N29
\inst|PRESENT_STATE.STORE_CHAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst|PRESENT_STATE~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PRESENT_STATE.STORE_CHAR~regout\);

-- Location: LCCOMB_X34_Y29_N28
\inst|PRESENT_STATE~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE~13_combout\ = (!\RST~combout\ & (\inst|PRESENT_STATE.STORE_CHAR~regout\ & \inst|PRESENT_STATE~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	datac => \inst|PRESENT_STATE~12_combout\,
	combout => \inst|PRESENT_STATE~13_combout\);

-- Location: LCFF_X34_Y29_N29
\inst|PRESENT_STATE.TOGGLE_FF_AV\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst|PRESENT_STATE~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PRESENT_STATE.TOGGLE_FF_AV~regout\);

-- Location: LCCOMB_X34_Y29_N18
\inst|PRESENT_STATE~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PRESENT_STATE~11_combout\ = (\inst|PRESENT_STATE.TOGGLE_FF_AV~regout\ & !\RST~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PRESENT_STATE.TOGGLE_FF_AV~regout\,
	datad => \RST~combout\,
	combout => \inst|PRESENT_STATE~11_combout\);

-- Location: LCFF_X34_Y29_N19
\inst|PRESENT_STATE.DONE_STATE_AV\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \inst|PRESENT_STATE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PRESENT_STATE.DONE_STATE_AV~regout\);

-- Location: LCCOMB_X33_Y29_N0
\inst|DONE\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DONE~combout\ = (\inst|PRESENT_STATE.DONE_STATE_AV~regout\) # (\inst|PRESENT_STATE.DONE_STATE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PRESENT_STATE.DONE_STATE_AV~regout\,
	datad => \inst|PRESENT_STATE.DONE_STATE~regout\,
	combout => \inst|DONE~combout\);

-- Location: LCCOMB_X34_Y29_N6
\inst|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|PRESENT_STATE.TOGGLE_FF_AV~regout\) # ((\inst|PRESENT_STATE.DONE_STATE_AV~regout\) # (\inst|PRESENT_STATE.WAIT_CHAR_AV~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PRESENT_STATE.TOGGLE_FF_AV~regout\,
	datab => \inst|PRESENT_STATE.DONE_STATE_AV~regout\,
	datad => \inst|PRESENT_STATE.WAIT_CHAR_AV~regout\,
	combout => \inst|WideOr3~0_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CHARIN[1]~I\ : cycloneii_io
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
	padio => ww_CHARIN(1),
	combout => \CHARIN~combout\(1));

-- Location: LCFF_X34_Y29_N7
\inst1|inst|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	sdata => \CHARIN~combout\(1),
	sload => VCC,
	ena => \inst|PRESENT_STATE.STORE_CHAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X34_Y29_N10
\inst1|inst4|cmd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|cmd~0_combout\ = \inst1|inst|LPM_SHIFTREG_component|dffs\(0) $ (\inst1|inst|LPM_SHIFTREG_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst1|inst|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst1|inst4|cmd~0_combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DONE~I\ : cycloneii_io
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
	datain => \inst|DONE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DONE);

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CMDAV~I\ : cycloneii_io
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
	datain => \inst|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CMDAV);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CMD[1]~I\ : cycloneii_io
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
	datain => \inst1|inst4|ALT_INV_cmd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CMD(1));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CMD[0]~I\ : cycloneii_io
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
	datain => \inst1|inst|LPM_SHIFTREG_component|ALT_INV_dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CMD(0));
END structure;


