library ieee;
use ieee.std_logic_1164.all;

entity mux4to1_1bit is
port(A,B,C,D : in std_logic;
      O : out std_logic;
      S : in std_logic_vector(1 downto 0));
end entity;

architecture behavioural of mux4to1_1bit is
begin
O <=
  A when S = "00" else
  B when S = "01" else
  C when S = "10" else
  D;
end architecture;
  