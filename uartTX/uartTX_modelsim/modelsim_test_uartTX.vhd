LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY modelsim_test_uartTX IS
--Entity is empty
END ENTITY modelsim_test_uartTX;

ARCHITECTURE behaviour OF modelsim_test_uartTX IS
	--Device under test component declaration
	COMPONENT uartTX
		PORT( DIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0); --8 bits data to be transmitted
				WR  : IN STD_LOGIC; --Control signal to tell the transmitter the data is ready to be read and transmitted (WR and DIN must be asserted at the same clock shot)
				CK, RST : IN STD_LOGIC; --Clock signal: must be 25Mhz. Synchronous reset input signal
				TX : OUT STD_LOGIC; --Serial output of the transmitter: transmission baudrate 115200 symbol/second
				TXRDY: OUT STD_LOGIC); --Control signal to tell the world transmitter is ready to receive a data to transmit
	END COMPONENT uartTX;
	--Clock and reset signals
	SIGNAL ck_25Mhz, rst : STD_LOGIC:='0';
	--Uart signals
	SIGNAL wr, txout, txrdy : STD_LOGIC;
	SIGNAL datain : STD_LOGIC_VECTOR (7 DOWNTO 0);

	BEGIN
		--Clock generation
		ck_25Mhz <= NOT ck_25Mhz AFTER 20 ns; 
		--Reset generation.
		rst <= '1' AFTER 30 ns, '0' AFTER 70 ns;
		--WR generation and data initialization
		wr <= '0', '1' AFTER 100 ns, '0' AFTER 150 ns, '1' AFTER 100100 ns, '0' AFTER 100150 ns;
		datain <= "00000000", "01010011" AFTER 100 ns, "00000000" AFTER 150 ns, 
					 "00001111" AFTER 100100 ns, "00000000" AFTER 100150 ns;
		
		--DUT declaration
		DUT:uartTX PORT MAP
			(
				DIN=>datain,
				WR=>wr,
				CK=>ck_25Mhz,
				RST=>rst,
				TX=>txout,
				TXRDY=>txrdy
			);
END ARCHITECTURE behaviour;