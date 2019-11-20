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
-- CREATED		"Fri Jan 18 18:21:43 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ASCIIConverter IS 
	PORT
	(
		TAV :  IN  STD_LOGIC;
		TX_RDY :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		TOUT :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		FIN :  OUT  STD_LOGIC;
		WR :  OUT  STD_LOGIC;
		DIN :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ASCIIConverter;

ARCHITECTURE bdf_type OF ASCIIConverter IS 

COMPONENT add_in_mux
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const48
	PORT(		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const84
	PORT(		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const87
	PORT(		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mainfsm
	PORT(Clk : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 MoreThanNine : IN STD_LOGIC;
		 TxReady : IN STD_LOGIC;
		 DataAvaible : IN STD_LOGIC;
		 RegMuxSel : OUT STD_LOGIC;
		 RegEn : OUT STD_LOGIC;
		 RegLoad : OUT STD_LOGIC;
		 RegClear : OUT STD_LOGIC;
		 AddValueSel : OUT STD_LOGIC;
		 OutSel : OUT STD_LOGIC;
		 FAV : OUT STD_LOGIC;
		 UartWR : OUT STD_LOGIC;
		 InSel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT main_adder
	PORT(dataa : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT out_cmp
	PORT(dataa : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 agb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT out_mux
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg_in
	PORT(sclr : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg_mux_in
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg_out_mux
	PORT(data0x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	ADD_IN :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	R_OUT :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN 



b2v_add_in_mux_imp : add_in_mux
PORT MAP(sel => SYNTHESIZED_WIRE_0,
		 data0x => SYNTHESIZED_WIRE_1,
		 data1x => SYNTHESIZED_WIRE_2,
		 result => SYNTHESIZED_WIRE_4);


b2v_coinst48_imp : const48
PORT MAP(		 result => SYNTHESIZED_WIRE_1);


b2v_const84_imp : const84
PORT MAP(		 result => SYNTHESIZED_WIRE_6);


b2v_const87_imp : const87
PORT MAP(		 result => SYNTHESIZED_WIRE_2);


b2v_inst : mainfsm
PORT MAP(Clk => CLK,
		 Reset => RST,
		 MoreThanNine => SYNTHESIZED_WIRE_3,
		 TxReady => TX_RDY,
		 DataAvaible => TAV,
		 RegMuxSel => SYNTHESIZED_WIRE_12,
		 RegLoad => SYNTHESIZED_WIRE_14,
		 RegClear => SYNTHESIZED_WIRE_8,
		 AddValueSel => SYNTHESIZED_WIRE_0,
		 OutSel => SYNTHESIZED_WIRE_5,
		 FAV => FIN,
		 UartWR => WR,
		 InSel => SYNTHESIZED_WIRE_13);



b2v_main_adder_imp : main_adder
PORT MAP(dataa => ADD_IN,
		 datab => SYNTHESIZED_WIRE_4,
		 result => SYNTHESIZED_WIRE_7);


b2v_out_cmp_imp : out_cmp
PORT MAP(dataa => ADD_IN,
		 agb => SYNTHESIZED_WIRE_3);


b2v_out_mux_imp : out_mux
PORT MAP(sel => SYNTHESIZED_WIRE_5,
		 data0x => SYNTHESIZED_WIRE_6,
		 data1x => SYNTHESIZED_WIRE_7,
		 result => DIN);


b2v_reg_in_imp : reg_in
PORT MAP(sclr => SYNTHESIZED_WIRE_8,
		 load => SYNTHESIZED_WIRE_14,
		 clock => CLK,
		 enable => SYNTHESIZED_WIRE_14,
		 data => SYNTHESIZED_WIRE_11,
		 q => R_OUT);


b2v_reg_mux_in_imp : reg_mux_in
PORT MAP(sel => SYNTHESIZED_WIRE_12,
		 data0x => R_OUT,
		 data1x => TOUT,
		 result => SYNTHESIZED_WIRE_11);


b2v_reg_out_mux_imp : reg_out_mux
PORT MAP(data0x => R_OUT(15 DOWNTO 12),
		 data1x => R_OUT(11 DOWNTO 8),
		 data2x => R_OUT(7 DOWNTO 4),
		 data3x => R_OUT(3 DOWNTO 0),
		 sel => SYNTHESIZED_WIRE_13,
		 result => ADD_IN(3 DOWNTO 0));


ADD_IN(5) <= '0';
ADD_IN(6) <= '0';
ADD_IN(7) <= '0';
ADD_IN(4) <= '0';
END bdf_type;