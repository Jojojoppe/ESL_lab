library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity GPIO_slice is
	port(
		GPIO_0			: in std_logic_vector(32 downto 0);
		encoder_a		: out std_logic;
		encoder_b		: out std_logic
	);
end entity;

architecture A of GPIO_slice is
begin
	encoder_a <= GPIO_0(21);
	encoder_b <= GPIO_0(23);
end architecture;