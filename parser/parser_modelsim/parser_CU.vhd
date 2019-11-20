library ieee;
use ieee.std_logic_1164.all;

entity parser_CU is
	port
		(	CK, RST, START	:	in std_logic;
			out_ff_L, match_L, match_1234	: 	in	std_logic;
			s_clear_reg_char, s_clear_ff_L : out std_logic; 
			en_reg_char, en_ff_L : out std_logic;
			DONE, CMDAV	:	out	std_logic
		);
end entity parser_CU;

architecture structure of parser_CU is
	type STATE_TYPE is (RESET, WAIT_CHAR, STORE_CHAR, DECIDE_STATE, TOGGLE_FF, DONE_STATE, TOGGLE_FF_AV, DONE_STATE_AV, WAIT_CHAR_AV);
									 
	signal PRESENT_STATE : STATE_TYPE;
	signal NEXT_STATE : STATE_TYPE;
  
	begin
	
		state_update:process (CK, RST) is
			begin
				if CK'event and CK = '1' then
					if RST = '1' then
						PRESENT_STATE <= RESET;
					else
						PRESENT_STATE <= NEXT_STATE;
					end if;
				end if;
		end process state_update;
  
		state_progression:process (PRESENT_STATE, START, out_ff_L, match_L, match_1234) is
			begin
				case (PRESENT_STATE) is
				
					when RESET =>
						NEXT_STATE <= WAIT_CHAR;
						
					when WAIT_CHAR =>
						if START = '1' then
							NEXT_STATE <= STORE_CHAR;
						else
							NEXT_STATE <= WAIT_CHAR;
						end if;
						
					when STORE_CHAR =>
						NEXT_STATE <= DECIDE_STATE;
						
					when DECIDE_STATE =>
						if out_ff_L = '1' then
							if match_1234 = '1' then
								NEXT_STATE <= TOGGLE_FF_AV;
							else
								NEXT_STATE <= TOGGLE_FF;
							end if;
						else
							if match_L = '1' then
								NEXT_STATE <= TOGGLE_FF;
							else 
								NEXT_STATE <= DONE_STATE;
							end if;
						end if;
					
					when TOGGLE_FF =>
						NEXT_STATE <= DONE_STATE;
						
					when DONE_STATE =>
						NEXT_STATE <= WAIT_CHAR;
					
					when TOGGLE_FF_AV =>
						NEXT_STATE <= DONE_STATE_AV;
						
					when DONE_STATE_AV =>
						NEXT_STATE <= WAIT_CHAR_AV;
					
					when WAIT_CHAR_AV =>
						if START = '1' then
							NEXT_STATE <= STORE_CHAR;
						else
							NEXT_STATE <= WAIT_CHAR_AV;
						end if;

					when others =>
						NEXT_STATE <= RESET;
						
				end case;
			end process state_progression;
			
		output_progression:process (PRESENT_STATE) is
			begin
				s_clear_reg_char <= '0';
				s_clear_ff_L <= '0';
				en_reg_char <= '0';
				en_ff_L <= '0';
				DONE <= '0';
				CMDAV <= '0';
				case (PRESENT_STATE) is
					when RESET =>
						s_clear_reg_char <= '1';
						s_clear_ff_L <= '1';
						
					when STORE_CHAR =>
						en_reg_char <= '1';
					
					when DECIDE_STATE =>
						
					when TOGGLE_FF =>
						en_ff_L <= '1';
						
					when DONE_STATE =>
						DONE <= '1';
					
					when TOGGLE_FF_AV =>
						en_ff_L <= '1';
						CMDAV <= '1';
						
					when DONE_STATE_AV =>
						DONE <= '1';
						CMDAV <= '1';
					
					when WAIT_CHAR_AV =>
						CMDAV <= '1';
						
					when others =>
					
				end case;
		end process output_progression;
end architecture structure;