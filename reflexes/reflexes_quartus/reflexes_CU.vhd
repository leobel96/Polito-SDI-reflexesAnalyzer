library ieee;
use ieee.std_logic_1164.all;

entity Reflexes_CU is
	port
	(
		TC_CNT_1ms, TC_CNT_16bit : in std_logic;
		SKEY, BUTTON : in std_logic; 
		CK, RST : in std_logic; 
		LNUMAV, FIN : in std_logic;
		SEED_LOAD : out std_logic;
		SCLR_CNT_1ms, EN_CNT_1ms : out std_logic;
		EN_CNT_16bit, SLOAD_CNT_16bit, SCLR_CNT_16bit : out std_logic;
		EN_FF_BUTTON, DATA_FF_BUTTON : out std_logic;
		SCLR_FF_LNUM, EN_FF_LNUM : out std_logic;
		TIMEAV : out std_logic
	);
end entity;

architecture behavioural of Reflexes_CU is
	type state_type is (RESET, IDLE_1, LOAD_LED_TIME, IDLE_2, END_CNT_1ms, LED_ON, END_BUTTON, END_STATE);
	signal PRESENT_STATE : state_type;
	signal NEXT_STATE : state_type;
	begin
	
	state_update : process(CK,RST) is
		begin
		if CK'event and CK = '1' then
			if RST = '1' then 
				PRESENT_STATE <= RESET;
			else
				PRESENT_STATE <= NEXT_STATE;
			end if;	
		end if;
	end process;
	
	state_progression : process(LNUMAV, FIN, TC_CNT_1ms, TC_CNT_16bit, SKEY, RST, PRESENT_STATE, BUTTON) is
		begin
		case(PRESENT_STATE) is
			when RESET =>
				NEXT_STATE <= IDLE_1;
			when IDLE_1 =>
				if LNUMAV = '1' then
					NEXT_STATE <= LOAD_LED_TIME;
				else
					NEXT_STATE <= IDLE_1;
				end if;
			when LOAD_LED_TIME =>
				NEXT_STATE <= IDLE_2;
			when IDLE_2 =>
				if TC_CNT_16bit = '1' then
					if BUTTON = '0' then
						NEXT_STATE <= LED_ON;
					else
						NEXT_STATE <= END_BUTTON;
					end if;
				else
					if BUTTON = '1' then
						if SKEY = '0' then
							NEXT_STATE <= END_BUTTON;
						else
							if TC_CNT_1ms = '1' then
								NEXT_STATE <= END_CNT_1ms;
							else
								NEXT_STATE <= IDLE_2;
							end if;
						end if;
					else
						if TC_CNT_1ms = '1' then
							NEXT_STATE <= END_CNT_1ms;
						else
							NEXT_STATE <= IDLE_2;
						end if;
					end if;
				end if;	
			when END_CNT_1ms =>
				NEXT_STATE <= IDLE_2;
			when LED_ON =>
				NEXT_STATE <= IDLE_2;
			when END_BUTTON =>
				NEXT_STATE <= END_STATE;
			when END_STATE =>
				if FIN = '1' then
					NEXT_STATE <= RESET;
				else
					NEXT_STATE <= END_STATE;
				end if;
			when others =>
				NEXT_STATE <= RESET;
		end case;
	end process;
		
	output_progresson : process(PRESENT_STATE) is
		begin
		SCLR_CNT_1ms <= '0';
		SCLR_CNT_16bit <= '0';
		EN_CNT_1ms <= '0';
		EN_CNT_16bit <= '0';
		SLOAD_CNT_16bit <= '0';
		SEED_LOAD <= '1';
		TIMEAV <= '0';
		EN_FF_BUTTON <= '0';
		DATA_FF_BUTTON <= '0';
		EN_FF_LNUM <= '0';
		SCLR_FF_LNUM <= '0';
		
		case(PRESENT_STATE) is
			when RESET =>
				SCLR_CNT_16bit <= '1';
				SCLR_CNT_1ms <= '1';
				EN_FF_BUTTON <= '1';
				DATA_FF_BUTTON <= '0';
				SEED_LOAD <= '0';
				EN_FF_LNUM <= '1';
				SCLR_FF_LNUM <= '1';
			when IDLE_1 =>
			when LOAD_LED_TIME =>
				EN_FF_LNUM <= '1';
				SLOAD_CNT_16bit <= '1';
				EN_CNT_1ms <= '1';
			when IDLE_2 =>
				EN_CNT_1ms <= '1';
			when END_CNT_1ms =>
				EN_CNT_16bit <= '1';
				EN_CNT_1ms <= '1';
				SCLR_CNT_1ms <= '1';
			when LED_ON =>
				SCLR_CNT_1ms <= '1';
				SCLR_CNT_16bit <= '1';
				EN_CNT_1ms <= '1';
				EN_FF_BUTTON <= '1';
				DATA_FF_BUTTON <= '1';
			when END_BUTTON =>
				TIMEAV <= '1';
			when END_STATE =>
		end case;
	end process;
end architecture;
		
		
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
		
		