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
-- CREATED		"Thu Dec 06 15:08:36 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY uartTX IS 
	PORT
	(
		CK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		WR :  IN  STD_LOGIC;
		DIN :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		TX :  OUT  STD_LOGIC;
		TXRDY :  OUT  STD_LOGIC
	);
END uartTX;

ARCHITECTURE bdf_type OF uartTX IS 

COMPONENT uarttx_cu
	PORT(CK : IN STD_LOGIC;
		 RST : IN STD_LOGIC;
		 WR : IN STD_LOGIC;
		 TC_216 : IN STD_LOGIC;
		 END_TX : IN STD_LOGIC;
		 EN_CNT_216 : OUT STD_LOGIC;
		 SCLEAR_CNT_216 : OUT STD_LOGIC;
		 EN_LOAD_TX_REG : OUT STD_LOGIC;
		 EN_TX_REG : OUT STD_LOGIC;
		 IDLE_TX : OUT STD_LOGIC;
		 SCLEAR_ALL : OUT STD_LOGIC;
		 TXRDY : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT uarttx_dp
	PORT(CK : IN STD_LOGIC;
		 EN_CNT_216 : IN STD_LOGIC;
		 SCLEAR_CNT_216 : IN STD_LOGIC;
		 EN_LOAD_TX_REG : IN STD_LOGIC;
		 EN_TX_REG : IN STD_LOGIC;
		 IDLE_TX : IN STD_LOGIC;
		 SCLEAR_ALL : IN STD_LOGIC;
		 DIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 TX : OUT STD_LOGIC;
		 TC_216 : OUT STD_LOGIC;
		 END_TX : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 



b2v_inst : uarttx_cu
PORT MAP(CK => CK,
		 RST => RST,
		 WR => WR,
		 TC_216 => SYNTHESIZED_WIRE_0,
		 END_TX => SYNTHESIZED_WIRE_1,
		 EN_CNT_216 => SYNTHESIZED_WIRE_2,
		 SCLEAR_CNT_216 => SYNTHESIZED_WIRE_3,
		 EN_LOAD_TX_REG => SYNTHESIZED_WIRE_4,
		 EN_TX_REG => SYNTHESIZED_WIRE_5,
		 IDLE_TX => SYNTHESIZED_WIRE_6,
		 SCLEAR_ALL => SYNTHESIZED_WIRE_7,
		 TXRDY => TXRDY);


b2v_inst1 : uarttx_dp
PORT MAP(CK => CK,
		 EN_CNT_216 => SYNTHESIZED_WIRE_2,
		 SCLEAR_CNT_216 => SYNTHESIZED_WIRE_3,
		 EN_LOAD_TX_REG => SYNTHESIZED_WIRE_4,
		 EN_TX_REG => SYNTHESIZED_WIRE_5,
		 IDLE_TX => SYNTHESIZED_WIRE_6,
		 SCLEAR_ALL => SYNTHESIZED_WIRE_7,
		 DIN => DIN,
		 TX => TX,
		 TC_216 => SYNTHESIZED_WIRE_0,
		 END_TX => SYNTHESIZED_WIRE_1);


END bdf_type;