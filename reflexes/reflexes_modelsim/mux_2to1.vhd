LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_2to1 IS
	PORT (in0 : IN  STD_LOGIC; --output when sel = 0
			in1 : IN  STD_LOGIC; --output when sel = 1
			sel : IN  STD_LOGIC;
		  out0 : OUT STD_LOGIC);
END ENTITY mux_2to1;

ARCHITECTURE behavior OF mux_2to1 IS
BEGIN
	out0 <= (NOT sel AND in0) OR (sel AND in1);
END ARCHITECTURE behavior;