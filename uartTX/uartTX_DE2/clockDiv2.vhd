LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY clockDiv2 IS 
	PORT
	(
		CK_in : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		CK_out : OUT STD_LOGIC
	);
END clockDiv2;

ARCHITECTURE behavioural OF clockDiv2 IS

	SIGNAL CK_div2_int : STD_LOGIC := '0';
	
	BEGIN
		
		CK_out <= CK_div2_int;

		clockDivider:PROCESS (CK_in, reset) IS
			BEGIN
				IF reset = '1' then              
					CK_div2_int <= '0';
				ELSIF CK_in'EVENT AND CK_in = '1' THEN 
					CK_div2_int <= not CK_div2_int;
				END IF;
		END PROCESS clockDivider;
		
END ARCHITECTURE behavioural;