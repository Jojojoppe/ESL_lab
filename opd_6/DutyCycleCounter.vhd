library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity DutyCycleCounter is
	port(
		duty_cycle 	: out std_logic_vector(7 downto 0);
		clk			: in std_logic;
		rst			: in std_logic
	);
end entity;

architecture a of DutyCycleCounter is
	signal counter : unsigned(7 downto 0);
begin
	process(clk, rst) begin
		if(rst='1') then
			counter <= (others => '0');
		elsif rising_edge(clk) then
			counter <= counter + 1;
		end if;
	end process;
	
	duty_cycle <= std_logic_vector(counter);
end architecture;