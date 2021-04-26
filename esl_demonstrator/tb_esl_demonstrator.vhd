library ieee;
use ieee.std_logic_1164.all;

entity esl_demonstrator_testbench is 
end entity;


architecture testbench of esl_demonstrator_testbench is
	component esl_demonstrator is
		port(	inp_a : in std_logic;
				inp_b : in std_logic;
				rotation_counter : out std_logic_vector(31 downto 0);
				reset : in std_logic;
				clk	: in std_logic);
	end component;
	
	signal inp_a : std_logic := '0';
	signal inp_b : std_logic := '0';
	signal rotation_counter : std_logic_vector(31 downto 0);
	signal reset, clk : std_logic := '1';
	
begin

	clk <= not clk after 10 ns;
	reset <= '0' after 40 ns;

	c_dut : component esl_demonstrator port map (
		inp_a, inp_b, rotation_counter, reset, clk
	);
	
	process begin
	
		-- A leading B
		for i in 0 to 20 loop
			inp_a <= '1';
			wait for 75 ns;
			inp_b <= '1';
			wait for 75 ns;
			inp_a <= '0';
			wait for 75 ns;
			inp_b <= '0';
			wait for 75 ns;
		end loop;
		wait for 100 ns;
		
		report "GO BACK!!!!!" severity note;
		
		-- A leading B
		for i in 0 to 20 loop
			inp_b <= '1';
			wait for 75 ns;
			inp_a <= '1';
			wait for 75 ns;
			inp_b <= '0';
			wait for 75 ns;
			inp_a <= '0';
			wait for 75 ns;
		end loop;
		
		wait for 100 ns;
		
		report "Shakey shakey" severity note;
		
		for i in 0 to 20 loop
			inp_a <= '1';
			wait for 75 ns;
			inp_b <= '1';
			wait for 100 ns;
			inp_b <= '0';
			wait for 75 ns;
			inp_a <= '0';
			wait for 75 ns;
		end loop;
		
		report "end sim" severity failure;
	
	end process;
	
end architecture;