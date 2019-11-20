LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY terminal_counter_26 IS 
	PORT
	(
		Q_CNT_26 :  IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
		TC_26 :  OUT  STD_LOGIC
	);
END ENTITY terminal_counter_26;

ARCHITECTURE structural OF terminal_counter_26 IS 
BEGIN
	TC_26 <= Q_CNT_26(0) AND NOT Q_CNT_26(1) AND NOT Q_CNT_26(2) AND Q_CNT_26(3) AND Q_CNT_26(4);
END ARCHITECTURE structural;