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

-- DATE "05/10/2021 16:39:09"

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

ENTITY 	Block1 IS
    PORT (
	LED : OUT std_logic_vector(7 DOWNTO 0);
	GPIO_0 : IN std_logic_vector(32 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END Block1;

-- Design Ports Information
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[32]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[31]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[29]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[28]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[27]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[26]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[25]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[24]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[23]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[9]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[22]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_GPIO_0 : std_logic_vector(32 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO_0[32]~input_o\ : std_logic;
SIGNAL \GPIO_0[31]~input_o\ : std_logic;
SIGNAL \GPIO_0[30]~input_o\ : std_logic;
SIGNAL \GPIO_0[29]~input_o\ : std_logic;
SIGNAL \GPIO_0[28]~input_o\ : std_logic;
SIGNAL \GPIO_0[27]~input_o\ : std_logic;
SIGNAL \GPIO_0[26]~input_o\ : std_logic;
SIGNAL \GPIO_0[25]~input_o\ : std_logic;
SIGNAL \GPIO_0[24]~input_o\ : std_logic;
SIGNAL \GPIO_0[23]~input_o\ : std_logic;
SIGNAL \GPIO_0[21]~input_o\ : std_logic;
SIGNAL \GPIO_0[19]~input_o\ : std_logic;
SIGNAL \GPIO_0[18]~input_o\ : std_logic;
SIGNAL \GPIO_0[17]~input_o\ : std_logic;
SIGNAL \GPIO_0[16]~input_o\ : std_logic;
SIGNAL \GPIO_0[15]~input_o\ : std_logic;
SIGNAL \GPIO_0[14]~input_o\ : std_logic;
SIGNAL \GPIO_0[13]~input_o\ : std_logic;
SIGNAL \GPIO_0[12]~input_o\ : std_logic;
SIGNAL \GPIO_0[11]~input_o\ : std_logic;
SIGNAL \GPIO_0[10]~input_o\ : std_logic;
SIGNAL \GPIO_0[9]~input_o\ : std_logic;
SIGNAL \GPIO_0[8]~input_o\ : std_logic;
SIGNAL \GPIO_0[7]~input_o\ : std_logic;
SIGNAL \GPIO_0[6]~input_o\ : std_logic;
SIGNAL \GPIO_0[5]~input_o\ : std_logic;
SIGNAL \GPIO_0[4]~input_o\ : std_logic;
SIGNAL \GPIO_0[3]~input_o\ : std_logic;
SIGNAL \GPIO_0[2]~input_o\ : std_logic;
SIGNAL \GPIO_0[1]~input_o\ : std_logic;
SIGNAL \GPIO_0[0]~input_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GPIO_0[22]~input_o\ : std_logic;
SIGNAL \GPIO_0[20]~input_o\ : std_logic;
SIGNAL \inst|old_a~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst|old_a~q\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|nextcounter[0]~16_combout\ : std_logic;
SIGNAL \inst|nextcounter[0]~feeder_combout\ : std_logic;
SIGNAL \inst|old_b~q\ : std_logic;
SIGNAL \inst|nextcounter[7]~48_combout\ : std_logic;
SIGNAL \inst|nextcounter[0]~17\ : std_logic;
SIGNAL \inst|nextcounter[1]~18_combout\ : std_logic;
SIGNAL \inst|counter[1]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[1]~19\ : std_logic;
SIGNAL \inst|nextcounter[2]~20_combout\ : std_logic;
SIGNAL \inst|counter[2]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[2]~21\ : std_logic;
SIGNAL \inst|nextcounter[3]~22_combout\ : std_logic;
SIGNAL \inst|counter[3]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[3]~23\ : std_logic;
SIGNAL \inst|nextcounter[4]~24_combout\ : std_logic;
SIGNAL \inst|counter[4]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[4]~25\ : std_logic;
SIGNAL \inst|nextcounter[5]~26_combout\ : std_logic;
SIGNAL \inst|counter[5]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[5]~27\ : std_logic;
SIGNAL \inst|nextcounter[6]~28_combout\ : std_logic;
SIGNAL \inst|counter[6]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[6]~29\ : std_logic;
SIGNAL \inst|nextcounter[7]~30_combout\ : std_logic;
SIGNAL \inst|counter[7]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[7]~31\ : std_logic;
SIGNAL \inst|nextcounter[8]~32_combout\ : std_logic;
SIGNAL \inst|counter[8]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[8]~33\ : std_logic;
SIGNAL \inst|nextcounter[9]~34_combout\ : std_logic;
SIGNAL \inst|counter[9]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[9]~35\ : std_logic;
SIGNAL \inst|nextcounter[10]~36_combout\ : std_logic;
SIGNAL \inst|counter[10]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[10]~37\ : std_logic;
SIGNAL \inst|nextcounter[11]~38_combout\ : std_logic;
SIGNAL \inst|counter[11]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[11]~39\ : std_logic;
SIGNAL \inst|nextcounter[12]~40_combout\ : std_logic;
SIGNAL \inst|counter[12]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[12]~41\ : std_logic;
SIGNAL \inst|nextcounter[13]~42_combout\ : std_logic;
SIGNAL \inst|counter[13]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[13]~43\ : std_logic;
SIGNAL \inst|nextcounter[14]~44_combout\ : std_logic;
SIGNAL \inst|counter[14]~feeder_combout\ : std_logic;
SIGNAL \inst|nextcounter[14]~45\ : std_logic;
SIGNAL \inst|nextcounter[15]~46_combout\ : std_logic;
SIGNAL \inst|nextcounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);

BEGIN

LED <= ww_LED;
ww_GPIO_0 <= GPIO_0;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter\(15),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter\(14),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter\(13),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter\(12),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter\(11),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter\(10),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter\(9),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter\(8),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y34_N1
\GPIO_0[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(22),
	o => \GPIO_0[22]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\GPIO_0[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(20),
	o => \GPIO_0[20]~input_o\);

-- Location: LCCOMB_X39_Y32_N10
\inst|old_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|old_a~feeder_combout\ = \GPIO_0[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO_0[20]~input_o\,
	combout => \inst|old_a~feeder_combout\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X39_Y32_N11
\inst|old_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|old_a~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|old_a~q\);

-- Location: LCCOMB_X39_Y32_N16
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \GPIO_0[22]~input_o\ $ (\inst|old_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[22]~input_o\,
	datad => \inst|old_a~q\,
	combout => \inst|Add1~0_combout\);

-- Location: LCCOMB_X40_Y32_N0
\inst|nextcounter[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[0]~16_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|nextcounter[0]~17\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|nextcounter[0]~16_combout\,
	cout => \inst|nextcounter[0]~17\);

-- Location: LCCOMB_X41_Y32_N12
\inst|nextcounter[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[0]~feeder_combout\ = \inst|nextcounter[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|nextcounter[0]~16_combout\,
	combout => \inst|nextcounter[0]~feeder_combout\);

-- Location: FF_X39_Y32_N9
\inst|old_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPIO_0[22]~input_o\,
	sload => VCC,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|old_b~q\);

-- Location: LCCOMB_X39_Y32_N8
\inst|nextcounter[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[7]~48_combout\ = (\GPIO_0[22]~input_o\ & ((\GPIO_0[20]~input_o\ $ (\inst|old_a~q\)) # (!\inst|old_b~q\))) # (!\GPIO_0[22]~input_o\ & ((\inst|old_b~q\) # (\GPIO_0[20]~input_o\ $ (\inst|old_a~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[22]~input_o\,
	datab => \GPIO_0[20]~input_o\,
	datac => \inst|old_b~q\,
	datad => \inst|old_a~q\,
	combout => \inst|nextcounter[7]~48_combout\);

-- Location: FF_X41_Y32_N13
\inst|nextcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[0]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(0));

-- Location: FF_X40_Y32_N1
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|nextcounter\(0),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X40_Y32_N2
\inst|nextcounter[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[1]~18_combout\ = (\inst|Add1~0_combout\ & ((\inst|counter\(1) & (\inst|nextcounter[0]~17\ & VCC)) # (!\inst|counter\(1) & (!\inst|nextcounter[0]~17\)))) # (!\inst|Add1~0_combout\ & ((\inst|counter\(1) & (!\inst|nextcounter[0]~17\)) # 
-- (!\inst|counter\(1) & ((\inst|nextcounter[0]~17\) # (GND)))))
-- \inst|nextcounter[1]~19\ = CARRY((\inst|Add1~0_combout\ & (!\inst|counter\(1) & !\inst|nextcounter[0]~17\)) # (!\inst|Add1~0_combout\ & ((!\inst|nextcounter[0]~17\) # (!\inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|counter\(1),
	datad => VCC,
	cin => \inst|nextcounter[0]~17\,
	combout => \inst|nextcounter[1]~18_combout\,
	cout => \inst|nextcounter[1]~19\);

-- Location: FF_X40_Y32_N3
\inst|nextcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[1]~18_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(1));

-- Location: LCCOMB_X41_Y32_N0
\inst|counter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~feeder_combout\ = \inst|nextcounter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(1),
	combout => \inst|counter[1]~feeder_combout\);

-- Location: FF_X41_Y32_N1
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X40_Y32_N4
\inst|nextcounter[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[2]~20_combout\ = ((\inst|Add1~0_combout\ $ (\inst|counter\(2) $ (!\inst|nextcounter[1]~19\)))) # (GND)
-- \inst|nextcounter[2]~21\ = CARRY((\inst|Add1~0_combout\ & ((\inst|counter\(2)) # (!\inst|nextcounter[1]~19\))) # (!\inst|Add1~0_combout\ & (\inst|counter\(2) & !\inst|nextcounter[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|nextcounter[1]~19\,
	combout => \inst|nextcounter[2]~20_combout\,
	cout => \inst|nextcounter[2]~21\);

-- Location: FF_X40_Y32_N5
\inst|nextcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[2]~20_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(2));

-- Location: LCCOMB_X41_Y32_N22
\inst|counter[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~feeder_combout\ = \inst|nextcounter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|nextcounter\(2),
	combout => \inst|counter[2]~feeder_combout\);

-- Location: FF_X41_Y32_N23
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X40_Y32_N6
\inst|nextcounter[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[3]~22_combout\ = (\inst|Add1~0_combout\ & ((\inst|counter\(3) & (\inst|nextcounter[2]~21\ & VCC)) # (!\inst|counter\(3) & (!\inst|nextcounter[2]~21\)))) # (!\inst|Add1~0_combout\ & ((\inst|counter\(3) & (!\inst|nextcounter[2]~21\)) # 
-- (!\inst|counter\(3) & ((\inst|nextcounter[2]~21\) # (GND)))))
-- \inst|nextcounter[3]~23\ = CARRY((\inst|Add1~0_combout\ & (!\inst|counter\(3) & !\inst|nextcounter[2]~21\)) # (!\inst|Add1~0_combout\ & ((!\inst|nextcounter[2]~21\) # (!\inst|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|counter\(3),
	datad => VCC,
	cin => \inst|nextcounter[2]~21\,
	combout => \inst|nextcounter[3]~22_combout\,
	cout => \inst|nextcounter[3]~23\);

-- Location: FF_X40_Y32_N7
\inst|nextcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[3]~22_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(3));

-- Location: LCCOMB_X41_Y32_N28
\inst|counter[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[3]~feeder_combout\ = \inst|nextcounter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|nextcounter\(3),
	combout => \inst|counter[3]~feeder_combout\);

-- Location: FF_X41_Y32_N29
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X40_Y32_N8
\inst|nextcounter[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[4]~24_combout\ = ((\inst|Add1~0_combout\ $ (\inst|counter\(4) $ (!\inst|nextcounter[3]~23\)))) # (GND)
-- \inst|nextcounter[4]~25\ = CARRY((\inst|Add1~0_combout\ & ((\inst|counter\(4)) # (!\inst|nextcounter[3]~23\))) # (!\inst|Add1~0_combout\ & (\inst|counter\(4) & !\inst|nextcounter[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|counter\(4),
	datad => VCC,
	cin => \inst|nextcounter[3]~23\,
	combout => \inst|nextcounter[4]~24_combout\,
	cout => \inst|nextcounter[4]~25\);

-- Location: FF_X40_Y32_N9
\inst|nextcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[4]~24_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(4));

-- Location: LCCOMB_X41_Y32_N10
\inst|counter[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[4]~feeder_combout\ = \inst|nextcounter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(4),
	combout => \inst|counter[4]~feeder_combout\);

-- Location: FF_X41_Y32_N11
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[4]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X40_Y32_N10
\inst|nextcounter[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[5]~26_combout\ = (\inst|Add1~0_combout\ & ((\inst|counter\(5) & (\inst|nextcounter[4]~25\ & VCC)) # (!\inst|counter\(5) & (!\inst|nextcounter[4]~25\)))) # (!\inst|Add1~0_combout\ & ((\inst|counter\(5) & (!\inst|nextcounter[4]~25\)) # 
-- (!\inst|counter\(5) & ((\inst|nextcounter[4]~25\) # (GND)))))
-- \inst|nextcounter[5]~27\ = CARRY((\inst|Add1~0_combout\ & (!\inst|counter\(5) & !\inst|nextcounter[4]~25\)) # (!\inst|Add1~0_combout\ & ((!\inst|nextcounter[4]~25\) # (!\inst|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|counter\(5),
	datad => VCC,
	cin => \inst|nextcounter[4]~25\,
	combout => \inst|nextcounter[5]~26_combout\,
	cout => \inst|nextcounter[5]~27\);

-- Location: FF_X40_Y32_N11
\inst|nextcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[5]~26_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(5));

-- Location: LCCOMB_X41_Y32_N24
\inst|counter[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[5]~feeder_combout\ = \inst|nextcounter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(5),
	combout => \inst|counter[5]~feeder_combout\);

-- Location: FF_X41_Y32_N25
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X40_Y32_N12
\inst|nextcounter[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[6]~28_combout\ = ((\inst|Add1~0_combout\ $ (\inst|counter\(6) $ (!\inst|nextcounter[5]~27\)))) # (GND)
-- \inst|nextcounter[6]~29\ = CARRY((\inst|Add1~0_combout\ & ((\inst|counter\(6)) # (!\inst|nextcounter[5]~27\))) # (!\inst|Add1~0_combout\ & (\inst|counter\(6) & !\inst|nextcounter[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|counter\(6),
	datad => VCC,
	cin => \inst|nextcounter[5]~27\,
	combout => \inst|nextcounter[6]~28_combout\,
	cout => \inst|nextcounter[6]~29\);

-- Location: FF_X40_Y32_N13
\inst|nextcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[6]~28_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(6));

-- Location: LCCOMB_X41_Y32_N18
\inst|counter[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[6]~feeder_combout\ = \inst|nextcounter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(6),
	combout => \inst|counter[6]~feeder_combout\);

-- Location: FF_X41_Y32_N19
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X40_Y32_N14
\inst|nextcounter[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[7]~30_combout\ = (\inst|counter\(7) & ((\inst|Add1~0_combout\ & (\inst|nextcounter[6]~29\ & VCC)) # (!\inst|Add1~0_combout\ & (!\inst|nextcounter[6]~29\)))) # (!\inst|counter\(7) & ((\inst|Add1~0_combout\ & (!\inst|nextcounter[6]~29\)) # 
-- (!\inst|Add1~0_combout\ & ((\inst|nextcounter[6]~29\) # (GND)))))
-- \inst|nextcounter[7]~31\ = CARRY((\inst|counter\(7) & (!\inst|Add1~0_combout\ & !\inst|nextcounter[6]~29\)) # (!\inst|counter\(7) & ((!\inst|nextcounter[6]~29\) # (!\inst|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|nextcounter[6]~29\,
	combout => \inst|nextcounter[7]~30_combout\,
	cout => \inst|nextcounter[7]~31\);

-- Location: FF_X40_Y32_N15
\inst|nextcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[7]~30_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(7));

-- Location: LCCOMB_X41_Y32_N4
\inst|counter[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[7]~feeder_combout\ = \inst|nextcounter\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(7),
	combout => \inst|counter[7]~feeder_combout\);

-- Location: FF_X41_Y32_N5
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X40_Y32_N16
\inst|nextcounter[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[8]~32_combout\ = ((\inst|Add1~0_combout\ $ (\inst|counter\(8) $ (!\inst|nextcounter[7]~31\)))) # (GND)
-- \inst|nextcounter[8]~33\ = CARRY((\inst|Add1~0_combout\ & ((\inst|counter\(8)) # (!\inst|nextcounter[7]~31\))) # (!\inst|Add1~0_combout\ & (\inst|counter\(8) & !\inst|nextcounter[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|counter\(8),
	datad => VCC,
	cin => \inst|nextcounter[7]~31\,
	combout => \inst|nextcounter[8]~32_combout\,
	cout => \inst|nextcounter[8]~33\);

-- Location: FF_X40_Y32_N17
\inst|nextcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[8]~32_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(8));

-- Location: LCCOMB_X39_Y32_N28
\inst|counter[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[8]~feeder_combout\ = \inst|nextcounter\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(8),
	combout => \inst|counter[8]~feeder_combout\);

-- Location: FF_X39_Y32_N29
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X40_Y32_N18
\inst|nextcounter[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[9]~34_combout\ = (\inst|counter\(9) & ((\inst|Add1~0_combout\ & (\inst|nextcounter[8]~33\ & VCC)) # (!\inst|Add1~0_combout\ & (!\inst|nextcounter[8]~33\)))) # (!\inst|counter\(9) & ((\inst|Add1~0_combout\ & (!\inst|nextcounter[8]~33\)) # 
-- (!\inst|Add1~0_combout\ & ((\inst|nextcounter[8]~33\) # (GND)))))
-- \inst|nextcounter[9]~35\ = CARRY((\inst|counter\(9) & (!\inst|Add1~0_combout\ & !\inst|nextcounter[8]~33\)) # (!\inst|counter\(9) & ((!\inst|nextcounter[8]~33\) # (!\inst|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|nextcounter[8]~33\,
	combout => \inst|nextcounter[9]~34_combout\,
	cout => \inst|nextcounter[9]~35\);

-- Location: FF_X40_Y32_N19
\inst|nextcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[9]~34_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(9));

-- Location: LCCOMB_X41_Y32_N30
\inst|counter[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[9]~feeder_combout\ = \inst|nextcounter\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(9),
	combout => \inst|counter[9]~feeder_combout\);

-- Location: FF_X41_Y32_N31
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[9]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X40_Y32_N20
\inst|nextcounter[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[10]~36_combout\ = ((\inst|counter\(10) $ (\inst|Add1~0_combout\ $ (!\inst|nextcounter[9]~35\)))) # (GND)
-- \inst|nextcounter[10]~37\ = CARRY((\inst|counter\(10) & ((\inst|Add1~0_combout\) # (!\inst|nextcounter[9]~35\))) # (!\inst|counter\(10) & (\inst|Add1~0_combout\ & !\inst|nextcounter[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(10),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|nextcounter[9]~35\,
	combout => \inst|nextcounter[10]~36_combout\,
	cout => \inst|nextcounter[10]~37\);

-- Location: FF_X40_Y32_N21
\inst|nextcounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[10]~36_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(10));

-- Location: LCCOMB_X41_Y32_N20
\inst|counter[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~feeder_combout\ = \inst|nextcounter\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(10),
	combout => \inst|counter[10]~feeder_combout\);

-- Location: FF_X41_Y32_N21
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[10]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X40_Y32_N22
\inst|nextcounter[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[11]~38_combout\ = (\inst|counter\(11) & ((\inst|Add1~0_combout\ & (\inst|nextcounter[10]~37\ & VCC)) # (!\inst|Add1~0_combout\ & (!\inst|nextcounter[10]~37\)))) # (!\inst|counter\(11) & ((\inst|Add1~0_combout\ & 
-- (!\inst|nextcounter[10]~37\)) # (!\inst|Add1~0_combout\ & ((\inst|nextcounter[10]~37\) # (GND)))))
-- \inst|nextcounter[11]~39\ = CARRY((\inst|counter\(11) & (!\inst|Add1~0_combout\ & !\inst|nextcounter[10]~37\)) # (!\inst|counter\(11) & ((!\inst|nextcounter[10]~37\) # (!\inst|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(11),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|nextcounter[10]~37\,
	combout => \inst|nextcounter[11]~38_combout\,
	cout => \inst|nextcounter[11]~39\);

-- Location: FF_X40_Y32_N23
\inst|nextcounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[11]~38_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(11));

-- Location: LCCOMB_X41_Y32_N2
\inst|counter[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[11]~feeder_combout\ = \inst|nextcounter\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(11),
	combout => \inst|counter[11]~feeder_combout\);

-- Location: FF_X41_Y32_N3
\inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[11]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(11));

-- Location: LCCOMB_X40_Y32_N24
\inst|nextcounter[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[12]~40_combout\ = ((\inst|counter\(12) $ (\inst|Add1~0_combout\ $ (!\inst|nextcounter[11]~39\)))) # (GND)
-- \inst|nextcounter[12]~41\ = CARRY((\inst|counter\(12) & ((\inst|Add1~0_combout\) # (!\inst|nextcounter[11]~39\))) # (!\inst|counter\(12) & (\inst|Add1~0_combout\ & !\inst|nextcounter[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(12),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|nextcounter[11]~39\,
	combout => \inst|nextcounter[12]~40_combout\,
	cout => \inst|nextcounter[12]~41\);

-- Location: FF_X40_Y32_N25
\inst|nextcounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[12]~40_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(12));

-- Location: LCCOMB_X39_Y32_N14
\inst|counter[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[12]~feeder_combout\ = \inst|nextcounter\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(12),
	combout => \inst|counter[12]~feeder_combout\);

-- Location: FF_X39_Y32_N15
\inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[12]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(12));

-- Location: LCCOMB_X40_Y32_N26
\inst|nextcounter[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[13]~42_combout\ = (\inst|counter\(13) & ((\inst|Add1~0_combout\ & (\inst|nextcounter[12]~41\ & VCC)) # (!\inst|Add1~0_combout\ & (!\inst|nextcounter[12]~41\)))) # (!\inst|counter\(13) & ((\inst|Add1~0_combout\ & 
-- (!\inst|nextcounter[12]~41\)) # (!\inst|Add1~0_combout\ & ((\inst|nextcounter[12]~41\) # (GND)))))
-- \inst|nextcounter[13]~43\ = CARRY((\inst|counter\(13) & (!\inst|Add1~0_combout\ & !\inst|nextcounter[12]~41\)) # (!\inst|counter\(13) & ((!\inst|nextcounter[12]~41\) # (!\inst|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|nextcounter[12]~41\,
	combout => \inst|nextcounter[13]~42_combout\,
	cout => \inst|nextcounter[13]~43\);

-- Location: FF_X40_Y32_N27
\inst|nextcounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[13]~42_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(13));

-- Location: LCCOMB_X39_Y32_N12
\inst|counter[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[13]~feeder_combout\ = \inst|nextcounter\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(13),
	combout => \inst|counter[13]~feeder_combout\);

-- Location: FF_X39_Y32_N13
\inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(13));

-- Location: LCCOMB_X40_Y32_N28
\inst|nextcounter[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[14]~44_combout\ = ((\inst|counter\(14) $ (\inst|Add1~0_combout\ $ (!\inst|nextcounter[13]~43\)))) # (GND)
-- \inst|nextcounter[14]~45\ = CARRY((\inst|counter\(14) & ((\inst|Add1~0_combout\) # (!\inst|nextcounter[13]~43\))) # (!\inst|counter\(14) & (\inst|Add1~0_combout\ & !\inst|nextcounter[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(14),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|nextcounter[13]~43\,
	combout => \inst|nextcounter[14]~44_combout\,
	cout => \inst|nextcounter[14]~45\);

-- Location: FF_X40_Y32_N29
\inst|nextcounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[14]~44_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(14));

-- Location: LCCOMB_X39_Y32_N26
\inst|counter[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[14]~feeder_combout\ = \inst|nextcounter\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|nextcounter\(14),
	combout => \inst|counter[14]~feeder_combout\);

-- Location: FF_X39_Y32_N27
\inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(14));

-- Location: LCCOMB_X40_Y32_N30
\inst|nextcounter[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|nextcounter[15]~46_combout\ = \inst|Add1~0_combout\ $ (\inst|nextcounter[14]~45\ $ (\inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datad => \inst|counter\(15),
	cin => \inst|nextcounter[14]~45\,
	combout => \inst|nextcounter[15]~46_combout\);

-- Location: FF_X40_Y32_N31
\inst|nextcounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|nextcounter[15]~46_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|nextcounter[7]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|nextcounter\(15));

-- Location: FF_X39_Y32_N17
\inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|nextcounter\(15),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(15));

-- Location: IOIBUF_X51_Y34_N22
\GPIO_0[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(32),
	o => \GPIO_0[32]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\GPIO_0[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(31),
	o => \GPIO_0[31]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\GPIO_0[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(30),
	o => \GPIO_0[30]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\GPIO_0[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(29),
	o => \GPIO_0[29]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\GPIO_0[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(28),
	o => \GPIO_0[28]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\GPIO_0[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(27),
	o => \GPIO_0[27]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\GPIO_0[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(26),
	o => \GPIO_0[26]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\GPIO_0[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(25),
	o => \GPIO_0[25]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\GPIO_0[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(24),
	o => \GPIO_0[24]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\GPIO_0[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(23),
	o => \GPIO_0[23]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\GPIO_0[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(21),
	o => \GPIO_0[21]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\GPIO_0[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(19),
	o => \GPIO_0[19]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\GPIO_0[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(18),
	o => \GPIO_0[18]~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\GPIO_0[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(17),
	o => \GPIO_0[17]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\GPIO_0[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(16),
	o => \GPIO_0[16]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\GPIO_0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(15),
	o => \GPIO_0[15]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\GPIO_0[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(14),
	o => \GPIO_0[14]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\GPIO_0[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(13),
	o => \GPIO_0[13]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\GPIO_0[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(12),
	o => \GPIO_0[12]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\GPIO_0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(11),
	o => \GPIO_0[11]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\GPIO_0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(10),
	o => \GPIO_0[10]~input_o\);

-- Location: IOIBUF_X5_Y34_N15
\GPIO_0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(9),
	o => \GPIO_0[9]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\GPIO_0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(8),
	o => \GPIO_0[8]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\GPIO_0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(7),
	o => \GPIO_0[7]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\GPIO_0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(6),
	o => \GPIO_0[6]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\GPIO_0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(5),
	o => \GPIO_0[5]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\GPIO_0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(4),
	o => \GPIO_0[4]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\GPIO_0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(3),
	o => \GPIO_0[3]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\GPIO_0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(2),
	o => \GPIO_0[2]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\GPIO_0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(1),
	o => \GPIO_0[1]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\GPIO_0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(0),
	o => \GPIO_0[0]~input_o\);

ww_LED(7) <= \LED[7]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(0) <= \LED[0]~output_o\;
END structure;


