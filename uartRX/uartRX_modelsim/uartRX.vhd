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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Web Edition"
-- CREATED		"Fri Nov 30 12:22:40 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY uartRX IS 
	PORT
	(
		CK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		RD :  IN  STD_LOGIC;
		RX :  IN  STD_LOGIC;
		DAV :  OUT  STD_LOGIC;
		DOUT :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END uartRX;

ARCHITECTURE bdf_type OF uartRX IS 

COMPONENT uartrx_dp
	PORT(RX : IN STD_LOGIC;
		 CK : IN STD_LOGIC;
		 EN_CNT_26 : IN STD_LOGIC;
		 SCLEAR_CNT_26 : IN STD_LOGIC;
		 EN_CNT_12 : IN STD_LOGIC;
		 LOAD_CNT_12 : IN STD_LOGIC;
		 EN_CNT_8 : IN STD_LOGIC;
		 EN_RX_REG : IN STD_LOGIC;
		 EN_DOUT_REG : IN STD_LOGIC;
		 SCLEAR_DOUT_REG : IN STD_LOGIC;
		 SCLEAR_ALL : IN STD_LOGIC;
		 TC_8 : OUT STD_LOGIC;
		 TC_12 : OUT STD_LOGIC;
		 TC_26 : OUT STD_LOGIC;
		 VOTER_OUT : OUT STD_LOGIC;
		 START_BIT_CHECK : OUT STD_LOGIC;
		 DOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT uartrx_cu
	PORT(CK : IN STD_LOGIC;
		 RST : IN STD_LOGIC;
		 RD : IN STD_LOGIC;
		 TC_8 : IN STD_LOGIC;
		 TC_12 : IN STD_LOGIC;
		 TC_26 : IN STD_LOGIC;
		 VOTER_OUT : IN STD_LOGIC;
		 START_BIT_CHECK : IN STD_LOGIC;
		 EN_CNT_26 : OUT STD_LOGIC;
		 SCLEAR_CNT_26 : OUT STD_LOGIC;
		 EN_CNT_12 : OUT STD_LOGIC;
		 LOAD_CNT_12 : OUT STD_LOGIC;
		 EN_CNT_8 : OUT STD_LOGIC;
		 EN_RX_REG : OUT STD_LOGIC;
		 EN_DOUT_REG : OUT STD_LOGIC;
		 SCLEAR_DOUT_REG : OUT STD_LOGIC;
		 SCLEAR_ALL : OUT STD_LOGIC;
		 DAV : OUT STD_LOGIC
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
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;


BEGIN 



b2v_inst : uartrx_dp
PORT MAP(RX => RX,
		 CK => CK,
		 EN_CNT_26 => SYNTHESIZED_WIRE_0,
		 SCLEAR_CNT_26 => SYNTHESIZED_WIRE_1,
		 EN_CNT_12 => SYNTHESIZED_WIRE_2,
		 LOAD_CNT_12 => SYNTHESIZED_WIRE_3,
		 EN_CNT_8 => SYNTHESIZED_WIRE_4,
		 EN_RX_REG => SYNTHESIZED_WIRE_5,
		 EN_DOUT_REG => SYNTHESIZED_WIRE_6,
		 SCLEAR_DOUT_REG => SYNTHESIZED_WIRE_7,
		 SCLEAR_ALL => SYNTHESIZED_WIRE_8,
		 TC_8 => SYNTHESIZED_WIRE_9,
		 TC_12 => SYNTHESIZED_WIRE_10,
		 TC_26 => SYNTHESIZED_WIRE_11,
		 VOTER_OUT => SYNTHESIZED_WIRE_12,
		 START_BIT_CHECK => SYNTHESIZED_WIRE_13,
		 DOUT => DOUT);


b2v_inst6 : uartrx_cu
PORT MAP(CK => CK,
		 RST => RST,
		 RD => RD,
		 TC_8 => SYNTHESIZED_WIRE_9,
		 TC_12 => SYNTHESIZED_WIRE_10,
		 TC_26 => SYNTHESIZED_WIRE_11,
		 VOTER_OUT => SYNTHESIZED_WIRE_12,
		 START_BIT_CHECK => SYNTHESIZED_WIRE_13,
		 EN_CNT_26 => SYNTHESIZED_WIRE_0,
		 SCLEAR_CNT_26 => SYNTHESIZED_WIRE_1,
		 EN_CNT_12 => SYNTHESIZED_WIRE_2,
		 LOAD_CNT_12 => SYNTHESIZED_WIRE_3,
		 EN_CNT_8 => SYNTHESIZED_WIRE_4,
		 EN_RX_REG => SYNTHESIZED_WIRE_5,
		 EN_DOUT_REG => SYNTHESIZED_WIRE_6,
		 SCLEAR_DOUT_REG => SYNTHESIZED_WIRE_7,
		 SCLEAR_ALL => SYNTHESIZED_WIRE_8,
		 DAV => DAV);


END bdf_type;