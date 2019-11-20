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
-- CREATED		"Mon Jan 14 20:02:18 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY reflexes_dp IS 
	PORT
	(
		SCLR_CNT_1ms :  IN  STD_LOGIC;
		EN_CNT_16bit :  IN  STD_LOGIC;
		CK :  IN  STD_LOGIC;
		EN_CNT_1ms :  IN  STD_LOGIC;
		SEED_LOAD :  IN  STD_LOGIC;
		SCLR_CNT_16bit :  IN  STD_LOGIC;
		EN_FF_BUTTON :  IN  STD_LOGIC;
		DATA_FF_BUTTON :  IN  STD_LOGIC;
		KEY0 :  IN  STD_LOGIC;
		KEY1 :  IN  STD_LOGIC;
		KEY2 :  IN  STD_LOGIC;
		KEY3 :  IN  STD_LOGIC;
		SCLR_FF_LNUM :  IN  STD_LOGIC;
		EN_FF_LNUM :  IN  STD_LOGIC;
		SLOAD_CNT_16bit :  IN  STD_LOGIC;
		LNUM :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		TC_CNT_1ms :  OUT  STD_LOGIC;
		SKEY :  OUT  STD_LOGIC;
		BUTTON :  OUT  STD_LOGIC;
		LED0 :  OUT  STD_LOGIC;
		LED1 :  OUT  STD_LOGIC;
		LED2 :  OUT  STD_LOGIC;
		LED3 :  OUT  STD_LOGIC;
		TC_CNT_16bit :  OUT  STD_LOGIC;
		TIME :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END reflexes_dp;

ARCHITECTURE bdf_type OF reflexes_dp IS 

COMPONENT random_10000
	PORT(SEED_LOAD : IN STD_LOGIC;
		 CK : IN STD_LOGIC;
		 RND_RESULT : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ff_lnum
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT cnt_16bit
	PORT(sclr : IN STD_LOGIC;
		 sload : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT and_16bit
	PORT(data0 : IN STD_LOGIC;
		 data1 : IN STD_LOGIC;
		 data2 : IN STD_LOGIC;
		 data3 : IN STD_LOGIC;
		 data4 : IN STD_LOGIC;
		 data5 : IN STD_LOGIC;
		 data6 : IN STD_LOGIC;
		 data7 : IN STD_LOGIC;
		 data8 : IN STD_LOGIC;
		 data9 : IN STD_LOGIC;
		 data10 : IN STD_LOGIC;
		 data11 : IN STD_LOGIC;
		 data12 : IN STD_LOGIC;
		 data13 : IN STD_LOGIC;
		 data14 : IN STD_LOGIC;
		 data15 : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT and_15bit
	PORT(data0 : IN STD_LOGIC;
		 data1 : IN STD_LOGIC;
		 data2 : IN STD_LOGIC;
		 data3 : IN STD_LOGIC;
		 data4 : IN STD_LOGIC;
		 data5 : IN STD_LOGIC;
		 data6 : IN STD_LOGIC;
		 data7 : IN STD_LOGIC;
		 data8 : IN STD_LOGIC;
		 data9 : IN STD_LOGIC;
		 data10 : IN STD_LOGIC;
		 data11 : IN STD_LOGIC;
		 data12 : IN STD_LOGIC;
		 data13 : IN STD_LOGIC;
		 data14 : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT add_45535
	PORT(datab : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT cnt_1ms
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ff_button
	PORT(data : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT dec_led
	PORT(enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 eq0 : OUT STD_LOGIC;
		 eq1 : OUT STD_LOGIC;
		 eq2 : OUT STD_LOGIC;
		 eq3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux4to1_1bit
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 O : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	q :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	q1 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	rng :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN 
BUTTON <= SYNTHESIZED_WIRE_8;



b2v_inst : random_10000
PORT MAP(SEED_LOAD => SEED_LOAD,
		 CK => CK,
		 RND_RESULT => rng(13 DOWNTO 0));


b2v_inst1 : ff_lnum
PORT MAP(sclr => SCLR_FF_LNUM,
		 clock => CK,
		 enable => EN_FF_LNUM,
		 data => LNUM,
		 q => SYNTHESIZED_WIRE_11);


SYNTHESIZED_WIRE_3 <= NOT(q(10));



SYNTHESIZED_WIRE_2 <= NOT(q(11));



SYNTHESIZED_WIRE_4 <= NOT(q(9));



SYNTHESIZED_WIRE_5 <= NOT(q(6));



SYNTHESIZED_WIRE_6 <= NOT(q(4));



SYNTHESIZED_WIRE_7 <= NOT(q(3));



b2v_inst19 : cnt_16bit
PORT MAP(sclr => SCLR_CNT_16bit,
		 sload => SLOAD_CNT_16bit,
		 clock => CK,
		 cnt_en => EN_CNT_16bit,
		 data => SYNTHESIZED_WIRE_0,
		 q => q1);



b2v_inst22 : and_16bit
PORT MAP(data0 => q1(15),
		 data1 => q1(14),
		 data2 => q1(13),
		 data3 => q1(12),
		 data4 => q1(11),
		 data5 => q1(10),
		 data6 => q1(9),
		 data7 => q1(8),
		 data8 => q1(7),
		 data9 => q1(6),
		 data10 => q1(5),
		 data11 => q1(4),
		 data12 => q1(3),
		 data13 => q1(2),
		 data14 => q1(1),
		 data15 => q1(0),
		 result => TC_CNT_16bit);


b2v_inst23 : and_15bit
PORT MAP(data0 => q(14),
		 data1 => q(13),
		 data2 => SYNTHESIZED_WIRE_1,
		 data3 => SYNTHESIZED_WIRE_2,
		 data4 => SYNTHESIZED_WIRE_3,
		 data5 => SYNTHESIZED_WIRE_4,
		 data6 => q(8),
		 data7 => q(7),
		 data8 => SYNTHESIZED_WIRE_5,
		 data9 => q(5),
		 data10 => SYNTHESIZED_WIRE_6,
		 data11 => SYNTHESIZED_WIRE_7,
		 data12 => q(2),
		 data13 => q(1),
		 data14 => q(0),
		 result => TC_CNT_1ms);


b2v_inst24 : add_45535
PORT MAP(datab => rng,
		 result => SYNTHESIZED_WIRE_0);


b2v_inst3 : cnt_1ms
PORT MAP(sclr => SCLR_CNT_1ms,
		 clock => CK,
		 cnt_en => EN_CNT_1ms,
		 q => q);


b2v_inst4 : ff_button
PORT MAP(data => DATA_FF_BUTTON,
		 clock => CK,
		 enable => EN_FF_BUTTON,
		 q => SYNTHESIZED_WIRE_8);


b2v_inst6 : dec_led
PORT MAP(enable => SYNTHESIZED_WIRE_8,
		 data => SYNTHESIZED_WIRE_11,
		 eq0 => LED0,
		 eq1 => LED1,
		 eq2 => LED2,
		 eq3 => LED3);


SYNTHESIZED_WIRE_1 <= NOT(q(12));



b2v_MUX_KEY : mux4to1_1bit
PORT MAP(A => KEY0,
		 B => KEY1,
		 C => KEY2,
		 D => KEY3,
		 S => SYNTHESIZED_WIRE_11,
		 O => SKEY);

TIME <= q1;

rng(15 DOWNTO 14) <= "00";
END bdf_type;