--
-- @file setup_control.vhd
-- @brief Toplevel file template file which can be used as a reference for implementing gpmc communication.
-- @author Jan Jaap Kempenaar, Sander Grimm, University of Twente 2014
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

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
		 
	 -- TILT
	 ENC3A			: in 	  std_logic;
	 ENC3B			: in	  std_logic;
	 PWM3A			: inout std_logic;
	 PWM3B			: inout std_logic;
	 PWM3C			: inout std_logic;
	 
	 -- PAN
	 ENC4A			: in 	  std_logic;
	 ENC4B			: in	  std_logic;
	 PWM4A			: inout std_logic;
	 PWM4B			: inout std_logic;
	 PWM4C			: inout std_logic
 
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
			-- Input (dasentity setup_control isetup_control_comp : setup_control port map(CLOCK_50, );
			in_reg0 : in std_logic_vector(DATA_WIDTH - 1 downto 0);
			in_reg1 : in std_logic_vector(DATA_WIDTH - 1 downto 0);

			-- Output (TILTdata from gumstix to fpga) at IDX 2 and IDX 3
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
	
	component PWM is
		port(
			INA 			: inout std_logic;
			INB 			: inout std_logic;
			C				: out std_logic;
			duty_cycle 	: in std_logic_vector(7 downto 0);
			direction 	: in std_logic;
			clk			: in std_logic;
			reset 		: in std_logic
			);
	end component;
	
	component FDIV is
		generic(
			Fin			: integer;
			Fout			: integer
		);
		port(
			CLKin			: in std_logic;
			CLKout		: out std_logic;
			RST			: in std_logic
		);
	end component;	
	

	-- Define signals to connect the component to the gpmc_driver
	signal in_reg0 : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
	signal in_reg1 : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
	signal out_reg2 : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
	signal out_reg3 : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
	
	signal FDIV_PWM_clk : std_logic;
	signal DUTY : std_logic_vector(7 downto 0);
	signal PWM_CLK : std_logic;
	
begin
	-- Map GPMC controller toPWM4A			: inout std_logic; I/O.
	gpmc_driver : ramstix_gpmc_driver 
	generic map(
		DATA_WIDTH           => DATA_WIDTH,
		GPMC_ADDR_WIDTH_HIGH => GPMC_ADDR_WIDTH_HIGH,
		GPMC_ADDR_WIDTH_LOW  => GPMC_ADDR_WIDTH_LOW,
		RAM_SIZE             => RAM_SIZE)
	port map (
      clk       				=> CLOCK_50,
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
	 
	 
	FDIV_PWM_comp : FDIV generic map(50000000, 5120000) port map(CLOCK_50, PWM_CLK, '0');
	-- TILT reg0 reg2
	PWM_compT : PWM port map(PWM3A, PWM3B, PWM3C, out_reg2(7 downto 0), out_reg2(8), PWM_CLK, '0');
	encoder_compT : encoder port map(ENC3A, ENC3B, in_reg0, '0', CLOCK_50, x"0000", '0'); 
	-- PAN reg1 reg3
	PWM_compTP: PWM port map(PWM4A, PWM4B, PWM4C, out_reg3(7 downto 0), out_reg3(8), PWM_CLK, '0');
	encoder_compP : encoder port map(ENC4A, ENC4B, in_reg1, '0', CLOCK_50, x"0000", '0'); 

end architecture;
