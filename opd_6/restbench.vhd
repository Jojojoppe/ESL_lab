library ieee;
use ieee.std_logic_1164.all;

entity restbench is
	port(
		INA 	: inout std_logic;
		INB 	: inout std_logic;
		C		: out std_logic
	);
end entity;

architecture behaviour of restbench is
	component toplevel is
		port(
			INA 			: inout std_logic;
			INB 			: inout std_logic;
			GPIO_0			: inout std_logic_vector(33 downto 0);
			duty_cycle 	: in std_logic_vector(7 downto 0);
			direction 	: in std_logic;
			CLOCK_50	: in std_logic;
			KEY 		: in std_logic_vector(1 downto 0)
			);
	end component;
	
	signal dutycycle 	: std_logic_vector(7 downto 0) := (others => '0');
	signal dir			: std_logic := '1';
	signal clk			: std_logic := '0';
	signal reset		: std_logic := '1';
	
	signal Ci			: std_logic_vector(33 downto 0);
	signal KEYi			: std_logic_vector(1 downto 0);

begin

	C <= Ci(21);
	KEYi(0) <= not reset;

	pulse:toplevel port map(INA, INB, Ci, dutycycle, dir, clk, KEYi);
	clk <= NOT clk after 20 ns;
	process
	begin
	
	reset <= '1';
	wait for 1 ms;
	reset <= '0';
	
	wait for 10 ms;
	dutycycle <= "00000001";
	wait for 10 ms;
	dutycycle <= "00000010";
	wait for 10 ms;
	dutycycle <= "00000100";
	
	dir <= '0';
	
	wait for 10 ms;
	dutycycle <= "00001000";
	wait for 10 ms;
	dutycycle <= "00010000";
	wait for 10 ms;	
	dutycycle <= "00100000";
	reset <= '1';
	wait for 5 ms;
	reset <= '0';	
	wait for 10 ms;
	dutycycle <= "01000000";
	wait for 10 ms;
	dutycycle <= "10000000";
	wait for 10 ms;
	dutycycle <= "11111111";
	
	assert false report "End" severity failure;
	end process;

	

end architecture;
