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

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Web Edition"
-- CREATED		"Wed Jan 02 15:21:08 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY parser IS 
	PORT
	(
		CK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		START :  IN  STD_LOGIC;
		CHARIN :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		DONE :  OUT  STD_LOGIC;
		CMDAV :  OUT  STD_LOGIC;
		CMD :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END parser;

ARCHITECTURE bdf_type OF parser IS 

COMPONENT parser_cu
	PORT(CK : IN STD_LOGIC;
		 RST : IN STD_LOGIC;
		 START : IN STD_LOGIC;
		 out_ff_L : IN STD_LOGIC;
		 match_L : IN STD_LOGIC;
		 match_1234 : IN STD_LOGIC;
		 s_clear_reg_char : OUT STD_LOGIC;
		 s_clear_ff_L : OUT STD_LOGIC;
		 en_reg_char : OUT STD_LOGIC;
		 en_ff_L : OUT STD_LOGIC;
		 DONE : OUT STD_LOGIC;
		 CMDAV : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT parser_dp
	PORT(sclr_ff_L : IN STD_LOGIC;
		 en_ff_L : IN STD_LOGIC;
		 CK : IN STD_LOGIC;
		 sclr_reg_char : IN STD_LOGIC;
		 en_reg_char : IN STD_LOGIC;
		 CHARIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 out_ff_L : OUT STD_LOGIC;
		 match_L : OUT STD_LOGIC;
		 match_1234 : OUT STD_LOGIC;
		 CMD : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 



b2v_inst : parser_cu
PORT MAP(CK => CK,
		 RST => RST,
		 START => START,
		 out_ff_L => SYNTHESIZED_WIRE_0,
		 match_L => SYNTHESIZED_WIRE_1,
		 match_1234 => SYNTHESIZED_WIRE_2,
		 s_clear_reg_char => SYNTHESIZED_WIRE_5,
		 s_clear_ff_L => SYNTHESIZED_WIRE_3,
		 en_reg_char => SYNTHESIZED_WIRE_6,
		 en_ff_L => SYNTHESIZED_WIRE_4,
		 DONE => DONE,
		 CMDAV => CMDAV);


b2v_inst1 : parser_dp
PORT MAP(sclr_ff_L => SYNTHESIZED_WIRE_3,
		 en_ff_L => SYNTHESIZED_WIRE_4,
		 CK => CK,
		 sclr_reg_char => SYNTHESIZED_WIRE_5,
		 en_reg_char => SYNTHESIZED_WIRE_6,
		 CHARIN => CHARIN,
		 out_ff_L => SYNTHESIZED_WIRE_0,
		 match_L => SYNTHESIZED_WIRE_1,
		 match_1234 => SYNTHESIZED_WIRE_2,
		 CMD => CMD);


END bdf_type;