library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity toplevel is
	port(
		INA	: inout std_logic;
		INB	: inout std_logic;
		C		: out std_logic;
		duty_cycle : in std_logic_vector(7 downto 0) ;
		direction : in std_logic;
		clk : in std_logic;
		reset : in std_logic	
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

	signal FDIV_clk : std_logic;
	
	begin 
	
	FDIV_comp : FDIV generic map(50000000, 5130000) port map(clk, FDIV_clk, reset);
	PWM_comp : PWM port map(INA, INB, C, duty_cycle, direction, clk, reset);
	
end architecture;