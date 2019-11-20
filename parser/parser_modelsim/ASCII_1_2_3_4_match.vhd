library ieee;
use ieee.std_logic_1164.all;

entity ASCII_1_2_3_4_match is
	port
		(	char_in : in std_logic_vector(7 downto 0);
			match : out std_logic
		);
end entity ASCII_1_2_3_4_match;

architecture structure of ASCII_1_2_3_4_match is	
	signal matchSingleChar : std_logic_vector(4 downto 0);
	begin
	
		matchSingleChar(0) <= not char_in(7) and -- common bits check
									 not char_in(6) and 
										  char_in(5) and 
										  char_in(4) and 
									 not char_in(3);
		matchSingleChar(1) <= not char_in(2) and -- character "1" match
									 not char_in(1) and
										  char_in(0);
		matchSingleChar(2) <= not char_in(2) and -- character "2" match
										  char_in(1) and
									 not char_in(0);
		matchSingleChar(3) <= not char_in(2) and -- character "3" match
										  char_in(1) and
										  char_in(0);
		matchSingleChar(4) <= 	  char_in(2) and -- character "4" match
									 not char_in(1) and
									 not char_in(0);
		match <= matchSingleChar(0) and (matchSingleChar(1) or -- total match
					matchSingleChar(2) or matchSingleChar(3) or 
					matchSingleChar(4));
		
end architecture structure;