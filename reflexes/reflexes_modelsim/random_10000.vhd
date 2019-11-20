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
-- CREATED		"Fri Jan 11 18:59:04 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY random_10000 IS 
	PORT
	(
		SEED_LOAD :  IN  STD_LOGIC;
		CK :  IN  STD_LOGIC;
		RND_RESULT :  OUT  STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END random_10000;

ARCHITECTURE bdf_type OF random_10000 IS 

COMPONENT mult_10000
	PORT(dataa : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ff_1bit
	PORT(data : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT xor_4bit
	PORT(data0 : IN STD_LOGIC;
		 data1 : IN STD_LOGIC;
		 data2 : IN STD_LOGIC;
		 data3 : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux2to1_1bit
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 S : IN STD_LOGIC;
		 O : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT rshifter_14
	PORT(input : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	dataa :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	result :  STD_LOGIC_VECTOR(27 DOWNTO 0);
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
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_1 <= '1';
SYNTHESIZED_WIRE_3 <= '1';
SYNTHESIZED_WIRE_5 <= '1';
SYNTHESIZED_WIRE_7 <= '0';
SYNTHESIZED_WIRE_9 <= '1';
SYNTHESIZED_WIRE_11 <= '0';
SYNTHESIZED_WIRE_13 <= '0';
SYNTHESIZED_WIRE_15 <= '0';
SYNTHESIZED_WIRE_17 <= '0';
SYNTHESIZED_WIRE_19 <= '0';
SYNTHESIZED_WIRE_21 <= '1';
SYNTHESIZED_WIRE_23 <= '1';
SYNTHESIZED_WIRE_25 <= '1';
SYNTHESIZED_WIRE_27 <= '0';



b2v_inst : mult_10000
PORT MAP(dataa => dataa,
		 result => result);


b2v_inst1 : ff_1bit
PORT MAP(data => dataa(0),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_4);


b2v_inst10 : ff_1bit
PORT MAP(data => dataa(9),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_20);


b2v_inst11 : ff_1bit
PORT MAP(data => dataa(10),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_22);


b2v_inst12 : ff_1bit
PORT MAP(data => dataa(11),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_24);


b2v_inst13 : ff_1bit
PORT MAP(data => dataa(12),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_26);


b2v_inst14 : ff_1bit
PORT MAP(data => dataa(13),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_0);


b2v_inst15 : xor_4bit
PORT MAP(data0 => dataa(2),
		 data1 => dataa(4),
		 data2 => dataa(10),
		 data3 => SYNTHESIZED_WIRE_0,
		 result => SYNTHESIZED_WIRE_2);


b2v_inst2 : ff_1bit
PORT MAP(data => dataa(1),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_6);


b2v_inst3 : ff_1bit
PORT MAP(data => dataa(2),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_8);





b2v_inst4 : ff_1bit
PORT MAP(data => dataa(3),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_28);






b2v_inst5 : ff_1bit
PORT MAP(data => dataa(4),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_10);




b2v_inst6 : ff_1bit
PORT MAP(data => dataa(5),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_12);




b2v_inst67 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_1,
		 B => SYNTHESIZED_WIRE_2,
		 S => SEED_LOAD,
		 O => dataa(0));


b2v_inst68 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_3,
		 B => SYNTHESIZED_WIRE_4,
		 S => SEED_LOAD,
		 O => dataa(1));


b2v_inst69 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_5,
		 B => SYNTHESIZED_WIRE_6,
		 S => SEED_LOAD,
		 O => dataa(2));


b2v_inst7 : ff_1bit
PORT MAP(data => dataa(6),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_14);


b2v_inst70 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_7,
		 B => SYNTHESIZED_WIRE_8,
		 S => SEED_LOAD,
		 O => dataa(3));


b2v_inst71 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_9,
		 B => SYNTHESIZED_WIRE_10,
		 S => SEED_LOAD,
		 O => dataa(5));


b2v_inst72 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_11,
		 B => SYNTHESIZED_WIRE_12,
		 S => SEED_LOAD,
		 O => dataa(6));


b2v_inst73 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_13,
		 B => SYNTHESIZED_WIRE_14,
		 S => SEED_LOAD,
		 O => dataa(7));


b2v_inst74 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_15,
		 B => SYNTHESIZED_WIRE_16,
		 S => SEED_LOAD,
		 O => dataa(8));


b2v_inst75 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_17,
		 B => SYNTHESIZED_WIRE_18,
		 S => SEED_LOAD,
		 O => dataa(9));


b2v_inst76 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_19,
		 B => SYNTHESIZED_WIRE_20,
		 S => SEED_LOAD,
		 O => dataa(10));


b2v_inst77 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_21,
		 B => SYNTHESIZED_WIRE_22,
		 S => SEED_LOAD,
		 O => dataa(11));


b2v_inst78 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_23,
		 B => SYNTHESIZED_WIRE_24,
		 S => SEED_LOAD,
		 O => dataa(12));


b2v_inst79 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_25,
		 B => SYNTHESIZED_WIRE_26,
		 S => SEED_LOAD,
		 O => dataa(13));


b2v_inst8 : ff_1bit
PORT MAP(data => dataa(7),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_16);


b2v_inst80 : mux2to1_1bit
PORT MAP(A => SYNTHESIZED_WIRE_27,
		 B => SYNTHESIZED_WIRE_28,
		 S => SEED_LOAD,
		 O => dataa(4));





b2v_inst9 : ff_1bit
PORT MAP(data => dataa(8),
		 clock => CK,
		 q => SYNTHESIZED_WIRE_18);


b2v_inst90 : rshifter_14
PORT MAP(input => result,
		 output => RND_RESULT);


END bdf_type;