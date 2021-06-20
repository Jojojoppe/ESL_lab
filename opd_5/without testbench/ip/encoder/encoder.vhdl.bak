library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity encoder is
	generic(
		DATA_WIDTH : natural := 32
	);
	port(
		inp_a : in std_logic;
		inp_b : in std_logic;
		rotation_counter : out std_logic_vector(DATA_WIDTH-1 downto 0); -- out
		reset : in std_logic;
		clk	: in std_logic;
		data_in : in std_logic_vector(DATA_WIDTH-1 downto 0); -- in
		data_write : in std_logic
	);
end entity;

-- _________|--------|__	signal counter : signed(31 downto 0);________
-- ----|________|----------|____
--          ..... +1


architecture behavioural of encoder is
	signal counter : signed(31 downto 0);
begin

rotation_counter <= std_logic_vector(counter);

process(reset, clk)
	variable old_a, old_b : std_logic;
begin
	if(reset = '1') then
		counter <= (others => '0');
	elsif rising_edge(clk) then
		-- Write counter
		if data_write='1' then
			counter <= signed(data_in);
		end if;
	
		-- If edge of A
		if old_a /= inp_a then
			if inp_a='1' then
				-- Rising edge
				if inp_b='0' then
					-- Leading A : inc
					counter <= counter + 1;
				else
					-- Lagging A : dec
					counter <= counter - 1;
				end if;
			else
				-- Falling edge
				if inp_b='1' then
					-- Leading A : inc
					counter <= counter + 1;
				else
					-- Lagging A : dec
					counter <= counter - 1;
				end if;
			end if;
		-- if edge of Bcounter <= counter - 1;
		elsif old_b /= inp_b then
			if inp_b='1' then
				-- Rising edge
				if inp_a='0' then
					-- Leading B : inc
					counter <= counter - 1;
				else
					-- Lagging B : dec
					counter <= counter + 1;
				end if;
			else
				-- Falling edge
				if inp_a='1' then
					-- Leading B : inc
					counter <= counter - 1;
				else
					-- Lagging B : dec
					counter <= counter + 1;
				end if;
			end if;
		end if;
		
		old_a := inp_a;
		old_b := inp_b;
	end if;
	--elsif(rising_edge(inp_a)) then
	--	if(inp_b = '0') then
	--		counter <= counter + 1;
	--	else 
	--		counter <= counter - 1;
	--	end if;
	--elsif(rising_edge(inp_b)) then
	--	if(inp_a = '1') then
	--		counter <= counter + 1;
	--	else 
	--		counter <= counter - 1;
	--	end if;
	--elsif(falling_edge(inp_a)) then
	--	if(inp_b = '1') then
	--		counter <= counter + 1;
	--	else 
	--		counter <= counter - 1;
	--	end if;
	--elsif(falling_edge(inp_b)) then
	--	if(inp_b = '0') then
	--		counter <= counter + 1;
	--	else 
	--		counter <= counter - 1;
	--	end if;
	--end if;

end process;

end architecture;
