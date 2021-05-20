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

-- DATE "05/20/2021 14:19:37"

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

ENTITY 	PWM IS
    PORT (
	INA : BUFFER std_logic;
	INB : BUFFER std_logic;
	C : BUFFER std_logic;
	duty_cycle : IN std_logic_vector(7 DOWNTO 0);
	direction : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END PWM;

-- Design Ports Information
-- C	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[7]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direction	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INA : std_logic;
SIGNAL ww_INB : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_duty_cycle : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_direction : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INA~input_o\ : std_logic;
SIGNAL \INB~input_o\ : std_logic;
SIGNAL \INA~output_o\ : std_logic;
SIGNAL \INB~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \direction~input_o\ : std_logic;
SIGNAL \INA~2_combout\ : std_logic;
SIGNAL \INA~reg0_q\ : std_logic;
SIGNAL \INB~2_combout\ : std_logic;
SIGNAL \INB~reg0_q\ : std_logic;
SIGNAL \counter[0]~21_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[1]~7_combout\ : std_logic;
SIGNAL \counter[1]~8\ : std_logic;
SIGNAL \counter[2]~9_combout\ : std_logic;
SIGNAL \counter[2]~10\ : std_logic;
SIGNAL \counter[3]~11_combout\ : std_logic;
SIGNAL \counter[3]~12\ : std_logic;
SIGNAL \counter[4]~13_combout\ : std_logic;
SIGNAL \counter[4]~14\ : std_logic;
SIGNAL \counter[5]~15_combout\ : std_logic;
SIGNAL \counter[5]~16\ : std_logic;
SIGNAL \counter[6]~17_combout\ : std_logic;
SIGNAL \counter[6]~18\ : std_logic;
SIGNAL \counter[7]~19_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \duty_cycle[7]~input_o\ : std_logic;
SIGNAL \duty_cycle[6]~input_o\ : std_logic;
SIGNAL \duty_cycle[5]~input_o\ : std_logic;
SIGNAL \duty_cycle[4]~input_o\ : std_logic;
SIGNAL \duty_cycle[3]~input_o\ : std_logic;
SIGNAL \duty_cycle[2]~input_o\ : std_logic;
SIGNAL \duty_cycle[1]~input_o\ : std_logic;
SIGNAL \duty_cycle[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \C~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

INA <= ww_INA;
INB <= ww_INB;
C <= ww_C;
ww_duty_cycle <= duty_cycle;
ww_direction <= direction;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X53_Y25_N2
\INA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INA~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \INA~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\INB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INB~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \INB~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~reg0_q\,
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

-- Location: IOIBUF_X53_Y16_N8
\direction~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction,
	o => \direction~input_o\);

-- Location: LCCOMB_X52_Y20_N26
\INA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INA~2_combout\ = (\reset~input_o\ & (\INA~reg0_q\)) # (!\reset~input_o\ & ((\direction~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \INA~reg0_q\,
	datad => \direction~input_o\,
	combout => \INA~2_combout\);

-- Location: FF_X52_Y20_N27
\INA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \INA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INA~reg0_q\);

-- Location: LCCOMB_X52_Y20_N24
\INB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INB~2_combout\ = (\reset~input_o\ & (\INB~reg0_q\)) # (!\reset~input_o\ & ((!\direction~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \INB~reg0_q\,
	datad => \direction~input_o\,
	combout => \INB~2_combout\);

-- Location: FF_X52_Y20_N25
\INB~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \INB~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INB~reg0_q\);

-- Location: LCCOMB_X52_Y20_N22
\counter[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~21_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~21_combout\);

-- Location: CLKCTRL_G4
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

-- Location: FF_X52_Y20_N23
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X51_Y20_N6
\counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~7_combout\ = (counter(1) & (counter(0) $ (VCC))) # (!counter(1) & (counter(0) & VCC))
-- \counter[1]~8\ = CARRY((counter(1) & counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datad => VCC,
	combout => \counter[1]~7_combout\,
	cout => \counter[1]~8\);

-- Location: FF_X51_Y20_N7
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X51_Y20_N8
\counter[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~9_combout\ = (counter(2) & (!\counter[1]~8\)) # (!counter(2) & ((\counter[1]~8\) # (GND)))
-- \counter[2]~10\ = CARRY((!\counter[1]~8\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~8\,
	combout => \counter[2]~9_combout\,
	cout => \counter[2]~10\);

-- Location: FF_X51_Y20_N9
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X51_Y20_N10
\counter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~11_combout\ = (counter(3) & (\counter[2]~10\ $ (GND))) # (!counter(3) & (!\counter[2]~10\ & VCC))
-- \counter[3]~12\ = CARRY((counter(3) & !\counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~10\,
	combout => \counter[3]~11_combout\,
	cout => \counter[3]~12\);

-- Location: FF_X51_Y20_N11
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X51_Y20_N12
\counter[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~13_combout\ = (counter(4) & (!\counter[3]~12\)) # (!counter(4) & ((\counter[3]~12\) # (GND)))
-- \counter[4]~14\ = CARRY((!\counter[3]~12\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~12\,
	combout => \counter[4]~13_combout\,
	cout => \counter[4]~14\);

-- Location: FF_X51_Y20_N13
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X51_Y20_N14
\counter[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~15_combout\ = (counter(5) & (\counter[4]~14\ $ (GND))) # (!counter(5) & (!\counter[4]~14\ & VCC))
-- \counter[5]~16\ = CARRY((counter(5) & !\counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~14\,
	combout => \counter[5]~15_combout\,
	cout => \counter[5]~16\);

-- Location: FF_X51_Y20_N15
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X51_Y20_N16
\counter[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~17_combout\ = (counter(6) & (!\counter[5]~16\)) # (!counter(6) & ((\counter[5]~16\) # (GND)))
-- \counter[6]~18\ = CARRY((!\counter[5]~16\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~16\,
	combout => \counter[6]~17_combout\,
	cout => \counter[6]~18\);

-- Location: FF_X51_Y20_N17
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X51_Y20_N18
\counter[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~19_combout\ = \counter[6]~18\ $ (!counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(7),
	cin => \counter[6]~18\,
	combout => \counter[7]~19_combout\);

-- Location: FF_X51_Y20_N19
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X51_Y20_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(4) & (!counter(6) & (!counter(5) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(6),
	datac => counter(5),
	datad => counter(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X51_Y20_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(3) & (!counter(2) & (!counter(1) & !counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	datac => counter(1),
	datad => counter(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X52_Y20_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X53_Y17_N8
\duty_cycle[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(7),
	o => \duty_cycle[7]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\duty_cycle[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(6),
	o => \duty_cycle[6]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\duty_cycle[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(5),
	o => \duty_cycle[5]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\duty_cycle[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(4),
	o => \duty_cycle[4]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\duty_cycle[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(3),
	o => \duty_cycle[3]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\duty_cycle[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(2),
	o => \duty_cycle[2]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\duty_cycle[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(1),
	o => \duty_cycle[1]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\duty_cycle[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(0),
	o => \duty_cycle[0]~input_o\);

-- Location: LCCOMB_X52_Y20_N6
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((counter(0) & !\duty_cycle[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \duty_cycle[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X52_Y20_N8
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\duty_cycle[1]~input_o\ & ((!\LessThan0~1_cout\) # (!counter(1)))) # (!\duty_cycle[1]~input_o\ & (!counter(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_cycle[1]~input_o\,
	datab => counter(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X52_Y20_N10
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((counter(2) & ((!\LessThan0~3_cout\) # (!\duty_cycle[2]~input_o\))) # (!counter(2) & (!\duty_cycle[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \duty_cycle[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X52_Y20_N12
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((counter(3) & (\duty_cycle[3]~input_o\ & !\LessThan0~5_cout\)) # (!counter(3) & ((\duty_cycle[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => \duty_cycle[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X52_Y20_N14
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((counter(4) & ((!\LessThan0~7_cout\) # (!\duty_cycle[4]~input_o\))) # (!counter(4) & (!\duty_cycle[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \duty_cycle[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X52_Y20_N16
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((counter(5) & (\duty_cycle[5]~input_o\ & !\LessThan0~9_cout\)) # (!counter(5) & ((\duty_cycle[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \duty_cycle[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X52_Y20_N18
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((counter(6) & ((!\LessThan0~11_cout\) # (!\duty_cycle[6]~input_o\))) # (!counter(6) & (!\duty_cycle[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \duty_cycle[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X52_Y20_N20
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\duty_cycle[7]~input_o\ & (\LessThan0~13_cout\ & counter(7))) # (!\duty_cycle[7]~input_o\ & ((\LessThan0~13_cout\) # (counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_cycle[7]~input_o\,
	datad => counter(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X52_Y20_N28
\C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~0_combout\ = (\reset~input_o\ & (((\C~reg0_q\)))) # (!\reset~input_o\ & (!\Equal0~2_combout\ & ((!\LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal0~2_combout\,
	datac => \C~reg0_q\,
	datad => \LessThan0~14_combout\,
	combout => \C~0_combout\);

-- Location: FF_X52_Y20_N29
\C~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C~reg0_q\);

-- Location: IOIBUF_X53_Y25_N1
\INA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA,
	o => \INA~input_o\);

-- Location: IOIBUF_X53_Y24_N22
\INB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB,
	o => \INB~input_o\);

ww_C <= \C~output_o\;

ww_INA <= \INA~output_o\;

ww_INB <= \INB~output_o\;
END structure;


