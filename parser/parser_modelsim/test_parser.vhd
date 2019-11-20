library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_parser is
end entity test_parser;

architecture testbench of test_parser is

	component test_parser_CU is
		port
			(	
				ck, rst : in std_logic;
				dut_done, cnt_256_TC : in std_logic;
				out_cnt256 : in std_logic_vector(7 downto 0);
				cnt256_en, mux_L_sel : out std_logic;
				dut_start : out std_logic --, fwrite_en
			);
	end component test_parser_CU;

	component parser is 
		port
		(
			CK :  IN  STD_LOGIC;
			RST :  IN  STD_LOGIC;
			START :  IN  STD_LOGIC;
			CHARIN :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
			DONE :  OUT  STD_LOGIC;
			CMDAV :  OUT  STD_LOGIC;
			CMD :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
		);
	end component parser;
	signal ck, rst : std_logic:= '0';
	signal cnt256_en, cnt_256_TC : std_logic;
	signal mux_L_sel : std_logic;
	signal dut_start, dut_done, cmdav : std_logic;
	signal cmd : std_logic_vector(1 downto 0);
	signal dut_input : std_logic_vector(7 downto 0);
	signal out_cnt256 : std_logic_vector(7 downto 0);
	
	begin
		--clock and reset
		ck <= not ck after 10 ns;
		rst <= '1' after 30 ns, '0' after 60 ns;
		--counter
		counter256:process(ck,rst,cnt256_en) is
			begin
				cnt_256_TC <= '0';
				if out_cnt256 = "11111110" then
					cnt_256_TC <= '1';
				end if;
				if ck'event and ck = '1' then
					if rst = '1' then
						out_cnt256 <= (others=> '0');
					elsif cnt256_en = '1' then
						if out_cnt256 = "1111111" then
							out_cnt256 <= (others=> '0');
						else	
							out_cnt256 <= std_logic_vector(unsigned(out_cnt256) + 1);
						end if;
					end if;
				end if;
		end process counter256;
		--input mux
		mux_L:process(out_cnt256,mux_L_sel) is
			begin	
				if mux_L_sel = '1' then
					dut_input <= "01001100";
				else
					dut_input <= out_cnt256;
				end if;
		end process mux_L;
		--test CU
		CU:test_parser_CU port map
			(
				ck => ck,
				rst => rst,
				dut_done => dut_done,
				cnt_256_TC => cnt_256_TC,
				out_cnt256 => out_cnt256,
				cnt256_en => cnt256_en, 
				mux_L_sel => mux_L_sel,
				dut_start => dut_start --, fwrite_en
			);
		--dut
		dut:parser port map
			(
				CK => ck,
				RST => rst,
				START => dut_start,
				CHARIN => dut_input,
				DONE => dut_done,
				CMDAV => cmdav,
				CMD => cmd
			);
			
end architecture testbench;