LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY start_bit_detector IS 
	PORT
	(
		Q_RX_REG :  IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		START_BIT_CHECK :  OUT  STD_LOGIC
	);
END ENTITY start_bit_detector;

ARCHITECTURE structural OF start_bit_detector IS 
BEGIN
	START_BIT_CHECK <= Q_RX_REG(0) AND Q_RX_REG(1) AND Q_RX_REG(2) AND Q_RX_REG(3) AND
							 NOT Q_RX_REG(4) AND NOT Q_RX_REG(5) AND NOT Q_RX_REG(6) AND NOT Q_RX_REG(7);
							 
END ARCHITECTURE structural;