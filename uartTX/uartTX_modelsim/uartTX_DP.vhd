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
-- CREATED		"Thu Dec 06 15:07:21 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY uartTX_DP IS 
	PORT
	(
		CK :  IN  STD_LOGIC;
		DIN :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		EN_CNT_216, SCLEAR_CNT_216 :  IN  STD_LOGIC;
		EN_LOAD_TX_REG, EN_TX_REG :  IN  STD_LOGIC; 
		IDLE_TX :  IN  STD_LOGIC; 
		SCLEAR_ALL :  IN  STD_LOGIC;
		
		TX :  OUT  STD_LOGIC;
		
		TC_216 :  OUT  STD_LOGIC;
		END_TX :  OUT  STD_LOGIC
	);
END uartTX_DP;

ARCHITECTURE bdf_type OF uartTX_DP IS 

COMPONENT cnt_216
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT tx_reg
	PORT(sclr : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 shiftout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT endtx_gen
	PORT(Q_TX_REG : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 END_TX : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT terminal_count_216
	PORT(Q_CNT_216 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 TC_216 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT d_ff
	PORT(sclr : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	D_TX_REG :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '0';
SYNTHESIZED_WIRE_6 <= '1';



b2v_inst : cnt_216
PORT MAP(sclr => SCLEAR_CNT_216,
		 clock => CK,
		 cnt_en => EN_CNT_216,
		 q => SYNTHESIZED_WIRE_2);


b2v_inst1 : tx_reg
PORT MAP(sclr => SCLEAR_ALL,
		 load => EN_LOAD_TX_REG,
		 clock => CK,
		 enable => EN_TX_REG,
		 shiftin => SYNTHESIZED_WIRE_0,
		 data => D_TX_REG,
		 shiftout => SYNTHESIZED_WIRE_3,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst2 : endtx_gen
PORT MAP(Q_TX_REG => SYNTHESIZED_WIRE_1,
		 END_TX => END_TX);


b2v_inst3 : terminal_count_216
PORT MAP(Q_CNT_216 => SYNTHESIZED_WIRE_2,
		 TC_216 => TC_216);



TX <= SYNTHESIZED_WIRE_3 OR IDLE_TX;




b2v_inst8 : d_ff
PORT MAP(sclr => SCLEAR_ALL,
		 load => SYNTHESIZED_WIRE_6,
		 clock => CK,
		 enable => SYNTHESIZED_WIRE_6,
		 data => DIN,
		 q => D_TX_REG(8 DOWNTO 1));



D_TX_REG(9) <= '1';
D_TX_REG(0) <= '0';
END bdf_type;