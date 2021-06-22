library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity testbench is
end entity;

architecture a of testbench is

	signal CLK, RST			: std_logic := '1';
	signal INA, INB, C		: std_logic;
	signal PWM_CLK			: std_logic;
	signal duty				: std_logic_vector(7 downto 0) := x"00";
	signal direction		: std_logic := '0';

begin

	CLK <= not CLK after 10 ns;
	RST <= '0' after 100 ns;

	FDIV_PWM : entity FDIV(a) generic map(
		50000000,
		5130000
	) port map (
		CLK, PWM_CLK, RST
	);

	PWM_GEN : entity PWM(structure) port map(
		INA, INB, C, duty, direction, PWM_CLK, RST
	);

	process begin

		duty <= x"80";
		wait for 10 ms;

		duty <= x"40";
		wait for 10 ms;

		duty <= x"C0";
		wait for 10 ms;

		report "End" severity failure;
	end process;

end architecture;
