LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY uartRX_CU IS
	PORT
	( 
		CK, RST, RD : IN STD_LOGIC; 
		TC_8, TC_12, TC_26 : IN STD_LOGIC;
		VOTER_OUT, START_BIT_CHECK : IN STD_LOGIC;
		EN_CNT_26, SCLEAR_CNT_26 : OUT STD_LOGIC;
		EN_CNT_12, LOAD_CNT_12 : OUT STD_LOGIC;
		EN_CNT_8 : OUT STD_LOGIC;
		EN_RX_REG, EN_DOUT_REG, SCLEAR_DOUT_REG : OUT STD_LOGIC; 
		SCLEAR_ALL : OUT STD_LOGIC;
		DAV : OUT STD_LOGIC
	);
END ENTITY uartRX_CU;

ARCHITECTURE behavioural OF uartRX_CU IS 
	TYPE STATE_TYPE IS (RESET, IDLE_1, SHIFT_IN_1, 
									 IDLE_2, SHIFT_IN_2, 
									 IDLE_3, SHIFT_IN_3, 
									 SHIFT_DOUT, DATA_AVAILABLE, 
									 END_STATE_SHIFT_IN, END_STATE_COUNT,
									 SHIFT_IN_4);
									 
	SIGNAL PRESENT_STATE : STATE_TYPE;
	SIGNAL NEXT_STATE : STATE_TYPE;
  
	BEGIN
  
  
  
		STATE_UPDATE:PROCESS (CK, RST) IS
			BEGIN
				IF RST = '1' THEN
					PRESENT_STATE <= RESET;
				ELSIF CK'EVENT AND CK = '1' THEN
					PRESENT_STATE <= NEXT_STATE;
				END IF;
		END PROCESS STATE_UPDATE;
  
  
  
		STATE_PROGRESSION:PROCESS (PRESENT_STATE, TC_26, TC_12, TC_8,
																START_BIT_CHECK, VOTER_OUT, RD) IS
			BEGIN
				CASE (PRESENT_STATE) IS
					------------------------------
					WHEN RESET =>
						NEXT_STATE <= IDLE_1;
					------------------------------	
					WHEN IDLE_1 => 
						IF TC_26 = '1' THEN
							IF start_bit_check = '1' THEN
								NEXT_STATE <= SHIFT_IN_2;
							ELSE
								NEXT_STATE <= SHIFT_IN_1;
							END IF;
						ELSE
							NEXT_STATE <= IDLE_1;
						END IF;
					------------------------------	
					WHEN SHIFT_IN_1 =>
						NEXT_STATE <= IDLE_1;
					------------------------------	
					WHEN IDLE_2 =>
						IF TC_12 = '1' THEN
							IF TC_8 = '1' THEN
								IF VOTER_OUT = '1' THEN
									NEXT_STATE <= DATA_AVAILABLE;
								ELSE
									NEXT_STATE <= RESET;
								END IF;
							ELSE
								NEXT_STATE <= SHIFT_DOUT;
							END IF;
						ELSE
							IF TC_26 = '1' THEN
								NEXT_STATE <= SHIFT_IN_2;
							ELSE
								NEXT_STATE <= IDLE_2;
							END IF;
						END IF;
					------------------------------	
					WHEN SHIFT_IN_2 =>
						NEXT_STATE <= IDLE_2;
					------------------------------	
					WHEN IDLE_3 =>
						IF TC_26 = '1' THEN
							NEXT_STATE <= SHIFT_IN_3;
						ELSE
							NEXT_STATE <= IDLE_3;
						END IF;  
					------------------------------
					WHEN SHIFT_IN_3 =>
						NEXT_STATE <= IDLE_2;
					------------------------------	
					WHEN SHIFT_DOUT => 
						NEXT_STATE <= IDLE_3;
					------------------------------
					WHEN DATA_AVAILABLE =>
						if TC_26 = '1' then
							if RD = '1' then
								NEXT_STATE <= END_STATE_SHIFT_IN;
							else
								NEXT_STATE <= SHIFT_IN_4;
							end if;
						else
							if RD = '1' then
								NEXT_STATE <= END_STATE_COUNT;
							else
								NEXT_STATE <= DATA_AVAILABLE;
							end if;
						end if;		
					------------------------------	
					WHEN END_STATE_SHIFT_IN =>
						NEXT_STATE <= IDLE_1;
					------------------------------	
					when SHIFT_IN_4 =>
						if RD = '1' then
							NEXT_STATE <= END_STATE_COUNT;
						else 
							NEXT_STATE <= DATA_AVAILABLE;
						end if;
					------------------------------
					when END_STATE_COUNT =>
						if TC_26 = '1' then
							NEXT_STATE <= SHIFT_IN_1;
						else
							NEXT_STATE <= IDLE_1;
						end if;
					------------------------------	
					WHEN OTHERS => 
						NEXT_STATE <= RESET;
					------------------------------
				END CASE;
		END PROCESS STATE_PROGRESSION;
	  
	  
	  
		OUTPUT_PROGRESSION:PROCESS (PRESENT_STATE) IS
			BEGIN
			
				EN_CNT_26 <= '1';
				SCLEAR_CNT_26 <= '0';
				EN_CNT_12 <= '0';
				LOAD_CNT_12 <= '0';
				EN_CNT_8 <= '0';
				EN_RX_REG <= '0';
				EN_DOUT_REG <= '0';
				SCLEAR_DOUT_REG <= '0';
				SCLEAR_ALL <= '0';
				DAV <= '0';
			
				CASE (PRESENT_STATE) IS
				
					WHEN RESET =>
						SCLEAR_ALL <= '1';
						SCLEAR_CNT_26 <= '1';
						SCLEAR_DOUT_REG <= '1';
						EN_CNT_26 <= '0';
						EN_RX_REG <= '1';
						EN_DOUT_REG <= '1';
						
					WHEN IDLE_1 =>
					
					WHEN SHIFT_IN_1 =>
						EN_RX_REG <= '1';
						SCLEAR_CNT_26 <= '1';
						EN_CNT_26 <= '0';
						
					WHEN IDLE_2 =>
					
					WHEN SHIFT_IN_2 =>
						EN_RX_REG <= '1';
						SCLEAR_CNT_26 <= '1';
						EN_CNT_26 <= '0';
						EN_CNT_12 <= '1';
										  
					WHEN IDLE_3 =>
					
					WHEN SHIFT_IN_3 =>
						EN_RX_REG <= '1';
						EN_CNT_26 <= '0';
						SCLEAR_CNT_26 <= '1';
						LOAD_CNT_12 <= '1';
						
					WHEN SHIFT_DOUT =>
						EN_CNT_8 <= '1';
						EN_DOUT_REG <= '1';
					
					WHEN DATA_AVAILABLE =>
						DAV <= '1';
						SCLEAR_ALL <= '1';
					
					WHEN SHIFT_IN_4 =>
						EN_RX_REG <= '1';
						EN_CNT_26 <= '0';
						SCLEAR_CNT_26 <= '1';
						DAV <= '1';
	
					WHEN END_STATE_COUNT =>
						SCLEAR_DOUT_REG <= '1';
						EN_DOUT_REG <= '1';
						
					WHEN END_STATE_SHIFT_IN =>
						SCLEAR_DOUT_REG <= '1';
						EN_DOUT_REG <= '1';
						EN_RX_REG <= '1';
						EN_CNT_26 <= '0';
						SCLEAR_CNT_26 <= '1';
						
				END CASE;
	END PROCESS OUTPUT_PROGRESSION;
END ARCHITECTURE behavioural;