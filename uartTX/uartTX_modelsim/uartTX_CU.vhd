LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY uartTX_CU IS
	PORT
	(
		CK, RST, WR : IN STD_LOGIC;
		
		TC_216, END_TX : IN STD_LOGIC;
		EN_CNT_216, SCLEAR_CNT_216 : OUT STD_LOGIC;
		EN_LOAD_TX_REG, EN_TX_REG : OUT STD_LOGIC; 
		IDLE_TX : OUT STD_LOGIC; 
		SCLEAR_ALL : OUT STD_LOGIC;
		
		TXRDY : OUT STD_LOGIC
	);
END ENTITY uartTX_CU;

ARCHITECTURE behavioural OF uartTX_CU IS
 
	TYPE STATE_TYPE IS (RESET, IDLE, LOAD, START_TX, NEXT_TX);

	SIGNAL PRESENT_STATE : STATE_TYPE;
	SIGNAL NEXT_STATE : STATE_TYPE;

	BEGIN
	
	
	
		STATE_UPDATE:PROCESS (CK,RST) IS
			BEGIN
				IF RST = '1' THEN
					PRESENT_STATE <= RESET;
				ELSIF CK'EVENT AND CK = '1' THEN
					PRESENT_STATE <= NEXT_STATE;
				END IF;
		END PROCESS STATE_UPDATE;
	


	
		STATE_PROGRESSION:PROCESS (PRESENT_STATE, WR, TC_216, END_TX) IS
			BEGIN
				CASE	(PRESENT_STATE) IS
				
					WHEN RESET =>
						NEXT_STATE <= IDLE;
						
					WHEN IDLE => 
						IF WR = '1' THEN
							NEXT_STATE <= LOAD;
						ELSE
							NEXT_STATE <= IDLE;
						END IF;
						
					WHEN LOAD =>
						NEXT_STATE <= START_TX;
						
					WHEN START_TX =>
						IF TC_216 = '1' THEN
							NEXT_STATE <= NEXT_TX;
						ELSE 
							NEXT_STATE <= START_TX;
						END IF;	
						
					WHEN NEXT_TX =>
						IF END_TX = '1' THEN
							NEXT_STATE <= IDLE;
						ELSE
							NEXT_STATE <= START_TX;
						END IF;
						
					WHEN OTHERS => 
						NEXT_STATE <= IDLE;
						
				END CASE;
		END PROCESS STATE_PROGRESSION;

	
	
		OUTPUT_PROGRESSION:PROCESS (PRESENT_STATE) IS 
			BEGIN
				
				EN_CNT_216 <= '0';
				SCLEAR_CNT_216 <= '0';
				EN_LOAD_TX_REG <= '0';
				EN_TX_REG <= '0';	
				TXRDY <= '0';
				IDLE_TX <= '1'; 
				SCLEAR_ALL <= '0';
				
				CASE (PRESENT_STATE) IS
				
					WHEN RESET =>
						SCLEAR_ALL <= '1';
						SCLEAR_CNT_216 <= '1';
						EN_TX_REG <= '1';
						
					WHEN IDLE => 
						TXRDY <= '1';
						
					WHEN LOAD =>
						EN_LOAD_TX_REG <= '1';
						EN_TX_REG <= '1';
						
					WHEN START_TX =>
						EN_CNT_216 <= '1';
						IDLE_TX <= '0';
						
					WHEN NEXT_TX =>
						EN_TX_REG <= '1';
						SCLEAR_CNT_216 <= '1';
						IDLE_TX <= '0';
						
				END CASE;
		END PROCESS OUTPUT_PROGRESSION;
END ARCHITECTURE behavioural;