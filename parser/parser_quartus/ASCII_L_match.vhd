library ieee;
use ieee.std_logic_1164.all;

entity ASCII_L_match is
	port
		(	char_in : in std_logic_vector(7 downto 0);
			match : out std_logic
		);
end entity ASCII_L_match;

architecture structure of ASCII_L_match is
	begin
		match <= not char_in(0) and 
					not char_in(1) and 
						 char_in(2) and 
						 char_in(3) and 
					not char_in(4) and 
					not char_in(5) and 
						 char_in(6) and 
					not char_in(7);
end architecture structure;