library ieee;
use ieee.std_logic_1164.all;


entity MainFSM is
port 
(
	-- Main Clock and sync reset
	Clk, Reset: in std_logic;
	
	-- Input signals
	MoreThanNine: in std_logic;
	TxReady: in std_logic;
	DataAvaible: in std_logic;
	
	-- Main Register Control Signals
	RegMuxSel, RegEn, RegLoad, RegClear: out std_logic;
	
	-- 16 to 4 bit mux signals
	InSel: out std_logic_vector(1 downto 0);
	
	-- Main Adder Sel Signal 
	AddValueSel: out std_logic;
	
	-- Output Mux Sel
	OutSel: out std_logic;
	
	--Output signals
	FAV, UartWR: out std_logic
);
end MainFSM;

architecture MainFSMImp of MainFSM is
type State is (WaitForData, SendT, SendA, SendB, SendC, SendD, DoneState, ResetState, Idle);
signal CurrentState, NextState: State;

begin

FSMLogic: process (CurrentState, TxReady, DataAvaible)
variable NextStateCond: State;
begin
	RegMuxSel <= '1';
	RegEn <= '0';
	RegLoad <= '0';
	RegClear <= '0';
	InSel <= "00";
	FAV <= '0';
	UartWR <= '0';
	OutSel <= '0';

	case CurrentState is
	when ResetState => 
		RegClear <= '1';
		NextState <= WaitForData;
	when WaitForData =>
		RegMuxSel <= '0';
		OutSel <= '0';
		RegEn <= '1';
		RegLoad <= '1';
			
		if DataAvaible='1' then		
			NextState <= SendT;
		else 
			NextState <= WaitForData;
		end if;
		
	when SendT =>
		UartWR <= '1';
		RegEn <= '1';
		RegLoad <= '1';
		OutSel <= '0';
		if TxReady = '1' then
			NextState <= SendA;
		else
			NextState <= SendT;
		end if;
		
	when SendA =>
			UartWR <= '1';
			InSel <= "00";
			OutSel <= '1';
			RegEn <= '1';
			RegLoad <= '1';
			
			if TxReady='1' then
				NextState <= SendB;
			else
				NextState <= SendA;
			end if;
			
	when SendB =>
			UartWR <= '1';
			InSel <= "01";
			
			RegEn <= '1';
			RegLoad <= '1';
			OutSel <= '1';
			
			if TxReady='1' then			
				NextState <= SendC;
			else
				NextState <= SendB;
			end if;
			
	when SendC =>
		UartWR <= '1';
		InSel <= "10";
		
		RegEn <= '1';
		RegLoad <= '1';
		OutSel <= '1';
		
		if TxReady='1' then		
			NextState <= SendD;
		else
			NextState <= SendC;
		end if;
			
	when SendD =>
		UartWR <= '1';
		InSel <= "11";
		
		RegEn <= '1';
		RegLoad <= '1';
		OutSel <= '1';
		
		if TxReady='1' then		
			NextState <= DoneState;
		else
			NextState <= SendD;
		end if;
		
	when DoneState => 
		FAV <= '1';
		RegClear <= '1';
		RegEn <= '0';
		NextState <= WaitForData;
		
		--if DataAvaible = '1' then
			--NextState <= WaitForData;
		--else
			--NextState <= DoneState;
		--end if;
	when others =>
		NextState <= Idle;
	end case;
end process;

MainFSM: process(Clk, Reset) 
begin
	if Reset='1' then
		CurrentState <= ResetState;
	elsif rising_edge(Clk) then
		CurrentState <= NextState;
	end if;
end process;

AddValueSel <= MoreThanNine;
	
end MainFSMImp;