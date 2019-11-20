library ieee;
use ieee.std_logic_1164.all;

entity DE2_test_uartRX is
	port
	(
		CLOCK_50 : in std_logic;
		SW       : in std_logic_vector(2 downto 0);
		GPIO_1   : out std_logic_vector(3 downto 0);
		UART_RXD : in std_logic;
		LEDR		: out std_logic_vector(2 downto 0);
		LEDG		: out std_logic_vector(7 downto 0)
	);
end entity DE2_test_uartRX;


architecture behavioural of DE2_test_uartRX is 

	component uartRX is
		port
		(
			  CK :  IN  STD_LOGIC;
			  RD :  IN  STD_LOGIC;
			  RST :  IN  STD_LOGIC;
			  DOUT :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
			  RX :  IN  STD_LOGIC;
			  DAV :  OUT  STD_LOGIC
		);
	end component uartRX;

	component clockDiv2
		port 
		(
			CK_in : in std_logic;
			reset : in std_logic;
			CK_out : out std_logic
		);
	end component;

	signal CK_25 : std_logic;
	signal RD : std_logic;
	signal reset : std_logic;
	signal DOUT : std_logic_vector (7 downto 0);
	signal RX : std_logic;
	signal DAV : std_logic;

	begin

		LEDR(2 downto 1) <= SW(2 downto 1);
		
		reset <= SW(1);
		RD <= SW(2);
		RX <= UART_RXD;
		LEDG <= DOUT;
		LEDR(0) <= DAV;
		
		GPIO_1(0) <= CLOCK_50;
		GPIO_1(1) <= CK_25;
		GPIO_1(2) <= RX;
		GPIO_1(3) <= DAV;
		
		clockDiv:clockDiv2 port map 
		(
			CK_in => CLOCK_50, 
			reset => reset, 
			CK_out => CK_25
		);


		DUT:uartRX PORT MAP
		(
			CK => CK_25, 
			RD => RD,
			RST => reset,
			DOUT => DOUT,
			RX => RX,
			DAV => DAV
		);

end architecture behavioural;