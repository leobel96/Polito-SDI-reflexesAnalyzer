library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_1bit is
port(A,B : in std_logic;
      O : out std_logic;
      S : in std_logic);
end entity;

architecture behavioural of mux2to1_1bit is
  begin
  O <= (A and not S) or (B and S);
end architecture;
  