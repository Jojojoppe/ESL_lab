library ieee;
use ieee.std_logic_1164.all;

entity slice is
	port(I : in std_logic_vector(31 downto 0); O : out std_logic_vector(7 downto 0));
end entity;

architecture B of slice is
begin
	--O <= I(31 downto 32-8);
	--O <= I(7 downto 0);
	O <= I(15 downto 8);
end B;