--
-- @file setup_control.vhd
-- @brief Toplevel file template file which can be used as a reference for implementing gpmc communication.
-- @author Jan Jaap Kempenaar, Sander Grimm, University of Twente 2014
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity setup_control is
  generic(
    DATA_WIDTH           : integer := 16;
    GPMC_ADDR_WIDTH_HIGH : integer := 10;
    GPMC_ADDR_WIDTH_LOW  : integer := 1;
    -- RAM_SIZE should be a power of 2
    RAM_SIZE             : integer := 32
  );
  port (
    CLOCK_50      : in    std_logic;

    -- GPMC sidesetup_control_comp : setup_control port map(CLOCK_50, );

    GPMC_DATA     : inout std_logic_vector(DATA_WIDTH - 1 downto 0);
    GPMC_ADDR     : in    std_logic_vector(GPMC_ADDR_WIDTH_HIGH downto GPMC_ADDR_WIDTH_LOW);
    GPMC_nPWE     : in    std_logic;
    GPMC_nOE      : in    std_logic;
    GPMC_FPGA_IRQ : in 	  std_logic;
    GPMC_nCS6     : in    std_logic;
    GPMC_CLK      : in    std_logic;
		 
	 ENC1I			: in 	  std_logic;
	 ENC2I			: in	  std_logic
 
  );
end setup_control;


architecture structure of setup_control is
  -- GPMC controller component for FPGA
	component ramstix_gpmc_driver is
		generic(
			DATA_WIDTH           : integer := 16;
			GPMC_ADDR_WIDTH_HIGH : integer := 10;
			GPMC_ADDR_WIDTH_LOW  : integer := 1;
			-- RAM_SIZE should be a power of 2
			RAM_SIZE             : integer := 32
		);
		port(
			clk           : in    std_logic;
			-- Input (dasetup_control_comp : setup_control port map(CLOCK_50, );
			in_reg0 : in std_logic_vector(DATA_WIDTH - 1 downto 0);
			in_reg1 : in std_logic_vector(DATA_WIDTH - 1 downto 0);

			-- Output (data from gumstix to fpga) at IDX 2 and IDX 3
			out_reg2      : out   std_logic_vector(DATA_WIDTH - 1 downto 0);
			out_reg3      : out   std_logic_vector(DATA_WIDTH - 1 downto 0);

			-- GPMC bus signals
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
		generic(
			DATA_WIDTH : natural := 16
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


	-- Define signals to connect the component to the gpmc_driver
	signal in_reg0 : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
	signal in_reg1 : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
	signal out_reg2 : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
	signal out_reg3 : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
	
begin
	-- Map GPMC controller to I/O.
	gpmc_driver : ramstix_gpmc_driver 
	generic map(
		DATA_WIDTH           => DATA_WIDTH,
		GPMC_ADDR_WIDTH_HIGH => GPMC_ADDR_WIDTH_HIGH,
		GPMC_ADDR_WIDTH_LOW  => GPMC_ADDR_WIDTH_LOW,
		RAM_SIZE             => RAM_SIZE)
	port map (
      clk           			=> CLOCK_50,
      in_reg0 					=> in_reg0,
      in_reg1 					=> in_reg1,
      out_reg2 				=> out_reg2,
      out_reg3 				=> out_reg3,
      GPMC_DATA     			=> GPMC_DATA,
      GPMC_ADDR     			=> GPMC_ADDR,
      GPMC_nPWE     			=> GPMC_nPWE,
      GPMC_nOE      			=> GPMC_nOE,
      GPMC_FPGA_IRQ 			=> GPMC_FPGA_IRQ,
      GPMC_nCS6     			=> GPMC_nCS6,
      GPMC_CLK      			=> GPMC_CLK
    );
	 
	 
	 encoder_comp : encoder port map(ENC1I, ENC2I, in_reg0, '0', CLOCK_50, out_reg2, out_reg3(0)); 

	

end architecture;
