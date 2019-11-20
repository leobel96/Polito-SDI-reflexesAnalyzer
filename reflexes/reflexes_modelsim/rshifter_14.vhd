library ieee;
use ieee.std_logic_1164.all;

entity rshifter_14 is
port(input : in std_logic_vector(27 downto 0);
	 output : out std_logic_vector(13 downto 0));
end entity;

architecture structural of rshifter_14 is
begin
	output(13 downto 0) <= input(27 downto 14);
end architecture; 