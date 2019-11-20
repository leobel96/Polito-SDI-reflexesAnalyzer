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
-- CREATED		"Wed Jan 02 14:51:25 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY parser_DP IS 
	PORT
	(
		sclr_reg_char :  IN  STD_LOGIC;
		en_reg_char :  IN  STD_LOGIC;
		en_ff_L :  IN  STD_LOGIC;
		sclr_ff_L :  IN  STD_LOGIC;
		CK :  IN  STD_LOGIC;
		CHARIN :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		out_ff_L :  OUT  STD_LOGIC;
		match_L :  OUT  STD_LOGIC;
		match_1234 :  OUT  STD_LOGIC;
		CMD :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END parser_DP;

ARCHITECTURE bdf_type OF parser_DP IS 

COMPONENT reg_char
	PORT(sclr : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ff_l
	PORT(sclr : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(0 TO 0);
		 q : OUT STD_LOGIC_VECTOR(0 TO 0)
	);
END COMPONENT;

COMPONENT ascii_l_match
	PORT(char_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 match : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ascii_1_2_3_4_match
	PORT(char_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 match : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT cmd_encoder
	PORT(char_1to0_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 cmd : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	char_in :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 
out_ff_L <= SYNTHESIZED_WIRE_1;



b2v_inst : reg_char
PORT MAP(sclr => sclr_reg_char,
		 load => en_reg_char,
		 clock => CK,
		 enable => en_reg_char,
		 data => CHARIN,
		 q => char_in);


b2v_inst1 : ff_l
PORT MAP(sclr => sclr_ff_L,
		 load => en_ff_L,
		 clock => CK,
		 enable => en_ff_L,
		 data(0) => SYNTHESIZED_WIRE_0,
		 q(0) => SYNTHESIZED_WIRE_1);


b2v_inst2 : ascii_l_match
PORT MAP(char_in => char_in,
		 match => match_L);


b2v_inst3 : ascii_1_2_3_4_match
PORT MAP(char_in => char_in,
		 match => match_1234);


b2v_inst4 : cmd_encoder
PORT MAP(char_1to0_in => char_in(1 DOWNTO 0),
		 cmd => CMD);


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_1);



END bdf_type;