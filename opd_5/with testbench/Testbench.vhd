library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity Testbench is
	generic(
		DATA_WIDTH 		: natural := 16
	);


end entity;

architecture behaviour of Testbench is

	
	
	signal clk					: std_logic := '0';
	signal reset				: std_logic := '1';
	signal sigA					: std_logic := '0';
	signal sigB					: std_logic := '0';
	signal encoder_output 	: std_logic_vector(DATA_WIDTH -1 downto 0) := (others => '0');
	signal data_in				: std_logic_vector(DATA_WIDTH -1 downto 0) := (others => '0');
	signal data_write			: std_logic := '0';
	
	
begin

	clk <= NOT clk after 20 ns;
	sigB <= not sigB after 200 ns;
	sigA <= sigB after 100 ns;
	
	
	enc:entity encoder(timestwo) generic map(DATA_WIDTH) port map(sigA, sigB, encoder_output, reset, clk, data_in, data_write);
	
	
	process
	begin
			
			wait for 50 ns;
			reset <= '0';
			
			wait for 500 ns;
			
			data_in <= "0000000000010000";
			data_write <= '1';
			
			wait for 40 ns;
			
			data_write <= '0';
			
			
			wait for 10 ms;
			
			
			
			
			
			
			
			
	
	assert false report "End" severity failure;
	end process;

	

end architecture;