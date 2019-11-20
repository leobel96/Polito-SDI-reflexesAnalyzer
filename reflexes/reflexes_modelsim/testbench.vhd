library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end entity;

architecture behavioural of testbench is
	component reflexes 
		PORT
	(
		FIN :  IN  STD_LOGIC;
		LNUMAV :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		CK :  IN  STD_LOGIC;
		KEY0 :  IN  STD_LOGIC;
		KEY1 :  IN  STD_LOGIC;
		KEY2 :  IN  STD_LOGIC;
		KEY3 :  IN  STD_LOGIC;
		LNUM :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		TIMEAV :  OUT  STD_LOGIC;
		LED0 :  OUT  STD_LOGIC;
		LED1 :  OUT  STD_LOGIC;
		LED2 :  OUT  STD_LOGIC;
		LED3 :  OUT  STD_LOGIC;
		TIME :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	end component;
	signal clk, fin, lnumav, rst, key0, key1, key2, key3 : std_logic := '0';
	signal time : std_logic_vector(15 downto 0);
	signal led0, led1, led2, led3, timeav : std_logic;
	signal lnum : std_logic_vector(1 downto 0);
	begin
	DUT : reflexes 
		port map(fin, lnumav, rst, clk, key0, key1, key2, key3, lnum, timeav, led0, led1, led2, led3, time);
	clk<= not clk after 20 ns;
	rst <= '1' after 30 ns, '0' after 70 ns;
	lnumav <= '1' after 500 ns;
	lnum <= "01" after 540 ns;
	key1 <= '1' after 40 sec, '0' after 45 sec;
	fin <= '1' after 50 sec;
end architecture;