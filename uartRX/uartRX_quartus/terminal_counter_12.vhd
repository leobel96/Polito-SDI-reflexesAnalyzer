LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY terminal_counter_12 IS 
	PORT
	(
		Q_CNT_12 :  IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		TC_12 :  OUT  STD_LOGIC
	);
END ENTITY terminal_counter_12;

ARCHITECTURE structural OF terminal_counter_12 IS 
BEGIN
	TC_12 <= NOT Q_CNT_12(0) AND NOT Q_CNT_12(1) AND Q_CNT_12(2) AND Q_CNT_12(3);
END ARCHITECTURE structural;