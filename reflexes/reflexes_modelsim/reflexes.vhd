-- Copyright (C) 1991-2010 Altera Corporation
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
-- VERSION		"Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"
-- CREATED		"Fri Jan 11 20:24:56 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY reflexes IS 
	PORT
	(
		CK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		LNUMAV :  IN  STD_LOGIC;
		FIN :  IN  STD_LOGIC;
		KEY0 :  IN  STD_LOGIC;
		KEY1 :  IN  STD_LOGIC;
		KEY2 :  IN  STD_LOGIC;
		KEY3 :  IN  STD_LOGIC;
		LNUM :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		TIMEAV :  OUT  STD_LOGIC;
		LED0 :  OUT  STD_LOGIC;
		LED1 :  OUT  STD_LOGIC;
		LED2 :  OUT  STD_LOGIC;
		LED3 :  OUT  STD_LOGIC;
		TIME :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END reflexes;

ARCHITECTURE bdf_type OF reflexes IS 

COMPONENT reflexes_cu
	PORT(TC_CNT_1ms : IN STD_LOGIC;
		 TC_CNT_16bit : IN STD_LOGIC;
		 SKEY : IN STD_LOGIC;
		 BUTTON : IN STD_LOGIC;
		 CK : IN STD_LOGIC;
		 RST : IN STD_LOGIC;
		 LNUMAV : IN STD_LOGIC;
		 FIN : IN STD_LOGIC;
		 SEED_LOAD : OUT STD_LOGIC;
		 SCLR_CNT_1ms : OUT STD_LOGIC;
		 EN_CNT_1ms : OUT STD_LOGIC;
		 EN_CNT_16bit : OUT STD_LOGIC;
		 SLOAD_CNT_16bit : OUT STD_LOGIC;
		 SCLR_CNT_16bit : OUT STD_LOGIC;
		 EN_FF_BUTTON : OUT STD_LOGIC;
		 DATA_FF_BUTTON : OUT STD_LOGIC;
		 SCLR_FF_LNUM : OUT STD_LOGIC;
		 EN_FF_LNUM : OUT STD_LOGIC;
		 TIMEAV : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT reflexes_dp
	PORT(SEED_LOAD : IN STD_LOGIC;
		 SCLR_CNT_1ms : IN STD_LOGIC;
		 EN_CNT_1ms : IN STD_LOGIC;
		 EN_CNT_16bit : IN STD_LOGIC;
		 SLOAD_CNT_16bit : IN STD_LOGIC;
		 SCLR_CNT_16bit : IN STD_LOGIC;
		 EN_FF_BUTTON : IN STD_LOGIC;
		 DATA_FF_BUTTON : IN STD_LOGIC;
		 SCLR_FF_LNUM : IN STD_LOGIC;
		 EN_FF_LNUM : IN STD_LOGIC;
		 KEY0 : IN STD_LOGIC;
		 KEY1 : IN STD_LOGIC;
		 KEY2 : IN STD_LOGIC;
		 KEY3 : IN STD_LOGIC;
		 CK : IN STD_LOGIC;
		 LNUM : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 TC_CNT_1ms : OUT STD_LOGIC;
		 TC_CNT_16bit : OUT STD_LOGIC;
		 SKEY : OUT STD_LOGIC;
		 BUTTON : OUT STD_LOGIC;
		 LED0 : OUT STD_LOGIC;
		 LED1 : OUT STD_LOGIC;
		 LED2 : OUT STD_LOGIC;
		 LED3 : OUT STD_LOGIC;
		 TIME : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
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
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;


BEGIN 



b2v_inst : reflexes_cu
PORT MAP(TC_CNT_1ms => SYNTHESIZED_WIRE_0,
		 TC_CNT_16bit => SYNTHESIZED_WIRE_1,
		 SKEY => SYNTHESIZED_WIRE_2,
		 BUTTON => SYNTHESIZED_WIRE_3,
		 CK => CK,
		 RST => RST,
		 LNUMAV => LNUMAV,
		 FIN => FIN,
		 SEED_LOAD => SYNTHESIZED_WIRE_4,
		 SCLR_CNT_1ms => SYNTHESIZED_WIRE_5,
		 EN_CNT_1ms => SYNTHESIZED_WIRE_6,
		 EN_CNT_16bit => SYNTHESIZED_WIRE_7,
		 SLOAD_CNT_16bit => SYNTHESIZED_WIRE_8,
		 SCLR_CNT_16bit => SYNTHESIZED_WIRE_9,
		 EN_FF_BUTTON => SYNTHESIZED_WIRE_11,
		 DATA_FF_BUTTON => SYNTHESIZED_WIRE_12,
		 SCLR_FF_LNUM => SYNTHESIZED_WIRE_13,
		 EN_FF_LNUM => SYNTHESIZED_WIRE_14,
		 TIMEAV => TIMEAV);


b2v_inst1 : reflexes_dp
PORT MAP(SEED_LOAD => SYNTHESIZED_WIRE_4,
		 SCLR_CNT_1ms => SYNTHESIZED_WIRE_5,
		 EN_CNT_1ms => SYNTHESIZED_WIRE_6,
		 EN_CNT_16bit => SYNTHESIZED_WIRE_7,
		 SLOAD_CNT_16bit => SYNTHESIZED_WIRE_8,
		 SCLR_CNT_16bit => SYNTHESIZED_WIRE_9,
		 EN_FF_BUTTON => SYNTHESIZED_WIRE_11,
		 DATA_FF_BUTTON => SYNTHESIZED_WIRE_12,
		 SCLR_FF_LNUM => SYNTHESIZED_WIRE_13,
		 EN_FF_LNUM => SYNTHESIZED_WIRE_14,
		 KEY0 => KEY0,
		 KEY1 => KEY1,
		 KEY2 => KEY2,
		 KEY3 => KEY3,
		 CK => CK,
		 LNUM => LNUM,
		 TC_CNT_1ms => SYNTHESIZED_WIRE_0,
		 TC_CNT_16bit => SYNTHESIZED_WIRE_1,
		 SKEY => SYNTHESIZED_WIRE_2,
		 BUTTON => SYNTHESIZED_WIRE_3,
		 LED0 => LED0,
		 LED1 => LED1,
		 LED2 => LED2,
		 LED3 => LED3,
		 TIME => TIME);


END bdf_type;