LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY terminal_counter_8 IS 
	PORT
	(
		Q_CNT_8 :  IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		TC_8 :  OUT  STD_LOGIC
	);
END ENTITY terminal_counter_8;

ARCHITECTURE structural OF terminal_counter_8 IS 
BEGIN
	TC_8 <= NOT Q_CNT_8(0) AND NOT Q_CNT_8(1) AND NOT Q_CNT_8(2) AND Q_CNT_8(3);
END ARCHITECTURE structural;