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
-- CREATED		"Wed Feb 13 13:31:12 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY uartRX_DP IS 
	PORT
	(
		RX :  IN  STD_LOGIC;
		EN_RX_REG :  IN  STD_LOGIC;
		EN_CNT_8 :  IN  STD_LOGIC;
		EN_CNT_12 :  IN  STD_LOGIC;
		LOAD_CNT_12 :  IN  STD_LOGIC;
		CK :  IN  STD_LOGIC;
		EN_CNT_26 :  IN  STD_LOGIC;
		SCLEAR_CNT_26 :  IN  STD_LOGIC;
		EN_DOUT_REG :  IN  STD_LOGIC;
		SCLEAR_DOUT_REG :  IN  STD_LOGIC;
		SCLEAR_ALL :  IN  STD_LOGIC;
		VOTER_OUT :  OUT  STD_LOGIC;
		START_BIT_CHECK :  OUT  STD_LOGIC;
		TC_26 :  OUT  STD_LOGIC;
		TC_8 :  OUT  STD_LOGIC;
		TC_12 :  OUT  STD_LOGIC;
		DOUT :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END uartRX_DP;

ARCHITECTURE bdf_type OF uartRX_DP IS 

COMPONENT start_bit_detector
	PORT(Q_RX_REG : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 START_BIT_CHECK : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT voter
	PORT(Q_RX_REG : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 VOTER_OUT : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT cnt_26
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT cnt_12
	PORT(sclr : IN STD_LOGIC;
		 sload : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT cnt_8
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT terminal_counter_26
	PORT(Q_CNT_26 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 TC_26 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT terminal_counter_8
	PORT(Q_CNT_8 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 TC_8 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT terminal_counter_12
	PORT(Q_CNT_12 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 TC_12 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT rx_reg
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dout_reg
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	D_CNT_12 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	Q_CNT_12 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	Q_CNT_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
VOTER_OUT <= SYNTHESIZED_WIRE_3;



b2v_inst : start_bit_detector
PORT MAP(Q_RX_REG => SYNTHESIZED_WIRE_4,
		 START_BIT_CHECK => START_BIT_CHECK);


b2v_inst1 : voter
PORT MAP(Q_RX_REG => SYNTHESIZED_WIRE_4,
		 VOTER_OUT => SYNTHESIZED_WIRE_3);






b2v_inst14 : cnt_26
PORT MAP(sclr => SCLEAR_CNT_26,
		 clock => CK,
		 cnt_en => EN_CNT_26,
		 q => SYNTHESIZED_WIRE_2);


b2v_inst15 : cnt_12
PORT MAP(sclr => SCLEAR_ALL,
		 sload => LOAD_CNT_12,
		 clock => CK,
		 cnt_en => EN_CNT_12,
		 data => D_CNT_12,
		 q => Q_CNT_12);


b2v_inst3 : cnt_8
PORT MAP(sclr => SCLEAR_ALL,
		 clock => CK,
		 cnt_en => EN_CNT_8,
		 q => Q_CNT_8);


b2v_inst4 : terminal_counter_26
PORT MAP(Q_CNT_26 => SYNTHESIZED_WIRE_2,
		 TC_26 => TC_26);


b2v_inst5 : terminal_counter_8
PORT MAP(Q_CNT_8 => Q_CNT_8,
		 TC_8 => TC_8);


b2v_inst6 : terminal_counter_12
PORT MAP(Q_CNT_12 => Q_CNT_12,
		 TC_12 => TC_12);


b2v_inst8 : rx_reg
PORT MAP(sclr => SCLEAR_ALL,
		 clock => CK,
		 enable => EN_RX_REG,
		 shiftin => RX,
		 q => SYNTHESIZED_WIRE_4);


b2v_inst9 : dout_reg
PORT MAP(sclr => SCLEAR_DOUT_REG,
		 clock => CK,
		 enable => EN_DOUT_REG,
		 shiftin => SYNTHESIZED_WIRE_3,
		 q => DOUT);


D_CNT_12(3) <= '0';
D_CNT_12(1) <= '0';
D_CNT_12(2) <= '1';
D_CNT_12(0) <= '1';
END bdf_type;