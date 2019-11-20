LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY modelsim_test_uartRX IS
	GENERIC
	(
		data : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000"
	);
--Entity is empty
END ENTITY modelsim_test_uartRX;

ARCHITECTURE behaviour OF modelsim_test_uartRX IS
--Device under test component declaration
COMPONENT uartRX
	PORT
	( 
		CK, RST :  IN STD_LOGIC;
		RD :  IN STD_LOGIC;
		RX :  IN STD_LOGIC;
		DOUT :  OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		DAV :  OUT STD_LOGIC
	);
END COMPONENT uartRX;
--Clock and reset signals
SIGNAL ck_25MHz, reset, ck_115_2kHz : STD_LOGIC:='0';
--Uart signals
SIGNAL rd, dav : STD_LOGIC;
SIGNAL test_signal : STD_LOGIC:='0';
SIGNAL rx : STD_LOGIC:='1';
SIGNAL datain : STD_LOGIC_VECTOR (7 DOWNTO 0):=data;
SIGNAL dataout : STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN
	--Clock generation
	ck_25Mhz <= NOT ck_25Mhz AFTER 20 ns; 
	ck_115_2kHz <= NOT ck_115_2kHz AFTER 4340278 ps;
	--Reset generation.
	reset <= '1' AFTER 30 ns, '0' AFTER 70 ns;
	
	rx_generation:PROCESS (ck_115_2kHz, reset, datain, dav) IS
		VARIABLE index : integer := 0;
		BEGIN
			IF reset = '1' THEN
				index := 0;
			ELSIF ck_115_2kHz'EVENT AND ck_115_2kHz = '1' THEN
				CASE (index) IS
					WHEN 0 =>
						rx <= '1';
					WHEN 1 =>
						rx <= '0';
					WHEN 10 =>
						rx <= '1';
					WHEN OTHERS =>
						rx <= datain(index-2);
				END CASE;
				IF index < 10 and dav = '0' THEN
					index := index + 1;
				ELSE
					index := 0;
				END IF;
			END IF;
	END PROCESS;
	
	rd_datain_generation:PROCESS (reset, ck_25MHz, dav) IS
		variable counter : unsigned(7 downto 0):=unsigned(data);
		variable flag_DAV_2 : integer:=0;
		BEGIN
			datain <= datain;
			IF reset = '1' THEN
				rd <= '0';
				datain <= (OTHERS=> '0');
			ELSIF ck_25MHz'EVENT AND ck_25MHz = '1' THEN
				IF dav = '0' THEN
					rd <= '0';
				ELSIF flag_DAV_2 = 0 THEN 
					counter := counter + 1;
					datain <= std_logic_vector(counter);
					rd <= '1';
					flag_DAV_2 := 1;
				ELSE
					flag_DAV_2 := 0;
				END IF;
			END IF;
	END PROCESS;		
	test_generation:PROCESS (datain, dataout, dav) IS
		BEGIN
			IF datain = dataout AND dav = '1' THEN	
				test_signal <= '1';
			ELSE 
				test_signal <= '0';
		END IF;
	END PROCESS;
	
	--DUT declaration
	DUT:uartRX PORT MAP
		(CK=>ck_25Mhz,
		 RST=>reset,
		 RD=>rd,
		 RX=>rx,
		 DOUT=>dataout,
		 DAV=>dav
		 );
END ARCHITECTURE behaviour;