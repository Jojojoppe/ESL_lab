library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity de0_nano_toplevel is
	port(
	CLOCK_50	: in std_logic;
	LED 		: out std_logic_vector(7 downto 0);
	KEY		: in std_logic_vector(1 downto 0);
	GPIO_0 	: inout std_logic_vector(33 downto 0)
	);
end entity;

architecture a of de0_nano_toplevel is
	signal rotation_counter : std_logic_vector(31 downto 0);
begin

	LED <= rotation_counter(7 downto 0);

	e_cnt : entity esl_demonstrator(encoder) port map(
		GPIO_0(20), GPIO_0(22),
		rotation_counter, not KEY(0), CLOCK_50
	);

end architecture;