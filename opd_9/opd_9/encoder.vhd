library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encoder is
	port(
		inp_a					: in std_logic;
		inp_b					: in std_logic;		
		rotation_counter 	: out std_logic_vector(15 downto 0);
		reset 				: in std_logic;
		clk					: in std_logic
		);
end entity;

architecture a of toplevel is
	signal counter, nextcounter : unsigned(31 downto 0);
begin

rotation_counter <= std_logic_vector(counter);

process(reset, clk)
	variable old_a, old_b : std_logic;
begin
	if(reset = '0') then
		counter <= (others => '0');
		nextcounter <= (others=>'0');
	elsif rising_edge(clk) then
		counter <= nextcounter;
	
		-- If edge of A
		if old_a /= inp_a then
			if inp_a='1' then
				-- Rising edge
				if inp_b='0' then
					-- Leading A : inc
					nextcounter <= counter + 1;
				else
					-- Lagging A : dec
					nextcounter <= counter - 1;
				end if;
			else
				-- Falling edge
				if inp_b='1' then
					-- Leading A : inc
					nextcounter <= counter + 1;
				else
					-- Lagging A : dec
					nextcounter <= counter - 1;
				end if;
			end if;
		-- if edge of Bcounter <= counter - 1;
		elsif old_b /= inp_b then
			if inp_b='1' then
				-- Rising edge
				if inp_a='0' then
					-- Leading B : inc
					nextcounter <= counter - 1;
				else
					-- Lagging B : dec
					nextcounter <= counter + 1;
				end if;
			else
				-- Falling edge
				if inp_a='1' then
					-- Leading B : inc
					nextcounter <= counter - 1;
				else
					-- Lagging B : dec
					nextcounter <= counter + 1;
				end if;
			end if;
		end if;
		
		old_a := inp_a;
		old_b := inp_b;
	end if;
end process;

end architecture;