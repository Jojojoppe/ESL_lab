library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PWM is
	port(
		INA 			: inout std_logic;
		INB 			: inout std_logic;
		C				: out std_logic;
		duty_cycle 	: in std_logic_vector(7 downto 0);
		direction 	: in std_logic;
		clk			: in std_logic;
		reset 		: in std_logic
	);
end entity;

architecture structure of PWM is
begin
	process(clk ,reset)
		variable counter : unsigned(7 downto 0);
	begin
	
		if reset = '1' then
			counter := (others => '0');
		
		elsif rising_edge(clk) then 
			if direction = '1' then
				INA <= '1';
				INB <= '0';
			else 
				INA <= '0';
				INB <= '1';
			end if;
			
			if counter = "00000000" then
				C <= '0';
			elsif std_logic_vector(counter) <= duty_cycle then
				C <= '1'; 
			else 
				C <= '0';
			end if;

			counter := counter + 1;
		end if;
	end process;
end architecture;