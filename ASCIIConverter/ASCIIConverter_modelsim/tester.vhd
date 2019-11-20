library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Tester is
end Tester;

architecture Imp of Tester is

component UartTX is
port
(
	CK :  IN  STD_LOGIC;
	WR :  IN  STD_LOGIC;
	RST :  IN  STD_LOGIC;
	DIN :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
	TX :  OUT  STD_LOGIC;
	TXRDY :  OUT  STD_LOGIC
);
end component;

component UartRX is
PORT
	(
		CK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		RD :  IN  STD_LOGIC;
		RX :  IN  STD_LOGIC;
		DAV :  OUT  STD_LOGIC;
		DOUT :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end component;

component ASCIIConverter is
PORT
	(
		TAV :  IN  STD_LOGIC;
		TX_RDY :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		TOUT :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		FIN :  OUT  STD_LOGIC;
		WR :  OUT  STD_LOGIC;
		DIN :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end component;


signal Clk25, Reset: std_logic := '0';
signal TAV: std_Logic;
signal TxDone: std_logic;

signal UartWR: std_logic;
signal UartDataOut: std_logic;
signal UartTxReady: std_logic;

signal DataIn: std_logic_vector(15 downto 0);
signal UartDataIn: std_logic_vector(7 downto 0);

signal UartOut: std_logic_vector(7 downto 0);
signal UartDataAvaible: std_logic;
signal UartRD: std_logic;

begin

Clk25 <= NOT Clk25 AFTER 10 ns; 
Reset <= '1' AFTER 30 ns, '0' AFTER 70 ns;

TAV <= '1';
DataIn <= "0001001000111110";

MainComp: ASCIIConverter port map (
		TAV => TAV, TX_RDY => UartTxReady, 
		Clk => CLK25, RST => Reset,
		TOUT =>  DataIn, FIN => TxDone,
		WR => UartWR, DIN => UartDataIn
	);

UartTXComp: UartTX port map(
		CK => Clk25, WR => UartWR,
		RST => Reset, DIN => UartDataIn,
		TX => UartDataOut, TXRDY => UartTxReady
	);
	
UartRD <= '1';
UartRXComp: UartRX port map(
		CK => Clk25, RST => Reset,
		RD => UartRD, RX => UartDataOut,
		DAV =>  UartDataAvaible, DOUT => UartOut
	);
	 
end;