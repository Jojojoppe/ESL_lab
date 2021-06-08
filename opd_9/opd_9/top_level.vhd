library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
	generic(
    DATA_WIDTH           : integer := 16;
    GPMC_ADDR_WIDTH_HIGH : integer := 10;
    GPMC_ADDR_WIDTH_LOW  : integer := 1;
    -- RAM_SIZE should be a power of 2
    RAM_SIZE             : integer := 32
  );
	
	port (
		CLOCK_50      	: in    std_logic;

		-- GPMC side
		GPMC_DATA     	: inout 	std_logic_vector(DATA_WIDTH - 1 downto 0);
		GPMC_ADDR     	: in    	std_logic_vector(GPMC_ADDR_WIDTH_HIGH downto GPMC_ADDR_WIDTH_LOW);
		GPMC_nPWE     	: in    	std_logic;
		GPMC_nOE      	: in    	std_logic;
		GPMC_FPGA_IRQ 	: in    	std_logic;
		GPMC_nCS6     	: in    	std_logic;
		GPMC_CLK      	: in    	std_logic;
	 
		inp_a				: in 		std_logic;
		inp_b				: in		std_logic
	 
  );
end entity;

architecture a of toplevel is
	component setup_control is
		generic(
			DATA_WIDTH           : integer := 16;
			GPMC_ADDR_WIDTH_HIGH : integer := 10;
			GPMC_ADDR_WIDTH_LOW  : integer := 1;
			-- RAM_SIZE should be a power of 2
			RAM_SIZE             : integer := 32
		);
		port (
			CLOCK_50      : in    std_logic;

			-- GPMC side
			GPMC_DATA     : inout std_logic_vector(DATA_WIDTH - 1 downto 0);
			GPMC_ADDR     : in    std_logic_vector(GPMC_ADDR_WIDTH_HIGH downto GPMC_ADDR_WIDTH_LOW);
			GPMC_nPWE     : in    std_logic;
			GPMC_nOE      : in    std_logic;
			GPMC_FPGA_IRQ : in    std_logic;
			GPMC_nCS6     : in    std_logic;
			GPMC_CLK      : in    std_logic
		);
	end component;
	
	component encoder is
		port(
			inp_a					: in std_logic;
			inp_b					: in std_logic;		
			rotation_counter 	: out std_logic_vector(15 downto 0);
			reset 				: in std_logic;
			clk					: in std_logic
		);	
	end component;
	
	signal rotation_counter : std_logic_vector(15 downto 0);
	
begin


encoder_comp : encoder port map(inp_a, inp_b, rotation_counter, reset, CLOCK_50); 







end architecture;