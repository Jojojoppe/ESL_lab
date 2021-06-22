library ieee;
use ieee.std_logic_1164.all;
library work;
use work.all;

entity pwm_avalon_bus is
	generic (
		DATA_WIDTH : natural := 32	-- word size of each input and output register
	);
	port (
		-- signals to connect to an Avalon clock source interface
		clk			: in  std_logic;
		reset			: in  std_logic;

		-- signals to connect to an Avalon-MM slave interface
		slave_address		: in  std_logic_vector(7 downto 0);
		slave_read		: in  std_logic;
		slave_write		: in  std_logic;
		slave_readdata		: out std_logic_vector(DATA_WIDTH-1 downto 0);
		slave_writedata		: in  std_logic_vector(DATA_WIDTH-1 downto 0);
		slave_byteenable	: in  std_logic_vector((DATA_WIDTH/8)-1 downto 0);

		-- signals to connect to custom user logic
		ina			: inout std_logic;
		inb			: inout std_logic;
		inc			: out std_logic
	);
end entity;

architecture behavior of pwm_avalon_bus is	
	signal clk_pwm 			: std_logic;
	signal duty			: std_logic_vector(7 downto 0);
	signal dir			: std_logic;
begin

	-- PWM clock
	fdiv_pwm : entity FDIV(a) generic map(50000000, 5130000) port map(
		clk, clk_pwm, reset
	);

	-- PWM generator
	pwm_gen : entity PWM(structure) port map(
		ina, inb, inc, duty, dir, clk_pwm, reset
	);


	-- Communication with the bus
	p_avalon : process(clk, reset)
	begin
		if (reset = '1') then
			duty <= x"00";
			dir <= '0';
		elsif (rising_edge(clk)) then
			if (slave_write = '1') then
				duty <= slave_writedata(7 downto 0);
				dir <= slave_writedata(1);
			end if;
		end if;
	end process;
end architecture;
