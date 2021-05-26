library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity toplevel is
	port(
		INA	: inout std_logic;
		INB	: inout std_logic;
		GPIO_0		: inout std_logic_vector(33 downto 0);
		duty_cycle : in std_logic_vector(7 downto 0) ;
		direction : in std_logic;
		CLOCK_50 : in std_logic;
		KEY : in std_logic_vector(1 downto 0)	
	);
end entity;

architecture a of toplevel is

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
	
	component DutyCycleCounter is
		port(
			duty_cycle 	: out std_logic_vector(7 downto 0);
			clk			: in std_logic;
			rst			: in std_logic
		);
	end component;


	signal FDIV_PWM_clk : std_logic;
	signal FDIV_DUTY_clk : std_logic;
	signal DUTY : std_logic_vector(7 downto 0);
	signal notReset : std_logic;

	begin 
	
	notReset <= not KEY(0);
	
	FDIV_DUTY_comp : FDIV generic map(50000000, 100) port map(CLOCK_50, GPIO_0(22), notReset); 
	DUTY_comp	: DutyCycleCounter port map(DUTY, GPIO_0(22), notReset);
	
	FDIV_PWM_comp : FDIV generic map(50000000, 5130000) port map(CLOCK_50, GPIO_0(23), notReset);
	PWM_comp : PWM port map(INA, INB, GPIO_0(21), DUTY, direction, GPIO_0(23), notReset);
end architecture;