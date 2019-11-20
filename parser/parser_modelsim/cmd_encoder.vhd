library ieee;
use ieee.std_logic_1164.all;

entity cmd_encoder is
	port
		(	char_1to0_in : in std_logic_vector(1 downto 0);
			cmd : out std_logic_vector(1 downto 0)
		);
end entity cmd_encoder;

architecture structure of cmd_encoder is
	begin
		cmd(0) <= not char_1to0_in(0);
		cmd(1) <= not (char_1to0_in(1) xor char_1to0_in(0));
end architecture structure;