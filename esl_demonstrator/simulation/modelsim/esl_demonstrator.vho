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

-- DATE "04/26/2021 17:08:53"

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

ENTITY 	de0_nano_toplevel IS
    PORT (
	CLOCK_50 : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	GPIO_0 : INOUT std_logic_vector(33 DOWNTO 0)
	);
END de0_nano_toplevel;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[9]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[23]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[24]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[25]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[26]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[27]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[28]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[29]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[31]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[32]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[33]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[22]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF de0_nano_toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \GPIO_0[0]~input_o\ : std_logic;
SIGNAL \GPIO_0[1]~input_o\ : std_logic;
SIGNAL \GPIO_0[2]~input_o\ : std_logic;
SIGNAL \GPIO_0[3]~input_o\ : std_logic;
SIGNAL \GPIO_0[4]~input_o\ : std_logic;
SIGNAL \GPIO_0[5]~input_o\ : std_logic;
SIGNAL \GPIO_0[6]~input_o\ : std_logic;
SIGNAL \GPIO_0[7]~input_o\ : std_logic;
SIGNAL \GPIO_0[8]~input_o\ : std_logic;
SIGNAL \GPIO_0[9]~input_o\ : std_logic;
SIGNAL \GPIO_0[10]~input_o\ : std_logic;
SIGNAL \GPIO_0[11]~input_o\ : std_logic;
SIGNAL \GPIO_0[12]~input_o\ : std_logic;
SIGNAL \GPIO_0[13]~input_o\ : std_logic;
SIGNAL \GPIO_0[14]~input_o\ : std_logic;
SIGNAL \GPIO_0[15]~input_o\ : std_logic;
SIGNAL \GPIO_0[16]~input_o\ : std_logic;
SIGNAL \GPIO_0[17]~input_o\ : std_logic;
SIGNAL \GPIO_0[18]~input_o\ : std_logic;
SIGNAL \GPIO_0[19]~input_o\ : std_logic;
SIGNAL \GPIO_0[21]~input_o\ : std_logic;
SIGNAL \GPIO_0[23]~input_o\ : std_logic;
SIGNAL \GPIO_0[24]~input_o\ : std_logic;
SIGNAL \GPIO_0[25]~input_o\ : std_logic;
SIGNAL \GPIO_0[26]~input_o\ : std_logic;
SIGNAL \GPIO_0[27]~input_o\ : std_logic;
SIGNAL \GPIO_0[28]~input_o\ : std_logic;
SIGNAL \GPIO_0[29]~input_o\ : std_logic;
SIGNAL \GPIO_0[30]~input_o\ : std_logic;
SIGNAL \GPIO_0[31]~input_o\ : std_logic;
SIGNAL \GPIO_0[32]~input_o\ : std_logic;
SIGNAL \GPIO_0[33]~input_o\ : std_logic;
SIGNAL \GPIO_0[0]~output_o\ : std_logic;
SIGNAL \GPIO_0[1]~output_o\ : std_logic;
SIGNAL \GPIO_0[2]~output_o\ : std_logic;
SIGNAL \GPIO_0[3]~output_o\ : std_logic;
SIGNAL \GPIO_0[4]~output_o\ : std_logic;
SIGNAL \GPIO_0[5]~output_o\ : std_logic;
SIGNAL \GPIO_0[6]~output_o\ : std_logic;
SIGNAL \GPIO_0[7]~output_o\ : std_logic;
SIGNAL \GPIO_0[8]~output_o\ : std_logic;
SIGNAL \GPIO_0[9]~output_o\ : std_logic;
SIGNAL \GPIO_0[10]~output_o\ : std_logic;
SIGNAL \GPIO_0[11]~output_o\ : std_logic;
SIGNAL \GPIO_0[12]~output_o\ : std_logic;
SIGNAL \GPIO_0[13]~output_o\ : std_logic;
SIGNAL \GPIO_0[14]~output_o\ : std_logic;
SIGNAL \GPIO_0[15]~output_o\ : std_logic;
SIGNAL \GPIO_0[16]~output_o\ : std_logic;
SIGNAL \GPIO_0[17]~output_o\ : std_logic;
SIGNAL \GPIO_0[18]~output_o\ : std_logic;
SIGNAL \GPIO_0[19]~output_o\ : std_logic;
SIGNAL \GPIO_0[21]~output_o\ : std_logic;
SIGNAL \GPIO_0[23]~output_o\ : std_logic;
SIGNAL \GPIO_0[24]~output_o\ : std_logic;
SIGNAL \GPIO_0[25]~output_o\ : std_logic;
SIGNAL \GPIO_0[26]~output_o\ : std_logic;
SIGNAL \GPIO_0[27]~output_o\ : std_logic;
SIGNAL \GPIO_0[28]~output_o\ : std_logic;
SIGNAL \GPIO_0[29]~output_o\ : std_logic;
SIGNAL \GPIO_0[30]~output_o\ : std_logic;
SIGNAL \GPIO_0[31]~output_o\ : std_logic;
SIGNAL \GPIO_0[32]~output_o\ : std_logic;
SIGNAL \GPIO_0[33]~output_o\ : std_logic;
SIGNAL \GPIO_0[20]~output_o\ : std_logic;
SIGNAL \GPIO_0[22]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \e_cnt|counter[0]~8_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \GPIO_0[20]~input_o\ : std_logic;
SIGNAL \GPIO_0[22]~input_o\ : std_logic;
SIGNAL \e_cnt|old_b~q\ : std_logic;
SIGNAL \e_cnt|old_a~feeder_combout\ : std_logic;
SIGNAL \e_cnt|old_a~q\ : std_logic;
SIGNAL \e_cnt|counter[15]~10_combout\ : std_logic;
SIGNAL \e_cnt|Add1~0_combout\ : std_logic;
SIGNAL \e_cnt|counter[0]~9\ : std_logic;
SIGNAL \e_cnt|counter[1]~11_combout\ : std_logic;
SIGNAL \e_cnt|counter[1]~12\ : std_logic;
SIGNAL \e_cnt|counter[2]~13_combout\ : std_logic;
SIGNAL \e_cnt|counter[2]~14\ : std_logic;
SIGNAL \e_cnt|counter[3]~15_combout\ : std_logic;
SIGNAL \e_cnt|counter[3]~16\ : std_logic;
SIGNAL \e_cnt|counter[4]~17_combout\ : std_logic;
SIGNAL \e_cnt|counter[4]~18\ : std_logic;
SIGNAL \e_cnt|counter[5]~19_combout\ : std_logic;
SIGNAL \e_cnt|counter[5]~20\ : std_logic;
SIGNAL \e_cnt|counter[6]~21_combout\ : std_logic;
SIGNAL \e_cnt|counter[6]~22\ : std_logic;
SIGNAL \e_cnt|counter[7]~23_combout\ : std_logic;
SIGNAL \e_cnt|counter\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LED <= ww_LED;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X1_Y34_N9
\GPIO_0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[0]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\GPIO_0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\GPIO_0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\GPIO_0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[3]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\GPIO_0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[4]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\GPIO_0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[5]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\GPIO_0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[6]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\GPIO_0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[7]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\GPIO_0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[8]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\GPIO_0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[9]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\GPIO_0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[10]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\GPIO_0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[11]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\GPIO_0[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[12]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\GPIO_0[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[13]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\GPIO_0[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[14]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\GPIO_0[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[15]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\GPIO_0[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[16]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\GPIO_0[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[17]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\GPIO_0[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[18]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\GPIO_0[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[19]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\GPIO_0[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[21]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\GPIO_0[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[23]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\GPIO_0[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[24]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\GPIO_0[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[25]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\GPIO_0[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[26]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\GPIO_0[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[27]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\GPIO_0[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[28]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\GPIO_0[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[29]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\GPIO_0[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[30]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\GPIO_0[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[31]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\GPIO_0[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[32]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\GPIO_0[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[33]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\GPIO_0[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[20]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\GPIO_0[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[22]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_cnt|counter\(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_cnt|counter\(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_cnt|counter\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_cnt|counter\(3),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_cnt|counter\(4),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_cnt|counter\(5),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_cnt|counter\(6),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_cnt|counter\(7),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

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

-- Location: LCCOMB_X34_Y30_N0
\e_cnt|counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|counter[0]~8_combout\ = \e_cnt|counter\(0) $ (VCC)
-- \e_cnt|counter[0]~9\ = CARRY(\e_cnt|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e_cnt|counter\(0),
	datad => VCC,
	combout => \e_cnt|counter[0]~8_combout\,
	cout => \e_cnt|counter[0]~9\);

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

-- Location: IOIBUF_X20_Y34_N8
\GPIO_0[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(20),
	o => \GPIO_0[20]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\GPIO_0[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(22),
	o => \GPIO_0[22]~input_o\);

-- Location: FF_X34_Y30_N27
\e_cnt|old_b\ : dffeas
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
	q => \e_cnt|old_b~q\);

-- Location: LCCOMB_X34_Y30_N28
\e_cnt|old_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|old_a~feeder_combout\ = \GPIO_0[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO_0[20]~input_o\,
	combout => \e_cnt|old_a~feeder_combout\);

-- Location: FF_X34_Y30_N29
\e_cnt|old_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e_cnt|old_a~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_cnt|old_a~q\);

-- Location: LCCOMB_X34_Y30_N26
\e_cnt|counter[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|counter[15]~10_combout\ = (\GPIO_0[20]~input_o\ & ((\GPIO_0[22]~input_o\ $ (\e_cnt|old_b~q\)) # (!\e_cnt|old_a~q\))) # (!\GPIO_0[20]~input_o\ & ((\e_cnt|old_a~q\) # (\GPIO_0[22]~input_o\ $ (\e_cnt|old_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[20]~input_o\,
	datab => \GPIO_0[22]~input_o\,
	datac => \e_cnt|old_b~q\,
	datad => \e_cnt|old_a~q\,
	combout => \e_cnt|counter[15]~10_combout\);

-- Location: FF_X34_Y30_N1
\e_cnt|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e_cnt|counter[0]~8_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \e_cnt|counter[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_cnt|counter\(0));

-- Location: LCCOMB_X34_Y30_N20
\e_cnt|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|Add1~0_combout\ = \GPIO_0[22]~input_o\ $ (\e_cnt|old_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPIO_0[22]~input_o\,
	datad => \e_cnt|old_a~q\,
	combout => \e_cnt|Add1~0_combout\);

-- Location: LCCOMB_X34_Y30_N2
\e_cnt|counter[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|counter[1]~11_combout\ = (\e_cnt|counter\(1) & ((\e_cnt|Add1~0_combout\ & (\e_cnt|counter[0]~9\ & VCC)) # (!\e_cnt|Add1~0_combout\ & (!\e_cnt|counter[0]~9\)))) # (!\e_cnt|counter\(1) & ((\e_cnt|Add1~0_combout\ & (!\e_cnt|counter[0]~9\)) # 
-- (!\e_cnt|Add1~0_combout\ & ((\e_cnt|counter[0]~9\) # (GND)))))
-- \e_cnt|counter[1]~12\ = CARRY((\e_cnt|counter\(1) & (!\e_cnt|Add1~0_combout\ & !\e_cnt|counter[0]~9\)) # (!\e_cnt|counter\(1) & ((!\e_cnt|counter[0]~9\) # (!\e_cnt|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e_cnt|counter\(1),
	datab => \e_cnt|Add1~0_combout\,
	datad => VCC,
	cin => \e_cnt|counter[0]~9\,
	combout => \e_cnt|counter[1]~11_combout\,
	cout => \e_cnt|counter[1]~12\);

-- Location: FF_X34_Y30_N3
\e_cnt|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e_cnt|counter[1]~11_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \e_cnt|counter[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_cnt|counter\(1));

-- Location: LCCOMB_X34_Y30_N4
\e_cnt|counter[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|counter[2]~13_combout\ = ((\e_cnt|counter\(2) $ (\e_cnt|Add1~0_combout\ $ (!\e_cnt|counter[1]~12\)))) # (GND)
-- \e_cnt|counter[2]~14\ = CARRY((\e_cnt|counter\(2) & ((\e_cnt|Add1~0_combout\) # (!\e_cnt|counter[1]~12\))) # (!\e_cnt|counter\(2) & (\e_cnt|Add1~0_combout\ & !\e_cnt|counter[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e_cnt|counter\(2),
	datab => \e_cnt|Add1~0_combout\,
	datad => VCC,
	cin => \e_cnt|counter[1]~12\,
	combout => \e_cnt|counter[2]~13_combout\,
	cout => \e_cnt|counter[2]~14\);

-- Location: FF_X34_Y30_N5
\e_cnt|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e_cnt|counter[2]~13_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \e_cnt|counter[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_cnt|counter\(2));

-- Location: LCCOMB_X34_Y30_N6
\e_cnt|counter[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|counter[3]~15_combout\ = (\e_cnt|counter\(3) & ((\e_cnt|Add1~0_combout\ & (\e_cnt|counter[2]~14\ & VCC)) # (!\e_cnt|Add1~0_combout\ & (!\e_cnt|counter[2]~14\)))) # (!\e_cnt|counter\(3) & ((\e_cnt|Add1~0_combout\ & (!\e_cnt|counter[2]~14\)) # 
-- (!\e_cnt|Add1~0_combout\ & ((\e_cnt|counter[2]~14\) # (GND)))))
-- \e_cnt|counter[3]~16\ = CARRY((\e_cnt|counter\(3) & (!\e_cnt|Add1~0_combout\ & !\e_cnt|counter[2]~14\)) # (!\e_cnt|counter\(3) & ((!\e_cnt|counter[2]~14\) # (!\e_cnt|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e_cnt|counter\(3),
	datab => \e_cnt|Add1~0_combout\,
	datad => VCC,
	cin => \e_cnt|counter[2]~14\,
	combout => \e_cnt|counter[3]~15_combout\,
	cout => \e_cnt|counter[3]~16\);

-- Location: FF_X34_Y30_N7
\e_cnt|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e_cnt|counter[3]~15_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \e_cnt|counter[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_cnt|counter\(3));

-- Location: LCCOMB_X34_Y30_N8
\e_cnt|counter[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|counter[4]~17_combout\ = ((\e_cnt|counter\(4) $ (\e_cnt|Add1~0_combout\ $ (!\e_cnt|counter[3]~16\)))) # (GND)
-- \e_cnt|counter[4]~18\ = CARRY((\e_cnt|counter\(4) & ((\e_cnt|Add1~0_combout\) # (!\e_cnt|counter[3]~16\))) # (!\e_cnt|counter\(4) & (\e_cnt|Add1~0_combout\ & !\e_cnt|counter[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e_cnt|counter\(4),
	datab => \e_cnt|Add1~0_combout\,
	datad => VCC,
	cin => \e_cnt|counter[3]~16\,
	combout => \e_cnt|counter[4]~17_combout\,
	cout => \e_cnt|counter[4]~18\);

-- Location: FF_X34_Y30_N9
\e_cnt|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e_cnt|counter[4]~17_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \e_cnt|counter[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_cnt|counter\(4));

-- Location: LCCOMB_X34_Y30_N10
\e_cnt|counter[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|counter[5]~19_combout\ = (\e_cnt|counter\(5) & ((\e_cnt|Add1~0_combout\ & (\e_cnt|counter[4]~18\ & VCC)) # (!\e_cnt|Add1~0_combout\ & (!\e_cnt|counter[4]~18\)))) # (!\e_cnt|counter\(5) & ((\e_cnt|Add1~0_combout\ & (!\e_cnt|counter[4]~18\)) # 
-- (!\e_cnt|Add1~0_combout\ & ((\e_cnt|counter[4]~18\) # (GND)))))
-- \e_cnt|counter[5]~20\ = CARRY((\e_cnt|counter\(5) & (!\e_cnt|Add1~0_combout\ & !\e_cnt|counter[4]~18\)) # (!\e_cnt|counter\(5) & ((!\e_cnt|counter[4]~18\) # (!\e_cnt|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e_cnt|counter\(5),
	datab => \e_cnt|Add1~0_combout\,
	datad => VCC,
	cin => \e_cnt|counter[4]~18\,
	combout => \e_cnt|counter[5]~19_combout\,
	cout => \e_cnt|counter[5]~20\);

-- Location: FF_X34_Y30_N11
\e_cnt|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e_cnt|counter[5]~19_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \e_cnt|counter[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_cnt|counter\(5));

-- Location: LCCOMB_X34_Y30_N12
\e_cnt|counter[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|counter[6]~21_combout\ = ((\e_cnt|Add1~0_combout\ $ (\e_cnt|counter\(6) $ (!\e_cnt|counter[5]~20\)))) # (GND)
-- \e_cnt|counter[6]~22\ = CARRY((\e_cnt|Add1~0_combout\ & ((\e_cnt|counter\(6)) # (!\e_cnt|counter[5]~20\))) # (!\e_cnt|Add1~0_combout\ & (\e_cnt|counter\(6) & !\e_cnt|counter[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e_cnt|Add1~0_combout\,
	datab => \e_cnt|counter\(6),
	datad => VCC,
	cin => \e_cnt|counter[5]~20\,
	combout => \e_cnt|counter[6]~21_combout\,
	cout => \e_cnt|counter[6]~22\);

-- Location: FF_X34_Y30_N13
\e_cnt|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e_cnt|counter[6]~21_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \e_cnt|counter[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_cnt|counter\(6));

-- Location: LCCOMB_X34_Y30_N14
\e_cnt|counter[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_cnt|counter[7]~23_combout\ = \e_cnt|Add1~0_combout\ $ (\e_cnt|counter\(7) $ (\e_cnt|counter[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \e_cnt|Add1~0_combout\,
	datab => \e_cnt|counter\(7),
	cin => \e_cnt|counter[6]~22\,
	combout => \e_cnt|counter[7]~23_combout\);

-- Location: FF_X34_Y30_N15
\e_cnt|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \e_cnt|counter[7]~23_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \e_cnt|counter[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e_cnt|counter\(7));

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\GPIO_0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(0),
	o => \GPIO_0[0]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\GPIO_0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(1),
	o => \GPIO_0[1]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\GPIO_0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(2),
	o => \GPIO_0[2]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\GPIO_0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(3),
	o => \GPIO_0[3]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\GPIO_0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(4),
	o => \GPIO_0[4]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\GPIO_0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(5),
	o => \GPIO_0[5]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\GPIO_0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(6),
	o => \GPIO_0[6]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\GPIO_0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(7),
	o => \GPIO_0[7]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\GPIO_0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(8),
	o => \GPIO_0[8]~input_o\);

-- Location: IOIBUF_X5_Y34_N15
\GPIO_0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(9),
	o => \GPIO_0[9]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\GPIO_0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(10),
	o => \GPIO_0[10]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\GPIO_0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(11),
	o => \GPIO_0[11]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\GPIO_0[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(12),
	o => \GPIO_0[12]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\GPIO_0[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(13),
	o => \GPIO_0[13]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\GPIO_0[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(14),
	o => \GPIO_0[14]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\GPIO_0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(15),
	o => \GPIO_0[15]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\GPIO_0[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(16),
	o => \GPIO_0[16]~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\GPIO_0[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(17),
	o => \GPIO_0[17]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\GPIO_0[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(18),
	o => \GPIO_0[18]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\GPIO_0[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(19),
	o => \GPIO_0[19]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\GPIO_0[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(21),
	o => \GPIO_0[21]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\GPIO_0[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(23),
	o => \GPIO_0[23]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\GPIO_0[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(24),
	o => \GPIO_0[24]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\GPIO_0[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(25),
	o => \GPIO_0[25]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\GPIO_0[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(26),
	o => \GPIO_0[26]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\GPIO_0[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(27),
	o => \GPIO_0[27]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\GPIO_0[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(28),
	o => \GPIO_0[28]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\GPIO_0[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(29),
	o => \GPIO_0[29]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\GPIO_0[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(30),
	o => \GPIO_0[30]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\GPIO_0[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(31),
	o => \GPIO_0[31]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\GPIO_0[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(32),
	o => \GPIO_0[32]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\GPIO_0[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(33),
	o => \GPIO_0[33]~input_o\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

GPIO_0(0) <= \GPIO_0[0]~output_o\;

GPIO_0(1) <= \GPIO_0[1]~output_o\;

GPIO_0(2) <= \GPIO_0[2]~output_o\;

GPIO_0(3) <= \GPIO_0[3]~output_o\;

GPIO_0(4) <= \GPIO_0[4]~output_o\;

GPIO_0(5) <= \GPIO_0[5]~output_o\;

GPIO_0(6) <= \GPIO_0[6]~output_o\;

GPIO_0(7) <= \GPIO_0[7]~output_o\;

GPIO_0(8) <= \GPIO_0[8]~output_o\;

GPIO_0(9) <= \GPIO_0[9]~output_o\;

GPIO_0(10) <= \GPIO_0[10]~output_o\;

GPIO_0(11) <= \GPIO_0[11]~output_o\;

GPIO_0(12) <= \GPIO_0[12]~output_o\;

GPIO_0(13) <= \GPIO_0[13]~output_o\;

GPIO_0(14) <= \GPIO_0[14]~output_o\;

GPIO_0(15) <= \GPIO_0[15]~output_o\;

GPIO_0(16) <= \GPIO_0[16]~output_o\;

GPIO_0(17) <= \GPIO_0[17]~output_o\;

GPIO_0(18) <= \GPIO_0[18]~output_o\;

GPIO_0(19) <= \GPIO_0[19]~output_o\;

GPIO_0(21) <= \GPIO_0[21]~output_o\;

GPIO_0(23) <= \GPIO_0[23]~output_o\;

GPIO_0(24) <= \GPIO_0[24]~output_o\;

GPIO_0(25) <= \GPIO_0[25]~output_o\;

GPIO_0(26) <= \GPIO_0[26]~output_o\;

GPIO_0(27) <= \GPIO_0[27]~output_o\;

GPIO_0(28) <= \GPIO_0[28]~output_o\;

GPIO_0(29) <= \GPIO_0[29]~output_o\;

GPIO_0(30) <= \GPIO_0[30]~output_o\;

GPIO_0(31) <= \GPIO_0[31]~output_o\;

GPIO_0(32) <= \GPIO_0[32]~output_o\;

GPIO_0(33) <= \GPIO_0[33]~output_o\;

GPIO_0(20) <= \GPIO_0[20]~output_o\;

GPIO_0(22) <= \GPIO_0[22]~output_o\;
END structure;


