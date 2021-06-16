-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/26/2021 15:50:20"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	INA : INOUT std_logic;
	INB : INOUT std_logic;
	C : OUT std_logic;
	duty_cycle : IN std_logic_vector(7 DOWNTO 0);
	direction : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END toplevel;

-- Design Ports Information
-- C	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direction	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_duty_cycle : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_direction : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \FDIV_DUTY_comp|iclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FDIV_PWM_comp|iclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \duty_cycle[0]~input_o\ : std_logic;
SIGNAL \duty_cycle[1]~input_o\ : std_logic;
SIGNAL \duty_cycle[2]~input_o\ : std_logic;
SIGNAL \duty_cycle[3]~input_o\ : std_logic;
SIGNAL \duty_cycle[4]~input_o\ : std_logic;
SIGNAL \duty_cycle[5]~input_o\ : std_logic;
SIGNAL \duty_cycle[6]~input_o\ : std_logic;
SIGNAL \duty_cycle[7]~input_o\ : std_logic;
SIGNAL \INA~input_o\ : std_logic;
SIGNAL \INB~input_o\ : std_logic;
SIGNAL \INA~output_o\ : std_logic;
SIGNAL \INB~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FDIV_PWM_comp|cnt[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~0_combout\ : std_logic;
SIGNAL \FDIV_PWM_comp|iclk~0_combout\ : std_logic;
SIGNAL \FDIV_PWM_comp|iclk~q\ : std_logic;
SIGNAL \FDIV_PWM_comp|iclk~clkctrl_outclk\ : std_logic;
SIGNAL \direction~input_o\ : std_logic;
SIGNAL \PWM_comp|INA~0_combout\ : std_logic;
SIGNAL \PWM_comp|INA~reg0_q\ : std_logic;
SIGNAL \PWM_comp|INB~0_combout\ : std_logic;
SIGNAL \PWM_comp|INB~reg0_q\ : std_logic;
SIGNAL \PWM_comp|counter[0]~21_combout\ : std_logic;
SIGNAL \PWM_comp|counter[1]~7_combout\ : std_logic;
SIGNAL \PWM_comp|counter[1]~8\ : std_logic;
SIGNAL \PWM_comp|counter[2]~9_combout\ : std_logic;
SIGNAL \PWM_comp|counter[2]~10\ : std_logic;
SIGNAL \PWM_comp|counter[3]~11_combout\ : std_logic;
SIGNAL \PWM_comp|Equal0~0_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~1\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~2_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~3\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~4_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~5\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~6_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~7\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~8_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|cnt~7_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~9\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~10_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~11\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~12_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|cnt~6_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Equal0~5_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~13\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~14_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|cnt~5_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~15\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~16_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~17\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~18_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|cnt~4_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~19\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~20_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~21\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~22_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~23\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~24_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|cnt~3_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~25\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~26_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~27\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~28_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~29\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~30_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~31\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~32_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|cnt~2_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~33\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~34_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|cnt~1_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~35\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~36_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~37\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~38_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~39\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Add0~40_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|cnt~0_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Equal0~0_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Equal0~2_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Equal0~3_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Equal0~1_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Equal0~4_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|Equal0~6_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|iclk~0_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|iclk~feeder_combout\ : std_logic;
SIGNAL \FDIV_DUTY_comp|iclk~q\ : std_logic;
SIGNAL \FDIV_DUTY_comp|iclk~clkctrl_outclk\ : std_logic;
SIGNAL \DUTY_comp|counter[0]~21_combout\ : std_logic;
SIGNAL \DUTY_comp|counter[1]~7_combout\ : std_logic;
SIGNAL \DUTY_comp|counter[1]~8\ : std_logic;
SIGNAL \DUTY_comp|counter[2]~9_combout\ : std_logic;
SIGNAL \DUTY_comp|counter[2]~10\ : std_logic;
SIGNAL \DUTY_comp|counter[3]~11_combout\ : std_logic;
SIGNAL \DUTY_comp|counter[3]~12\ : std_logic;
SIGNAL \DUTY_comp|counter[4]~13_combout\ : std_logic;
SIGNAL \DUTY_comp|counter[4]~14\ : std_logic;
SIGNAL \DUTY_comp|counter[5]~15_combout\ : std_logic;
SIGNAL \DUTY_comp|counter[5]~16\ : std_logic;
SIGNAL \DUTY_comp|counter[6]~17_combout\ : std_logic;
SIGNAL \DUTY_comp|counter[6]~18\ : std_logic;
SIGNAL \DUTY_comp|counter[7]~19_combout\ : std_logic;
SIGNAL \PWM_comp|counter[3]~12\ : std_logic;
SIGNAL \PWM_comp|counter[4]~13_combout\ : std_logic;
SIGNAL \PWM_comp|counter[4]~14\ : std_logic;
SIGNAL \PWM_comp|counter[5]~15_combout\ : std_logic;
SIGNAL \PWM_comp|counter[5]~16\ : std_logic;
SIGNAL \PWM_comp|counter[6]~17_combout\ : std_logic;
SIGNAL \PWM_comp|counter[6]~18\ : std_logic;
SIGNAL \PWM_comp|counter[7]~19_combout\ : std_logic;
SIGNAL \PWM_comp|LessThan0~1_cout\ : std_logic;
SIGNAL \PWM_comp|LessThan0~3_cout\ : std_logic;
SIGNAL \PWM_comp|LessThan0~5_cout\ : std_logic;
SIGNAL \PWM_comp|LessThan0~7_cout\ : std_logic;
SIGNAL \PWM_comp|LessThan0~9_cout\ : std_logic;
SIGNAL \PWM_comp|LessThan0~11_cout\ : std_logic;
SIGNAL \PWM_comp|LessThan0~13_cout\ : std_logic;
SIGNAL \PWM_comp|LessThan0~14_combout\ : std_logic;
SIGNAL \PWM_comp|Equal0~1_combout\ : std_logic;
SIGNAL \PWM_comp|C~0_combout\ : std_logic;
SIGNAL \PWM_comp|C~q\ : std_logic;
SIGNAL \FDIV_DUTY_comp|cnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \FDIV_PWM_comp|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DUTY_comp|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PWM_comp|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

C <= ww_C;
ww_duty_cycle <= duty_cycle;
ww_direction <= direction;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FDIV_DUTY_comp|iclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FDIV_DUTY_comp|iclk~q\);

\FDIV_PWM_comp|iclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FDIV_PWM_comp|iclk~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y12_N2
\INA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_comp|INA~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \INA~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\INB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_comp|INB~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \INB~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_comp|C~q\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X35_Y14_N8
\FDIV_PWM_comp|cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_PWM_comp|cnt[0]~0_combout\ = !\FDIV_PWM_comp|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FDIV_PWM_comp|cnt\(0),
	combout => \FDIV_PWM_comp|cnt[0]~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X35_Y14_N9
\FDIV_PWM_comp|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_PWM_comp|cnt[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_PWM_comp|cnt\(0));

-- Location: LCCOMB_X35_Y14_N12
\FDIV_DUTY_comp|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~0_combout\ = (\FDIV_PWM_comp|cnt\(1) & (\FDIV_PWM_comp|cnt\(0) $ (VCC))) # (!\FDIV_PWM_comp|cnt\(1) & (\FDIV_PWM_comp|cnt\(0) & VCC))
-- \FDIV_DUTY_comp|Add0~1\ = CARRY((\FDIV_PWM_comp|cnt\(1) & \FDIV_PWM_comp|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_PWM_comp|cnt\(1),
	datab => \FDIV_PWM_comp|cnt\(0),
	datad => VCC,
	combout => \FDIV_DUTY_comp|Add0~0_combout\,
	cout => \FDIV_DUTY_comp|Add0~1\);

-- Location: FF_X35_Y14_N13
\FDIV_PWM_comp|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_PWM_comp|cnt\(1));

-- Location: LCCOMB_X34_Y13_N18
\FDIV_PWM_comp|iclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_PWM_comp|iclk~0_combout\ = \FDIV_PWM_comp|iclk~q\ $ (((\FDIV_PWM_comp|cnt\(1) & \FDIV_PWM_comp|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_PWM_comp|cnt\(1),
	datac => \FDIV_PWM_comp|cnt\(0),
	datad => \FDIV_PWM_comp|iclk~q\,
	combout => \FDIV_PWM_comp|iclk~0_combout\);

-- Location: FF_X34_Y13_N5
\FDIV_PWM_comp|iclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FDIV_PWM_comp|iclk~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_PWM_comp|iclk~q\);

-- Location: CLKCTRL_G18
\FDIV_PWM_comp|iclk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FDIV_PWM_comp|iclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FDIV_PWM_comp|iclk~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y15_N1
\direction~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction,
	o => \direction~input_o\);

-- Location: LCCOMB_X1_Y15_N20
\PWM_comp|INA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|INA~0_combout\ = (\reset~input_o\ & ((\PWM_comp|INA~reg0_q\))) # (!\reset~input_o\ & (\direction~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction~input_o\,
	datac => \PWM_comp|INA~reg0_q\,
	datad => \reset~input_o\,
	combout => \PWM_comp|INA~0_combout\);

-- Location: FF_X1_Y15_N21
\PWM_comp|INA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|INA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|INA~reg0_q\);

-- Location: LCCOMB_X1_Y15_N14
\PWM_comp|INB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|INB~0_combout\ = (\reset~input_o\ & ((\PWM_comp|INB~reg0_q\))) # (!\reset~input_o\ & (!\direction~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction~input_o\,
	datac => \PWM_comp|INB~reg0_q\,
	datad => \reset~input_o\,
	combout => \PWM_comp|INB~0_combout\);

-- Location: FF_X1_Y15_N15
\PWM_comp|INB~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|INB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|INB~reg0_q\);

-- Location: LCCOMB_X24_Y18_N12
\PWM_comp|counter[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|counter[0]~21_combout\ = !\PWM_comp|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM_comp|counter\(0),
	combout => \PWM_comp|counter[0]~21_combout\);

-- Location: FF_X24_Y18_N13
\PWM_comp|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|counter[0]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|counter\(0));

-- Location: LCCOMB_X24_Y18_N14
\PWM_comp|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|counter[1]~7_combout\ = (\PWM_comp|counter\(0) & (\PWM_comp|counter\(1) $ (VCC))) # (!\PWM_comp|counter\(0) & (\PWM_comp|counter\(1) & VCC))
-- \PWM_comp|counter[1]~8\ = CARRY((\PWM_comp|counter\(0) & \PWM_comp|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_comp|counter\(0),
	datab => \PWM_comp|counter\(1),
	datad => VCC,
	combout => \PWM_comp|counter[1]~7_combout\,
	cout => \PWM_comp|counter[1]~8\);

-- Location: FF_X24_Y18_N15
\PWM_comp|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|counter[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|counter\(1));

-- Location: LCCOMB_X24_Y18_N16
\PWM_comp|counter[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|counter[2]~9_combout\ = (\PWM_comp|counter\(2) & (!\PWM_comp|counter[1]~8\)) # (!\PWM_comp|counter\(2) & ((\PWM_comp|counter[1]~8\) # (GND)))
-- \PWM_comp|counter[2]~10\ = CARRY((!\PWM_comp|counter[1]~8\) # (!\PWM_comp|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM_comp|counter\(2),
	datad => VCC,
	cin => \PWM_comp|counter[1]~8\,
	combout => \PWM_comp|counter[2]~9_combout\,
	cout => \PWM_comp|counter[2]~10\);

-- Location: FF_X24_Y18_N17
\PWM_comp|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|counter[2]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|counter\(2));

-- Location: LCCOMB_X24_Y18_N18
\PWM_comp|counter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|counter[3]~11_combout\ = (\PWM_comp|counter\(3) & (\PWM_comp|counter[2]~10\ $ (GND))) # (!\PWM_comp|counter\(3) & (!\PWM_comp|counter[2]~10\ & VCC))
-- \PWM_comp|counter[3]~12\ = CARRY((\PWM_comp|counter\(3) & !\PWM_comp|counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM_comp|counter\(3),
	datad => VCC,
	cin => \PWM_comp|counter[2]~10\,
	combout => \PWM_comp|counter[3]~11_combout\,
	cout => \PWM_comp|counter[3]~12\);

-- Location: FF_X24_Y18_N19
\PWM_comp|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|counter[3]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|counter\(3));

-- Location: LCCOMB_X24_Y18_N6
\PWM_comp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|Equal0~0_combout\ = (!\PWM_comp|counter\(0) & (!\PWM_comp|counter\(2) & (!\PWM_comp|counter\(1) & !\PWM_comp|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_comp|counter\(0),
	datab => \PWM_comp|counter\(2),
	datac => \PWM_comp|counter\(1),
	datad => \PWM_comp|counter\(3),
	combout => \PWM_comp|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y14_N14
\FDIV_DUTY_comp|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~2_combout\ = (\FDIV_DUTY_comp|cnt\(2) & (!\FDIV_DUTY_comp|Add0~1\)) # (!\FDIV_DUTY_comp|cnt\(2) & ((\FDIV_DUTY_comp|Add0~1\) # (GND)))
-- \FDIV_DUTY_comp|Add0~3\ = CARRY((!\FDIV_DUTY_comp|Add0~1\) # (!\FDIV_DUTY_comp|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(2),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~1\,
	combout => \FDIV_DUTY_comp|Add0~2_combout\,
	cout => \FDIV_DUTY_comp|Add0~3\);

-- Location: FF_X35_Y14_N15
\FDIV_DUTY_comp|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(2));

-- Location: LCCOMB_X35_Y14_N16
\FDIV_DUTY_comp|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~4_combout\ = (\FDIV_DUTY_comp|cnt\(3) & (\FDIV_DUTY_comp|Add0~3\ $ (GND))) # (!\FDIV_DUTY_comp|cnt\(3) & (!\FDIV_DUTY_comp|Add0~3\ & VCC))
-- \FDIV_DUTY_comp|Add0~5\ = CARRY((\FDIV_DUTY_comp|cnt\(3) & !\FDIV_DUTY_comp|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(3),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~3\,
	combout => \FDIV_DUTY_comp|Add0~4_combout\,
	cout => \FDIV_DUTY_comp|Add0~5\);

-- Location: FF_X35_Y14_N17
\FDIV_DUTY_comp|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(3));

-- Location: LCCOMB_X35_Y14_N18
\FDIV_DUTY_comp|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~6_combout\ = (\FDIV_DUTY_comp|cnt\(4) & (!\FDIV_DUTY_comp|Add0~5\)) # (!\FDIV_DUTY_comp|cnt\(4) & ((\FDIV_DUTY_comp|Add0~5\) # (GND)))
-- \FDIV_DUTY_comp|Add0~7\ = CARRY((!\FDIV_DUTY_comp|Add0~5\) # (!\FDIV_DUTY_comp|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(4),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~5\,
	combout => \FDIV_DUTY_comp|Add0~6_combout\,
	cout => \FDIV_DUTY_comp|Add0~7\);

-- Location: FF_X35_Y14_N19
\FDIV_DUTY_comp|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(4));

-- Location: LCCOMB_X35_Y14_N20
\FDIV_DUTY_comp|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~8_combout\ = (\FDIV_DUTY_comp|cnt\(5) & (\FDIV_DUTY_comp|Add0~7\ $ (GND))) # (!\FDIV_DUTY_comp|cnt\(5) & (!\FDIV_DUTY_comp|Add0~7\ & VCC))
-- \FDIV_DUTY_comp|Add0~9\ = CARRY((\FDIV_DUTY_comp|cnt\(5) & !\FDIV_DUTY_comp|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(5),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~7\,
	combout => \FDIV_DUTY_comp|Add0~8_combout\,
	cout => \FDIV_DUTY_comp|Add0~9\);

-- Location: LCCOMB_X35_Y14_N4
\FDIV_DUTY_comp|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|cnt~7_combout\ = (!\FDIV_DUTY_comp|Equal0~6_combout\ & \FDIV_DUTY_comp|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FDIV_DUTY_comp|Equal0~6_combout\,
	datad => \FDIV_DUTY_comp|Add0~8_combout\,
	combout => \FDIV_DUTY_comp|cnt~7_combout\);

-- Location: FF_X35_Y14_N5
\FDIV_DUTY_comp|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|cnt~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(5));

-- Location: LCCOMB_X35_Y14_N22
\FDIV_DUTY_comp|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~10_combout\ = (\FDIV_DUTY_comp|cnt\(6) & (!\FDIV_DUTY_comp|Add0~9\)) # (!\FDIV_DUTY_comp|cnt\(6) & ((\FDIV_DUTY_comp|Add0~9\) # (GND)))
-- \FDIV_DUTY_comp|Add0~11\ = CARRY((!\FDIV_DUTY_comp|Add0~9\) # (!\FDIV_DUTY_comp|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(6),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~9\,
	combout => \FDIV_DUTY_comp|Add0~10_combout\,
	cout => \FDIV_DUTY_comp|Add0~11\);

-- Location: FF_X35_Y14_N23
\FDIV_DUTY_comp|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(6));

-- Location: LCCOMB_X35_Y14_N24
\FDIV_DUTY_comp|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~12_combout\ = (\FDIV_DUTY_comp|cnt\(7) & (\FDIV_DUTY_comp|Add0~11\ $ (GND))) # (!\FDIV_DUTY_comp|cnt\(7) & (!\FDIV_DUTY_comp|Add0~11\ & VCC))
-- \FDIV_DUTY_comp|Add0~13\ = CARRY((\FDIV_DUTY_comp|cnt\(7) & !\FDIV_DUTY_comp|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(7),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~11\,
	combout => \FDIV_DUTY_comp|Add0~12_combout\,
	cout => \FDIV_DUTY_comp|Add0~13\);

-- Location: LCCOMB_X35_Y14_N10
\FDIV_DUTY_comp|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|cnt~6_combout\ = (!\FDIV_DUTY_comp|Equal0~6_combout\ & \FDIV_DUTY_comp|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FDIV_DUTY_comp|Equal0~6_combout\,
	datad => \FDIV_DUTY_comp|Add0~12_combout\,
	combout => \FDIV_DUTY_comp|cnt~6_combout\);

-- Location: FF_X35_Y14_N11
\FDIV_DUTY_comp|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|cnt~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(7));

-- Location: LCCOMB_X35_Y14_N6
\FDIV_DUTY_comp|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Equal0~5_combout\ = (!\FDIV_DUTY_comp|cnt\(6) & (!\FDIV_DUTY_comp|cnt\(5) & (\FDIV_DUTY_comp|cnt\(4) & \FDIV_DUTY_comp|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(6),
	datab => \FDIV_DUTY_comp|cnt\(5),
	datac => \FDIV_DUTY_comp|cnt\(4),
	datad => \FDIV_DUTY_comp|cnt\(7),
	combout => \FDIV_DUTY_comp|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y14_N26
\FDIV_DUTY_comp|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~14_combout\ = (\FDIV_DUTY_comp|cnt\(8) & (!\FDIV_DUTY_comp|Add0~13\)) # (!\FDIV_DUTY_comp|cnt\(8) & ((\FDIV_DUTY_comp|Add0~13\) # (GND)))
-- \FDIV_DUTY_comp|Add0~15\ = CARRY((!\FDIV_DUTY_comp|Add0~13\) # (!\FDIV_DUTY_comp|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(8),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~13\,
	combout => \FDIV_DUTY_comp|Add0~14_combout\,
	cout => \FDIV_DUTY_comp|Add0~15\);

-- Location: LCCOMB_X35_Y14_N0
\FDIV_DUTY_comp|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|cnt~5_combout\ = (\FDIV_DUTY_comp|Add0~14_combout\ & !\FDIV_DUTY_comp|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|Add0~14_combout\,
	datac => \FDIV_DUTY_comp|Equal0~6_combout\,
	combout => \FDIV_DUTY_comp|cnt~5_combout\);

-- Location: FF_X35_Y14_N1
\FDIV_DUTY_comp|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|cnt~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(8));

-- Location: LCCOMB_X35_Y14_N28
\FDIV_DUTY_comp|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~16_combout\ = (\FDIV_DUTY_comp|cnt\(9) & (\FDIV_DUTY_comp|Add0~15\ $ (GND))) # (!\FDIV_DUTY_comp|cnt\(9) & (!\FDIV_DUTY_comp|Add0~15\ & VCC))
-- \FDIV_DUTY_comp|Add0~17\ = CARRY((\FDIV_DUTY_comp|cnt\(9) & !\FDIV_DUTY_comp|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(9),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~15\,
	combout => \FDIV_DUTY_comp|Add0~16_combout\,
	cout => \FDIV_DUTY_comp|Add0~17\);

-- Location: FF_X35_Y14_N29
\FDIV_DUTY_comp|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(9));

-- Location: LCCOMB_X35_Y14_N30
\FDIV_DUTY_comp|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~18_combout\ = (\FDIV_DUTY_comp|cnt\(10) & (!\FDIV_DUTY_comp|Add0~17\)) # (!\FDIV_DUTY_comp|cnt\(10) & ((\FDIV_DUTY_comp|Add0~17\) # (GND)))
-- \FDIV_DUTY_comp|Add0~19\ = CARRY((!\FDIV_DUTY_comp|Add0~17\) # (!\FDIV_DUTY_comp|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(10),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~17\,
	combout => \FDIV_DUTY_comp|Add0~18_combout\,
	cout => \FDIV_DUTY_comp|Add0~19\);

-- Location: LCCOMB_X35_Y14_N2
\FDIV_DUTY_comp|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|cnt~4_combout\ = (\FDIV_DUTY_comp|Add0~18_combout\ & !\FDIV_DUTY_comp|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|Add0~18_combout\,
	datac => \FDIV_DUTY_comp|Equal0~6_combout\,
	combout => \FDIV_DUTY_comp|cnt~4_combout\);

-- Location: FF_X35_Y14_N3
\FDIV_DUTY_comp|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|cnt~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(10));

-- Location: LCCOMB_X35_Y13_N0
\FDIV_DUTY_comp|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~20_combout\ = (\FDIV_DUTY_comp|cnt\(11) & (\FDIV_DUTY_comp|Add0~19\ $ (GND))) # (!\FDIV_DUTY_comp|cnt\(11) & (!\FDIV_DUTY_comp|Add0~19\ & VCC))
-- \FDIV_DUTY_comp|Add0~21\ = CARRY((\FDIV_DUTY_comp|cnt\(11) & !\FDIV_DUTY_comp|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(11),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~19\,
	combout => \FDIV_DUTY_comp|Add0~20_combout\,
	cout => \FDIV_DUTY_comp|Add0~21\);

-- Location: FF_X35_Y13_N1
\FDIV_DUTY_comp|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(11));

-- Location: LCCOMB_X35_Y13_N2
\FDIV_DUTY_comp|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~22_combout\ = (\FDIV_DUTY_comp|cnt\(12) & (!\FDIV_DUTY_comp|Add0~21\)) # (!\FDIV_DUTY_comp|cnt\(12) & ((\FDIV_DUTY_comp|Add0~21\) # (GND)))
-- \FDIV_DUTY_comp|Add0~23\ = CARRY((!\FDIV_DUTY_comp|Add0~21\) # (!\FDIV_DUTY_comp|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(12),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~21\,
	combout => \FDIV_DUTY_comp|Add0~22_combout\,
	cout => \FDIV_DUTY_comp|Add0~23\);

-- Location: FF_X35_Y13_N3
\FDIV_DUTY_comp|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(12));

-- Location: LCCOMB_X35_Y13_N4
\FDIV_DUTY_comp|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~24_combout\ = (\FDIV_DUTY_comp|cnt\(13) & (\FDIV_DUTY_comp|Add0~23\ $ (GND))) # (!\FDIV_DUTY_comp|cnt\(13) & (!\FDIV_DUTY_comp|Add0~23\ & VCC))
-- \FDIV_DUTY_comp|Add0~25\ = CARRY((\FDIV_DUTY_comp|cnt\(13) & !\FDIV_DUTY_comp|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(13),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~23\,
	combout => \FDIV_DUTY_comp|Add0~24_combout\,
	cout => \FDIV_DUTY_comp|Add0~25\);

-- Location: LCCOMB_X35_Y13_N24
\FDIV_DUTY_comp|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|cnt~3_combout\ = (!\FDIV_DUTY_comp|Equal0~6_combout\ & \FDIV_DUTY_comp|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|Equal0~6_combout\,
	datad => \FDIV_DUTY_comp|Add0~24_combout\,
	combout => \FDIV_DUTY_comp|cnt~3_combout\);

-- Location: FF_X35_Y13_N25
\FDIV_DUTY_comp|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|cnt~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(13));

-- Location: LCCOMB_X35_Y13_N6
\FDIV_DUTY_comp|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~26_combout\ = (\FDIV_DUTY_comp|cnt\(14) & (!\FDIV_DUTY_comp|Add0~25\)) # (!\FDIV_DUTY_comp|cnt\(14) & ((\FDIV_DUTY_comp|Add0~25\) # (GND)))
-- \FDIV_DUTY_comp|Add0~27\ = CARRY((!\FDIV_DUTY_comp|Add0~25\) # (!\FDIV_DUTY_comp|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(14),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~25\,
	combout => \FDIV_DUTY_comp|Add0~26_combout\,
	cout => \FDIV_DUTY_comp|Add0~27\);

-- Location: FF_X35_Y13_N7
\FDIV_DUTY_comp|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(14));

-- Location: LCCOMB_X35_Y13_N8
\FDIV_DUTY_comp|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~28_combout\ = (\FDIV_DUTY_comp|cnt\(15) & (\FDIV_DUTY_comp|Add0~27\ $ (GND))) # (!\FDIV_DUTY_comp|cnt\(15) & (!\FDIV_DUTY_comp|Add0~27\ & VCC))
-- \FDIV_DUTY_comp|Add0~29\ = CARRY((\FDIV_DUTY_comp|cnt\(15) & !\FDIV_DUTY_comp|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(15),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~27\,
	combout => \FDIV_DUTY_comp|Add0~28_combout\,
	cout => \FDIV_DUTY_comp|Add0~29\);

-- Location: FF_X35_Y13_N9
\FDIV_DUTY_comp|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(15));

-- Location: LCCOMB_X35_Y13_N10
\FDIV_DUTY_comp|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~30_combout\ = (\FDIV_DUTY_comp|cnt\(16) & (!\FDIV_DUTY_comp|Add0~29\)) # (!\FDIV_DUTY_comp|cnt\(16) & ((\FDIV_DUTY_comp|Add0~29\) # (GND)))
-- \FDIV_DUTY_comp|Add0~31\ = CARRY((!\FDIV_DUTY_comp|Add0~29\) # (!\FDIV_DUTY_comp|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(16),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~29\,
	combout => \FDIV_DUTY_comp|Add0~30_combout\,
	cout => \FDIV_DUTY_comp|Add0~31\);

-- Location: FF_X35_Y13_N11
\FDIV_DUTY_comp|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(16));

-- Location: LCCOMB_X35_Y13_N12
\FDIV_DUTY_comp|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~32_combout\ = (\FDIV_DUTY_comp|cnt\(17) & (\FDIV_DUTY_comp|Add0~31\ $ (GND))) # (!\FDIV_DUTY_comp|cnt\(17) & (!\FDIV_DUTY_comp|Add0~31\ & VCC))
-- \FDIV_DUTY_comp|Add0~33\ = CARRY((\FDIV_DUTY_comp|cnt\(17) & !\FDIV_DUTY_comp|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(17),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~31\,
	combout => \FDIV_DUTY_comp|Add0~32_combout\,
	cout => \FDIV_DUTY_comp|Add0~33\);

-- Location: LCCOMB_X35_Y13_N30
\FDIV_DUTY_comp|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|cnt~2_combout\ = (!\FDIV_DUTY_comp|Equal0~6_combout\ & \FDIV_DUTY_comp|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|Equal0~6_combout\,
	datad => \FDIV_DUTY_comp|Add0~32_combout\,
	combout => \FDIV_DUTY_comp|cnt~2_combout\);

-- Location: FF_X35_Y13_N31
\FDIV_DUTY_comp|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|cnt~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(17));

-- Location: LCCOMB_X35_Y13_N14
\FDIV_DUTY_comp|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~34_combout\ = (\FDIV_DUTY_comp|cnt\(18) & (!\FDIV_DUTY_comp|Add0~33\)) # (!\FDIV_DUTY_comp|cnt\(18) & ((\FDIV_DUTY_comp|Add0~33\) # (GND)))
-- \FDIV_DUTY_comp|Add0~35\ = CARRY((!\FDIV_DUTY_comp|Add0~33\) # (!\FDIV_DUTY_comp|cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(18),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~33\,
	combout => \FDIV_DUTY_comp|Add0~34_combout\,
	cout => \FDIV_DUTY_comp|Add0~35\);

-- Location: LCCOMB_X35_Y13_N28
\FDIV_DUTY_comp|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|cnt~1_combout\ = (\FDIV_DUTY_comp|Add0~34_combout\ & !\FDIV_DUTY_comp|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FDIV_DUTY_comp|Add0~34_combout\,
	datad => \FDIV_DUTY_comp|Equal0~6_combout\,
	combout => \FDIV_DUTY_comp|cnt~1_combout\);

-- Location: FF_X35_Y13_N29
\FDIV_DUTY_comp|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|cnt~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(18));

-- Location: LCCOMB_X35_Y13_N16
\FDIV_DUTY_comp|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~36_combout\ = (\FDIV_DUTY_comp|cnt\(19) & (\FDIV_DUTY_comp|Add0~35\ $ (GND))) # (!\FDIV_DUTY_comp|cnt\(19) & (!\FDIV_DUTY_comp|Add0~35\ & VCC))
-- \FDIV_DUTY_comp|Add0~37\ = CARRY((\FDIV_DUTY_comp|cnt\(19) & !\FDIV_DUTY_comp|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(19),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~35\,
	combout => \FDIV_DUTY_comp|Add0~36_combout\,
	cout => \FDIV_DUTY_comp|Add0~37\);

-- Location: FF_X35_Y13_N17
\FDIV_DUTY_comp|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(19));

-- Location: LCCOMB_X35_Y13_N18
\FDIV_DUTY_comp|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~38_combout\ = (\FDIV_DUTY_comp|cnt\(20) & (!\FDIV_DUTY_comp|Add0~37\)) # (!\FDIV_DUTY_comp|cnt\(20) & ((\FDIV_DUTY_comp|Add0~37\) # (GND)))
-- \FDIV_DUTY_comp|Add0~39\ = CARRY((!\FDIV_DUTY_comp|Add0~37\) # (!\FDIV_DUTY_comp|cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|cnt\(20),
	datad => VCC,
	cin => \FDIV_DUTY_comp|Add0~37\,
	combout => \FDIV_DUTY_comp|Add0~38_combout\,
	cout => \FDIV_DUTY_comp|Add0~39\);

-- Location: FF_X35_Y13_N19
\FDIV_DUTY_comp|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|Add0~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(20));

-- Location: LCCOMB_X35_Y13_N20
\FDIV_DUTY_comp|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Add0~40_combout\ = \FDIV_DUTY_comp|cnt\(21) $ (!\FDIV_DUTY_comp|Add0~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(21),
	cin => \FDIV_DUTY_comp|Add0~39\,
	combout => \FDIV_DUTY_comp|Add0~40_combout\);

-- Location: LCCOMB_X35_Y13_N22
\FDIV_DUTY_comp|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|cnt~0_combout\ = (!\FDIV_DUTY_comp|Equal0~6_combout\ & \FDIV_DUTY_comp|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|Equal0~6_combout\,
	datad => \FDIV_DUTY_comp|Add0~40_combout\,
	combout => \FDIV_DUTY_comp|cnt~0_combout\);

-- Location: FF_X35_Y13_N23
\FDIV_DUTY_comp|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|cnt~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|cnt\(21));

-- Location: LCCOMB_X34_Y13_N30
\FDIV_DUTY_comp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Equal0~0_combout\ = (\FDIV_DUTY_comp|cnt\(21) & (\FDIV_PWM_comp|cnt\(1) & (!\FDIV_DUTY_comp|cnt\(20) & \FDIV_PWM_comp|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(21),
	datab => \FDIV_PWM_comp|cnt\(1),
	datac => \FDIV_DUTY_comp|cnt\(20),
	datad => \FDIV_PWM_comp|cnt\(0),
	combout => \FDIV_DUTY_comp|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y13_N26
\FDIV_DUTY_comp|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Equal0~2_combout\ = (!\FDIV_DUTY_comp|cnt\(14) & (!\FDIV_DUTY_comp|cnt\(12) & (!\FDIV_DUTY_comp|cnt\(15) & \FDIV_DUTY_comp|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(14),
	datab => \FDIV_DUTY_comp|cnt\(12),
	datac => \FDIV_DUTY_comp|cnt\(15),
	datad => \FDIV_DUTY_comp|cnt\(13),
	combout => \FDIV_DUTY_comp|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y13_N26
\FDIV_DUTY_comp|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Equal0~3_combout\ = (\FDIV_DUTY_comp|cnt\(10) & (!\FDIV_DUTY_comp|cnt\(11) & (\FDIV_DUTY_comp|cnt\(8) & !\FDIV_DUTY_comp|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(10),
	datab => \FDIV_DUTY_comp|cnt\(11),
	datac => \FDIV_DUTY_comp|cnt\(8),
	datad => \FDIV_DUTY_comp|cnt\(9),
	combout => \FDIV_DUTY_comp|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y13_N20
\FDIV_DUTY_comp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Equal0~1_combout\ = (\FDIV_DUTY_comp|cnt\(18) & (!\FDIV_DUTY_comp|cnt\(19) & (!\FDIV_DUTY_comp|cnt\(16) & \FDIV_DUTY_comp|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(18),
	datab => \FDIV_DUTY_comp|cnt\(19),
	datac => \FDIV_DUTY_comp|cnt\(16),
	datad => \FDIV_DUTY_comp|cnt\(17),
	combout => \FDIV_DUTY_comp|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y13_N16
\FDIV_DUTY_comp|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Equal0~4_combout\ = (\FDIV_DUTY_comp|Equal0~0_combout\ & (\FDIV_DUTY_comp|Equal0~2_combout\ & (\FDIV_DUTY_comp|Equal0~3_combout\ & \FDIV_DUTY_comp|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|Equal0~0_combout\,
	datab => \FDIV_DUTY_comp|Equal0~2_combout\,
	datac => \FDIV_DUTY_comp|Equal0~3_combout\,
	datad => \FDIV_DUTY_comp|Equal0~1_combout\,
	combout => \FDIV_DUTY_comp|Equal0~4_combout\);

-- Location: LCCOMB_X34_Y13_N24
\FDIV_DUTY_comp|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|Equal0~6_combout\ = (\FDIV_DUTY_comp|cnt\(3) & (\FDIV_DUTY_comp|cnt\(2) & (\FDIV_DUTY_comp|Equal0~5_combout\ & \FDIV_DUTY_comp|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|cnt\(3),
	datab => \FDIV_DUTY_comp|cnt\(2),
	datac => \FDIV_DUTY_comp|Equal0~5_combout\,
	datad => \FDIV_DUTY_comp|Equal0~4_combout\,
	combout => \FDIV_DUTY_comp|Equal0~6_combout\);

-- Location: LCCOMB_X34_Y13_N28
\FDIV_DUTY_comp|iclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|iclk~0_combout\ = \FDIV_DUTY_comp|iclk~q\ $ (\FDIV_DUTY_comp|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FDIV_DUTY_comp|iclk~q\,
	datad => \FDIV_DUTY_comp|Equal0~6_combout\,
	combout => \FDIV_DUTY_comp|iclk~0_combout\);

-- Location: LCCOMB_X34_Y13_N10
\FDIV_DUTY_comp|iclk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FDIV_DUTY_comp|iclk~feeder_combout\ = \FDIV_DUTY_comp|iclk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_DUTY_comp|iclk~0_combout\,
	combout => \FDIV_DUTY_comp|iclk~feeder_combout\);

-- Location: FF_X34_Y13_N11
\FDIV_DUTY_comp|iclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FDIV_DUTY_comp|iclk~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_DUTY_comp|iclk~q\);

-- Location: CLKCTRL_G16
\FDIV_DUTY_comp|iclk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FDIV_DUTY_comp|iclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FDIV_DUTY_comp|iclk~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y18_N30
\DUTY_comp|counter[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUTY_comp|counter[0]~21_combout\ = !\DUTY_comp|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DUTY_comp|counter\(0),
	combout => \DUTY_comp|counter[0]~21_combout\);

-- Location: FF_X23_Y18_N23
\DUTY_comp|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_DUTY_comp|iclk~clkctrl_outclk\,
	asdata => \DUTY_comp|counter[0]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUTY_comp|counter\(0));

-- Location: LCCOMB_X23_Y18_N2
\DUTY_comp|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUTY_comp|counter[1]~7_combout\ = (\DUTY_comp|counter\(0) & (\DUTY_comp|counter\(1) $ (VCC))) # (!\DUTY_comp|counter\(0) & (\DUTY_comp|counter\(1) & VCC))
-- \DUTY_comp|counter[1]~8\ = CARRY((\DUTY_comp|counter\(0) & \DUTY_comp|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_comp|counter\(0),
	datab => \DUTY_comp|counter\(1),
	datad => VCC,
	combout => \DUTY_comp|counter[1]~7_combout\,
	cout => \DUTY_comp|counter[1]~8\);

-- Location: FF_X23_Y18_N3
\DUTY_comp|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_DUTY_comp|iclk~clkctrl_outclk\,
	d => \DUTY_comp|counter[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUTY_comp|counter\(1));

-- Location: LCCOMB_X23_Y18_N4
\DUTY_comp|counter[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUTY_comp|counter[2]~9_combout\ = (\DUTY_comp|counter\(2) & (!\DUTY_comp|counter[1]~8\)) # (!\DUTY_comp|counter\(2) & ((\DUTY_comp|counter[1]~8\) # (GND)))
-- \DUTY_comp|counter[2]~10\ = CARRY((!\DUTY_comp|counter[1]~8\) # (!\DUTY_comp|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUTY_comp|counter\(2),
	datad => VCC,
	cin => \DUTY_comp|counter[1]~8\,
	combout => \DUTY_comp|counter[2]~9_combout\,
	cout => \DUTY_comp|counter[2]~10\);

-- Location: FF_X23_Y18_N5
\DUTY_comp|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_DUTY_comp|iclk~clkctrl_outclk\,
	d => \DUTY_comp|counter[2]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUTY_comp|counter\(2));

-- Location: LCCOMB_X23_Y18_N6
\DUTY_comp|counter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUTY_comp|counter[3]~11_combout\ = (\DUTY_comp|counter\(3) & (\DUTY_comp|counter[2]~10\ $ (GND))) # (!\DUTY_comp|counter\(3) & (!\DUTY_comp|counter[2]~10\ & VCC))
-- \DUTY_comp|counter[3]~12\ = CARRY((\DUTY_comp|counter\(3) & !\DUTY_comp|counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_comp|counter\(3),
	datad => VCC,
	cin => \DUTY_comp|counter[2]~10\,
	combout => \DUTY_comp|counter[3]~11_combout\,
	cout => \DUTY_comp|counter[3]~12\);

-- Location: FF_X23_Y18_N7
\DUTY_comp|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_DUTY_comp|iclk~clkctrl_outclk\,
	d => \DUTY_comp|counter[3]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUTY_comp|counter\(3));

-- Location: LCCOMB_X23_Y18_N8
\DUTY_comp|counter[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUTY_comp|counter[4]~13_combout\ = (\DUTY_comp|counter\(4) & (!\DUTY_comp|counter[3]~12\)) # (!\DUTY_comp|counter\(4) & ((\DUTY_comp|counter[3]~12\) # (GND)))
-- \DUTY_comp|counter[4]~14\ = CARRY((!\DUTY_comp|counter[3]~12\) # (!\DUTY_comp|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUTY_comp|counter\(4),
	datad => VCC,
	cin => \DUTY_comp|counter[3]~12\,
	combout => \DUTY_comp|counter[4]~13_combout\,
	cout => \DUTY_comp|counter[4]~14\);

-- Location: FF_X23_Y18_N9
\DUTY_comp|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_DUTY_comp|iclk~clkctrl_outclk\,
	d => \DUTY_comp|counter[4]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUTY_comp|counter\(4));

-- Location: LCCOMB_X23_Y18_N10
\DUTY_comp|counter[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUTY_comp|counter[5]~15_combout\ = (\DUTY_comp|counter\(5) & (\DUTY_comp|counter[4]~14\ $ (GND))) # (!\DUTY_comp|counter\(5) & (!\DUTY_comp|counter[4]~14\ & VCC))
-- \DUTY_comp|counter[5]~16\ = CARRY((\DUTY_comp|counter\(5) & !\DUTY_comp|counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_comp|counter\(5),
	datad => VCC,
	cin => \DUTY_comp|counter[4]~14\,
	combout => \DUTY_comp|counter[5]~15_combout\,
	cout => \DUTY_comp|counter[5]~16\);

-- Location: FF_X23_Y18_N11
\DUTY_comp|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_DUTY_comp|iclk~clkctrl_outclk\,
	d => \DUTY_comp|counter[5]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUTY_comp|counter\(5));

-- Location: LCCOMB_X23_Y18_N12
\DUTY_comp|counter[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUTY_comp|counter[6]~17_combout\ = (\DUTY_comp|counter\(6) & (!\DUTY_comp|counter[5]~16\)) # (!\DUTY_comp|counter\(6) & ((\DUTY_comp|counter[5]~16\) # (GND)))
-- \DUTY_comp|counter[6]~18\ = CARRY((!\DUTY_comp|counter[5]~16\) # (!\DUTY_comp|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_comp|counter\(6),
	datad => VCC,
	cin => \DUTY_comp|counter[5]~16\,
	combout => \DUTY_comp|counter[6]~17_combout\,
	cout => \DUTY_comp|counter[6]~18\);

-- Location: FF_X23_Y18_N13
\DUTY_comp|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_DUTY_comp|iclk~clkctrl_outclk\,
	d => \DUTY_comp|counter[6]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUTY_comp|counter\(6));

-- Location: LCCOMB_X23_Y18_N14
\DUTY_comp|counter[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUTY_comp|counter[7]~19_combout\ = \DUTY_comp|counter\(7) $ (!\DUTY_comp|counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUTY_comp|counter\(7),
	cin => \DUTY_comp|counter[6]~18\,
	combout => \DUTY_comp|counter[7]~19_combout\);

-- Location: FF_X23_Y18_N15
\DUTY_comp|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_DUTY_comp|iclk~clkctrl_outclk\,
	d => \DUTY_comp|counter[7]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUTY_comp|counter\(7));

-- Location: LCCOMB_X24_Y18_N20
\PWM_comp|counter[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|counter[4]~13_combout\ = (\PWM_comp|counter\(4) & (!\PWM_comp|counter[3]~12\)) # (!\PWM_comp|counter\(4) & ((\PWM_comp|counter[3]~12\) # (GND)))
-- \PWM_comp|counter[4]~14\ = CARRY((!\PWM_comp|counter[3]~12\) # (!\PWM_comp|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM_comp|counter\(4),
	datad => VCC,
	cin => \PWM_comp|counter[3]~12\,
	combout => \PWM_comp|counter[4]~13_combout\,
	cout => \PWM_comp|counter[4]~14\);

-- Location: FF_X24_Y18_N21
\PWM_comp|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|counter[4]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|counter\(4));

-- Location: LCCOMB_X24_Y18_N22
\PWM_comp|counter[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|counter[5]~15_combout\ = (\PWM_comp|counter\(5) & (\PWM_comp|counter[4]~14\ $ (GND))) # (!\PWM_comp|counter\(5) & (!\PWM_comp|counter[4]~14\ & VCC))
-- \PWM_comp|counter[5]~16\ = CARRY((\PWM_comp|counter\(5) & !\PWM_comp|counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_comp|counter\(5),
	datad => VCC,
	cin => \PWM_comp|counter[4]~14\,
	combout => \PWM_comp|counter[5]~15_combout\,
	cout => \PWM_comp|counter[5]~16\);

-- Location: FF_X24_Y18_N23
\PWM_comp|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|counter[5]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|counter\(5));

-- Location: LCCOMB_X24_Y18_N24
\PWM_comp|counter[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|counter[6]~17_combout\ = (\PWM_comp|counter\(6) & (!\PWM_comp|counter[5]~16\)) # (!\PWM_comp|counter\(6) & ((\PWM_comp|counter[5]~16\) # (GND)))
-- \PWM_comp|counter[6]~18\ = CARRY((!\PWM_comp|counter[5]~16\) # (!\PWM_comp|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM_comp|counter\(6),
	datad => VCC,
	cin => \PWM_comp|counter[5]~16\,
	combout => \PWM_comp|counter[6]~17_combout\,
	cout => \PWM_comp|counter[6]~18\);

-- Location: FF_X24_Y18_N25
\PWM_comp|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|counter[6]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|counter\(6));

-- Location: LCCOMB_X24_Y18_N26
\PWM_comp|counter[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|counter[7]~19_combout\ = \PWM_comp|counter\(7) $ (!\PWM_comp|counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_comp|counter\(7),
	cin => \PWM_comp|counter[6]~18\,
	combout => \PWM_comp|counter[7]~19_combout\);

-- Location: FF_X24_Y18_N27
\PWM_comp|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|counter[7]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|counter\(7));

-- Location: LCCOMB_X23_Y18_N16
\PWM_comp|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|LessThan0~1_cout\ = CARRY((!\DUTY_comp|counter\(0) & \PWM_comp|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_comp|counter\(0),
	datab => \PWM_comp|counter\(0),
	datad => VCC,
	cout => \PWM_comp|LessThan0~1_cout\);

-- Location: LCCOMB_X23_Y18_N18
\PWM_comp|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|LessThan0~3_cout\ = CARRY((\DUTY_comp|counter\(1) & ((!\PWM_comp|LessThan0~1_cout\) # (!\PWM_comp|counter\(1)))) # (!\DUTY_comp|counter\(1) & (!\PWM_comp|counter\(1) & !\PWM_comp|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_comp|counter\(1),
	datab => \PWM_comp|counter\(1),
	datad => VCC,
	cin => \PWM_comp|LessThan0~1_cout\,
	cout => \PWM_comp|LessThan0~3_cout\);

-- Location: LCCOMB_X23_Y18_N20
\PWM_comp|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|LessThan0~5_cout\ = CARRY((\PWM_comp|counter\(2) & ((!\PWM_comp|LessThan0~3_cout\) # (!\DUTY_comp|counter\(2)))) # (!\PWM_comp|counter\(2) & (!\DUTY_comp|counter\(2) & !\PWM_comp|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_comp|counter\(2),
	datab => \DUTY_comp|counter\(2),
	datad => VCC,
	cin => \PWM_comp|LessThan0~3_cout\,
	cout => \PWM_comp|LessThan0~5_cout\);

-- Location: LCCOMB_X23_Y18_N22
\PWM_comp|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|LessThan0~7_cout\ = CARRY((\DUTY_comp|counter\(3) & ((!\PWM_comp|LessThan0~5_cout\) # (!\PWM_comp|counter\(3)))) # (!\DUTY_comp|counter\(3) & (!\PWM_comp|counter\(3) & !\PWM_comp|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_comp|counter\(3),
	datab => \PWM_comp|counter\(3),
	datad => VCC,
	cin => \PWM_comp|LessThan0~5_cout\,
	cout => \PWM_comp|LessThan0~7_cout\);

-- Location: LCCOMB_X23_Y18_N24
\PWM_comp|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|LessThan0~9_cout\ = CARRY((\PWM_comp|counter\(4) & ((!\PWM_comp|LessThan0~7_cout\) # (!\DUTY_comp|counter\(4)))) # (!\PWM_comp|counter\(4) & (!\DUTY_comp|counter\(4) & !\PWM_comp|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_comp|counter\(4),
	datab => \DUTY_comp|counter\(4),
	datad => VCC,
	cin => \PWM_comp|LessThan0~7_cout\,
	cout => \PWM_comp|LessThan0~9_cout\);

-- Location: LCCOMB_X23_Y18_N26
\PWM_comp|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|LessThan0~11_cout\ = CARRY((\DUTY_comp|counter\(5) & ((!\PWM_comp|LessThan0~9_cout\) # (!\PWM_comp|counter\(5)))) # (!\DUTY_comp|counter\(5) & (!\PWM_comp|counter\(5) & !\PWM_comp|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_comp|counter\(5),
	datab => \PWM_comp|counter\(5),
	datad => VCC,
	cin => \PWM_comp|LessThan0~9_cout\,
	cout => \PWM_comp|LessThan0~11_cout\);

-- Location: LCCOMB_X23_Y18_N28
\PWM_comp|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|LessThan0~13_cout\ = CARRY((\DUTY_comp|counter\(6) & (\PWM_comp|counter\(6) & !\PWM_comp|LessThan0~11_cout\)) # (!\DUTY_comp|counter\(6) & ((\PWM_comp|counter\(6)) # (!\PWM_comp|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUTY_comp|counter\(6),
	datab => \PWM_comp|counter\(6),
	datad => VCC,
	cin => \PWM_comp|LessThan0~11_cout\,
	cout => \PWM_comp|LessThan0~13_cout\);

-- Location: LCCOMB_X23_Y18_N30
\PWM_comp|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|LessThan0~14_combout\ = (\DUTY_comp|counter\(7) & (\PWM_comp|LessThan0~13_cout\ & \PWM_comp|counter\(7))) # (!\DUTY_comp|counter\(7) & ((\PWM_comp|LessThan0~13_cout\) # (\PWM_comp|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUTY_comp|counter\(7),
	datad => \PWM_comp|counter\(7),
	cin => \PWM_comp|LessThan0~13_cout\,
	combout => \PWM_comp|LessThan0~14_combout\);

-- Location: LCCOMB_X24_Y18_N28
\PWM_comp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|Equal0~1_combout\ = (!\PWM_comp|counter\(5) & (!\PWM_comp|counter\(4) & (!\PWM_comp|counter\(7) & !\PWM_comp|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_comp|counter\(5),
	datab => \PWM_comp|counter\(4),
	datac => \PWM_comp|counter\(7),
	datad => \PWM_comp|counter\(6),
	combout => \PWM_comp|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y18_N0
\PWM_comp|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PWM_comp|C~0_combout\ = (!\PWM_comp|LessThan0~14_combout\ & ((!\PWM_comp|Equal0~1_combout\) # (!\PWM_comp|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_comp|Equal0~0_combout\,
	datac => \PWM_comp|LessThan0~14_combout\,
	datad => \PWM_comp|Equal0~1_combout\,
	combout => \PWM_comp|C~0_combout\);

-- Location: FF_X23_Y18_N1
\PWM_comp|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_comp|C~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_comp|C~q\);

-- Location: IOIBUF_X53_Y17_N8
\duty_cycle[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(0),
	o => \duty_cycle[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\duty_cycle[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(1),
	o => \duty_cycle[1]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\duty_cycle[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(2),
	o => \duty_cycle[2]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\duty_cycle[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(3),
	o => \duty_cycle[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\duty_cycle[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(4),
	o => \duty_cycle[4]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\duty_cycle[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(5),
	o => \duty_cycle[5]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\duty_cycle[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(6),
	o => \duty_cycle[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\duty_cycle[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(7),
	o => \duty_cycle[7]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\INA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => INA,
	o => \INA~input_o\);

-- Location: IOIBUF_X0_Y15_N8
\INB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => INB,
	o => \INB~input_o\);

ww_C <= \C~output_o\;

INA <= \INA~output_o\;

INB <= \INB~output_o\;
END structure;


