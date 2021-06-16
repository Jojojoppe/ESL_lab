library ieee;
use ieee.std_logic_1164.all;

entity encoder_avalon_bus is
	generic (
		DATA_WIDTH : natural := 32;	-- word size of each input and output register
		LED_WIDTH  : natural := 8	-- numbers of LEDs on the DE0-NANO
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
		leds		: out std_logic_vector(LED_WIDTH-1 downto 0);
		encoder_a, encoder_b : in std_logic
	);
end entity;

architecture behavior of encoder_avalon_bus is
	-- Internal memory for the system and a subset for the IP
	signal enable : std_logic;
--	signal mem        : std_logic_vector(31 downto 0);
	
	signal encoder_output : std_logic_vector(DATA_WIDTH-1 downto 0);

	-- Definition of the counter
	component encoder is
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
	end component;
begin
	-- Initialization of the example
	my_ip : encoder generic map(DATA_WIDTH)
	port map(
		encoder_a, encoder_b, encoder_output, reset, clk, slave_writedata, slave_write
	);
	
	-- data to leds
	leds <= encoder_output(LED_WIDTH-1 downto 0);

	-- Communication with the bus
	p_avalon : process(clk, reset)
	begin
		if (reset = '1') then
--			mem <= (others => '0');
		elsif (rising_edge(clk)) then
			if (slave_read = '1') then
				slave_readdata <= encoder_output;
			end if;
--			if (slave_write = '1') then
--				mem <= slave_writedata;
--			end if;
		end if;
	end process;
end architecture;
