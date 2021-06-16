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

-- DATE "06/16/2021 17:21:54"

-- 
-- Device: Altera EP3C40Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	setup_control IS
    PORT (
	CLOCK_50 : IN std_logic;
	GPMC_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	GPMC_ADDR : IN std_logic_vector(10 DOWNTO 1);
	GPMC_nPWE : IN std_logic;
	GPMC_nOE : IN std_logic;
	GPMC_FPGA_IRQ : IN std_logic;
	GPMC_nCS6 : IN std_logic;
	GPMC_CLK : IN std_logic;
	ENC3A : IN std_logic;
	ENC3B : IN std_logic;
	PWM3A : INOUT std_logic;
	PWM3B : INOUT std_logic;
	PWM3C : INOUT std_logic;
	ENC4A : IN std_logic;
	ENC4B : IN std_logic;
	PWM4A : INOUT std_logic;
	PWM4B : INOUT std_logic;
	PWM4C : INOUT std_logic
	);
END setup_control;

-- Design Ports Information
-- GPMC_FPGA_IRQ	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_CLK	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[0]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[1]	=>  Location: PIN_94,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[2]	=>  Location: PIN_95,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[4]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[6]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[8]	=>  Location: PIN_107,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[9]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[10]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[11]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[12]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[13]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[14]	=>  Location: PIN_117,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_DATA[15]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM3A	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM3B	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM3C	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM4A	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM4B	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM4C	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPMC_nOE	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_nCS6	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPMC_ADDR[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[4]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[10]	=>  Location: PIN_139,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[7]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[8]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_ADDR[9]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPMC_nPWE	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENC4A	=>  Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC3A	=>  Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC4B	=>  Location: PIN_177,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC3B	=>  Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF setup_control IS
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
SIGNAL ww_GPMC_ADDR : std_logic_vector(10 DOWNTO 1);
SIGNAL ww_GPMC_nPWE : std_logic;
SIGNAL ww_GPMC_nOE : std_logic;
SIGNAL ww_GPMC_FPGA_IRQ : std_logic;
SIGNAL ww_GPMC_nCS6 : std_logic;
SIGNAL ww_GPMC_CLK : std_logic;
SIGNAL ww_ENC3A : std_logic;
SIGNAL ww_ENC3B : std_logic;
SIGNAL ww_ENC4A : std_logic;
SIGNAL ww_ENC4B : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FDIV_PWM_comp|iclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPMC_FPGA_IRQ~input_o\ : std_logic;
SIGNAL \GPMC_CLK~input_o\ : std_logic;
SIGNAL \PWM3A~input_o\ : std_logic;
SIGNAL \PWM3B~input_o\ : std_logic;
SIGNAL \PWM3C~input_o\ : std_logic;
SIGNAL \PWM4A~input_o\ : std_logic;
SIGNAL \PWM4B~input_o\ : std_logic;
SIGNAL \PWM4C~input_o\ : std_logic;
SIGNAL \GPMC_DATA[0]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[1]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[2]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[3]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[4]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[5]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[6]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[7]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[8]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[9]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[10]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[11]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[12]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[13]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[14]~output_o\ : std_logic;
SIGNAL \GPMC_DATA[15]~output_o\ : std_logic;
SIGNAL \PWM3A~output_o\ : std_logic;
SIGNAL \PWM3B~output_o\ : std_logic;
SIGNAL \PWM3C~output_o\ : std_logic;
SIGNAL \PWM4A~output_o\ : std_logic;
SIGNAL \PWM4B~output_o\ : std_logic;
SIGNAL \PWM4C~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GPMC_ADDR[10]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[5]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_addr_in[4]~feeder_combout\ : std_logic;
SIGNAL \GPMC_ADDR[6]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_addr_in[5]~feeder_combout\ : std_logic;
SIGNAL \GPMC_ADDR[9]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_addr_in[8]~feeder_combout\ : std_logic;
SIGNAL \GPMC_ADDR[8]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[7]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_addr_in[6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|LessThan0~0_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~20_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~21_combout\ : std_logic;
SIGNAL \GPMC_ADDR[4]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_addr_in[3]~feeder_combout\ : std_logic;
SIGNAL \GPMC_ADDR[3]~input_o\ : std_logic;
SIGNAL \GPMC_DATA[0]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[23][0]~feeder_combout\ : std_logic;
SIGNAL \GPMC_ADDR[2]~input_o\ : std_logic;
SIGNAL \GPMC_ADDR[1]~input_o\ : std_logic;
SIGNAL \GPMC_nPWE~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_nwe~q\ : std_logic;
SIGNAL \GPMC_nCS6~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_ncs~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~15_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~30_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~31_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~27_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~28_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~32_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[19][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~7_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~33_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~29_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~8_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~6_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~7_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~10_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~14_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~8_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~9_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~11_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~12_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~13_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[18][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~0_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~1_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~18_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~19_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~24_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~50_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~21_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~49_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~25_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~26_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[16][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~4_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~5_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~16_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~17_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~23_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~20_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~22_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[17][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~2_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~3_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~6_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~9_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~39_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~34_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~37_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~38_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[8][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~35_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~36_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~10_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~11_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~46_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~48_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~51_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[12][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~47_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~17_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~18_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~45_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~44_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][0]~q\ : std_logic;
SIGNAL \encoder_compP|counter[0]~16_combout\ : std_logic;
SIGNAL \ENC4A~input_o\ : std_logic;
SIGNAL \encoder_compP|old_a~q\ : std_logic;
SIGNAL \encoder_compP|counter[0]~18_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][0]~q\ : std_logic;
SIGNAL \encoder_compT|counter[0]~16_combout\ : std_logic;
SIGNAL \ENC3A~input_o\ : std_logic;
SIGNAL \encoder_compT|old_a~q\ : std_logic;
SIGNAL \encoder_compT|counter[0]~18_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~14_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~15_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~40_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~43_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][0]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][0]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~41_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][0]~q\ : std_logic;
SIGNAL \gpmc_driver|Decoder0~42_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[4][0]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~12_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~13_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~16_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~19_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~22_combout\ : std_logic;
SIGNAL \GPMC_nOE~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_nre~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out[0]~23_combout\ : std_logic;
SIGNAL \gpmc_driver|GPMC_DATA~16_combout\ : std_logic;
SIGNAL \GPMC_DATA[1]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~41_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~42_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~34_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~35_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~38_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~39_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~36_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~37_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~40_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~43_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~24_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~25_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~31_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~32_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][1]~q\ : std_logic;
SIGNAL \ENC4B~input_o\ : std_logic;
SIGNAL \encoder_compP|counter[0]~17\ : std_logic;
SIGNAL \encoder_compP|counter[1]~19_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][1]~q\ : std_logic;
SIGNAL \ENC3B~input_o\ : std_logic;
SIGNAL \encoder_compT|counter[0]~17\ : std_logic;
SIGNAL \encoder_compT|counter[1]~19_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~28_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~29_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][1]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][1]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][1]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~26_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~27_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~30_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~33_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~44_combout\ : std_logic;
SIGNAL \GPMC_DATA[2]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[12][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~52_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~53_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][2]~q\ : std_logic;
SIGNAL \encoder_compP|counter[1]~20\ : std_logic;
SIGNAL \encoder_compP|counter[2]~21_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][2]~q\ : std_logic;
SIGNAL \encoder_compT|counter[1]~20\ : std_logic;
SIGNAL \encoder_compT|counter[2]~21_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~49_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~50_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~47_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~48_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~51_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~45_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~46_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~54_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~55_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~56_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~62_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~63_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~59_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~60_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][2]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][2]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][2]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~57_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~58_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~61_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~64_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~65_combout\ : std_logic;
SIGNAL \GPMC_DATA[3]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~83_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~84_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~80_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~81_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~78_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~79_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~82_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~76_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~77_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~85_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~73_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~74_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~66_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~67_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~68_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~69_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][3]~q\ : std_logic;
SIGNAL \encoder_compP|counter[2]~22\ : std_logic;
SIGNAL \encoder_compP|counter[3]~23_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][3]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][3]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][3]~q\ : std_logic;
SIGNAL \encoder_compT|counter[2]~22\ : std_logic;
SIGNAL \encoder_compT|counter[3]~23_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][3]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~70_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~71_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~72_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~75_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~86_combout\ : std_logic;
SIGNAL \GPMC_DATA[4]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~94_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~95_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~87_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~88_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][4]~q\ : std_logic;
SIGNAL \encoder_compT|counter[3]~24\ : std_logic;
SIGNAL \encoder_compT|counter[4]~25_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][4]~q\ : std_logic;
SIGNAL \encoder_compP|counter[3]~24\ : std_logic;
SIGNAL \encoder_compP|counter[4]~25_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~91_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~92_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~89_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~90_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~93_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~96_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~97_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~98_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~104_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~105_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~101_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~102_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][4]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][4]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][4]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~99_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~100_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~103_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~106_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~107_combout\ : std_logic;
SIGNAL \GPMC_DATA[5]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~125_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~126_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~118_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[29][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~119_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~122_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~123_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~120_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~121_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~124_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~127_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~108_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~109_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][5]~q\ : std_logic;
SIGNAL \encoder_compP|counter[4]~26\ : std_logic;
SIGNAL \encoder_compP|counter[5]~27_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][5]~q\ : std_logic;
SIGNAL \encoder_compT|counter[4]~26\ : std_logic;
SIGNAL \encoder_compT|counter[5]~27_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~112_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~113_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~110_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~111_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~114_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][5]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][5]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][5]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~115_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~116_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~117_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~128_combout\ : std_logic;
SIGNAL \GPMC_DATA[6]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~139_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~140_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~146_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~147_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~141_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~142_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~143_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~144_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~145_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~148_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~129_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~130_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~136_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~137_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~131_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~132_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][6]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][6]~q\ : std_logic;
SIGNAL \encoder_compP|counter[5]~28\ : std_logic;
SIGNAL \encoder_compP|counter[6]~29_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][6]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][6]~q\ : std_logic;
SIGNAL \encoder_compT|counter[5]~28\ : std_logic;
SIGNAL \encoder_compT|counter[6]~29_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][6]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~133_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~134_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~135_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~138_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~149_combout\ : std_logic;
SIGNAL \GPMC_DATA[7]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[23][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~167_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~168_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~164_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~165_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~162_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~163_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~166_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~160_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~161_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~169_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~150_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~151_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~157_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~158_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~152_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~153_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[3][7]~q\ : std_logic;
SIGNAL \encoder_compP|counter[6]~30\ : std_logic;
SIGNAL \encoder_compP|counter[7]~31_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][7]~q\ : std_logic;
SIGNAL \encoder_compT|counter[6]~30\ : std_logic;
SIGNAL \encoder_compT|counter[7]~31_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][7]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][7]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][7]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~154_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~155_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~156_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~159_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~170_combout\ : std_logic;
SIGNAL \GPMC_DATA[8]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~181_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~182_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~188_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[31][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~189_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~185_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~186_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~183_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~184_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~187_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~190_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[15][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~178_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~179_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~171_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~172_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~173_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~174_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][8]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][8]~q\ : std_logic;
SIGNAL \encoder_compP|counter[7]~32\ : std_logic;
SIGNAL \encoder_compP|counter[8]~33_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][8]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][8]~q\ : std_logic;
SIGNAL \encoder_compT|counter[7]~32\ : std_logic;
SIGNAL \encoder_compT|counter[8]~33_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][8]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~175_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~176_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~177_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~180_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~191_combout\ : std_logic;
SIGNAL \GPMC_DATA[9]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~192_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~193_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~199_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~200_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~194_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~195_combout\ : std_logic;
SIGNAL \encoder_compP|counter[8]~34\ : std_logic;
SIGNAL \encoder_compP|counter[9]~35_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][9]~q\ : std_logic;
SIGNAL \encoder_compT|counter[8]~34\ : std_logic;
SIGNAL \encoder_compT|counter[9]~35_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~196_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~197_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~198_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~201_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~204_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~205_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~206_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~207_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~208_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~202_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~203_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][9]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][9]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][9]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~209_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~210_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~211_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~212_combout\ : std_logic;
SIGNAL \GPMC_DATA[10]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[22][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[26][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~223_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~224_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~230_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~231_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~227_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[28][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~228_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~225_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~226_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~229_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~232_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~213_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~214_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~220_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~221_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][10]~q\ : std_logic;
SIGNAL \encoder_compP|counter[9]~36\ : std_logic;
SIGNAL \encoder_compP|counter[10]~37_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][10]~q\ : std_logic;
SIGNAL \encoder_compT|counter[9]~36\ : std_logic;
SIGNAL \encoder_compT|counter[10]~37_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~217_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~218_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][10]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][10]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][10]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~215_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~216_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~219_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~222_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~233_combout\ : std_logic;
SIGNAL \GPMC_DATA[11]~input_o\ : std_logic;
SIGNAL \gpmc_driver|ram[14][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~241_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~242_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~234_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~235_combout\ : std_logic;
SIGNAL \encoder_compP|counter[10]~38\ : std_logic;
SIGNAL \encoder_compP|counter[11]~39_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][11]~q\ : std_logic;
SIGNAL \encoder_compT|counter[10]~38\ : std_logic;
SIGNAL \encoder_compT|counter[11]~39_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~238_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~239_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~236_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~237_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~240_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~243_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~244_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~245_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~251_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~252_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~246_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~247_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][11]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][11]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][11]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~248_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~249_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~250_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~253_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~254_combout\ : std_logic;
SIGNAL \GPMC_DATA[12]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~265_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~266_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~272_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~273_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~269_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~270_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~267_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~268_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~271_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~274_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~255_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~256_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~262_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~263_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~257_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~258_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][12]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][12]~q\ : std_logic;
SIGNAL \encoder_compP|counter[11]~40\ : std_logic;
SIGNAL \encoder_compP|counter[12]~41_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][12]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][12]~q\ : std_logic;
SIGNAL \encoder_compT|counter[11]~40\ : std_logic;
SIGNAL \encoder_compT|counter[12]~41_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][12]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~259_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~260_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~261_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~264_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~275_combout\ : std_logic;
SIGNAL \GPMC_DATA[13]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~276_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~277_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~283_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~284_combout\ : std_logic;
SIGNAL \encoder_compP|counter[12]~42\ : std_logic;
SIGNAL \encoder_compP|counter[13]~43_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][13]~q\ : std_logic;
SIGNAL \encoder_compT|counter[12]~42\ : std_logic;
SIGNAL \encoder_compT|counter[13]~43_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~280_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~281_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~278_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~279_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~282_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~285_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~290_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~291_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~288_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~289_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~292_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~286_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~287_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][13]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][13]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][13]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~293_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~294_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~295_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~296_combout\ : std_logic;
SIGNAL \GPMC_DATA[14]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~307_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[30][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~308_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[24][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~311_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~312_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[21][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~309_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~310_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~313_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[23][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~314_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~315_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~316_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[14][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~304_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~305_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[11][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[9][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~297_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~298_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][14]~q\ : std_logic;
SIGNAL \encoder_compP|counter[13]~44\ : std_logic;
SIGNAL \encoder_compP|counter[14]~45_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][14]~q\ : std_logic;
SIGNAL \encoder_compT|counter[13]~44\ : std_logic;
SIGNAL \encoder_compT|counter[14]~45_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~301_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~302_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[7][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][14]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[6][14]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][14]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~299_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~300_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~303_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~306_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~317_combout\ : std_logic;
SIGNAL \GPMC_DATA[15]~input_o\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_in[15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[21][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[29][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[25][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[25][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[17][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~328_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~329_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[23][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[31][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[27][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[27][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[19][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~335_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~336_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[24][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[28][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[16][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[20][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[20][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~332_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~333_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[26][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[30][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[22][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[22][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[18][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~330_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~331_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~334_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~337_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[7][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[6][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[4][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[5][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[5][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~318_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~319_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[14][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[15][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[13][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[13][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[12][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~325_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~326_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[9][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[11][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[10][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[10][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[8][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~320_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~321_combout\ : std_logic;
SIGNAL \encoder_compP|counter[14]~46\ : std_logic;
SIGNAL \encoder_compP|counter[15]~47_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[1][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[3][15]~q\ : std_logic;
SIGNAL \encoder_compT|counter[14]~46\ : std_logic;
SIGNAL \encoder_compT|counter[15]~47_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[0][15]~q\ : std_logic;
SIGNAL \gpmc_driver|ram[2][15]~feeder_combout\ : std_logic;
SIGNAL \gpmc_driver|ram[2][15]~q\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~322_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~323_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~324_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~327_combout\ : std_logic;
SIGNAL \gpmc_driver|gpmc_data_out~338_combout\ : std_logic;
SIGNAL \FDIV_PWM_comp|cnt[0]~1_combout\ : std_logic;
SIGNAL \FDIV_PWM_comp|cnt[1]~0_combout\ : std_logic;
SIGNAL \FDIV_PWM_comp|iclk~0_combout\ : std_logic;
SIGNAL \FDIV_PWM_comp|iclk~feeder_combout\ : std_logic;
SIGNAL \FDIV_PWM_comp|iclk~q\ : std_logic;
SIGNAL \FDIV_PWM_comp|iclk~clkctrl_outclk\ : std_logic;
SIGNAL \gpmc_driver|out_reg2[8]~feeder_combout\ : std_logic;
SIGNAL \PWM_compT|INA~reg0feeder_combout\ : std_logic;
SIGNAL \PWM_compT|INA~reg0_q\ : std_logic;
SIGNAL \PWM_compT|INB~0_combout\ : std_logic;
SIGNAL \PWM_compT|INB~reg0_q\ : std_logic;
SIGNAL \PWM_compTP|counter[0]~21_combout\ : std_logic;
SIGNAL \PWM_compTP|counter[1]~7_combout\ : std_logic;
SIGNAL \PWM_compTP|counter[1]~8\ : std_logic;
SIGNAL \PWM_compTP|counter[2]~9_combout\ : std_logic;
SIGNAL \PWM_compTP|counter[2]~10\ : std_logic;
SIGNAL \PWM_compTP|counter[3]~11_combout\ : std_logic;
SIGNAL \PWM_compTP|counter[3]~12\ : std_logic;
SIGNAL \PWM_compTP|counter[4]~13_combout\ : std_logic;
SIGNAL \PWM_compTP|counter[4]~14\ : std_logic;
SIGNAL \PWM_compTP|counter[5]~15_combout\ : std_logic;
SIGNAL \PWM_compTP|counter[5]~16\ : std_logic;
SIGNAL \PWM_compTP|counter[6]~17_combout\ : std_logic;
SIGNAL \PWM_compTP|counter[6]~18\ : std_logic;
SIGNAL \PWM_compTP|counter[7]~19_combout\ : std_logic;
SIGNAL \PWM_compT|Equal0~1_combout\ : std_logic;
SIGNAL \PWM_compT|LessThan0~1_cout\ : std_logic;
SIGNAL \PWM_compT|LessThan0~3_cout\ : std_logic;
SIGNAL \PWM_compT|LessThan0~5_cout\ : std_logic;
SIGNAL \PWM_compT|LessThan0~7_cout\ : std_logic;
SIGNAL \PWM_compT|LessThan0~9_cout\ : std_logic;
SIGNAL \PWM_compT|LessThan0~11_cout\ : std_logic;
SIGNAL \PWM_compT|LessThan0~13_cout\ : std_logic;
SIGNAL \PWM_compT|LessThan0~14_combout\ : std_logic;
SIGNAL \PWM_compT|Equal0~0_combout\ : std_logic;
SIGNAL \PWM_compT|C~0_combout\ : std_logic;
SIGNAL \PWM_compT|C~q\ : std_logic;
SIGNAL \gpmc_driver|out_reg3[8]~feeder_combout\ : std_logic;
SIGNAL \PWM_compTP|INA~reg0feeder_combout\ : std_logic;
SIGNAL \PWM_compTP|INA~reg0_q\ : std_logic;
SIGNAL \PWM_compTP|INB~0_combout\ : std_logic;
SIGNAL \PWM_compTP|INB~reg0_q\ : std_logic;
SIGNAL \PWM_compTP|LessThan0~1_cout\ : std_logic;
SIGNAL \PWM_compTP|LessThan0~3_cout\ : std_logic;
SIGNAL \PWM_compTP|LessThan0~5_cout\ : std_logic;
SIGNAL \PWM_compTP|LessThan0~7_cout\ : std_logic;
SIGNAL \PWM_compTP|LessThan0~9_cout\ : std_logic;
SIGNAL \PWM_compTP|LessThan0~11_cout\ : std_logic;
SIGNAL \PWM_compTP|LessThan0~13_cout\ : std_logic;
SIGNAL \PWM_compTP|LessThan0~14_combout\ : std_logic;
SIGNAL \PWM_compTP|C~0_combout\ : std_logic;
SIGNAL \PWM_compTP|C~q\ : std_logic;
SIGNAL \gpmc_driver|out_reg3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpmc_driver|out_reg2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpmc_driver|gpmc_data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpmc_driver|gpmc_data_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpmc_driver|gpmc_addr_in\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \FDIV_PWM_comp|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \encoder_compT|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PWM_compTP|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \encoder_compP|counter\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_GPMC_ADDR <= GPMC_ADDR;
ww_GPMC_nPWE <= GPMC_nPWE;
ww_GPMC_nOE <= GPMC_nOE;
ww_GPMC_FPGA_IRQ <= GPMC_FPGA_IRQ;
ww_GPMC_nCS6 <= GPMC_nCS6;
ww_GPMC_CLK <= GPMC_CLK;
ww_ENC3A <= ENC3A;
ww_ENC3B <= ENC3B;
ww_ENC4A <= ENC4A;
ww_ENC4B <= ENC4B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\FDIV_PWM_comp|iclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FDIV_PWM_comp|iclk~q\);

-- Location: IOOBUF_X38_Y0_N30
\GPMC_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(0),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\GPMC_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(1),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\GPMC_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(2),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N30
\GPMC_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(3),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\GPMC_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(4),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[4]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\GPMC_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(5),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\GPMC_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(6),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[6]~output_o\);

-- Location: IOOBUF_X48_Y0_N30
\GPMC_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(7),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[7]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\GPMC_DATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(8),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\GPMC_DATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(9),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[9]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\GPMC_DATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(10),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[10]~output_o\);

-- Location: IOOBUF_X59_Y0_N30
\GPMC_DATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(11),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[11]~output_o\);

-- Location: IOOBUF_X61_Y0_N30
\GPMC_DATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(12),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[12]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\GPMC_DATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(13),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[13]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\GPMC_DATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(14),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[14]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\GPMC_DATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpmc_driver|gpmc_data_out\(15),
	oe => \gpmc_driver|GPMC_DATA~16_combout\,
	devoe => ww_devoe,
	o => \GPMC_DATA[15]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\PWM3A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_compT|INA~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \PWM3A~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\PWM3B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_compT|INB~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \PWM3B~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\PWM3C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_compT|C~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \PWM3C~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\PWM4A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_compTP|INA~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \PWM4A~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\PWM4B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_compTP|INB~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \PWM4B~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\PWM4C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PWM_compTP|C~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \PWM4C~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X67_Y10_N22
\GPMC_ADDR[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(10),
	o => \GPMC_ADDR[10]~input_o\);

-- Location: FF_X45_Y21_N13
\gpmc_driver|gpmc_addr_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(9));

-- Location: IOIBUF_X67_Y5_N15
\GPMC_ADDR[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(5),
	o => \GPMC_ADDR[5]~input_o\);

-- Location: LCCOMB_X45_Y19_N24
\gpmc_driver|gpmc_addr_in[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_addr_in[4]~feeder_combout\ = \GPMC_ADDR[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_ADDR[5]~input_o\,
	combout => \gpmc_driver|gpmc_addr_in[4]~feeder_combout\);

-- Location: FF_X45_Y19_N25
\gpmc_driver|gpmc_addr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_addr_in[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(4));

-- Location: IOIBUF_X67_Y5_N8
\GPMC_ADDR[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(6),
	o => \GPMC_ADDR[6]~input_o\);

-- Location: LCCOMB_X45_Y21_N30
\gpmc_driver|gpmc_addr_in[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_addr_in[5]~feeder_combout\ = \GPMC_ADDR[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_ADDR[6]~input_o\,
	combout => \gpmc_driver|gpmc_addr_in[5]~feeder_combout\);

-- Location: FF_X45_Y21_N31
\gpmc_driver|gpmc_addr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_addr_in[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(5));

-- Location: IOIBUF_X67_Y9_N8
\GPMC_ADDR[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(9),
	o => \GPMC_ADDR[9]~input_o\);

-- Location: LCCOMB_X45_Y21_N24
\gpmc_driver|gpmc_addr_in[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_addr_in[8]~feeder_combout\ = \GPMC_ADDR[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_ADDR[9]~input_o\,
	combout => \gpmc_driver|gpmc_addr_in[8]~feeder_combout\);

-- Location: FF_X45_Y21_N25
\gpmc_driver|gpmc_addr_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_addr_in[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(8));

-- Location: IOIBUF_X67_Y7_N22
\GPMC_ADDR[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(8),
	o => \GPMC_ADDR[8]~input_o\);

-- Location: FF_X45_Y21_N3
\gpmc_driver|gpmc_addr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(7));

-- Location: IOIBUF_X67_Y6_N15
\GPMC_ADDR[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(7),
	o => \GPMC_ADDR[7]~input_o\);

-- Location: LCCOMB_X45_Y21_N16
\gpmc_driver|gpmc_addr_in[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_addr_in[6]~feeder_combout\ = \GPMC_ADDR[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_ADDR[7]~input_o\,
	combout => \gpmc_driver|gpmc_addr_in[6]~feeder_combout\);

-- Location: FF_X45_Y21_N17
\gpmc_driver|gpmc_addr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_addr_in[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(6));

-- Location: LCCOMB_X45_Y21_N2
\gpmc_driver|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|LessThan0~0_combout\ = (\gpmc_driver|gpmc_addr_in\(5)) # ((\gpmc_driver|gpmc_addr_in\(8)) # ((\gpmc_driver|gpmc_addr_in\(7)) # (\gpmc_driver|gpmc_addr_in\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(5),
	datab => \gpmc_driver|gpmc_addr_in\(8),
	datac => \gpmc_driver|gpmc_addr_in\(7),
	datad => \gpmc_driver|gpmc_addr_in\(6),
	combout => \gpmc_driver|LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y23_N0
\gpmc_driver|gpmc_data_out~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~20_combout\ = (!\gpmc_driver|gpmc_addr_in\(9) & (!\gpmc_driver|gpmc_addr_in\(4) & !\gpmc_driver|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(9),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|LessThan0~0_combout\,
	combout => \gpmc_driver|gpmc_data_out~20_combout\);

-- Location: LCCOMB_X43_Y23_N30
\gpmc_driver|gpmc_data_out~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~21_combout\ = (!\gpmc_driver|gpmc_addr_in\(9) & (\gpmc_driver|gpmc_addr_in\(4) & !\gpmc_driver|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(9),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|LessThan0~0_combout\,
	combout => \gpmc_driver|gpmc_data_out~21_combout\);

-- Location: IOIBUF_X67_Y5_N22
\GPMC_ADDR[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(4),
	o => \GPMC_ADDR[4]~input_o\);

-- Location: LCCOMB_X45_Y18_N2
\gpmc_driver|gpmc_addr_in[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_addr_in[3]~feeder_combout\ = \GPMC_ADDR[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_ADDR[4]~input_o\,
	combout => \gpmc_driver|gpmc_addr_in[3]~feeder_combout\);

-- Location: FF_X45_Y18_N3
\gpmc_driver|gpmc_addr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_addr_in[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(3));

-- Location: IOIBUF_X67_Y3_N1
\GPMC_ADDR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(3),
	o => \GPMC_ADDR[3]~input_o\);

-- Location: FF_X45_Y21_N27
\gpmc_driver|gpmc_addr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(2));

-- Location: IOIBUF_X38_Y0_N29
\GPMC_DATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(0),
	o => \GPMC_DATA[0]~input_o\);

-- Location: FF_X41_Y18_N1
\gpmc_driver|gpmc_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(0));

-- Location: LCCOMB_X44_Y21_N0
\gpmc_driver|ram[23][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[23][0]~feeder_combout\);

-- Location: IOIBUF_X67_Y3_N15
\GPMC_ADDR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(2),
	o => \GPMC_ADDR[2]~input_o\);

-- Location: FF_X45_Y21_N5
\gpmc_driver|gpmc_addr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(1));

-- Location: IOIBUF_X67_Y3_N22
\GPMC_ADDR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_ADDR(1),
	o => \GPMC_ADDR[1]~input_o\);

-- Location: FF_X45_Y21_N11
\gpmc_driver|gpmc_addr_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_ADDR[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_addr_in\(0));

-- Location: IOIBUF_X67_Y17_N15
\GPMC_nPWE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_nPWE,
	o => \GPMC_nPWE~input_o\);

-- Location: FF_X45_Y21_N7
\gpmc_driver|gpmc_nwe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_nPWE~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_nwe~q\);

-- Location: IOIBUF_X67_Y19_N8
\GPMC_nCS6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_nCS6,
	o => \GPMC_nCS6~input_o\);

-- Location: FF_X45_Y21_N23
\gpmc_driver|gpmc_ncs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_nCS6~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_ncs~q\);

-- Location: LCCOMB_X45_Y21_N22
\gpmc_driver|Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~15_combout\ = (!\gpmc_driver|gpmc_addr_in\(9) & (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & !\gpmc_driver|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(9),
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|gpmc_ncs~q\,
	datad => \gpmc_driver|LessThan0~0_combout\,
	combout => \gpmc_driver|Decoder0~15_combout\);

-- Location: LCCOMB_X45_Y19_N12
\gpmc_driver|Decoder0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~30_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|Decoder0~15_combout\,
	combout => \gpmc_driver|Decoder0~30_combout\);

-- Location: LCCOMB_X45_Y19_N2
\gpmc_driver|Decoder0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~31_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~30_combout\,
	combout => \gpmc_driver|Decoder0~31_combout\);

-- Location: FF_X44_Y21_N1
\gpmc_driver|ram[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][0]~q\);

-- Location: LCCOMB_X45_Y21_N26
\gpmc_driver|Decoder0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~27_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_addr_in\(2) & \gpmc_driver|gpmc_addr_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_nwe~q\,
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|Decoder0~27_combout\);

-- Location: LCCOMB_X46_Y22_N12
\gpmc_driver|Decoder0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~28_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_addr_in\(9) & (!\gpmc_driver|LessThan0~0_combout\ & \gpmc_driver|Decoder0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_addr_in\(9),
	datac => \gpmc_driver|LessThan0~0_combout\,
	datad => \gpmc_driver|Decoder0~27_combout\,
	combout => \gpmc_driver|Decoder0~28_combout\);

-- Location: LCCOMB_X46_Y22_N18
\gpmc_driver|Decoder0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~32_combout\ = (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~28_combout\,
	combout => \gpmc_driver|Decoder0~32_combout\);

-- Location: FF_X44_Y19_N5
\gpmc_driver|ram[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][0]~q\);

-- Location: LCCOMB_X44_Y19_N4
\gpmc_driver|gpmc_data_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~7_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[23][0]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[19][0]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][0]~q\,
	datac => \gpmc_driver|ram[19][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~7_combout\);

-- Location: LCCOMB_X45_Y19_N4
\gpmc_driver|Decoder0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~33_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~30_combout\,
	combout => \gpmc_driver|Decoder0~33_combout\);

-- Location: FF_X44_Y19_N7
\gpmc_driver|ram[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][0]~q\);

-- Location: LCCOMB_X48_Y18_N0
\gpmc_driver|ram[27][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[27][0]~feeder_combout\);

-- Location: LCCOMB_X46_Y22_N4
\gpmc_driver|Decoder0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~29_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~28_combout\,
	combout => \gpmc_driver|Decoder0~29_combout\);

-- Location: FF_X48_Y18_N1
\gpmc_driver|ram[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][0]~q\);

-- Location: LCCOMB_X44_Y19_N6
\gpmc_driver|gpmc_data_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~8_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~7_combout\ & (\gpmc_driver|ram[31][0]~q\)) # (!\gpmc_driver|gpmc_data_out~7_combout\ & ((\gpmc_driver|ram[27][0]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~7_combout\,
	datac => \gpmc_driver|ram[31][0]~q\,
	datad => \gpmc_driver|ram[27][0]~q\,
	combout => \gpmc_driver|gpmc_data_out~8_combout\);

-- Location: LCCOMB_X44_Y18_N26
\gpmc_driver|ram[30][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[30][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[30][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y21_N12
\gpmc_driver|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~6_combout\ = (!\gpmc_driver|gpmc_addr_in\(9) & !\gpmc_driver|gpmc_nwe~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_addr_in\(9),
	datad => \gpmc_driver|gpmc_nwe~q\,
	combout => \gpmc_driver|Decoder0~6_combout\);

-- Location: LCCOMB_X43_Y21_N10
\gpmc_driver|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~7_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|LessThan0~0_combout\ & \gpmc_driver|Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_ncs~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|LessThan0~0_combout\,
	datad => \gpmc_driver|Decoder0~6_combout\,
	combout => \gpmc_driver|Decoder0~7_combout\);

-- Location: LCCOMB_X44_Y21_N20
\gpmc_driver|Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~10_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & \gpmc_driver|gpmc_addr_in\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~10_combout\);

-- Location: LCCOMB_X43_Y21_N26
\gpmc_driver|Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~14_combout\ = (\gpmc_driver|Decoder0~7_combout\ & (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|Decoder0~10_combout\ & \gpmc_driver|gpmc_addr_in\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~7_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|Decoder0~10_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(4),
	combout => \gpmc_driver|Decoder0~14_combout\);

-- Location: FF_X44_Y18_N27
\gpmc_driver|ram[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[30][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][0]~q\);

-- Location: LCCOMB_X43_Y21_N20
\gpmc_driver|Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~8_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~7_combout\,
	combout => \gpmc_driver|Decoder0~8_combout\);

-- Location: LCCOMB_X43_Y21_N4
\gpmc_driver|Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~9_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~8_combout\,
	combout => \gpmc_driver|Decoder0~9_combout\);

-- Location: FF_X43_Y21_N25
\gpmc_driver|ram[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][0]~q\);

-- Location: LCCOMB_X43_Y18_N4
\gpmc_driver|ram[26][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[26][0]~feeder_combout\);

-- Location: LCCOMB_X43_Y21_N30
\gpmc_driver|Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~11_combout\ = (\gpmc_driver|Decoder0~7_combout\ & (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|Decoder0~10_combout\ & \gpmc_driver|gpmc_addr_in\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|Decoder0~7_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|Decoder0~10_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(4),
	combout => \gpmc_driver|Decoder0~11_combout\);

-- Location: FF_X43_Y18_N5
\gpmc_driver|ram[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][0]~q\);

-- Location: LCCOMB_X43_Y21_N28
\gpmc_driver|Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~12_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~7_combout\,
	combout => \gpmc_driver|Decoder0~12_combout\);

-- Location: LCCOMB_X43_Y21_N8
\gpmc_driver|Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~13_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~12_combout\,
	combout => \gpmc_driver|Decoder0~13_combout\);

-- Location: FF_X44_Y18_N5
\gpmc_driver|ram[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][0]~q\);

-- Location: LCCOMB_X44_Y18_N4
\gpmc_driver|gpmc_data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~0_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[26][0]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[18][0]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][0]~q\,
	datac => \gpmc_driver|ram[18][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~0_combout\);

-- Location: LCCOMB_X43_Y21_N24
\gpmc_driver|gpmc_data_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~1_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~0_combout\ & (\gpmc_driver|ram[30][0]~q\)) # (!\gpmc_driver|gpmc_data_out~0_combout\ & ((\gpmc_driver|ram[22][0]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[30][0]~q\,
	datac => \gpmc_driver|ram[22][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~0_combout\,
	combout => \gpmc_driver|gpmc_data_out~1_combout\);

-- Location: LCCOMB_X43_Y20_N28
\gpmc_driver|ram[20][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[20][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y21_N14
\gpmc_driver|Decoder0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~18_combout\ = (!\gpmc_driver|gpmc_addr_in\(9) & (\gpmc_driver|gpmc_addr_in\(2) & !\gpmc_driver|gpmc_addr_in\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(9),
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|Decoder0~18_combout\);

-- Location: LCCOMB_X45_Y22_N6
\gpmc_driver|Decoder0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~19_combout\ = (!\gpmc_driver|gpmc_nwe~q\ & (!\gpmc_driver|gpmc_ncs~q\ & (\gpmc_driver|Decoder0~18_combout\ & !\gpmc_driver|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_nwe~q\,
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|Decoder0~18_combout\,
	datad => \gpmc_driver|LessThan0~0_combout\,
	combout => \gpmc_driver|Decoder0~19_combout\);

-- Location: LCCOMB_X45_Y22_N4
\gpmc_driver|Decoder0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~24_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~19_combout\,
	combout => \gpmc_driver|Decoder0~24_combout\);

-- Location: FF_X43_Y20_N29
\gpmc_driver|ram[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][0]~q\);

-- Location: LCCOMB_X45_Y22_N12
\gpmc_driver|Decoder0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~50_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~19_combout\,
	combout => \gpmc_driver|Decoder0~50_combout\);

-- Location: FF_X46_Y20_N15
\gpmc_driver|ram[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][0]~q\);

-- Location: LCCOMB_X45_Y20_N24
\gpmc_driver|ram[24][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[24][0]~feeder_combout\);

-- Location: LCCOMB_X44_Y21_N30
\gpmc_driver|Decoder0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~21_combout\ = (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~15_combout\,
	combout => \gpmc_driver|Decoder0~21_combout\);

-- Location: LCCOMB_X45_Y20_N22
\gpmc_driver|Decoder0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~49_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(0) & \gpmc_driver|Decoder0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|Decoder0~21_combout\,
	combout => \gpmc_driver|Decoder0~49_combout\);

-- Location: FF_X45_Y20_N25
\gpmc_driver|ram[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][0]~q\);

-- Location: LCCOMB_X45_Y19_N18
\gpmc_driver|Decoder0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~25_combout\ = (\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(1) & !\gpmc_driver|gpmc_addr_in\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~25_combout\);

-- Location: LCCOMB_X46_Y20_N4
\gpmc_driver|Decoder0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~26_combout\ = (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|Decoder0~15_combout\ & \gpmc_driver|Decoder0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|Decoder0~15_combout\,
	datad => \gpmc_driver|Decoder0~25_combout\,
	combout => \gpmc_driver|Decoder0~26_combout\);

-- Location: FF_X46_Y20_N13
\gpmc_driver|ram[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][0]~q\);

-- Location: LCCOMB_X46_Y20_N12
\gpmc_driver|gpmc_data_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~4_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][0]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][0]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~4_combout\);

-- Location: LCCOMB_X46_Y20_N14
\gpmc_driver|gpmc_data_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~5_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~4_combout\ & ((\gpmc_driver|ram[28][0]~q\))) # (!\gpmc_driver|gpmc_data_out~4_combout\ & (\gpmc_driver|ram[20][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[20][0]~q\,
	datac => \gpmc_driver|ram[28][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~4_combout\,
	combout => \gpmc_driver|gpmc_data_out~5_combout\);

-- Location: LCCOMB_X48_Y23_N24
\gpmc_driver|ram[25][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[25][0]~feeder_combout\);

-- Location: LCCOMB_X44_Y21_N26
\gpmc_driver|Decoder0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~16_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|gpmc_addr_in\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|Decoder0~16_combout\);

-- Location: LCCOMB_X44_Y21_N24
\gpmc_driver|Decoder0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~17_combout\ = (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|Decoder0~16_combout\ & \gpmc_driver|Decoder0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|Decoder0~16_combout\,
	datad => \gpmc_driver|Decoder0~15_combout\,
	combout => \gpmc_driver|Decoder0~17_combout\);

-- Location: FF_X48_Y23_N25
\gpmc_driver|ram[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][0]~q\);

-- Location: LCCOMB_X45_Y22_N30
\gpmc_driver|Decoder0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~23_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~19_combout\,
	combout => \gpmc_driver|Decoder0~23_combout\);

-- Location: FF_X48_Y22_N11
\gpmc_driver|ram[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][0]~q\);

-- Location: LCCOMB_X49_Y22_N4
\gpmc_driver|ram[21][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[21][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y22_N24
\gpmc_driver|Decoder0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~20_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~19_combout\,
	combout => \gpmc_driver|Decoder0~20_combout\);

-- Location: FF_X49_Y22_N5
\gpmc_driver|ram[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][0]~q\);

-- Location: LCCOMB_X48_Y21_N6
\gpmc_driver|Decoder0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~22_combout\ = (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(0) & \gpmc_driver|Decoder0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|Decoder0~21_combout\,
	combout => \gpmc_driver|Decoder0~22_combout\);

-- Location: FF_X48_Y22_N1
\gpmc_driver|ram[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][0]~q\);

-- Location: LCCOMB_X48_Y22_N0
\gpmc_driver|gpmc_data_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~2_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][0]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][0]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][0]~q\,
	datac => \gpmc_driver|ram[17][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~2_combout\);

-- Location: LCCOMB_X48_Y22_N10
\gpmc_driver|gpmc_data_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~3_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~2_combout\ & ((\gpmc_driver|ram[29][0]~q\))) # (!\gpmc_driver|gpmc_data_out~2_combout\ & (\gpmc_driver|ram[25][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][0]~q\,
	datac => \gpmc_driver|ram[29][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~2_combout\,
	combout => \gpmc_driver|gpmc_data_out~3_combout\);

-- Location: LCCOMB_X46_Y22_N0
\gpmc_driver|gpmc_data_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~6_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_data_out~3_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|gpmc_data_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~5_combout\,
	datad => \gpmc_driver|gpmc_data_out~3_combout\,
	combout => \gpmc_driver|gpmc_data_out~6_combout\);

-- Location: LCCOMB_X46_Y22_N30
\gpmc_driver|gpmc_data_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~9_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~6_combout\ & (\gpmc_driver|gpmc_data_out~8_combout\)) # (!\gpmc_driver|gpmc_data_out~6_combout\ & ((\gpmc_driver|gpmc_data_out~1_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~8_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~1_combout\,
	datad => \gpmc_driver|gpmc_data_out~6_combout\,
	combout => \gpmc_driver|gpmc_data_out~9_combout\);

-- Location: LCCOMB_X42_Y18_N18
\gpmc_driver|ram[11][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[11][0]~feeder_combout\);

-- Location: LCCOMB_X46_Y22_N8
\gpmc_driver|Decoder0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~39_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~28_combout\,
	combout => \gpmc_driver|Decoder0~39_combout\);

-- Location: FF_X42_Y18_N19
\gpmc_driver|ram[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][0]~q\);

-- Location: LCCOMB_X44_Y21_N12
\gpmc_driver|Decoder0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~34_combout\ = (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|Decoder0~10_combout\ & (!\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|Decoder0~10_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~7_combout\,
	combout => \gpmc_driver|Decoder0~34_combout\);

-- Location: FF_X41_Y22_N21
\gpmc_driver|ram[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][0]~q\);

-- Location: LCCOMB_X44_Y21_N22
\gpmc_driver|Decoder0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~37_combout\ = (!\gpmc_driver|gpmc_addr_in\(2) & !\gpmc_driver|gpmc_addr_in\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	combout => \gpmc_driver|Decoder0~37_combout\);

-- Location: LCCOMB_X44_Y21_N16
\gpmc_driver|Decoder0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~38_combout\ = (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|Decoder0~15_combout\ & (\gpmc_driver|Decoder0~37_combout\ & \gpmc_driver|Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|Decoder0~15_combout\,
	datac => \gpmc_driver|Decoder0~37_combout\,
	datad => \gpmc_driver|Decoder0~10_combout\,
	combout => \gpmc_driver|Decoder0~38_combout\);

-- Location: FF_X41_Y22_N11
\gpmc_driver|ram[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][0]~q\);

-- Location: LCCOMB_X42_Y18_N20
\gpmc_driver|ram[9][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[9][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y21_N6
\gpmc_driver|Decoder0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~35_combout\ = (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(1) & \gpmc_driver|Decoder0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|Decoder0~15_combout\,
	combout => \gpmc_driver|Decoder0~35_combout\);

-- Location: LCCOMB_X45_Y21_N10
\gpmc_driver|Decoder0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~36_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(0) & \gpmc_driver|Decoder0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|Decoder0~35_combout\,
	combout => \gpmc_driver|Decoder0~36_combout\);

-- Location: FF_X42_Y18_N21
\gpmc_driver|ram[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][0]~q\);

-- Location: LCCOMB_X41_Y22_N10
\gpmc_driver|gpmc_data_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~10_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][0]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][0]~q\,
	datad => \gpmc_driver|ram[9][0]~q\,
	combout => \gpmc_driver|gpmc_data_out~10_combout\);

-- Location: LCCOMB_X41_Y22_N20
\gpmc_driver|gpmc_data_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~11_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~10_combout\ & (\gpmc_driver|ram[11][0]~q\)) # (!\gpmc_driver|gpmc_data_out~10_combout\ & ((\gpmc_driver|ram[10][0]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[11][0]~q\,
	datac => \gpmc_driver|ram[10][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~10_combout\,
	combout => \gpmc_driver|gpmc_data_out~11_combout\);

-- Location: LCCOMB_X46_Y23_N20
\gpmc_driver|ram[13][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[13][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y22_N26
\gpmc_driver|Decoder0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~46_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~19_combout\,
	combout => \gpmc_driver|Decoder0~46_combout\);

-- Location: FF_X46_Y23_N21
\gpmc_driver|ram[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][0]~q\);

-- Location: LCCOMB_X45_Y19_N10
\gpmc_driver|Decoder0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~48_combout\ = (!\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~30_combout\,
	combout => \gpmc_driver|Decoder0~48_combout\);

-- Location: FF_X43_Y19_N5
\gpmc_driver|ram[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][0]~q\);

-- Location: LCCOMB_X45_Y22_N14
\gpmc_driver|Decoder0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~51_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(4) & (\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~19_combout\,
	combout => \gpmc_driver|Decoder0~51_combout\);

-- Location: FF_X46_Y19_N11
\gpmc_driver|ram[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][0]~q\);

-- Location: LCCOMB_X45_Y23_N16
\gpmc_driver|ram[14][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[14][0]~feeder_combout\);

-- Location: LCCOMB_X44_Y21_N18
\gpmc_driver|Decoder0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~47_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|Decoder0~10_combout\ & (!\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|Decoder0~10_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~7_combout\,
	combout => \gpmc_driver|Decoder0~47_combout\);

-- Location: FF_X45_Y23_N17
\gpmc_driver|ram[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][0]~q\);

-- Location: LCCOMB_X46_Y19_N10
\gpmc_driver|gpmc_data_out~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~17_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[14][0]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][0]~q\,
	datad => \gpmc_driver|ram[14][0]~q\,
	combout => \gpmc_driver|gpmc_data_out~17_combout\);

-- Location: LCCOMB_X43_Y19_N4
\gpmc_driver|gpmc_data_out~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~18_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~17_combout\ & ((\gpmc_driver|ram[15][0]~q\))) # (!\gpmc_driver|gpmc_data_out~17_combout\ & (\gpmc_driver|ram[13][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~17_combout\,
	combout => \gpmc_driver|gpmc_data_out~18_combout\);

-- Location: LCCOMB_X46_Y22_N26
\gpmc_driver|Decoder0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~45_combout\ = (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~28_combout\,
	combout => \gpmc_driver|Decoder0~45_combout\);

-- Location: FF_X46_Y22_N5
\gpmc_driver|ram[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][0]~q\);

-- Location: LCCOMB_X42_Y20_N12
\gpmc_driver|ram[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[2][0]~feeder_combout\);

-- Location: LCCOMB_X42_Y20_N0
\gpmc_driver|Decoder0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~44_combout\ = (!\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~12_combout\,
	combout => \gpmc_driver|Decoder0~44_combout\);

-- Location: FF_X42_Y20_N13
\gpmc_driver|ram[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][0]~q\);

-- Location: LCCOMB_X48_Y24_N0
\encoder_compP|counter[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[0]~16_combout\ = \encoder_compP|counter\(0) $ (VCC)
-- \encoder_compP|counter[0]~17\ = CARRY(\encoder_compP|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder_compP|counter\(0),
	datad => VCC,
	combout => \encoder_compP|counter[0]~16_combout\,
	cout => \encoder_compP|counter[0]~17\);

-- Location: IOIBUF_X67_Y35_N1
\ENC4A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC4A,
	o => \ENC4A~input_o\);

-- Location: FF_X49_Y24_N19
\encoder_compP|old_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ENC4A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|old_a~q\);

-- Location: LCCOMB_X49_Y24_N18
\encoder_compP|counter[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[0]~18_combout\ = (\ENC4A~input_o\ & !\encoder_compP|old_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENC4A~input_o\,
	datac => \encoder_compP|old_a~q\,
	combout => \encoder_compP|counter[0]~18_combout\);

-- Location: FF_X48_Y24_N1
\encoder_compP|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[0]~16_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(0));

-- Location: LCCOMB_X49_Y24_N20
\gpmc_driver|ram[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][0]~feeder_combout\ = \encoder_compP|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(0),
	combout => \gpmc_driver|ram[1][0]~feeder_combout\);

-- Location: FF_X49_Y24_N21
\gpmc_driver|ram[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][0]~q\);

-- Location: LCCOMB_X43_Y24_N0
\encoder_compT|counter[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[0]~16_combout\ = \encoder_compT|counter\(0) $ (VCC)
-- \encoder_compT|counter[0]~17\ = CARRY(\encoder_compT|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encoder_compT|counter\(0),
	datad => VCC,
	combout => \encoder_compT|counter[0]~16_combout\,
	cout => \encoder_compT|counter[0]~17\);

-- Location: IOIBUF_X67_Y31_N22
\ENC3A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC3A,
	o => \ENC3A~input_o\);

-- Location: FF_X43_Y25_N13
\encoder_compT|old_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ENC3A~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|old_a~q\);

-- Location: LCCOMB_X43_Y25_N12
\encoder_compT|counter[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[0]~18_combout\ = (\ENC3A~input_o\ & !\encoder_compT|old_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENC3A~input_o\,
	datac => \encoder_compT|old_a~q\,
	combout => \encoder_compT|counter[0]~18_combout\);

-- Location: FF_X43_Y24_N1
\encoder_compT|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[0]~16_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(0));

-- Location: FF_X49_Y24_N3
\gpmc_driver|ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][0]~q\);

-- Location: LCCOMB_X49_Y24_N2
\gpmc_driver|gpmc_data_out~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~14_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[1][0]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[1][0]~q\,
	datac => \gpmc_driver|ram[0][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~14_combout\);

-- Location: LCCOMB_X49_Y24_N12
\gpmc_driver|gpmc_data_out~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~15_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~14_combout\ & (\gpmc_driver|ram[3][0]~q\)) # (!\gpmc_driver|gpmc_data_out~14_combout\ & ((\gpmc_driver|ram[2][0]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[3][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[2][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~14_combout\,
	combout => \gpmc_driver|gpmc_data_out~15_combout\);

-- Location: LCCOMB_X42_Y23_N12
\gpmc_driver|ram[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[5][0]~feeder_combout\);

-- Location: LCCOMB_X45_Y22_N22
\gpmc_driver|Decoder0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~40_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~19_combout\,
	combout => \gpmc_driver|Decoder0~40_combout\);

-- Location: FF_X42_Y23_N13
\gpmc_driver|ram[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][0]~q\);

-- Location: LCCOMB_X45_Y19_N26
\gpmc_driver|Decoder0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~43_combout\ = (!\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(4),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~30_combout\,
	combout => \gpmc_driver|Decoder0~43_combout\);

-- Location: FF_X42_Y23_N7
\gpmc_driver|ram[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][0]~q\);

-- Location: LCCOMB_X41_Y20_N0
\gpmc_driver|ram[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][0]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(0),
	combout => \gpmc_driver|ram[6][0]~feeder_combout\);

-- Location: LCCOMB_X43_Y21_N22
\gpmc_driver|Decoder0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~41_combout\ = (!\gpmc_driver|gpmc_addr_in\(4) & \gpmc_driver|Decoder0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datad => \gpmc_driver|Decoder0~8_combout\,
	combout => \gpmc_driver|Decoder0~41_combout\);

-- Location: FF_X41_Y20_N1
\gpmc_driver|ram[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][0]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][0]~q\);

-- Location: LCCOMB_X45_Y22_N8
\gpmc_driver|Decoder0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|Decoder0~42_combout\ = (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(4) & (!\gpmc_driver|gpmc_addr_in\(3) & \gpmc_driver|Decoder0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(4),
	datac => \gpmc_driver|gpmc_addr_in\(3),
	datad => \gpmc_driver|Decoder0~19_combout\,
	combout => \gpmc_driver|Decoder0~42_combout\);

-- Location: FF_X41_Y21_N21
\gpmc_driver|ram[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(0),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][0]~q\);

-- Location: LCCOMB_X41_Y21_N20
\gpmc_driver|gpmc_data_out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~12_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][0]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[6][0]~q\,
	datac => \gpmc_driver|ram[4][0]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~12_combout\);

-- Location: LCCOMB_X42_Y23_N6
\gpmc_driver|gpmc_data_out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~13_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~12_combout\ & ((\gpmc_driver|ram[7][0]~q\))) # (!\gpmc_driver|gpmc_data_out~12_combout\ & (\gpmc_driver|ram[5][0]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][0]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][0]~q\,
	datad => \gpmc_driver|gpmc_data_out~12_combout\,
	combout => \gpmc_driver|gpmc_data_out~13_combout\);

-- Location: LCCOMB_X46_Y22_N10
\gpmc_driver|gpmc_data_out~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~16_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~13_combout\))) # (!\gpmc_driver|gpmc_addr_in\(2) 
-- & (\gpmc_driver|gpmc_data_out~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~15_combout\,
	datad => \gpmc_driver|gpmc_data_out~13_combout\,
	combout => \gpmc_driver|gpmc_data_out~16_combout\);

-- Location: LCCOMB_X46_Y22_N24
\gpmc_driver|gpmc_data_out~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~19_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~16_combout\ & ((\gpmc_driver|gpmc_data_out~18_combout\))) # (!\gpmc_driver|gpmc_data_out~16_combout\ & (\gpmc_driver|gpmc_data_out~11_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~11_combout\,
	datac => \gpmc_driver|gpmc_data_out~18_combout\,
	datad => \gpmc_driver|gpmc_data_out~16_combout\,
	combout => \gpmc_driver|gpmc_data_out~19_combout\);

-- Location: LCCOMB_X46_Y22_N20
\gpmc_driver|gpmc_data_out~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~22_combout\ = (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~19_combout\) # ((\gpmc_driver|gpmc_data_out~21_combout\ & \gpmc_driver|gpmc_data_out~9_combout\)))) # (!\gpmc_driver|gpmc_data_out~20_combout\ 
-- & (\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~20_combout\,
	datab => \gpmc_driver|gpmc_data_out~21_combout\,
	datac => \gpmc_driver|gpmc_data_out~9_combout\,
	datad => \gpmc_driver|gpmc_data_out~19_combout\,
	combout => \gpmc_driver|gpmc_data_out~22_combout\);

-- Location: IOIBUF_X67_Y14_N22
\GPMC_nOE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_nOE,
	o => \GPMC_nOE~input_o\);

-- Location: FF_X45_Y21_N21
\gpmc_driver|gpmc_nre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_nOE~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_nre~q\);

-- Location: LCCOMB_X45_Y21_N20
\gpmc_driver|gpmc_data_out[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out[0]~23_combout\ = (!\gpmc_driver|gpmc_ncs~q\ & (!\gpmc_driver|gpmc_nre~q\ & \gpmc_driver|gpmc_nwe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|gpmc_ncs~q\,
	datac => \gpmc_driver|gpmc_nre~q\,
	datad => \gpmc_driver|gpmc_nwe~q\,
	combout => \gpmc_driver|gpmc_data_out[0]~23_combout\);

-- Location: FF_X46_Y22_N21
\gpmc_driver|gpmc_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~22_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(0));

-- Location: LCCOMB_X43_Y1_N24
\gpmc_driver|GPMC_DATA~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|GPMC_DATA~16_combout\ = (!\GPMC_nOE~input_o\ & !\GPMC_nCS6~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPMC_nOE~input_o\,
	datad => \GPMC_nCS6~input_o\,
	combout => \gpmc_driver|GPMC_DATA~16_combout\);

-- Location: IOIBUF_X38_Y0_N22
\GPMC_DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(1),
	o => \GPMC_DATA[1]~input_o\);

-- Location: LCCOMB_X41_Y20_N10
\gpmc_driver|gpmc_data_in[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[1]~feeder_combout\ = \GPMC_DATA[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[1]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[1]~feeder_combout\);

-- Location: FF_X41_Y20_N11
\gpmc_driver|gpmc_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(1));

-- Location: FF_X45_Y19_N3
\gpmc_driver|ram[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][1]~q\);

-- Location: FF_X44_Y19_N23
\gpmc_driver|ram[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][1]~q\);

-- Location: FF_X44_Y19_N25
\gpmc_driver|ram[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][1]~q\);

-- Location: LCCOMB_X48_Y18_N30
\gpmc_driver|ram[27][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[27][1]~feeder_combout\);

-- Location: FF_X48_Y18_N31
\gpmc_driver|ram[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][1]~q\);

-- Location: LCCOMB_X44_Y19_N24
\gpmc_driver|gpmc_data_out~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~41_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][1]~q\))) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- (\gpmc_driver|ram[19][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[19][1]~q\,
	datad => \gpmc_driver|ram[27][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~41_combout\);

-- Location: LCCOMB_X44_Y19_N22
\gpmc_driver|gpmc_data_out~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~42_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~41_combout\ & ((\gpmc_driver|ram[31][1]~q\))) # (!\gpmc_driver|gpmc_data_out~41_combout\ & (\gpmc_driver|ram[23][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][1]~q\,
	datac => \gpmc_driver|ram[31][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~41_combout\,
	combout => \gpmc_driver|gpmc_data_out~42_combout\);

-- Location: LCCOMB_X49_Y22_N6
\gpmc_driver|ram[21][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[21][1]~feeder_combout\);

-- Location: FF_X49_Y22_N7
\gpmc_driver|ram[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][1]~q\);

-- Location: LCCOMB_X49_Y22_N12
\gpmc_driver|ram[25][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[25][1]~feeder_combout\);

-- Location: FF_X49_Y22_N13
\gpmc_driver|ram[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][1]~q\);

-- Location: FF_X48_Y22_N9
\gpmc_driver|ram[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][1]~q\);

-- Location: LCCOMB_X48_Y22_N8
\gpmc_driver|gpmc_data_out~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~34_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][1]~q\,
	datac => \gpmc_driver|ram[17][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~34_combout\);

-- Location: FF_X48_Y22_N7
\gpmc_driver|ram[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][1]~q\);

-- Location: LCCOMB_X48_Y22_N6
\gpmc_driver|gpmc_data_out~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~35_combout\ = (\gpmc_driver|gpmc_data_out~34_combout\ & (((\gpmc_driver|ram[29][1]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~34_combout\ & (\gpmc_driver|ram[21][1]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][1]~q\,
	datab => \gpmc_driver|gpmc_data_out~34_combout\,
	datac => \gpmc_driver|ram[29][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~35_combout\);

-- Location: FF_X45_Y20_N23
\gpmc_driver|ram[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][1]~q\);

-- Location: FF_X44_Y20_N27
\gpmc_driver|ram[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][1]~q\);

-- Location: LCCOMB_X43_Y20_N14
\gpmc_driver|ram[20][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[20][1]~feeder_combout\);

-- Location: FF_X43_Y20_N15
\gpmc_driver|ram[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][1]~q\);

-- Location: FF_X44_Y20_N1
\gpmc_driver|ram[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][1]~q\);

-- Location: LCCOMB_X44_Y20_N0
\gpmc_driver|gpmc_data_out~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~38_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][1]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[16][1]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[20][1]~q\,
	datac => \gpmc_driver|ram[16][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~38_combout\);

-- Location: LCCOMB_X44_Y20_N26
\gpmc_driver|gpmc_data_out~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~39_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~38_combout\ & ((\gpmc_driver|ram[28][1]~q\))) # (!\gpmc_driver|gpmc_data_out~38_combout\ & (\gpmc_driver|ram[24][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][1]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~38_combout\,
	combout => \gpmc_driver|gpmc_data_out~39_combout\);

-- Location: LCCOMB_X43_Y18_N6
\gpmc_driver|ram[26][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[26][1]~feeder_combout\);

-- Location: FF_X43_Y18_N7
\gpmc_driver|ram[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][1]~q\);

-- Location: FF_X44_Y18_N23
\gpmc_driver|ram[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][1]~q\);

-- Location: FF_X44_Y18_N17
\gpmc_driver|ram[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][1]~q\);

-- Location: LCCOMB_X43_Y21_N18
\gpmc_driver|ram[22][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[22][1]~feeder_combout\);

-- Location: FF_X43_Y21_N19
\gpmc_driver|ram[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][1]~q\);

-- Location: LCCOMB_X44_Y18_N16
\gpmc_driver|gpmc_data_out~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~36_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][1]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[18][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][1]~q\,
	datad => \gpmc_driver|ram[22][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~36_combout\);

-- Location: LCCOMB_X44_Y18_N22
\gpmc_driver|gpmc_data_out~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~37_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~36_combout\ & ((\gpmc_driver|ram[30][1]~q\))) # (!\gpmc_driver|gpmc_data_out~36_combout\ & (\gpmc_driver|ram[26][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][1]~q\,
	datac => \gpmc_driver|ram[30][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~36_combout\,
	combout => \gpmc_driver|gpmc_data_out~37_combout\);

-- Location: LCCOMB_X44_Y20_N8
\gpmc_driver|gpmc_data_out~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~40_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~37_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|gpmc_data_out~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~39_combout\,
	datad => \gpmc_driver|gpmc_data_out~37_combout\,
	combout => \gpmc_driver|gpmc_data_out~40_combout\);

-- Location: LCCOMB_X43_Y23_N8
\gpmc_driver|gpmc_data_out~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~43_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~40_combout\ & (\gpmc_driver|gpmc_data_out~42_combout\)) # (!\gpmc_driver|gpmc_data_out~40_combout\ & ((\gpmc_driver|gpmc_data_out~35_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~42_combout\,
	datac => \gpmc_driver|gpmc_data_out~35_combout\,
	datad => \gpmc_driver|gpmc_data_out~40_combout\,
	combout => \gpmc_driver|gpmc_data_out~43_combout\);

-- Location: LCCOMB_X41_Y19_N30
\gpmc_driver|ram[7][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[7][1]~feeder_combout\);

-- Location: FF_X41_Y19_N31
\gpmc_driver|ram[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][1]~q\);

-- Location: FF_X41_Y21_N31
\gpmc_driver|ram[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][1]~q\);

-- Location: LCCOMB_X41_Y19_N28
\gpmc_driver|ram[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[5][1]~feeder_combout\);

-- Location: FF_X41_Y19_N29
\gpmc_driver|ram[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][1]~q\);

-- Location: LCCOMB_X41_Y21_N30
\gpmc_driver|gpmc_data_out~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~24_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][1]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][1]~q\,
	datad => \gpmc_driver|ram[5][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~24_combout\);

-- Location: LCCOMB_X42_Y21_N12
\gpmc_driver|ram[6][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[6][1]~feeder_combout\);

-- Location: FF_X42_Y21_N13
\gpmc_driver|ram[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][1]~q\);

-- Location: LCCOMB_X41_Y21_N8
\gpmc_driver|gpmc_data_out~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~25_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~24_combout\ & (\gpmc_driver|ram[7][1]~q\)) # (!\gpmc_driver|gpmc_data_out~24_combout\ & ((\gpmc_driver|ram[6][1]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[7][1]~q\,
	datac => \gpmc_driver|gpmc_data_out~24_combout\,
	datad => \gpmc_driver|ram[6][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~25_combout\);

-- Location: LCCOMB_X43_Y19_N10
\gpmc_driver|ram[14][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[14][1]~feeder_combout\);

-- Location: FF_X43_Y19_N11
\gpmc_driver|ram[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][1]~q\);

-- Location: FF_X43_Y19_N1
\gpmc_driver|ram[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][1]~q\);

-- Location: LCCOMB_X48_Y19_N0
\gpmc_driver|ram[13][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[13][1]~feeder_combout\);

-- Location: FF_X48_Y19_N1
\gpmc_driver|ram[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][1]~q\);

-- Location: FF_X46_Y19_N29
\gpmc_driver|ram[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][1]~q\);

-- Location: LCCOMB_X46_Y19_N28
\gpmc_driver|gpmc_data_out~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~31_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][1]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][1]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][1]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~31_combout\);

-- Location: LCCOMB_X43_Y19_N0
\gpmc_driver|gpmc_data_out~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~32_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~31_combout\ & ((\gpmc_driver|ram[15][1]~q\))) # (!\gpmc_driver|gpmc_data_out~31_combout\ & (\gpmc_driver|ram[14][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][1]~q\,
	datac => \gpmc_driver|ram[15][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~31_combout\,
	combout => \gpmc_driver|gpmc_data_out~32_combout\);

-- Location: LCCOMB_X44_Y23_N0
\gpmc_driver|ram[3][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[3][1]~feeder_combout\);

-- Location: FF_X44_Y23_N1
\gpmc_driver|ram[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][1]~q\);

-- Location: IOIBUF_X67_Y40_N22
\ENC4B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC4B,
	o => \ENC4B~input_o\);

-- Location: LCCOMB_X48_Y24_N2
\encoder_compP|counter[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[1]~19_combout\ = (\encoder_compP|counter\(1) & ((\ENC4B~input_o\ & (\encoder_compP|counter[0]~17\ & VCC)) # (!\ENC4B~input_o\ & (!\encoder_compP|counter[0]~17\)))) # (!\encoder_compP|counter\(1) & ((\ENC4B~input_o\ & 
-- (!\encoder_compP|counter[0]~17\)) # (!\ENC4B~input_o\ & ((\encoder_compP|counter[0]~17\) # (GND)))))
-- \encoder_compP|counter[1]~20\ = CARRY((\encoder_compP|counter\(1) & (!\ENC4B~input_o\ & !\encoder_compP|counter[0]~17\)) # (!\encoder_compP|counter\(1) & ((!\encoder_compP|counter[0]~17\) # (!\ENC4B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compP|counter\(1),
	datab => \ENC4B~input_o\,
	datad => VCC,
	cin => \encoder_compP|counter[0]~17\,
	combout => \encoder_compP|counter[1]~19_combout\,
	cout => \encoder_compP|counter[1]~20\);

-- Location: FF_X48_Y24_N3
\encoder_compP|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[1]~19_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(1));

-- Location: FF_X44_Y23_N5
\gpmc_driver|ram[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compP|counter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][1]~q\);

-- Location: IOIBUF_X67_Y34_N8
\ENC3B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENC3B,
	o => \ENC3B~input_o\);

-- Location: LCCOMB_X43_Y24_N2
\encoder_compT|counter[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[1]~19_combout\ = (\ENC3B~input_o\ & ((\encoder_compT|counter\(1) & (\encoder_compT|counter[0]~17\ & VCC)) # (!\encoder_compT|counter\(1) & (!\encoder_compT|counter[0]~17\)))) # (!\ENC3B~input_o\ & ((\encoder_compT|counter\(1) & 
-- (!\encoder_compT|counter[0]~17\)) # (!\encoder_compT|counter\(1) & ((\encoder_compT|counter[0]~17\) # (GND)))))
-- \encoder_compT|counter[1]~20\ = CARRY((\ENC3B~input_o\ & (!\encoder_compT|counter\(1) & !\encoder_compT|counter[0]~17\)) # (!\ENC3B~input_o\ & ((!\encoder_compT|counter[0]~17\) # (!\encoder_compT|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC3B~input_o\,
	datab => \encoder_compT|counter\(1),
	datad => VCC,
	cin => \encoder_compT|counter[0]~17\,
	combout => \encoder_compT|counter[1]~19_combout\,
	cout => \encoder_compT|counter[1]~20\);

-- Location: FF_X43_Y24_N3
\encoder_compT|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[1]~19_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(1));

-- Location: FF_X44_Y23_N7
\gpmc_driver|ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][1]~q\);

-- Location: LCCOMB_X42_Y20_N10
\gpmc_driver|ram[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[2][1]~feeder_combout\);

-- Location: FF_X42_Y20_N11
\gpmc_driver|ram[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][1]~q\);

-- Location: LCCOMB_X44_Y23_N6
\gpmc_driver|gpmc_data_out~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~28_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[2][1]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[0][1]~q\,
	datad => \gpmc_driver|ram[2][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~28_combout\);

-- Location: LCCOMB_X44_Y23_N4
\gpmc_driver|gpmc_data_out~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~29_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~28_combout\ & (\gpmc_driver|ram[3][1]~q\)) # (!\gpmc_driver|gpmc_data_out~28_combout\ & ((\gpmc_driver|ram[1][1]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[3][1]~q\,
	datac => \gpmc_driver|ram[1][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~28_combout\,
	combout => \gpmc_driver|gpmc_data_out~29_combout\);

-- Location: LCCOMB_X43_Y22_N20
\gpmc_driver|ram[9][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[9][1]~feeder_combout\);

-- Location: FF_X43_Y22_N21
\gpmc_driver|ram[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][1]~q\);

-- Location: FF_X43_Y22_N15
\gpmc_driver|ram[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][1]~q\);

-- Location: FF_X44_Y22_N29
\gpmc_driver|ram[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(1),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][1]~q\);

-- Location: LCCOMB_X48_Y20_N0
\gpmc_driver|ram[10][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][1]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(1),
	combout => \gpmc_driver|ram[10][1]~feeder_combout\);

-- Location: FF_X48_Y20_N1
\gpmc_driver|ram[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][1]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][1]~q\);

-- Location: LCCOMB_X44_Y22_N28
\gpmc_driver|gpmc_data_out~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~26_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|ram[10][1]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[8][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][1]~q\,
	datad => \gpmc_driver|ram[10][1]~q\,
	combout => \gpmc_driver|gpmc_data_out~26_combout\);

-- Location: LCCOMB_X43_Y22_N14
\gpmc_driver|gpmc_data_out~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~27_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~26_combout\ & ((\gpmc_driver|ram[11][1]~q\))) # (!\gpmc_driver|gpmc_data_out~26_combout\ & (\gpmc_driver|ram[9][1]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][1]~q\,
	datac => \gpmc_driver|ram[11][1]~q\,
	datad => \gpmc_driver|gpmc_data_out~26_combout\,
	combout => \gpmc_driver|gpmc_data_out~27_combout\);

-- Location: LCCOMB_X44_Y23_N10
\gpmc_driver|gpmc_data_out~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~30_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~27_combout\))) # (!\gpmc_driver|gpmc_addr_in\(3) 
-- & (\gpmc_driver|gpmc_data_out~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~29_combout\,
	datad => \gpmc_driver|gpmc_data_out~27_combout\,
	combout => \gpmc_driver|gpmc_data_out~30_combout\);

-- Location: LCCOMB_X44_Y23_N28
\gpmc_driver|gpmc_data_out~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~33_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~30_combout\ & ((\gpmc_driver|gpmc_data_out~32_combout\))) # (!\gpmc_driver|gpmc_data_out~30_combout\ & (\gpmc_driver|gpmc_data_out~25_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~25_combout\,
	datac => \gpmc_driver|gpmc_data_out~32_combout\,
	datad => \gpmc_driver|gpmc_data_out~30_combout\,
	combout => \gpmc_driver|gpmc_data_out~33_combout\);

-- Location: LCCOMB_X43_Y23_N24
\gpmc_driver|gpmc_data_out~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~44_combout\ = (\gpmc_driver|gpmc_data_out~21_combout\ & ((\gpmc_driver|gpmc_data_out~43_combout\) # ((\gpmc_driver|gpmc_data_out~20_combout\ & \gpmc_driver|gpmc_data_out~33_combout\)))) # (!\gpmc_driver|gpmc_data_out~21_combout\ 
-- & (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~21_combout\,
	datab => \gpmc_driver|gpmc_data_out~20_combout\,
	datac => \gpmc_driver|gpmc_data_out~43_combout\,
	datad => \gpmc_driver|gpmc_data_out~33_combout\,
	combout => \gpmc_driver|gpmc_data_out~44_combout\);

-- Location: FF_X43_Y23_N25
\gpmc_driver|gpmc_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~44_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(1));

-- Location: IOIBUF_X41_Y0_N29
\GPMC_DATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(2),
	o => \GPMC_DATA[2]~input_o\);

-- Location: LCCOMB_X41_Y18_N14
\gpmc_driver|gpmc_data_in[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[2]~feeder_combout\ = \GPMC_DATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[2]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[2]~feeder_combout\);

-- Location: FF_X41_Y18_N15
\gpmc_driver|gpmc_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(2));

-- Location: FF_X45_Y23_N5
\gpmc_driver|ram[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][2]~q\);

-- Location: LCCOMB_X45_Y23_N18
\gpmc_driver|ram[14][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[14][2]~feeder_combout\);

-- Location: FF_X45_Y23_N19
\gpmc_driver|ram[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][2]~q\);

-- Location: LCCOMB_X45_Y23_N4
\gpmc_driver|gpmc_data_out~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~52_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|ram[14][2]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[12][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][2]~q\,
	datad => \gpmc_driver|ram[14][2]~q\,
	combout => \gpmc_driver|gpmc_data_out~52_combout\);

-- Location: FF_X46_Y23_N13
\gpmc_driver|ram[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][2]~q\);

-- Location: LCCOMB_X46_Y23_N18
\gpmc_driver|ram[13][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[13][2]~feeder_combout\);

-- Location: FF_X46_Y23_N19
\gpmc_driver|ram[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][2]~q\);

-- Location: LCCOMB_X46_Y23_N12
\gpmc_driver|gpmc_data_out~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~53_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~52_combout\ & (\gpmc_driver|ram[15][2]~q\)) # (!\gpmc_driver|gpmc_data_out~52_combout\ & ((\gpmc_driver|ram[13][2]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~52_combout\,
	datac => \gpmc_driver|ram[15][2]~q\,
	datad => \gpmc_driver|ram[13][2]~q\,
	combout => \gpmc_driver|gpmc_data_out~53_combout\);

-- Location: LCCOMB_X39_Y20_N16
\gpmc_driver|ram[2][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[2][2]~feeder_combout\);

-- Location: FF_X39_Y20_N17
\gpmc_driver|ram[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][2]~q\);

-- Location: LCCOMB_X44_Y23_N18
\gpmc_driver|ram[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[3][2]~feeder_combout\);

-- Location: FF_X44_Y23_N19
\gpmc_driver|ram[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][2]~q\);

-- Location: LCCOMB_X48_Y24_N4
\encoder_compP|counter[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[2]~21_combout\ = ((\encoder_compP|counter\(2) $ (\ENC4B~input_o\ $ (!\encoder_compP|counter[1]~20\)))) # (GND)
-- \encoder_compP|counter[2]~22\ = CARRY((\encoder_compP|counter\(2) & ((\ENC4B~input_o\) # (!\encoder_compP|counter[1]~20\))) # (!\encoder_compP|counter\(2) & (\ENC4B~input_o\ & !\encoder_compP|counter[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compP|counter\(2),
	datab => \ENC4B~input_o\,
	datad => VCC,
	cin => \encoder_compP|counter[1]~20\,
	combout => \encoder_compP|counter[2]~21_combout\,
	cout => \encoder_compP|counter[2]~22\);

-- Location: FF_X48_Y24_N5
\encoder_compP|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[2]~21_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(2));

-- Location: LCCOMB_X44_Y23_N26
\gpmc_driver|ram[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][2]~feeder_combout\ = \encoder_compP|counter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(2),
	combout => \gpmc_driver|ram[1][2]~feeder_combout\);

-- Location: FF_X44_Y23_N27
\gpmc_driver|ram[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][2]~q\);

-- Location: LCCOMB_X43_Y24_N4
\encoder_compT|counter[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[2]~21_combout\ = ((\ENC3B~input_o\ $ (\encoder_compT|counter\(2) $ (!\encoder_compT|counter[1]~20\)))) # (GND)
-- \encoder_compT|counter[2]~22\ = CARRY((\ENC3B~input_o\ & ((\encoder_compT|counter\(2)) # (!\encoder_compT|counter[1]~20\))) # (!\ENC3B~input_o\ & (\encoder_compT|counter\(2) & !\encoder_compT|counter[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC3B~input_o\,
	datab => \encoder_compT|counter\(2),
	datad => VCC,
	cin => \encoder_compT|counter[1]~20\,
	combout => \encoder_compT|counter[2]~21_combout\,
	cout => \encoder_compT|counter[2]~22\);

-- Location: FF_X43_Y24_N5
\encoder_compT|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[2]~21_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(2));

-- Location: FF_X44_Y23_N9
\gpmc_driver|ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][2]~q\);

-- Location: LCCOMB_X44_Y23_N8
\gpmc_driver|gpmc_data_out~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~49_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[1][2]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[1][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[0][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~49_combout\);

-- Location: LCCOMB_X44_Y23_N12
\gpmc_driver|gpmc_data_out~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~50_combout\ = (\gpmc_driver|gpmc_data_out~49_combout\ & (((\gpmc_driver|ram[3][2]~q\) # (!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~49_combout\ & (\gpmc_driver|ram[2][2]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[2][2]~q\,
	datab => \gpmc_driver|ram[3][2]~q\,
	datac => \gpmc_driver|gpmc_data_out~49_combout\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~50_combout\);

-- Location: LCCOMB_X42_Y23_N20
\gpmc_driver|ram[5][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[5][2]~feeder_combout\);

-- Location: FF_X42_Y23_N21
\gpmc_driver|ram[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][2]~q\);

-- Location: FF_X42_Y23_N15
\gpmc_driver|ram[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][2]~q\);

-- Location: LCCOMB_X42_Y21_N2
\gpmc_driver|ram[6][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[6][2]~feeder_combout\);

-- Location: FF_X42_Y21_N3
\gpmc_driver|ram[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][2]~q\);

-- Location: FF_X41_Y21_N3
\gpmc_driver|ram[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][2]~q\);

-- Location: LCCOMB_X41_Y21_N2
\gpmc_driver|gpmc_data_out~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~47_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][2]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[6][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~47_combout\);

-- Location: LCCOMB_X42_Y23_N14
\gpmc_driver|gpmc_data_out~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~48_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~47_combout\ & ((\gpmc_driver|ram[7][2]~q\))) # (!\gpmc_driver|gpmc_data_out~47_combout\ & (\gpmc_driver|ram[5][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][2]~q\,
	datac => \gpmc_driver|ram[7][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~47_combout\,
	combout => \gpmc_driver|gpmc_data_out~48_combout\);

-- Location: LCCOMB_X43_Y23_N14
\gpmc_driver|gpmc_data_out~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~51_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~48_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~50_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(2),
	datad => \gpmc_driver|gpmc_data_out~48_combout\,
	combout => \gpmc_driver|gpmc_data_out~51_combout\);

-- Location: LCCOMB_X42_Y18_N26
\gpmc_driver|ram[11][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[11][2]~feeder_combout\);

-- Location: FF_X42_Y18_N27
\gpmc_driver|ram[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][2]~q\);

-- Location: FF_X41_Y22_N15
\gpmc_driver|ram[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][2]~q\);

-- Location: LCCOMB_X42_Y18_N4
\gpmc_driver|ram[9][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[9][2]~feeder_combout\);

-- Location: FF_X42_Y18_N5
\gpmc_driver|ram[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][2]~q\);

-- Location: LCCOMB_X41_Y22_N14
\gpmc_driver|gpmc_data_out~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~45_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][2]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][2]~q\,
	datad => \gpmc_driver|ram[9][2]~q\,
	combout => \gpmc_driver|gpmc_data_out~45_combout\);

-- Location: FF_X41_Y22_N1
\gpmc_driver|ram[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][2]~q\);

-- Location: LCCOMB_X41_Y22_N0
\gpmc_driver|gpmc_data_out~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~46_combout\ = (\gpmc_driver|gpmc_data_out~45_combout\ & ((\gpmc_driver|ram[11][2]~q\) # ((!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~45_combout\ & (((\gpmc_driver|ram[10][2]~q\ & 
-- \gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[11][2]~q\,
	datab => \gpmc_driver|gpmc_data_out~45_combout\,
	datac => \gpmc_driver|ram[10][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~46_combout\);

-- Location: LCCOMB_X43_Y23_N4
\gpmc_driver|gpmc_data_out~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~54_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~51_combout\ & (\gpmc_driver|gpmc_data_out~53_combout\)) # (!\gpmc_driver|gpmc_data_out~51_combout\ & ((\gpmc_driver|gpmc_data_out~46_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~53_combout\,
	datac => \gpmc_driver|gpmc_data_out~51_combout\,
	datad => \gpmc_driver|gpmc_data_out~46_combout\,
	combout => \gpmc_driver|gpmc_data_out~54_combout\);

-- Location: LCCOMB_X46_Y18_N28
\gpmc_driver|ram[22][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[22][2]~feeder_combout\);

-- Location: FF_X46_Y18_N29
\gpmc_driver|ram[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][2]~q\);

-- Location: FF_X44_Y18_N19
\gpmc_driver|ram[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][2]~q\);

-- Location: LCCOMB_X43_Y18_N0
\gpmc_driver|ram[26][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[26][2]~feeder_combout\);

-- Location: FF_X43_Y18_N1
\gpmc_driver|ram[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][2]~q\);

-- Location: FF_X44_Y18_N29
\gpmc_driver|ram[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][2]~q\);

-- Location: LCCOMB_X44_Y18_N28
\gpmc_driver|gpmc_data_out~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~55_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][2]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~55_combout\);

-- Location: LCCOMB_X44_Y18_N18
\gpmc_driver|gpmc_data_out~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~56_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~55_combout\ & ((\gpmc_driver|ram[30][2]~q\))) # (!\gpmc_driver|gpmc_data_out~55_combout\ & (\gpmc_driver|ram[22][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[22][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[30][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~55_combout\,
	combout => \gpmc_driver|gpmc_data_out~56_combout\);

-- Location: LCCOMB_X49_Y21_N24
\gpmc_driver|ram[27][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[27][2]~feeder_combout\);

-- Location: FF_X49_Y21_N25
\gpmc_driver|ram[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][2]~q\);

-- Location: LCCOMB_X45_Y19_N28
\gpmc_driver|ram[23][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[23][2]~feeder_combout\);

-- Location: FF_X45_Y19_N29
\gpmc_driver|ram[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][2]~q\);

-- Location: FF_X44_Y19_N9
\gpmc_driver|ram[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][2]~q\);

-- Location: LCCOMB_X44_Y19_N8
\gpmc_driver|gpmc_data_out~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~62_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[23][2]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[19][2]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][2]~q\,
	datac => \gpmc_driver|ram[19][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~62_combout\);

-- Location: FF_X44_Y19_N19
\gpmc_driver|ram[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][2]~q\);

-- Location: LCCOMB_X44_Y19_N18
\gpmc_driver|gpmc_data_out~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~63_combout\ = (\gpmc_driver|gpmc_data_out~62_combout\ & (((\gpmc_driver|ram[31][2]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~62_combout\ & (\gpmc_driver|ram[27][2]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][2]~q\,
	datab => \gpmc_driver|gpmc_data_out~62_combout\,
	datac => \gpmc_driver|ram[31][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~63_combout\);

-- Location: LCCOMB_X43_Y20_N12
\gpmc_driver|ram[20][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[20][2]~feeder_combout\);

-- Location: FF_X43_Y20_N13
\gpmc_driver|ram[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][2]~q\);

-- Location: FF_X46_Y20_N3
\gpmc_driver|ram[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][2]~q\);

-- Location: LCCOMB_X45_Y20_N12
\gpmc_driver|ram[24][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[24][2]~feeder_combout\);

-- Location: FF_X45_Y20_N13
\gpmc_driver|ram[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][2]~q\);

-- Location: FF_X46_Y20_N1
\gpmc_driver|ram[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][2]~q\);

-- Location: LCCOMB_X46_Y20_N0
\gpmc_driver|gpmc_data_out~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~59_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][2]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][2]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][2]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~59_combout\);

-- Location: LCCOMB_X46_Y20_N2
\gpmc_driver|gpmc_data_out~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~60_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~59_combout\ & ((\gpmc_driver|ram[28][2]~q\))) # (!\gpmc_driver|gpmc_data_out~59_combout\ & (\gpmc_driver|ram[20][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[20][2]~q\,
	datac => \gpmc_driver|ram[28][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~59_combout\,
	combout => \gpmc_driver|gpmc_data_out~60_combout\);

-- Location: LCCOMB_X49_Y22_N26
\gpmc_driver|ram[25][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[25][2]~feeder_combout\);

-- Location: FF_X49_Y22_N27
\gpmc_driver|ram[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][2]~q\);

-- Location: FF_X48_Y22_N3
\gpmc_driver|ram[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][2]~q\);

-- Location: LCCOMB_X49_Y22_N16
\gpmc_driver|ram[21][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][2]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(2),
	combout => \gpmc_driver|ram[21][2]~feeder_combout\);

-- Location: FF_X49_Y22_N17
\gpmc_driver|ram[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][2]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][2]~q\);

-- Location: FF_X48_Y22_N13
\gpmc_driver|ram[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(2),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][2]~q\);

-- Location: LCCOMB_X48_Y22_N12
\gpmc_driver|gpmc_data_out~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~57_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][2]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][2]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][2]~q\,
	datac => \gpmc_driver|ram[17][2]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~57_combout\);

-- Location: LCCOMB_X48_Y22_N2
\gpmc_driver|gpmc_data_out~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~58_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~57_combout\ & ((\gpmc_driver|ram[29][2]~q\))) # (!\gpmc_driver|gpmc_data_out~57_combout\ & (\gpmc_driver|ram[25][2]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][2]~q\,
	datac => \gpmc_driver|ram[29][2]~q\,
	datad => \gpmc_driver|gpmc_data_out~57_combout\,
	combout => \gpmc_driver|gpmc_data_out~58_combout\);

-- Location: LCCOMB_X43_Y23_N6
\gpmc_driver|gpmc_data_out~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~61_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~58_combout\))) # (!\gpmc_driver|gpmc_addr_in\(0) 
-- & (\gpmc_driver|gpmc_data_out~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~60_combout\,
	datad => \gpmc_driver|gpmc_data_out~58_combout\,
	combout => \gpmc_driver|gpmc_data_out~61_combout\);

-- Location: LCCOMB_X43_Y23_N20
\gpmc_driver|gpmc_data_out~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~64_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~61_combout\ & ((\gpmc_driver|gpmc_data_out~63_combout\))) # (!\gpmc_driver|gpmc_data_out~61_combout\ & (\gpmc_driver|gpmc_data_out~56_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~56_combout\,
	datac => \gpmc_driver|gpmc_data_out~63_combout\,
	datad => \gpmc_driver|gpmc_data_out~61_combout\,
	combout => \gpmc_driver|gpmc_data_out~64_combout\);

-- Location: LCCOMB_X43_Y23_N18
\gpmc_driver|gpmc_data_out~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~65_combout\ = (\gpmc_driver|gpmc_data_out~21_combout\ & ((\gpmc_driver|gpmc_data_out~64_combout\) # ((\gpmc_driver|gpmc_data_out~20_combout\ & \gpmc_driver|gpmc_data_out~54_combout\)))) # (!\gpmc_driver|gpmc_data_out~21_combout\ 
-- & (\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~21_combout\,
	datab => \gpmc_driver|gpmc_data_out~20_combout\,
	datac => \gpmc_driver|gpmc_data_out~54_combout\,
	datad => \gpmc_driver|gpmc_data_out~64_combout\,
	combout => \gpmc_driver|gpmc_data_out~65_combout\);

-- Location: FF_X43_Y23_N19
\gpmc_driver|gpmc_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~65_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(2));

-- Location: IOIBUF_X43_Y0_N29
\GPMC_DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(3),
	o => \GPMC_DATA[3]~input_o\);

-- Location: LCCOMB_X46_Y19_N30
\gpmc_driver|gpmc_data_in[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[3]~feeder_combout\ = \GPMC_DATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[3]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[3]~feeder_combout\);

-- Location: FF_X46_Y19_N31
\gpmc_driver|gpmc_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(3));

-- Location: FF_X45_Y19_N19
\gpmc_driver|ram[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][3]~q\);

-- Location: FF_X44_Y19_N27
\gpmc_driver|ram[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][3]~q\);

-- Location: FF_X44_Y19_N21
\gpmc_driver|ram[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][3]~q\);

-- Location: LCCOMB_X48_Y18_N24
\gpmc_driver|ram[27][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[27][3]~feeder_combout\);

-- Location: FF_X48_Y18_N25
\gpmc_driver|ram[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][3]~q\);

-- Location: LCCOMB_X44_Y19_N20
\gpmc_driver|gpmc_data_out~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~83_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][3]~q\))) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- (\gpmc_driver|ram[19][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[19][3]~q\,
	datad => \gpmc_driver|ram[27][3]~q\,
	combout => \gpmc_driver|gpmc_data_out~83_combout\);

-- Location: LCCOMB_X44_Y19_N26
\gpmc_driver|gpmc_data_out~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~84_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~83_combout\ & ((\gpmc_driver|ram[31][3]~q\))) # (!\gpmc_driver|gpmc_data_out~83_combout\ & (\gpmc_driver|ram[23][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][3]~q\,
	datac => \gpmc_driver|ram[31][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~83_combout\,
	combout => \gpmc_driver|gpmc_data_out~84_combout\);

-- Location: LCCOMB_X45_Y20_N10
\gpmc_driver|ram[24][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[24][3]~feeder_combout\);

-- Location: FF_X45_Y20_N11
\gpmc_driver|ram[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][3]~q\);

-- Location: FF_X44_Y20_N5
\gpmc_driver|ram[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][3]~q\);

-- Location: LCCOMB_X43_Y20_N10
\gpmc_driver|ram[20][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[20][3]~feeder_combout\);

-- Location: FF_X43_Y20_N11
\gpmc_driver|ram[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][3]~q\);

-- Location: FF_X44_Y20_N7
\gpmc_driver|ram[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][3]~q\);

-- Location: LCCOMB_X44_Y20_N6
\gpmc_driver|gpmc_data_out~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~80_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~80_combout\);

-- Location: LCCOMB_X44_Y20_N4
\gpmc_driver|gpmc_data_out~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~81_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~80_combout\ & ((\gpmc_driver|ram[28][3]~q\))) # (!\gpmc_driver|gpmc_data_out~80_combout\ & (\gpmc_driver|ram[24][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~80_combout\,
	combout => \gpmc_driver|gpmc_data_out~81_combout\);

-- Location: LCCOMB_X43_Y18_N18
\gpmc_driver|ram[26][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[26][3]~feeder_combout\);

-- Location: FF_X43_Y18_N19
\gpmc_driver|ram[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][3]~q\);

-- Location: FF_X44_Y18_N7
\gpmc_driver|ram[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][3]~q\);

-- Location: LCCOMB_X46_Y18_N14
\gpmc_driver|ram[22][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[22][3]~feeder_combout\);

-- Location: FF_X46_Y18_N15
\gpmc_driver|ram[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][3]~q\);

-- Location: FF_X44_Y18_N21
\gpmc_driver|ram[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][3]~q\);

-- Location: LCCOMB_X44_Y18_N20
\gpmc_driver|gpmc_data_out~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~78_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][3]~q\,
	datac => \gpmc_driver|ram[18][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~78_combout\);

-- Location: LCCOMB_X44_Y18_N6
\gpmc_driver|gpmc_data_out~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~79_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~78_combout\ & ((\gpmc_driver|ram[30][3]~q\))) # (!\gpmc_driver|gpmc_data_out~78_combout\ & (\gpmc_driver|ram[26][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][3]~q\,
	datac => \gpmc_driver|ram[30][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~78_combout\,
	combout => \gpmc_driver|gpmc_data_out~79_combout\);

-- Location: LCCOMB_X44_Y20_N30
\gpmc_driver|gpmc_data_out~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~82_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~79_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|gpmc_data_out~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~81_combout\,
	datad => \gpmc_driver|gpmc_data_out~79_combout\,
	combout => \gpmc_driver|gpmc_data_out~82_combout\);

-- Location: LCCOMB_X49_Y22_N18
\gpmc_driver|ram[21][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[21][3]~feeder_combout\);

-- Location: FF_X49_Y22_N19
\gpmc_driver|ram[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][3]~q\);

-- Location: FF_X48_Y22_N19
\gpmc_driver|ram[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][3]~q\);

-- Location: LCCOMB_X49_Y22_N0
\gpmc_driver|ram[25][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[25][3]~feeder_combout\);

-- Location: FF_X49_Y22_N1
\gpmc_driver|ram[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][3]~q\);

-- Location: FF_X48_Y22_N21
\gpmc_driver|ram[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][3]~q\);

-- Location: LCCOMB_X48_Y22_N20
\gpmc_driver|gpmc_data_out~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~76_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][3]~q\,
	datac => \gpmc_driver|ram[17][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~76_combout\);

-- Location: LCCOMB_X48_Y22_N18
\gpmc_driver|gpmc_data_out~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~77_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~76_combout\ & ((\gpmc_driver|ram[29][3]~q\))) # (!\gpmc_driver|gpmc_data_out~76_combout\ & (\gpmc_driver|ram[21][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][3]~q\,
	datac => \gpmc_driver|ram[29][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~76_combout\,
	combout => \gpmc_driver|gpmc_data_out~77_combout\);

-- Location: LCCOMB_X42_Y19_N22
\gpmc_driver|gpmc_data_out~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~85_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~82_combout\ & (\gpmc_driver|gpmc_data_out~84_combout\)) # (!\gpmc_driver|gpmc_data_out~82_combout\ & ((\gpmc_driver|gpmc_data_out~77_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~84_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~82_combout\,
	datad => \gpmc_driver|gpmc_data_out~77_combout\,
	combout => \gpmc_driver|gpmc_data_out~85_combout\);

-- Location: LCCOMB_X43_Y19_N26
\gpmc_driver|ram[14][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[14][3]~feeder_combout\);

-- Location: FF_X43_Y19_N27
\gpmc_driver|ram[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][3]~q\);

-- Location: FF_X43_Y19_N25
\gpmc_driver|ram[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][3]~q\);

-- Location: FF_X46_Y19_N27
\gpmc_driver|ram[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][3]~q\);

-- Location: LCCOMB_X46_Y23_N22
\gpmc_driver|ram[13][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[13][3]~feeder_combout\);

-- Location: FF_X46_Y23_N23
\gpmc_driver|ram[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][3]~q\);

-- Location: LCCOMB_X46_Y19_N26
\gpmc_driver|gpmc_data_out~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~73_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|ram[13][3]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[12][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][3]~q\,
	datad => \gpmc_driver|ram[13][3]~q\,
	combout => \gpmc_driver|gpmc_data_out~73_combout\);

-- Location: LCCOMB_X43_Y19_N24
\gpmc_driver|gpmc_data_out~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~74_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~73_combout\ & ((\gpmc_driver|ram[15][3]~q\))) # (!\gpmc_driver|gpmc_data_out~73_combout\ & (\gpmc_driver|ram[14][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[15][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~73_combout\,
	combout => \gpmc_driver|gpmc_data_out~74_combout\);

-- Location: LCCOMB_X41_Y19_N12
\gpmc_driver|ram[7][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[7][3]~feeder_combout\);

-- Location: FF_X41_Y19_N13
\gpmc_driver|ram[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][3]~q\);

-- Location: FF_X42_Y21_N25
\gpmc_driver|ram[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][3]~q\);

-- Location: LCCOMB_X41_Y21_N0
\gpmc_driver|ram[5][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[5][3]~feeder_combout\);

-- Location: FF_X41_Y21_N1
\gpmc_driver|ram[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][3]~q\);

-- Location: FF_X41_Y21_N23
\gpmc_driver|ram[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][3]~q\);

-- Location: LCCOMB_X41_Y21_N22
\gpmc_driver|gpmc_data_out~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~66_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][3]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[4][3]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][3]~q\,
	datac => \gpmc_driver|ram[4][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~66_combout\);

-- Location: LCCOMB_X42_Y21_N24
\gpmc_driver|gpmc_data_out~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~67_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~66_combout\ & (\gpmc_driver|ram[7][3]~q\)) # (!\gpmc_driver|gpmc_data_out~66_combout\ & ((\gpmc_driver|ram[6][3]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[7][3]~q\,
	datac => \gpmc_driver|ram[6][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~66_combout\,
	combout => \gpmc_driver|gpmc_data_out~67_combout\);

-- Location: LCCOMB_X43_Y22_N4
\gpmc_driver|ram[9][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[9][3]~feeder_combout\);

-- Location: FF_X43_Y22_N5
\gpmc_driver|ram[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][3]~q\);

-- Location: FF_X43_Y22_N31
\gpmc_driver|ram[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][3]~q\);

-- Location: LCCOMB_X41_Y22_N8
\gpmc_driver|ram[10][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[10][3]~feeder_combout\);

-- Location: FF_X41_Y22_N9
\gpmc_driver|ram[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][3]~q\);

-- Location: FF_X44_Y22_N23
\gpmc_driver|ram[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(3),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][3]~q\);

-- Location: LCCOMB_X44_Y22_N22
\gpmc_driver|gpmc_data_out~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~68_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~68_combout\);

-- Location: LCCOMB_X43_Y22_N30
\gpmc_driver|gpmc_data_out~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~69_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~68_combout\ & ((\gpmc_driver|ram[11][3]~q\))) # (!\gpmc_driver|gpmc_data_out~68_combout\ & (\gpmc_driver|ram[9][3]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][3]~q\,
	datac => \gpmc_driver|ram[11][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~68_combout\,
	combout => \gpmc_driver|gpmc_data_out~69_combout\);

-- Location: LCCOMB_X42_Y24_N24
\gpmc_driver|ram[3][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[3][3]~feeder_combout\);

-- Location: FF_X42_Y24_N25
\gpmc_driver|ram[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][3]~q\);

-- Location: LCCOMB_X48_Y24_N6
\encoder_compP|counter[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[3]~23_combout\ = (\encoder_compP|counter\(3) & ((\ENC4B~input_o\ & (\encoder_compP|counter[2]~22\ & VCC)) # (!\ENC4B~input_o\ & (!\encoder_compP|counter[2]~22\)))) # (!\encoder_compP|counter\(3) & ((\ENC4B~input_o\ & 
-- (!\encoder_compP|counter[2]~22\)) # (!\ENC4B~input_o\ & ((\encoder_compP|counter[2]~22\) # (GND)))))
-- \encoder_compP|counter[3]~24\ = CARRY((\encoder_compP|counter\(3) & (!\ENC4B~input_o\ & !\encoder_compP|counter[2]~22\)) # (!\encoder_compP|counter\(3) & ((!\encoder_compP|counter[2]~22\) # (!\ENC4B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compP|counter\(3),
	datab => \ENC4B~input_o\,
	datad => VCC,
	cin => \encoder_compP|counter[2]~22\,
	combout => \encoder_compP|counter[3]~23_combout\,
	cout => \encoder_compP|counter[3]~24\);

-- Location: FF_X48_Y24_N7
\encoder_compP|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[3]~23_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(3));

-- Location: FF_X42_Y24_N1
\gpmc_driver|ram[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compP|counter\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][3]~q\);

-- Location: LCCOMB_X42_Y20_N28
\gpmc_driver|ram[2][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][3]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(3),
	combout => \gpmc_driver|ram[2][3]~feeder_combout\);

-- Location: FF_X42_Y20_N29
\gpmc_driver|ram[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][3]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][3]~q\);

-- Location: LCCOMB_X43_Y24_N6
\encoder_compT|counter[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[3]~23_combout\ = (\encoder_compT|counter\(3) & ((\ENC3B~input_o\ & (\encoder_compT|counter[2]~22\ & VCC)) # (!\ENC3B~input_o\ & (!\encoder_compT|counter[2]~22\)))) # (!\encoder_compT|counter\(3) & ((\ENC3B~input_o\ & 
-- (!\encoder_compT|counter[2]~22\)) # (!\ENC3B~input_o\ & ((\encoder_compT|counter[2]~22\) # (GND)))))
-- \encoder_compT|counter[3]~24\ = CARRY((\encoder_compT|counter\(3) & (!\ENC3B~input_o\ & !\encoder_compT|counter[2]~22\)) # (!\encoder_compT|counter\(3) & ((!\encoder_compT|counter[2]~22\) # (!\ENC3B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compT|counter\(3),
	datab => \ENC3B~input_o\,
	datad => VCC,
	cin => \encoder_compT|counter[2]~22\,
	combout => \encoder_compT|counter[3]~23_combout\,
	cout => \encoder_compT|counter[3]~24\);

-- Location: FF_X43_Y24_N7
\encoder_compT|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[3]~23_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(3));

-- Location: FF_X42_Y24_N3
\gpmc_driver|ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][3]~q\);

-- Location: LCCOMB_X42_Y24_N2
\gpmc_driver|gpmc_data_out~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~70_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[2][3]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[2][3]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[0][3]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~70_combout\);

-- Location: LCCOMB_X42_Y24_N0
\gpmc_driver|gpmc_data_out~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~71_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~70_combout\ & (\gpmc_driver|ram[3][3]~q\)) # (!\gpmc_driver|gpmc_data_out~70_combout\ & ((\gpmc_driver|ram[1][3]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[3][3]~q\,
	datac => \gpmc_driver|ram[1][3]~q\,
	datad => \gpmc_driver|gpmc_data_out~70_combout\,
	combout => \gpmc_driver|gpmc_data_out~71_combout\);

-- Location: LCCOMB_X42_Y19_N6
\gpmc_driver|gpmc_data_out~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~72_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~69_combout\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|gpmc_data_out~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~69_combout\,
	datad => \gpmc_driver|gpmc_data_out~71_combout\,
	combout => \gpmc_driver|gpmc_data_out~72_combout\);

-- Location: LCCOMB_X42_Y19_N28
\gpmc_driver|gpmc_data_out~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~75_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~72_combout\ & (\gpmc_driver|gpmc_data_out~74_combout\)) # (!\gpmc_driver|gpmc_data_out~72_combout\ & ((\gpmc_driver|gpmc_data_out~67_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~74_combout\,
	datac => \gpmc_driver|gpmc_data_out~67_combout\,
	datad => \gpmc_driver|gpmc_data_out~72_combout\,
	combout => \gpmc_driver|gpmc_data_out~75_combout\);

-- Location: LCCOMB_X42_Y19_N16
\gpmc_driver|gpmc_data_out~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~86_combout\ = (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~75_combout\) # ((\gpmc_driver|gpmc_data_out~21_combout\ & \gpmc_driver|gpmc_data_out~85_combout\)))) # (!\gpmc_driver|gpmc_data_out~20_combout\ 
-- & (\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~20_combout\,
	datab => \gpmc_driver|gpmc_data_out~21_combout\,
	datac => \gpmc_driver|gpmc_data_out~85_combout\,
	datad => \gpmc_driver|gpmc_data_out~75_combout\,
	combout => \gpmc_driver|gpmc_data_out~86_combout\);

-- Location: FF_X42_Y19_N17
\gpmc_driver|gpmc_data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~86_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(3));

-- Location: IOIBUF_X43_Y0_N22
\GPMC_DATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(4),
	o => \GPMC_DATA[4]~input_o\);

-- Location: LCCOMB_X46_Y19_N14
\gpmc_driver|gpmc_data_in[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[4]~feeder_combout\ = \GPMC_DATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[4]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[4]~feeder_combout\);

-- Location: FF_X46_Y19_N15
\gpmc_driver|gpmc_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(4));

-- Location: LCCOMB_X46_Y23_N0
\gpmc_driver|ram[13][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[13][4]~feeder_combout\);

-- Location: FF_X46_Y23_N1
\gpmc_driver|ram[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][4]~q\);

-- Location: FF_X43_Y19_N3
\gpmc_driver|ram[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][4]~q\);

-- Location: FF_X46_Y19_N23
\gpmc_driver|ram[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][4]~q\);

-- Location: LCCOMB_X45_Y23_N10
\gpmc_driver|ram[14][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[14][4]~feeder_combout\);

-- Location: FF_X45_Y23_N11
\gpmc_driver|ram[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][4]~q\);

-- Location: LCCOMB_X46_Y19_N22
\gpmc_driver|gpmc_data_out~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~94_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[14][4]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][4]~q\,
	datad => \gpmc_driver|ram[14][4]~q\,
	combout => \gpmc_driver|gpmc_data_out~94_combout\);

-- Location: LCCOMB_X43_Y19_N2
\gpmc_driver|gpmc_data_out~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~95_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~94_combout\ & ((\gpmc_driver|ram[15][4]~q\))) # (!\gpmc_driver|gpmc_data_out~94_combout\ & (\gpmc_driver|ram[13][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~94_combout\,
	combout => \gpmc_driver|gpmc_data_out~95_combout\);

-- Location: LCCOMB_X42_Y18_N2
\gpmc_driver|ram[11][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[11][4]~feeder_combout\);

-- Location: FF_X42_Y18_N3
\gpmc_driver|ram[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][4]~q\);

-- Location: FF_X41_Y22_N19
\gpmc_driver|ram[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][4]~q\);

-- Location: FF_X41_Y22_N29
\gpmc_driver|ram[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][4]~q\);

-- Location: LCCOMB_X42_Y18_N28
\gpmc_driver|ram[9][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[9][4]~feeder_combout\);

-- Location: FF_X42_Y18_N29
\gpmc_driver|ram[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][4]~q\);

-- Location: LCCOMB_X41_Y22_N28
\gpmc_driver|gpmc_data_out~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~87_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][4]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][4]~q\,
	datad => \gpmc_driver|ram[9][4]~q\,
	combout => \gpmc_driver|gpmc_data_out~87_combout\);

-- Location: LCCOMB_X41_Y22_N18
\gpmc_driver|gpmc_data_out~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~88_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~87_combout\ & (\gpmc_driver|ram[11][4]~q\)) # (!\gpmc_driver|gpmc_data_out~87_combout\ & ((\gpmc_driver|ram[10][4]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[11][4]~q\,
	datac => \gpmc_driver|ram[10][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~87_combout\,
	combout => \gpmc_driver|gpmc_data_out~88_combout\);

-- Location: LCCOMB_X42_Y20_N26
\gpmc_driver|ram[2][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[2][4]~feeder_combout\);

-- Location: FF_X42_Y20_N27
\gpmc_driver|ram[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][4]~q\);

-- Location: FF_X44_Y23_N31
\gpmc_driver|ram[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][4]~q\);

-- Location: LCCOMB_X43_Y24_N8
\encoder_compT|counter[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[4]~25_combout\ = ((\ENC3B~input_o\ $ (\encoder_compT|counter\(4) $ (!\encoder_compT|counter[3]~24\)))) # (GND)
-- \encoder_compT|counter[4]~26\ = CARRY((\ENC3B~input_o\ & ((\encoder_compT|counter\(4)) # (!\encoder_compT|counter[3]~24\))) # (!\ENC3B~input_o\ & (\encoder_compT|counter\(4) & !\encoder_compT|counter[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC3B~input_o\,
	datab => \encoder_compT|counter\(4),
	datad => VCC,
	cin => \encoder_compT|counter[3]~24\,
	combout => \encoder_compT|counter[4]~25_combout\,
	cout => \encoder_compT|counter[4]~26\);

-- Location: FF_X43_Y24_N9
\encoder_compT|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[4]~25_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(4));

-- Location: FF_X44_Y23_N21
\gpmc_driver|ram[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][4]~q\);

-- Location: LCCOMB_X48_Y24_N8
\encoder_compP|counter[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[4]~25_combout\ = ((\ENC4B~input_o\ $ (\encoder_compP|counter\(4) $ (!\encoder_compP|counter[3]~24\)))) # (GND)
-- \encoder_compP|counter[4]~26\ = CARRY((\ENC4B~input_o\ & ((\encoder_compP|counter\(4)) # (!\encoder_compP|counter[3]~24\))) # (!\ENC4B~input_o\ & (\encoder_compP|counter\(4) & !\encoder_compP|counter[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC4B~input_o\,
	datab => \encoder_compP|counter\(4),
	datad => VCC,
	cin => \encoder_compP|counter[3]~24\,
	combout => \encoder_compP|counter[4]~25_combout\,
	cout => \encoder_compP|counter[4]~26\);

-- Location: FF_X48_Y24_N9
\encoder_compP|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[4]~25_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(4));

-- Location: LCCOMB_X44_Y23_N2
\gpmc_driver|ram[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][4]~feeder_combout\ = \encoder_compP|counter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(4),
	combout => \gpmc_driver|ram[1][4]~feeder_combout\);

-- Location: FF_X44_Y23_N3
\gpmc_driver|ram[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][4]~q\);

-- Location: LCCOMB_X44_Y23_N20
\gpmc_driver|gpmc_data_out~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~91_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|ram[1][4]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[0][4]~q\,
	datad => \gpmc_driver|ram[1][4]~q\,
	combout => \gpmc_driver|gpmc_data_out~91_combout\);

-- Location: LCCOMB_X44_Y23_N30
\gpmc_driver|gpmc_data_out~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~92_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~91_combout\ & ((\gpmc_driver|ram[3][4]~q\))) # (!\gpmc_driver|gpmc_data_out~91_combout\ & (\gpmc_driver|ram[2][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[2][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[3][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~91_combout\,
	combout => \gpmc_driver|gpmc_data_out~92_combout\);

-- Location: LCCOMB_X42_Y23_N24
\gpmc_driver|ram[5][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[5][4]~feeder_combout\);

-- Location: FF_X42_Y23_N25
\gpmc_driver|ram[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][4]~q\);

-- Location: FF_X42_Y23_N23
\gpmc_driver|ram[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][4]~q\);

-- Location: LCCOMB_X42_Y21_N26
\gpmc_driver|ram[6][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[6][4]~feeder_combout\);

-- Location: FF_X42_Y21_N27
\gpmc_driver|ram[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][4]~q\);

-- Location: FF_X42_Y21_N29
\gpmc_driver|ram[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][4]~q\);

-- Location: LCCOMB_X42_Y21_N28
\gpmc_driver|gpmc_data_out~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~89_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][4]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[6][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~89_combout\);

-- Location: LCCOMB_X42_Y23_N22
\gpmc_driver|gpmc_data_out~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~90_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~89_combout\ & ((\gpmc_driver|ram[7][4]~q\))) # (!\gpmc_driver|gpmc_data_out~89_combout\ & (\gpmc_driver|ram[5][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][4]~q\,
	datac => \gpmc_driver|ram[7][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~89_combout\,
	combout => \gpmc_driver|gpmc_data_out~90_combout\);

-- Location: LCCOMB_X43_Y23_N2
\gpmc_driver|gpmc_data_out~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~93_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~90_combout\))) # (!\gpmc_driver|gpmc_addr_in\(2) 
-- & (\gpmc_driver|gpmc_data_out~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~92_combout\,
	datad => \gpmc_driver|gpmc_data_out~90_combout\,
	combout => \gpmc_driver|gpmc_data_out~93_combout\);

-- Location: LCCOMB_X42_Y19_N8
\gpmc_driver|gpmc_data_out~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~96_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~93_combout\ & (\gpmc_driver|gpmc_data_out~95_combout\)) # (!\gpmc_driver|gpmc_data_out~93_combout\ & ((\gpmc_driver|gpmc_data_out~88_combout\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~95_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~88_combout\,
	datad => \gpmc_driver|gpmc_data_out~93_combout\,
	combout => \gpmc_driver|gpmc_data_out~96_combout\);

-- Location: LCCOMB_X43_Y18_N8
\gpmc_driver|ram[26][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[26][4]~feeder_combout\);

-- Location: FF_X43_Y18_N9
\gpmc_driver|ram[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][4]~q\);

-- Location: FF_X44_Y18_N13
\gpmc_driver|ram[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][4]~q\);

-- Location: LCCOMB_X44_Y18_N12
\gpmc_driver|gpmc_data_out~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~97_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][4]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~97_combout\);

-- Location: FF_X43_Y21_N5
\gpmc_driver|ram[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][4]~q\);

-- Location: FF_X44_Y18_N3
\gpmc_driver|ram[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][4]~q\);

-- Location: LCCOMB_X44_Y18_N2
\gpmc_driver|gpmc_data_out~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~98_combout\ = (\gpmc_driver|gpmc_data_out~97_combout\ & (((\gpmc_driver|ram[30][4]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~97_combout\ & (\gpmc_driver|ram[22][4]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~97_combout\,
	datab => \gpmc_driver|ram[22][4]~q\,
	datac => \gpmc_driver|ram[30][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~98_combout\);

-- Location: LCCOMB_X48_Y18_N2
\gpmc_driver|ram[27][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[27][4]~feeder_combout\);

-- Location: FF_X48_Y18_N3
\gpmc_driver|ram[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][4]~q\);

-- Location: FF_X44_Y19_N15
\gpmc_driver|ram[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][4]~q\);

-- Location: FF_X45_Y19_N5
\gpmc_driver|ram[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][4]~q\);

-- Location: FF_X44_Y19_N1
\gpmc_driver|ram[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][4]~q\);

-- Location: LCCOMB_X44_Y19_N0
\gpmc_driver|gpmc_data_out~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~104_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[23][4]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[19][4]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][4]~q\,
	datac => \gpmc_driver|ram[19][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~104_combout\);

-- Location: LCCOMB_X44_Y19_N14
\gpmc_driver|gpmc_data_out~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~105_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~104_combout\ & ((\gpmc_driver|ram[31][4]~q\))) # (!\gpmc_driver|gpmc_data_out~104_combout\ & (\gpmc_driver|ram[27][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][4]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[31][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~104_combout\,
	combout => \gpmc_driver|gpmc_data_out~105_combout\);

-- Location: LCCOMB_X43_Y20_N4
\gpmc_driver|ram[20][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[20][4]~feeder_combout\);

-- Location: FF_X43_Y20_N5
\gpmc_driver|ram[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][4]~q\);

-- Location: FF_X44_Y20_N11
\gpmc_driver|ram[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][4]~q\);

-- Location: LCCOMB_X45_Y20_N28
\gpmc_driver|ram[24][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[24][4]~feeder_combout\);

-- Location: FF_X45_Y20_N29
\gpmc_driver|ram[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][4]~q\);

-- Location: FF_X44_Y20_N21
\gpmc_driver|ram[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][4]~q\);

-- Location: LCCOMB_X44_Y20_N20
\gpmc_driver|gpmc_data_out~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~101_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[24][4]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[16][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[24][4]~q\,
	datac => \gpmc_driver|ram[16][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~101_combout\);

-- Location: LCCOMB_X44_Y20_N10
\gpmc_driver|gpmc_data_out~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~102_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~101_combout\ & ((\gpmc_driver|ram[28][4]~q\))) # (!\gpmc_driver|gpmc_data_out~101_combout\ & (\gpmc_driver|ram[20][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[20][4]~q\,
	datac => \gpmc_driver|ram[28][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~101_combout\,
	combout => \gpmc_driver|gpmc_data_out~102_combout\);

-- Location: LCCOMB_X49_Y22_N10
\gpmc_driver|ram[25][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[25][4]~feeder_combout\);

-- Location: FF_X49_Y22_N11
\gpmc_driver|ram[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][4]~q\);

-- Location: FF_X48_Y22_N15
\gpmc_driver|ram[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][4]~q\);

-- Location: LCCOMB_X49_Y22_N20
\gpmc_driver|ram[21][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][4]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(4),
	combout => \gpmc_driver|ram[21][4]~feeder_combout\);

-- Location: FF_X49_Y22_N21
\gpmc_driver|ram[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][4]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][4]~q\);

-- Location: FF_X48_Y22_N29
\gpmc_driver|ram[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(4),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][4]~q\);

-- Location: LCCOMB_X48_Y22_N28
\gpmc_driver|gpmc_data_out~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~99_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][4]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][4]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][4]~q\,
	datac => \gpmc_driver|ram[17][4]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~99_combout\);

-- Location: LCCOMB_X48_Y22_N14
\gpmc_driver|gpmc_data_out~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~100_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~99_combout\ & ((\gpmc_driver|ram[29][4]~q\))) # (!\gpmc_driver|gpmc_data_out~99_combout\ & (\gpmc_driver|ram[25][4]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][4]~q\,
	datac => \gpmc_driver|ram[29][4]~q\,
	datad => \gpmc_driver|gpmc_data_out~99_combout\,
	combout => \gpmc_driver|gpmc_data_out~100_combout\);

-- Location: LCCOMB_X42_Y19_N2
\gpmc_driver|gpmc_data_out~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~103_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~100_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~102_combout\,
	datad => \gpmc_driver|gpmc_data_out~100_combout\,
	combout => \gpmc_driver|gpmc_data_out~103_combout\);

-- Location: LCCOMB_X42_Y19_N24
\gpmc_driver|gpmc_data_out~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~106_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~103_combout\ & ((\gpmc_driver|gpmc_data_out~105_combout\))) # (!\gpmc_driver|gpmc_data_out~103_combout\ & (\gpmc_driver|gpmc_data_out~98_combout\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~98_combout\,
	datac => \gpmc_driver|gpmc_data_out~105_combout\,
	datad => \gpmc_driver|gpmc_data_out~103_combout\,
	combout => \gpmc_driver|gpmc_data_out~106_combout\);

-- Location: LCCOMB_X42_Y19_N30
\gpmc_driver|gpmc_data_out~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~107_combout\ = (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~96_combout\) # ((\gpmc_driver|gpmc_data_out~21_combout\ & \gpmc_driver|gpmc_data_out~106_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~21_combout\ & ((\gpmc_driver|gpmc_data_out~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~20_combout\,
	datab => \gpmc_driver|gpmc_data_out~21_combout\,
	datac => \gpmc_driver|gpmc_data_out~96_combout\,
	datad => \gpmc_driver|gpmc_data_out~106_combout\,
	combout => \gpmc_driver|gpmc_data_out~107_combout\);

-- Location: FF_X42_Y19_N31
\gpmc_driver|gpmc_data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~107_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(4));

-- Location: IOIBUF_X43_Y0_N1
\GPMC_DATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(5),
	o => \GPMC_DATA[5]~input_o\);

-- Location: LCCOMB_X46_Y19_N8
\gpmc_driver|gpmc_data_in[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[5]~feeder_combout\ = \GPMC_DATA[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[5]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[5]~feeder_combout\);

-- Location: FF_X46_Y19_N9
\gpmc_driver|gpmc_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(5));

-- Location: FF_X45_Y19_N11
\gpmc_driver|ram[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][5]~q\);

-- Location: FF_X44_Y19_N11
\gpmc_driver|ram[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][5]~q\);

-- Location: FF_X44_Y19_N13
\gpmc_driver|ram[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][5]~q\);

-- Location: LCCOMB_X48_Y18_N12
\gpmc_driver|ram[27][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[27][5]~feeder_combout\);

-- Location: FF_X48_Y18_N13
\gpmc_driver|ram[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][5]~q\);

-- Location: LCCOMB_X44_Y19_N12
\gpmc_driver|gpmc_data_out~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~125_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][5]~q\))) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- (\gpmc_driver|ram[19][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[19][5]~q\,
	datad => \gpmc_driver|ram[27][5]~q\,
	combout => \gpmc_driver|gpmc_data_out~125_combout\);

-- Location: LCCOMB_X44_Y19_N10
\gpmc_driver|gpmc_data_out~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~126_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~125_combout\ & ((\gpmc_driver|ram[31][5]~q\))) # (!\gpmc_driver|gpmc_data_out~125_combout\ & (\gpmc_driver|ram[23][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][5]~q\,
	datac => \gpmc_driver|ram[31][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~125_combout\,
	combout => \gpmc_driver|gpmc_data_out~126_combout\);

-- Location: LCCOMB_X50_Y22_N24
\gpmc_driver|ram[21][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[21][5]~feeder_combout\);

-- Location: FF_X50_Y22_N25
\gpmc_driver|ram[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][5]~q\);

-- Location: LCCOMB_X48_Y23_N30
\gpmc_driver|ram[25][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[25][5]~feeder_combout\);

-- Location: FF_X48_Y23_N31
\gpmc_driver|ram[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][5]~q\);

-- Location: FF_X48_Y22_N5
\gpmc_driver|ram[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][5]~q\);

-- Location: LCCOMB_X48_Y22_N4
\gpmc_driver|gpmc_data_out~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~118_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][5]~q\,
	datac => \gpmc_driver|ram[17][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~118_combout\);

-- Location: FF_X48_Y22_N23
\gpmc_driver|ram[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][5]~q\);

-- Location: LCCOMB_X48_Y22_N22
\gpmc_driver|gpmc_data_out~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~119_combout\ = (\gpmc_driver|gpmc_data_out~118_combout\ & (((\gpmc_driver|ram[29][5]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~118_combout\ & (\gpmc_driver|ram[21][5]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][5]~q\,
	datab => \gpmc_driver|gpmc_data_out~118_combout\,
	datac => \gpmc_driver|ram[29][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~119_combout\);

-- Location: LCCOMB_X45_Y20_N26
\gpmc_driver|ram[24][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[24][5]~feeder_combout\);

-- Location: FF_X45_Y20_N27
\gpmc_driver|ram[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][5]~q\);

-- Location: FF_X45_Y22_N11
\gpmc_driver|ram[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][5]~q\);

-- Location: FF_X45_Y22_N1
\gpmc_driver|ram[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][5]~q\);

-- Location: LCCOMB_X43_Y20_N18
\gpmc_driver|ram[20][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[20][5]~feeder_combout\);

-- Location: FF_X43_Y20_N19
\gpmc_driver|ram[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][5]~q\);

-- Location: LCCOMB_X45_Y22_N0
\gpmc_driver|gpmc_data_out~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~122_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][5]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[16][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][5]~q\,
	datad => \gpmc_driver|ram[20][5]~q\,
	combout => \gpmc_driver|gpmc_data_out~122_combout\);

-- Location: LCCOMB_X45_Y22_N10
\gpmc_driver|gpmc_data_out~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~123_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~122_combout\ & ((\gpmc_driver|ram[28][5]~q\))) # (!\gpmc_driver|gpmc_data_out~122_combout\ & (\gpmc_driver|ram[24][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][5]~q\,
	datac => \gpmc_driver|ram[28][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~122_combout\,
	combout => \gpmc_driver|gpmc_data_out~123_combout\);

-- Location: LCCOMB_X43_Y18_N22
\gpmc_driver|ram[26][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[26][5]~feeder_combout\);

-- Location: FF_X43_Y18_N23
\gpmc_driver|ram[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][5]~q\);

-- Location: FF_X44_Y18_N31
\gpmc_driver|ram[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][5]~q\);

-- Location: FF_X44_Y18_N25
\gpmc_driver|ram[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][5]~q\);

-- Location: LCCOMB_X43_Y21_N14
\gpmc_driver|ram[22][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[22][5]~feeder_combout\);

-- Location: FF_X43_Y21_N15
\gpmc_driver|ram[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][5]~q\);

-- Location: LCCOMB_X44_Y18_N24
\gpmc_driver|gpmc_data_out~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~120_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][5]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[18][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][5]~q\,
	datad => \gpmc_driver|ram[22][5]~q\,
	combout => \gpmc_driver|gpmc_data_out~120_combout\);

-- Location: LCCOMB_X44_Y18_N30
\gpmc_driver|gpmc_data_out~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~121_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~120_combout\ & ((\gpmc_driver|ram[30][5]~q\))) # (!\gpmc_driver|gpmc_data_out~120_combout\ & (\gpmc_driver|ram[26][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][5]~q\,
	datac => \gpmc_driver|ram[30][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~120_combout\,
	combout => \gpmc_driver|gpmc_data_out~121_combout\);

-- Location: LCCOMB_X42_Y22_N6
\gpmc_driver|gpmc_data_out~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~124_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~121_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~123_combout\,
	datad => \gpmc_driver|gpmc_data_out~121_combout\,
	combout => \gpmc_driver|gpmc_data_out~124_combout\);

-- Location: LCCOMB_X42_Y22_N4
\gpmc_driver|gpmc_data_out~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~127_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~124_combout\ & (\gpmc_driver|gpmc_data_out~126_combout\)) # (!\gpmc_driver|gpmc_data_out~124_combout\ & ((\gpmc_driver|gpmc_data_out~119_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~126_combout\,
	datac => \gpmc_driver|gpmc_data_out~119_combout\,
	datad => \gpmc_driver|gpmc_data_out~124_combout\,
	combout => \gpmc_driver|gpmc_data_out~127_combout\);

-- Location: LCCOMB_X41_Y19_N14
\gpmc_driver|ram[7][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[7][5]~feeder_combout\);

-- Location: FF_X41_Y19_N15
\gpmc_driver|ram[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][5]~q\);

-- Location: FF_X42_Y20_N25
\gpmc_driver|ram[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][5]~q\);

-- Location: LCCOMB_X41_Y21_N16
\gpmc_driver|ram[5][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[5][5]~feeder_combout\);

-- Location: FF_X41_Y21_N17
\gpmc_driver|ram[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][5]~q\);

-- Location: FF_X41_Y21_N11
\gpmc_driver|ram[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][5]~q\);

-- Location: LCCOMB_X41_Y21_N10
\gpmc_driver|gpmc_data_out~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~108_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][5]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[4][5]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][5]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~108_combout\);

-- Location: LCCOMB_X42_Y20_N24
\gpmc_driver|gpmc_data_out~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~109_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~108_combout\ & (\gpmc_driver|ram[7][5]~q\)) # (!\gpmc_driver|gpmc_data_out~108_combout\ & ((\gpmc_driver|ram[6][5]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[7][5]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[6][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~108_combout\,
	combout => \gpmc_driver|gpmc_data_out~109_combout\);

-- Location: LCCOMB_X42_Y24_N14
\gpmc_driver|ram[3][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[3][5]~feeder_combout\);

-- Location: FF_X42_Y24_N15
\gpmc_driver|ram[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][5]~q\);

-- Location: LCCOMB_X48_Y24_N10
\encoder_compP|counter[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[5]~27_combout\ = (\encoder_compP|counter\(5) & ((\ENC4B~input_o\ & (\encoder_compP|counter[4]~26\ & VCC)) # (!\ENC4B~input_o\ & (!\encoder_compP|counter[4]~26\)))) # (!\encoder_compP|counter\(5) & ((\ENC4B~input_o\ & 
-- (!\encoder_compP|counter[4]~26\)) # (!\ENC4B~input_o\ & ((\encoder_compP|counter[4]~26\) # (GND)))))
-- \encoder_compP|counter[5]~28\ = CARRY((\encoder_compP|counter\(5) & (!\ENC4B~input_o\ & !\encoder_compP|counter[4]~26\)) # (!\encoder_compP|counter\(5) & ((!\encoder_compP|counter[4]~26\) # (!\ENC4B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compP|counter\(5),
	datab => \ENC4B~input_o\,
	datad => VCC,
	cin => \encoder_compP|counter[4]~26\,
	combout => \encoder_compP|counter[5]~27_combout\,
	cout => \encoder_compP|counter[5]~28\);

-- Location: FF_X48_Y24_N11
\encoder_compP|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[5]~27_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(5));

-- Location: FF_X42_Y24_N23
\gpmc_driver|ram[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compP|counter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][5]~q\);

-- Location: LCCOMB_X42_Y20_N14
\gpmc_driver|ram[2][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[2][5]~feeder_combout\);

-- Location: FF_X42_Y20_N15
\gpmc_driver|ram[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][5]~q\);

-- Location: LCCOMB_X43_Y24_N10
\encoder_compT|counter[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[5]~27_combout\ = (\encoder_compT|counter\(5) & ((\ENC3B~input_o\ & (\encoder_compT|counter[4]~26\ & VCC)) # (!\ENC3B~input_o\ & (!\encoder_compT|counter[4]~26\)))) # (!\encoder_compT|counter\(5) & ((\ENC3B~input_o\ & 
-- (!\encoder_compT|counter[4]~26\)) # (!\ENC3B~input_o\ & ((\encoder_compT|counter[4]~26\) # (GND)))))
-- \encoder_compT|counter[5]~28\ = CARRY((\encoder_compT|counter\(5) & (!\ENC3B~input_o\ & !\encoder_compT|counter[4]~26\)) # (!\encoder_compT|counter\(5) & ((!\encoder_compT|counter[4]~26\) # (!\ENC3B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compT|counter\(5),
	datab => \ENC3B~input_o\,
	datad => VCC,
	cin => \encoder_compT|counter[4]~26\,
	combout => \encoder_compT|counter[5]~27_combout\,
	cout => \encoder_compT|counter[5]~28\);

-- Location: FF_X43_Y24_N11
\encoder_compT|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[5]~27_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(5));

-- Location: FF_X42_Y24_N13
\gpmc_driver|ram[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][5]~q\);

-- Location: LCCOMB_X42_Y24_N12
\gpmc_driver|gpmc_data_out~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~112_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[2][5]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[0][5]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[2][5]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[0][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~112_combout\);

-- Location: LCCOMB_X42_Y24_N22
\gpmc_driver|gpmc_data_out~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~113_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~112_combout\ & (\gpmc_driver|ram[3][5]~q\)) # (!\gpmc_driver|gpmc_data_out~112_combout\ & ((\gpmc_driver|ram[1][5]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[3][5]~q\,
	datac => \gpmc_driver|ram[1][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~112_combout\,
	combout => \gpmc_driver|gpmc_data_out~113_combout\);

-- Location: LCCOMB_X43_Y22_N24
\gpmc_driver|ram[9][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[9][5]~feeder_combout\);

-- Location: FF_X43_Y22_N25
\gpmc_driver|ram[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][5]~q\);

-- Location: FF_X43_Y22_N27
\gpmc_driver|ram[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][5]~q\);

-- Location: LCCOMB_X41_Y22_N22
\gpmc_driver|ram[10][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[10][5]~feeder_combout\);

-- Location: FF_X41_Y22_N23
\gpmc_driver|ram[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][5]~q\);

-- Location: FF_X41_Y22_N25
\gpmc_driver|ram[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][5]~q\);

-- Location: LCCOMB_X41_Y22_N24
\gpmc_driver|gpmc_data_out~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~110_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][5]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~110_combout\);

-- Location: LCCOMB_X43_Y22_N26
\gpmc_driver|gpmc_data_out~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~111_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~110_combout\ & ((\gpmc_driver|ram[11][5]~q\))) # (!\gpmc_driver|gpmc_data_out~110_combout\ & (\gpmc_driver|ram[9][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][5]~q\,
	datac => \gpmc_driver|ram[11][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~110_combout\,
	combout => \gpmc_driver|gpmc_data_out~111_combout\);

-- Location: LCCOMB_X42_Y22_N14
\gpmc_driver|gpmc_data_out~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~114_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_data_out~111_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|gpmc_data_out~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~113_combout\,
	datad => \gpmc_driver|gpmc_data_out~111_combout\,
	combout => \gpmc_driver|gpmc_data_out~114_combout\);

-- Location: LCCOMB_X43_Y19_N12
\gpmc_driver|ram[14][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[14][5]~feeder_combout\);

-- Location: FF_X43_Y19_N13
\gpmc_driver|ram[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][5]~q\);

-- Location: FF_X43_Y19_N7
\gpmc_driver|ram[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][5]~q\);

-- Location: LCCOMB_X48_Y19_N6
\gpmc_driver|ram[13][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][5]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(5),
	combout => \gpmc_driver|ram[13][5]~feeder_combout\);

-- Location: FF_X48_Y19_N7
\gpmc_driver|ram[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][5]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][5]~q\);

-- Location: FF_X46_Y19_N21
\gpmc_driver|ram[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(5),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][5]~q\);

-- Location: LCCOMB_X46_Y19_N20
\gpmc_driver|gpmc_data_out~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~115_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][5]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][5]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][5]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~115_combout\);

-- Location: LCCOMB_X43_Y19_N6
\gpmc_driver|gpmc_data_out~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~116_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~115_combout\ & ((\gpmc_driver|ram[15][5]~q\))) # (!\gpmc_driver|gpmc_data_out~115_combout\ & (\gpmc_driver|ram[14][5]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][5]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[15][5]~q\,
	datad => \gpmc_driver|gpmc_data_out~115_combout\,
	combout => \gpmc_driver|gpmc_data_out~116_combout\);

-- Location: LCCOMB_X42_Y22_N24
\gpmc_driver|gpmc_data_out~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~117_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~114_combout\ & ((\gpmc_driver|gpmc_data_out~116_combout\))) # (!\gpmc_driver|gpmc_data_out~114_combout\ & (\gpmc_driver|gpmc_data_out~109_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~109_combout\,
	datac => \gpmc_driver|gpmc_data_out~114_combout\,
	datad => \gpmc_driver|gpmc_data_out~116_combout\,
	combout => \gpmc_driver|gpmc_data_out~117_combout\);

-- Location: LCCOMB_X42_Y22_N28
\gpmc_driver|gpmc_data_out~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~128_combout\ = (\gpmc_driver|gpmc_data_out~21_combout\ & ((\gpmc_driver|gpmc_data_out~127_combout\) # ((\gpmc_driver|gpmc_data_out~20_combout\ & \gpmc_driver|gpmc_data_out~117_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~21_combout\,
	datab => \gpmc_driver|gpmc_data_out~20_combout\,
	datac => \gpmc_driver|gpmc_data_out~127_combout\,
	datad => \gpmc_driver|gpmc_data_out~117_combout\,
	combout => \gpmc_driver|gpmc_data_out~128_combout\);

-- Location: FF_X42_Y22_N29
\gpmc_driver|gpmc_data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~128_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(5));

-- Location: IOIBUF_X45_Y0_N22
\GPMC_DATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(6),
	o => \GPMC_DATA[6]~input_o\);

-- Location: LCCOMB_X41_Y23_N30
\gpmc_driver|gpmc_data_in[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[6]~feeder_combout\ = \GPMC_DATA[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[6]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[6]~feeder_combout\);

-- Location: FF_X41_Y23_N31
\gpmc_driver|gpmc_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(6));

-- Location: FF_X43_Y21_N9
\gpmc_driver|ram[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][6]~q\);

-- Location: FF_X44_Y18_N11
\gpmc_driver|ram[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][6]~q\);

-- Location: LCCOMB_X43_Y18_N24
\gpmc_driver|ram[26][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[26][6]~feeder_combout\);

-- Location: FF_X43_Y18_N25
\gpmc_driver|ram[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][6]~q\);

-- Location: FF_X44_Y18_N1
\gpmc_driver|ram[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][6]~q\);

-- Location: LCCOMB_X44_Y18_N0
\gpmc_driver|gpmc_data_out~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~139_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[26][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[18][6]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][6]~q\,
	datac => \gpmc_driver|ram[18][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~139_combout\);

-- Location: LCCOMB_X44_Y18_N10
\gpmc_driver|gpmc_data_out~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~140_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~139_combout\ & ((\gpmc_driver|ram[30][6]~q\))) # (!\gpmc_driver|gpmc_data_out~139_combout\ & (\gpmc_driver|ram[22][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][6]~q\,
	datac => \gpmc_driver|ram[30][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~139_combout\,
	combout => \gpmc_driver|gpmc_data_out~140_combout\);

-- Location: LCCOMB_X48_Y18_N14
\gpmc_driver|ram[27][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[27][6]~feeder_combout\);

-- Location: FF_X48_Y18_N15
\gpmc_driver|ram[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][6]~q\);

-- Location: FF_X44_Y19_N3
\gpmc_driver|ram[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][6]~q\);

-- Location: LCCOMB_X45_Y19_N0
\gpmc_driver|ram[23][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[23][6]~feeder_combout\);

-- Location: FF_X45_Y19_N1
\gpmc_driver|ram[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][6]~q\);

-- Location: FF_X44_Y19_N29
\gpmc_driver|ram[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][6]~q\);

-- Location: LCCOMB_X44_Y19_N28
\gpmc_driver|gpmc_data_out~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~146_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[23][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[19][6]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][6]~q\,
	datac => \gpmc_driver|ram[19][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~146_combout\);

-- Location: LCCOMB_X44_Y19_N2
\gpmc_driver|gpmc_data_out~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~147_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~146_combout\ & ((\gpmc_driver|ram[31][6]~q\))) # (!\gpmc_driver|gpmc_data_out~146_combout\ & (\gpmc_driver|ram[27][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[31][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~146_combout\,
	combout => \gpmc_driver|gpmc_data_out~147_combout\);

-- Location: LCCOMB_X49_Y22_N14
\gpmc_driver|ram[25][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[25][6]~feeder_combout\);

-- Location: FF_X49_Y22_N15
\gpmc_driver|ram[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][6]~q\);

-- Location: FF_X48_Y22_N31
\gpmc_driver|ram[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][6]~q\);

-- Location: LCCOMB_X49_Y22_N24
\gpmc_driver|ram[21][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[21][6]~feeder_combout\);

-- Location: FF_X49_Y22_N25
\gpmc_driver|ram[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][6]~q\);

-- Location: FF_X48_Y22_N17
\gpmc_driver|ram[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][6]~q\);

-- Location: LCCOMB_X48_Y22_N16
\gpmc_driver|gpmc_data_out~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~141_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][6]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][6]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][6]~q\,
	datac => \gpmc_driver|ram[17][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~141_combout\);

-- Location: LCCOMB_X48_Y22_N30
\gpmc_driver|gpmc_data_out~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~142_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~141_combout\ & ((\gpmc_driver|ram[29][6]~q\))) # (!\gpmc_driver|gpmc_data_out~141_combout\ & (\gpmc_driver|ram[25][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][6]~q\,
	datac => \gpmc_driver|ram[29][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~141_combout\,
	combout => \gpmc_driver|gpmc_data_out~142_combout\);

-- Location: LCCOMB_X43_Y20_N24
\gpmc_driver|ram[20][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[20][6]~feeder_combout\);

-- Location: FF_X43_Y20_N25
\gpmc_driver|ram[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][6]~q\);

-- Location: FF_X45_Y22_N29
\gpmc_driver|ram[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][6]~q\);

-- Location: LCCOMB_X45_Y20_N20
\gpmc_driver|ram[24][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[24][6]~feeder_combout\);

-- Location: FF_X45_Y20_N21
\gpmc_driver|ram[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][6]~q\);

-- Location: FF_X45_Y20_N19
\gpmc_driver|ram[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][6]~q\);

-- Location: LCCOMB_X45_Y20_N18
\gpmc_driver|gpmc_data_out~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~143_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[24][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[16][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[24][6]~q\,
	datac => \gpmc_driver|ram[16][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~143_combout\);

-- Location: LCCOMB_X45_Y22_N28
\gpmc_driver|gpmc_data_out~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~144_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~143_combout\ & ((\gpmc_driver|ram[28][6]~q\))) # (!\gpmc_driver|gpmc_data_out~143_combout\ & (\gpmc_driver|ram[20][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[28][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~143_combout\,
	combout => \gpmc_driver|gpmc_data_out~144_combout\);

-- Location: LCCOMB_X45_Y22_N18
\gpmc_driver|gpmc_data_out~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~145_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_data_out~142_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|gpmc_data_out~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~142_combout\,
	datad => \gpmc_driver|gpmc_data_out~144_combout\,
	combout => \gpmc_driver|gpmc_data_out~145_combout\);

-- Location: LCCOMB_X45_Y22_N20
\gpmc_driver|gpmc_data_out~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~148_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~145_combout\ & ((\gpmc_driver|gpmc_data_out~147_combout\))) # (!\gpmc_driver|gpmc_data_out~145_combout\ & (\gpmc_driver|gpmc_data_out~140_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~140_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~147_combout\,
	datad => \gpmc_driver|gpmc_data_out~145_combout\,
	combout => \gpmc_driver|gpmc_data_out~148_combout\);

-- Location: LCCOMB_X42_Y18_N10
\gpmc_driver|ram[11][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[11][6]~feeder_combout\);

-- Location: FF_X42_Y18_N11
\gpmc_driver|ram[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][6]~q\);

-- Location: FF_X44_Y22_N21
\gpmc_driver|ram[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][6]~q\);

-- Location: FF_X44_Y22_N11
\gpmc_driver|ram[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][6]~q\);

-- Location: LCCOMB_X42_Y18_N24
\gpmc_driver|ram[9][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[9][6]~feeder_combout\);

-- Location: FF_X42_Y18_N25
\gpmc_driver|ram[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][6]~q\);

-- Location: LCCOMB_X44_Y22_N10
\gpmc_driver|gpmc_data_out~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~129_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][6]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][6]~q\,
	datad => \gpmc_driver|ram[9][6]~q\,
	combout => \gpmc_driver|gpmc_data_out~129_combout\);

-- Location: LCCOMB_X44_Y22_N20
\gpmc_driver|gpmc_data_out~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~130_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~129_combout\ & (\gpmc_driver|ram[11][6]~q\)) # (!\gpmc_driver|gpmc_data_out~129_combout\ & ((\gpmc_driver|ram[10][6]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[11][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[10][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~129_combout\,
	combout => \gpmc_driver|gpmc_data_out~130_combout\);

-- Location: LCCOMB_X48_Y19_N16
\gpmc_driver|ram[13][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[13][6]~feeder_combout\);

-- Location: FF_X48_Y19_N17
\gpmc_driver|ram[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][6]~q\);

-- Location: FF_X43_Y19_N9
\gpmc_driver|ram[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][6]~q\);

-- Location: FF_X46_Y19_N17
\gpmc_driver|ram[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][6]~q\);

-- Location: LCCOMB_X45_Y23_N28
\gpmc_driver|ram[14][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[14][6]~feeder_combout\);

-- Location: FF_X45_Y23_N29
\gpmc_driver|ram[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][6]~q\);

-- Location: LCCOMB_X46_Y19_N16
\gpmc_driver|gpmc_data_out~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~136_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[14][6]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][6]~q\,
	datad => \gpmc_driver|ram[14][6]~q\,
	combout => \gpmc_driver|gpmc_data_out~136_combout\);

-- Location: LCCOMB_X43_Y19_N8
\gpmc_driver|gpmc_data_out~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~137_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~136_combout\ & ((\gpmc_driver|ram[15][6]~q\))) # (!\gpmc_driver|gpmc_data_out~136_combout\ & (\gpmc_driver|ram[13][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][6]~q\,
	datac => \gpmc_driver|ram[15][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~136_combout\,
	combout => \gpmc_driver|gpmc_data_out~137_combout\);

-- Location: LCCOMB_X42_Y23_N0
\gpmc_driver|ram[5][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[5][6]~feeder_combout\);

-- Location: FF_X42_Y23_N1
\gpmc_driver|ram[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][6]~q\);

-- Location: FF_X42_Y23_N31
\gpmc_driver|ram[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][6]~q\);

-- Location: LCCOMB_X42_Y21_N10
\gpmc_driver|ram[6][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[6][6]~feeder_combout\);

-- Location: FF_X42_Y21_N11
\gpmc_driver|ram[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][6]~q\);

-- Location: FF_X42_Y21_N17
\gpmc_driver|ram[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][6]~q\);

-- Location: LCCOMB_X42_Y21_N16
\gpmc_driver|gpmc_data_out~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~131_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[6][6]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~131_combout\);

-- Location: LCCOMB_X42_Y23_N30
\gpmc_driver|gpmc_data_out~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~132_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~131_combout\ & ((\gpmc_driver|ram[7][6]~q\))) # (!\gpmc_driver|gpmc_data_out~131_combout\ & (\gpmc_driver|ram[5][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][6]~q\,
	datac => \gpmc_driver|ram[7][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~131_combout\,
	combout => \gpmc_driver|gpmc_data_out~132_combout\);

-- Location: LCCOMB_X42_Y20_N20
\gpmc_driver|ram[2][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][6]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(6),
	combout => \gpmc_driver|ram[2][6]~feeder_combout\);

-- Location: FF_X42_Y20_N21
\gpmc_driver|ram[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][6]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][6]~q\);

-- Location: FF_X42_Y24_N9
\gpmc_driver|ram[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(6),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][6]~q\);

-- Location: LCCOMB_X48_Y24_N12
\encoder_compP|counter[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[6]~29_combout\ = ((\encoder_compP|counter\(6) $ (\ENC4B~input_o\ $ (!\encoder_compP|counter[5]~28\)))) # (GND)
-- \encoder_compP|counter[6]~30\ = CARRY((\encoder_compP|counter\(6) & ((\ENC4B~input_o\) # (!\encoder_compP|counter[5]~28\))) # (!\encoder_compP|counter\(6) & (\ENC4B~input_o\ & !\encoder_compP|counter[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compP|counter\(6),
	datab => \ENC4B~input_o\,
	datad => VCC,
	cin => \encoder_compP|counter[5]~28\,
	combout => \encoder_compP|counter[6]~29_combout\,
	cout => \encoder_compP|counter[6]~30\);

-- Location: FF_X48_Y24_N13
\encoder_compP|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[6]~29_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(6));

-- Location: LCCOMB_X42_Y24_N4
\gpmc_driver|ram[1][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][6]~feeder_combout\ = \encoder_compP|counter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(6),
	combout => \gpmc_driver|ram[1][6]~feeder_combout\);

-- Location: FF_X42_Y24_N5
\gpmc_driver|ram[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][6]~q\);

-- Location: LCCOMB_X43_Y24_N12
\encoder_compT|counter[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[6]~29_combout\ = ((\encoder_compT|counter\(6) $ (\ENC3B~input_o\ $ (!\encoder_compT|counter[5]~28\)))) # (GND)
-- \encoder_compT|counter[6]~30\ = CARRY((\encoder_compT|counter\(6) & ((\ENC3B~input_o\) # (!\encoder_compT|counter[5]~28\))) # (!\encoder_compT|counter\(6) & (\ENC3B~input_o\ & !\encoder_compT|counter[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compT|counter\(6),
	datab => \ENC3B~input_o\,
	datad => VCC,
	cin => \encoder_compT|counter[5]~28\,
	combout => \encoder_compT|counter[6]~29_combout\,
	cout => \encoder_compT|counter[6]~30\);

-- Location: FF_X43_Y24_N13
\encoder_compT|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[6]~29_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(6));

-- Location: FF_X42_Y24_N11
\gpmc_driver|ram[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][6]~q\);

-- Location: LCCOMB_X42_Y24_N10
\gpmc_driver|gpmc_data_out~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~133_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[1][6]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[1][6]~q\,
	datac => \gpmc_driver|ram[0][6]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~133_combout\);

-- Location: LCCOMB_X42_Y24_N8
\gpmc_driver|gpmc_data_out~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~134_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~133_combout\ & ((\gpmc_driver|ram[3][6]~q\))) # (!\gpmc_driver|gpmc_data_out~133_combout\ & (\gpmc_driver|ram[2][6]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[2][6]~q\,
	datac => \gpmc_driver|ram[3][6]~q\,
	datad => \gpmc_driver|gpmc_data_out~133_combout\,
	combout => \gpmc_driver|gpmc_data_out~134_combout\);

-- Location: LCCOMB_X42_Y22_N18
\gpmc_driver|gpmc_data_out~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~135_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~132_combout\)) # (!\gpmc_driver|gpmc_addr_in\(2) 
-- & ((\gpmc_driver|gpmc_data_out~134_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~132_combout\,
	datad => \gpmc_driver|gpmc_data_out~134_combout\,
	combout => \gpmc_driver|gpmc_data_out~135_combout\);

-- Location: LCCOMB_X42_Y22_N12
\gpmc_driver|gpmc_data_out~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~138_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~135_combout\ & ((\gpmc_driver|gpmc_data_out~137_combout\))) # (!\gpmc_driver|gpmc_data_out~135_combout\ & (\gpmc_driver|gpmc_data_out~130_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~130_combout\,
	datac => \gpmc_driver|gpmc_data_out~137_combout\,
	datad => \gpmc_driver|gpmc_data_out~135_combout\,
	combout => \gpmc_driver|gpmc_data_out~138_combout\);

-- Location: LCCOMB_X42_Y22_N22
\gpmc_driver|gpmc_data_out~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~149_combout\ = (\gpmc_driver|gpmc_data_out~21_combout\ & ((\gpmc_driver|gpmc_data_out~148_combout\) # ((\gpmc_driver|gpmc_data_out~20_combout\ & \gpmc_driver|gpmc_data_out~138_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~21_combout\,
	datab => \gpmc_driver|gpmc_data_out~20_combout\,
	datac => \gpmc_driver|gpmc_data_out~148_combout\,
	datad => \gpmc_driver|gpmc_data_out~138_combout\,
	combout => \gpmc_driver|gpmc_data_out~149_combout\);

-- Location: FF_X42_Y22_N23
\gpmc_driver|gpmc_data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~149_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(6));

-- Location: IOIBUF_X48_Y0_N29
\GPMC_DATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(7),
	o => \GPMC_DATA[7]~input_o\);

-- Location: FF_X49_Y18_N27
\gpmc_driver|gpmc_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(7));

-- Location: LCCOMB_X44_Y21_N8
\gpmc_driver|ram[23][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[23][7]~feeder_combout\);

-- Location: FF_X44_Y21_N9
\gpmc_driver|ram[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][7]~q\);

-- Location: FF_X44_Y19_N31
\gpmc_driver|ram[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][7]~q\);

-- Location: FF_X44_Y19_N17
\gpmc_driver|ram[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][7]~q\);

-- Location: LCCOMB_X49_Y21_N10
\gpmc_driver|ram[27][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[27][7]~feeder_combout\);

-- Location: FF_X49_Y21_N11
\gpmc_driver|ram[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][7]~q\);

-- Location: LCCOMB_X44_Y19_N16
\gpmc_driver|gpmc_data_out~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~167_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][7]~q\))) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- (\gpmc_driver|ram[19][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[19][7]~q\,
	datad => \gpmc_driver|ram[27][7]~q\,
	combout => \gpmc_driver|gpmc_data_out~167_combout\);

-- Location: LCCOMB_X44_Y19_N30
\gpmc_driver|gpmc_data_out~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~168_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~167_combout\ & ((\gpmc_driver|ram[31][7]~q\))) # (!\gpmc_driver|gpmc_data_out~167_combout\ & (\gpmc_driver|ram[23][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][7]~q\,
	datac => \gpmc_driver|ram[31][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~167_combout\,
	combout => \gpmc_driver|gpmc_data_out~168_combout\);

-- Location: LCCOMB_X43_Y20_N2
\gpmc_driver|ram[20][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[20][7]~feeder_combout\);

-- Location: FF_X43_Y20_N3
\gpmc_driver|ram[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][7]~q\);

-- Location: FF_X44_Y20_N13
\gpmc_driver|ram[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][7]~q\);

-- Location: LCCOMB_X44_Y20_N12
\gpmc_driver|gpmc_data_out~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~164_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~164_combout\);

-- Location: LCCOMB_X45_Y20_N8
\gpmc_driver|ram[24][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[24][7]~feeder_combout\);

-- Location: FF_X45_Y20_N9
\gpmc_driver|ram[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][7]~q\);

-- Location: FF_X44_Y20_N15
\gpmc_driver|ram[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][7]~q\);

-- Location: LCCOMB_X44_Y20_N14
\gpmc_driver|gpmc_data_out~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~165_combout\ = (\gpmc_driver|gpmc_data_out~164_combout\ & (((\gpmc_driver|ram[28][7]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~164_combout\ & (\gpmc_driver|ram[24][7]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~164_combout\,
	datab => \gpmc_driver|ram[24][7]~q\,
	datac => \gpmc_driver|ram[28][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~165_combout\);

-- Location: LCCOMB_X43_Y18_N10
\gpmc_driver|ram[26][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[26][7]~feeder_combout\);

-- Location: FF_X43_Y18_N11
\gpmc_driver|ram[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][7]~q\);

-- Location: LCCOMB_X46_Y18_N24
\gpmc_driver|ram[22][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[22][7]~feeder_combout\);

-- Location: FF_X46_Y18_N25
\gpmc_driver|ram[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][7]~q\);

-- Location: FF_X44_Y18_N9
\gpmc_driver|ram[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][7]~q\);

-- Location: LCCOMB_X44_Y18_N8
\gpmc_driver|gpmc_data_out~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~162_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[22][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[18][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[22][7]~q\,
	datac => \gpmc_driver|ram[18][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~162_combout\);

-- Location: FF_X44_Y18_N15
\gpmc_driver|ram[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][7]~q\);

-- Location: LCCOMB_X44_Y18_N14
\gpmc_driver|gpmc_data_out~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~163_combout\ = (\gpmc_driver|gpmc_data_out~162_combout\ & (((\gpmc_driver|ram[30][7]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~162_combout\ & (\gpmc_driver|ram[26][7]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][7]~q\,
	datab => \gpmc_driver|gpmc_data_out~162_combout\,
	datac => \gpmc_driver|ram[30][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~163_combout\);

-- Location: LCCOMB_X45_Y18_N4
\gpmc_driver|gpmc_data_out~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~166_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~163_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|gpmc_data_out~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~165_combout\,
	datad => \gpmc_driver|gpmc_data_out~163_combout\,
	combout => \gpmc_driver|gpmc_data_out~166_combout\);

-- Location: LCCOMB_X49_Y23_N20
\gpmc_driver|ram[21][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[21][7]~feeder_combout\);

-- Location: FF_X49_Y23_N21
\gpmc_driver|ram[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][7]~q\);

-- Location: FF_X48_Y22_N27
\gpmc_driver|ram[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][7]~q\);

-- Location: LCCOMB_X48_Y23_N8
\gpmc_driver|ram[25][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[25][7]~feeder_combout\);

-- Location: FF_X48_Y23_N9
\gpmc_driver|ram[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][7]~q\);

-- Location: FF_X48_Y22_N25
\gpmc_driver|ram[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][7]~q\);

-- Location: LCCOMB_X48_Y22_N24
\gpmc_driver|gpmc_data_out~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~160_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][7]~q\,
	datac => \gpmc_driver|ram[17][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~160_combout\);

-- Location: LCCOMB_X48_Y22_N26
\gpmc_driver|gpmc_data_out~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~161_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~160_combout\ & ((\gpmc_driver|ram[29][7]~q\))) # (!\gpmc_driver|gpmc_data_out~160_combout\ & (\gpmc_driver|ram[21][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][7]~q\,
	datac => \gpmc_driver|ram[29][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~160_combout\,
	combout => \gpmc_driver|gpmc_data_out~161_combout\);

-- Location: LCCOMB_X45_Y18_N22
\gpmc_driver|gpmc_data_out~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~169_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~166_combout\ & (\gpmc_driver|gpmc_data_out~168_combout\)) # (!\gpmc_driver|gpmc_data_out~166_combout\ & ((\gpmc_driver|gpmc_data_out~161_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~168_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~166_combout\,
	datad => \gpmc_driver|gpmc_data_out~161_combout\,
	combout => \gpmc_driver|gpmc_data_out~169_combout\);

-- Location: LCCOMB_X41_Y21_N24
\gpmc_driver|ram[5][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[5][7]~feeder_combout\);

-- Location: FF_X41_Y21_N25
\gpmc_driver|ram[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][7]~q\);

-- Location: FF_X41_Y21_N7
\gpmc_driver|ram[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][7]~q\);

-- Location: LCCOMB_X41_Y21_N6
\gpmc_driver|gpmc_data_out~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~150_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][7]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[4][7]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][7]~q\,
	datac => \gpmc_driver|ram[4][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~150_combout\);

-- Location: FF_X42_Y21_N15
\gpmc_driver|ram[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][7]~q\);

-- Location: LCCOMB_X41_Y19_N16
\gpmc_driver|ram[7][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[7][7]~feeder_combout\);

-- Location: FF_X41_Y19_N17
\gpmc_driver|ram[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][7]~q\);

-- Location: LCCOMB_X42_Y21_N14
\gpmc_driver|gpmc_data_out~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~151_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~150_combout\ & ((\gpmc_driver|ram[7][7]~q\))) # (!\gpmc_driver|gpmc_data_out~150_combout\ & (\gpmc_driver|ram[6][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~150_combout\,
	datac => \gpmc_driver|ram[6][7]~q\,
	datad => \gpmc_driver|ram[7][7]~q\,
	combout => \gpmc_driver|gpmc_data_out~151_combout\);

-- Location: LCCOMB_X43_Y19_N22
\gpmc_driver|ram[14][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[14][7]~feeder_combout\);

-- Location: FF_X43_Y19_N23
\gpmc_driver|ram[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][7]~q\);

-- Location: FF_X43_Y19_N29
\gpmc_driver|ram[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][7]~q\);

-- Location: LCCOMB_X48_Y19_N26
\gpmc_driver|ram[13][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[13][7]~feeder_combout\);

-- Location: FF_X48_Y19_N27
\gpmc_driver|ram[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][7]~q\);

-- Location: FF_X46_Y19_N7
\gpmc_driver|ram[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][7]~q\);

-- Location: LCCOMB_X46_Y19_N6
\gpmc_driver|gpmc_data_out~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~157_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~157_combout\);

-- Location: LCCOMB_X43_Y19_N28
\gpmc_driver|gpmc_data_out~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~158_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~157_combout\ & ((\gpmc_driver|ram[15][7]~q\))) # (!\gpmc_driver|gpmc_data_out~157_combout\ & (\gpmc_driver|ram[14][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[15][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~157_combout\,
	combout => \gpmc_driver|gpmc_data_out~158_combout\);

-- Location: LCCOMB_X42_Y18_N0
\gpmc_driver|ram[9][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[9][7]~feeder_combout\);

-- Location: FF_X42_Y18_N1
\gpmc_driver|ram[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][7]~q\);

-- Location: FF_X44_Y21_N7
\gpmc_driver|ram[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][7]~q\);

-- Location: LCCOMB_X41_Y22_N30
\gpmc_driver|ram[10][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[10][7]~feeder_combout\);

-- Location: FF_X41_Y22_N31
\gpmc_driver|ram[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][7]~q\);

-- Location: FF_X44_Y22_N25
\gpmc_driver|ram[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(7),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][7]~q\);

-- Location: LCCOMB_X44_Y22_N24
\gpmc_driver|gpmc_data_out~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~152_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][7]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][7]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~152_combout\);

-- Location: LCCOMB_X44_Y21_N6
\gpmc_driver|gpmc_data_out~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~153_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~152_combout\ & ((\gpmc_driver|ram[11][7]~q\))) # (!\gpmc_driver|gpmc_data_out~152_combout\ & (\gpmc_driver|ram[9][7]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[9][7]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[11][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~152_combout\,
	combout => \gpmc_driver|gpmc_data_out~153_combout\);

-- Location: LCCOMB_X42_Y24_N30
\gpmc_driver|ram[3][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[3][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[3][7]~feeder_combout\);

-- Location: FF_X42_Y24_N31
\gpmc_driver|ram[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[3][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][7]~q\);

-- Location: LCCOMB_X48_Y24_N14
\encoder_compP|counter[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[7]~31_combout\ = (\ENC4B~input_o\ & ((\encoder_compP|counter\(7) & (\encoder_compP|counter[6]~30\ & VCC)) # (!\encoder_compP|counter\(7) & (!\encoder_compP|counter[6]~30\)))) # (!\ENC4B~input_o\ & ((\encoder_compP|counter\(7) & 
-- (!\encoder_compP|counter[6]~30\)) # (!\encoder_compP|counter\(7) & ((\encoder_compP|counter[6]~30\) # (GND)))))
-- \encoder_compP|counter[7]~32\ = CARRY((\ENC4B~input_o\ & (!\encoder_compP|counter\(7) & !\encoder_compP|counter[6]~30\)) # (!\ENC4B~input_o\ & ((!\encoder_compP|counter[6]~30\) # (!\encoder_compP|counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC4B~input_o\,
	datab => \encoder_compP|counter\(7),
	datad => VCC,
	cin => \encoder_compP|counter[6]~30\,
	combout => \encoder_compP|counter[7]~31_combout\,
	cout => \encoder_compP|counter[7]~32\);

-- Location: FF_X48_Y24_N15
\encoder_compP|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[7]~31_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(7));

-- Location: FF_X45_Y24_N27
\gpmc_driver|ram[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compP|counter\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][7]~q\);

-- Location: LCCOMB_X43_Y24_N14
\encoder_compT|counter[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[7]~31_combout\ = (\encoder_compT|counter\(7) & ((\ENC3B~input_o\ & (\encoder_compT|counter[6]~30\ & VCC)) # (!\ENC3B~input_o\ & (!\encoder_compT|counter[6]~30\)))) # (!\encoder_compT|counter\(7) & ((\ENC3B~input_o\ & 
-- (!\encoder_compT|counter[6]~30\)) # (!\ENC3B~input_o\ & ((\encoder_compT|counter[6]~30\) # (GND)))))
-- \encoder_compT|counter[7]~32\ = CARRY((\encoder_compT|counter\(7) & (!\ENC3B~input_o\ & !\encoder_compT|counter[6]~30\)) # (!\encoder_compT|counter\(7) & ((!\encoder_compT|counter[6]~30\) # (!\ENC3B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compT|counter\(7),
	datab => \ENC3B~input_o\,
	datad => VCC,
	cin => \encoder_compT|counter[6]~30\,
	combout => \encoder_compT|counter[7]~31_combout\,
	cout => \encoder_compT|counter[7]~32\);

-- Location: FF_X43_Y24_N15
\encoder_compT|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[7]~31_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(7));

-- Location: FF_X45_Y24_N1
\gpmc_driver|ram[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][7]~q\);

-- Location: LCCOMB_X42_Y20_N6
\gpmc_driver|ram[2][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][7]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(7),
	combout => \gpmc_driver|ram[2][7]~feeder_combout\);

-- Location: FF_X42_Y20_N7
\gpmc_driver|ram[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][7]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][7]~q\);

-- Location: LCCOMB_X45_Y24_N0
\gpmc_driver|gpmc_data_out~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~154_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|ram[2][7]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[0][7]~q\,
	datad => \gpmc_driver|ram[2][7]~q\,
	combout => \gpmc_driver|gpmc_data_out~154_combout\);

-- Location: LCCOMB_X45_Y24_N26
\gpmc_driver|gpmc_data_out~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~155_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~154_combout\ & (\gpmc_driver|ram[3][7]~q\)) # (!\gpmc_driver|gpmc_data_out~154_combout\ & ((\gpmc_driver|ram[1][7]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[3][7]~q\,
	datac => \gpmc_driver|ram[1][7]~q\,
	datad => \gpmc_driver|gpmc_data_out~154_combout\,
	combout => \gpmc_driver|gpmc_data_out~155_combout\);

-- Location: LCCOMB_X45_Y18_N24
\gpmc_driver|gpmc_data_out~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~156_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~153_combout\)) # (!\gpmc_driver|gpmc_addr_in\(3) 
-- & ((\gpmc_driver|gpmc_data_out~155_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~153_combout\,
	datad => \gpmc_driver|gpmc_data_out~155_combout\,
	combout => \gpmc_driver|gpmc_data_out~156_combout\);

-- Location: LCCOMB_X45_Y18_N6
\gpmc_driver|gpmc_data_out~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~159_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~156_combout\ & ((\gpmc_driver|gpmc_data_out~158_combout\))) # (!\gpmc_driver|gpmc_data_out~156_combout\ & (\gpmc_driver|gpmc_data_out~151_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~151_combout\,
	datac => \gpmc_driver|gpmc_data_out~158_combout\,
	datad => \gpmc_driver|gpmc_data_out~156_combout\,
	combout => \gpmc_driver|gpmc_data_out~159_combout\);

-- Location: LCCOMB_X45_Y18_N0
\gpmc_driver|gpmc_data_out~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~170_combout\ = (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~159_combout\) # ((\gpmc_driver|gpmc_data_out~21_combout\ & \gpmc_driver|gpmc_data_out~169_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~20_combout\,
	datab => \gpmc_driver|gpmc_data_out~21_combout\,
	datac => \gpmc_driver|gpmc_data_out~169_combout\,
	datad => \gpmc_driver|gpmc_data_out~159_combout\,
	combout => \gpmc_driver|gpmc_data_out~170_combout\);

-- Location: FF_X45_Y18_N1
\gpmc_driver|gpmc_data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~170_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(7));

-- Location: IOIBUF_X48_Y0_N22
\GPMC_DATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(8),
	o => \GPMC_DATA[8]~input_o\);

-- Location: LCCOMB_X49_Y18_N4
\gpmc_driver|gpmc_data_in[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[8]~feeder_combout\ = \GPMC_DATA[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[8]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[8]~feeder_combout\);

-- Location: FF_X49_Y18_N5
\gpmc_driver|gpmc_data_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(8));

-- Location: LCCOMB_X46_Y18_N2
\gpmc_driver|ram[22][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[22][8]~feeder_combout\);

-- Location: FF_X46_Y18_N3
\gpmc_driver|ram[22][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][8]~q\);

-- Location: FF_X46_Y21_N15
\gpmc_driver|ram[30][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][8]~q\);

-- Location: LCCOMB_X43_Y18_N12
\gpmc_driver|ram[26][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[26][8]~feeder_combout\);

-- Location: FF_X43_Y18_N13
\gpmc_driver|ram[26][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][8]~q\);

-- Location: FF_X46_Y21_N1
\gpmc_driver|ram[18][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][8]~q\);

-- Location: LCCOMB_X46_Y21_N0
\gpmc_driver|gpmc_data_out~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~181_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[26][8]~q\,
	datac => \gpmc_driver|ram[18][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~181_combout\);

-- Location: LCCOMB_X46_Y21_N14
\gpmc_driver|gpmc_data_out~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~182_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~181_combout\ & ((\gpmc_driver|ram[30][8]~q\))) # (!\gpmc_driver|gpmc_data_out~181_combout\ & (\gpmc_driver|ram[22][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][8]~q\,
	datac => \gpmc_driver|ram[30][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~181_combout\,
	combout => \gpmc_driver|gpmc_data_out~182_combout\);

-- Location: LCCOMB_X50_Y22_N2
\gpmc_driver|ram[27][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[27][8]~feeder_combout\);

-- Location: FF_X50_Y22_N3
\gpmc_driver|ram[27][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][8]~q\);

-- Location: FF_X49_Y19_N5
\gpmc_driver|ram[19][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][8]~q\);

-- Location: LCCOMB_X44_Y21_N14
\gpmc_driver|ram[23][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[23][8]~feeder_combout\);

-- Location: FF_X44_Y21_N15
\gpmc_driver|ram[23][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][8]~q\);

-- Location: LCCOMB_X49_Y19_N4
\gpmc_driver|gpmc_data_out~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~188_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[23][8]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[19][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[19][8]~q\,
	datad => \gpmc_driver|ram[23][8]~q\,
	combout => \gpmc_driver|gpmc_data_out~188_combout\);

-- Location: FF_X49_Y19_N31
\gpmc_driver|ram[31][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][8]~q\);

-- Location: LCCOMB_X49_Y19_N30
\gpmc_driver|gpmc_data_out~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~189_combout\ = (\gpmc_driver|gpmc_data_out~188_combout\ & (((\gpmc_driver|ram[31][8]~q\) # (!\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_data_out~188_combout\ & (\gpmc_driver|ram[27][8]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][8]~q\,
	datab => \gpmc_driver|gpmc_data_out~188_combout\,
	datac => \gpmc_driver|ram[31][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~189_combout\);

-- Location: LCCOMB_X43_Y20_N16
\gpmc_driver|ram[20][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[20][8]~feeder_combout\);

-- Location: FF_X43_Y20_N17
\gpmc_driver|ram[20][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][8]~q\);

-- Location: FF_X46_Y20_N23
\gpmc_driver|ram[28][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][8]~q\);

-- Location: LCCOMB_X43_Y20_N22
\gpmc_driver|ram[24][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[24][8]~feeder_combout\);

-- Location: FF_X43_Y20_N23
\gpmc_driver|ram[24][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][8]~q\);

-- Location: FF_X46_Y20_N29
\gpmc_driver|ram[16][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][8]~q\);

-- Location: LCCOMB_X46_Y20_N28
\gpmc_driver|gpmc_data_out~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~185_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][8]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][8]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~185_combout\);

-- Location: LCCOMB_X46_Y20_N22
\gpmc_driver|gpmc_data_out~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~186_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~185_combout\ & ((\gpmc_driver|ram[28][8]~q\))) # (!\gpmc_driver|gpmc_data_out~185_combout\ & (\gpmc_driver|ram[20][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[20][8]~q\,
	datac => \gpmc_driver|ram[28][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~185_combout\,
	combout => \gpmc_driver|gpmc_data_out~186_combout\);

-- Location: LCCOMB_X48_Y23_N14
\gpmc_driver|ram[25][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[25][8]~feeder_combout\);

-- Location: FF_X48_Y23_N15
\gpmc_driver|ram[25][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][8]~q\);

-- Location: FF_X48_Y21_N3
\gpmc_driver|ram[29][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][8]~q\);

-- Location: LCCOMB_X49_Y22_N2
\gpmc_driver|ram[21][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[21][8]~feeder_combout\);

-- Location: FF_X49_Y22_N3
\gpmc_driver|ram[21][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][8]~q\);

-- Location: FF_X48_Y21_N21
\gpmc_driver|ram[17][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][8]~q\);

-- Location: LCCOMB_X48_Y21_N20
\gpmc_driver|gpmc_data_out~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~183_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][8]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][8]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][8]~q\,
	datac => \gpmc_driver|ram[17][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~183_combout\);

-- Location: LCCOMB_X48_Y21_N2
\gpmc_driver|gpmc_data_out~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~184_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~183_combout\ & ((\gpmc_driver|ram[29][8]~q\))) # (!\gpmc_driver|gpmc_data_out~183_combout\ & (\gpmc_driver|ram[25][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][8]~q\,
	datac => \gpmc_driver|ram[29][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~183_combout\,
	combout => \gpmc_driver|gpmc_data_out~184_combout\);

-- Location: LCCOMB_X45_Y18_N12
\gpmc_driver|gpmc_data_out~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~187_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~184_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~186_combout\,
	datad => \gpmc_driver|gpmc_data_out~184_combout\,
	combout => \gpmc_driver|gpmc_data_out~187_combout\);

-- Location: LCCOMB_X45_Y18_N26
\gpmc_driver|gpmc_data_out~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~190_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~187_combout\ & ((\gpmc_driver|gpmc_data_out~189_combout\))) # (!\gpmc_driver|gpmc_data_out~187_combout\ & (\gpmc_driver|gpmc_data_out~182_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_data_out~182_combout\,
	datac => \gpmc_driver|gpmc_data_out~189_combout\,
	datad => \gpmc_driver|gpmc_data_out~187_combout\,
	combout => \gpmc_driver|gpmc_data_out~190_combout\);

-- Location: LCCOMB_X46_Y23_N26
\gpmc_driver|ram[13][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[13][8]~feeder_combout\);

-- Location: FF_X46_Y23_N27
\gpmc_driver|ram[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][8]~q\);

-- Location: LCCOMB_X43_Y19_N14
\gpmc_driver|ram[15][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[15][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[15][8]~feeder_combout\);

-- Location: FF_X43_Y19_N15
\gpmc_driver|ram[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[15][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][8]~q\);

-- Location: FF_X45_Y23_N25
\gpmc_driver|ram[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][8]~q\);

-- Location: LCCOMB_X45_Y23_N2
\gpmc_driver|ram[14][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[14][8]~feeder_combout\);

-- Location: FF_X45_Y23_N3
\gpmc_driver|ram[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][8]~q\);

-- Location: LCCOMB_X45_Y23_N24
\gpmc_driver|gpmc_data_out~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~178_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|ram[14][8]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[12][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][8]~q\,
	datad => \gpmc_driver|ram[14][8]~q\,
	combout => \gpmc_driver|gpmc_data_out~178_combout\);

-- Location: LCCOMB_X45_Y19_N30
\gpmc_driver|gpmc_data_out~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~179_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~178_combout\ & ((\gpmc_driver|ram[15][8]~q\))) # (!\gpmc_driver|gpmc_data_out~178_combout\ & (\gpmc_driver|ram[13][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[15][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~178_combout\,
	combout => \gpmc_driver|gpmc_data_out~179_combout\);

-- Location: LCCOMB_X42_Y18_N16
\gpmc_driver|ram[11][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[11][8]~feeder_combout\);

-- Location: FF_X42_Y18_N17
\gpmc_driver|ram[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][8]~q\);

-- Location: LCCOMB_X42_Y18_N6
\gpmc_driver|ram[9][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[9][8]~feeder_combout\);

-- Location: FF_X42_Y18_N7
\gpmc_driver|ram[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][8]~q\);

-- Location: FF_X41_Y22_N3
\gpmc_driver|ram[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][8]~q\);

-- Location: LCCOMB_X41_Y22_N2
\gpmc_driver|gpmc_data_out~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~171_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][8]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[8][8]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[9][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~171_combout\);

-- Location: FF_X41_Y22_N5
\gpmc_driver|ram[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][8]~q\);

-- Location: LCCOMB_X41_Y22_N4
\gpmc_driver|gpmc_data_out~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~172_combout\ = (\gpmc_driver|gpmc_data_out~171_combout\ & ((\gpmc_driver|ram[11][8]~q\) # ((!\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_data_out~171_combout\ & (((\gpmc_driver|ram[10][8]~q\ & 
-- \gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[11][8]~q\,
	datab => \gpmc_driver|gpmc_data_out~171_combout\,
	datac => \gpmc_driver|ram[10][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~172_combout\);

-- Location: LCCOMB_X41_Y19_N18
\gpmc_driver|ram[5][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[5][8]~feeder_combout\);

-- Location: FF_X41_Y19_N19
\gpmc_driver|ram[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][8]~q\);

-- Location: FF_X41_Y19_N21
\gpmc_driver|ram[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][8]~q\);

-- Location: LCCOMB_X42_Y21_N0
\gpmc_driver|ram[6][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[6][8]~feeder_combout\);

-- Location: FF_X42_Y21_N1
\gpmc_driver|ram[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][8]~q\);

-- Location: FF_X42_Y21_N19
\gpmc_driver|ram[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][8]~q\);

-- Location: LCCOMB_X42_Y21_N18
\gpmc_driver|gpmc_data_out~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~173_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[6][8]~q\,
	datac => \gpmc_driver|ram[4][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~173_combout\);

-- Location: LCCOMB_X41_Y19_N20
\gpmc_driver|gpmc_data_out~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~174_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~173_combout\ & ((\gpmc_driver|ram[7][8]~q\))) # (!\gpmc_driver|gpmc_data_out~173_combout\ & (\gpmc_driver|ram[5][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][8]~q\,
	datac => \gpmc_driver|ram[7][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~173_combout\,
	combout => \gpmc_driver|gpmc_data_out~174_combout\);

-- Location: LCCOMB_X42_Y20_N8
\gpmc_driver|ram[2][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][8]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(8),
	combout => \gpmc_driver|ram[2][8]~feeder_combout\);

-- Location: FF_X42_Y20_N9
\gpmc_driver|ram[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][8]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][8]~q\);

-- Location: FF_X42_Y24_N17
\gpmc_driver|ram[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(8),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][8]~q\);

-- Location: LCCOMB_X48_Y24_N16
\encoder_compP|counter[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[8]~33_combout\ = ((\ENC4B~input_o\ $ (\encoder_compP|counter\(8) $ (!\encoder_compP|counter[7]~32\)))) # (GND)
-- \encoder_compP|counter[8]~34\ = CARRY((\ENC4B~input_o\ & ((\encoder_compP|counter\(8)) # (!\encoder_compP|counter[7]~32\))) # (!\ENC4B~input_o\ & (\encoder_compP|counter\(8) & !\encoder_compP|counter[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC4B~input_o\,
	datab => \encoder_compP|counter\(8),
	datad => VCC,
	cin => \encoder_compP|counter[7]~32\,
	combout => \encoder_compP|counter[8]~33_combout\,
	cout => \encoder_compP|counter[8]~34\);

-- Location: FF_X48_Y24_N17
\encoder_compP|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[8]~33_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(8));

-- Location: LCCOMB_X42_Y24_N20
\gpmc_driver|ram[1][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][8]~feeder_combout\ = \encoder_compP|counter\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder_compP|counter\(8),
	combout => \gpmc_driver|ram[1][8]~feeder_combout\);

-- Location: FF_X42_Y24_N21
\gpmc_driver|ram[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][8]~q\);

-- Location: LCCOMB_X43_Y24_N16
\encoder_compT|counter[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[8]~33_combout\ = ((\ENC3B~input_o\ $ (\encoder_compT|counter\(8) $ (!\encoder_compT|counter[7]~32\)))) # (GND)
-- \encoder_compT|counter[8]~34\ = CARRY((\ENC3B~input_o\ & ((\encoder_compT|counter\(8)) # (!\encoder_compT|counter[7]~32\))) # (!\ENC3B~input_o\ & (\encoder_compT|counter\(8) & !\encoder_compT|counter[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC3B~input_o\,
	datab => \encoder_compT|counter\(8),
	datad => VCC,
	cin => \encoder_compT|counter[7]~32\,
	combout => \encoder_compT|counter[8]~33_combout\,
	cout => \encoder_compT|counter[8]~34\);

-- Location: FF_X43_Y24_N17
\encoder_compT|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[8]~33_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(8));

-- Location: FF_X42_Y24_N19
\gpmc_driver|ram[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][8]~q\);

-- Location: LCCOMB_X42_Y24_N18
\gpmc_driver|gpmc_data_out~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~175_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[1][8]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[1][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[0][8]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~175_combout\);

-- Location: LCCOMB_X42_Y24_N16
\gpmc_driver|gpmc_data_out~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~176_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~175_combout\ & ((\gpmc_driver|ram[3][8]~q\))) # (!\gpmc_driver|gpmc_data_out~175_combout\ & (\gpmc_driver|ram[2][8]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[2][8]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[3][8]~q\,
	datad => \gpmc_driver|gpmc_data_out~175_combout\,
	combout => \gpmc_driver|gpmc_data_out~176_combout\);

-- Location: LCCOMB_X45_Y18_N28
\gpmc_driver|gpmc_data_out~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~177_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|gpmc_data_out~174_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|gpmc_data_out~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~174_combout\,
	datad => \gpmc_driver|gpmc_data_out~176_combout\,
	combout => \gpmc_driver|gpmc_data_out~177_combout\);

-- Location: LCCOMB_X45_Y18_N18
\gpmc_driver|gpmc_data_out~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~180_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~177_combout\ & (\gpmc_driver|gpmc_data_out~179_combout\)) # (!\gpmc_driver|gpmc_data_out~177_combout\ & ((\gpmc_driver|gpmc_data_out~172_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~179_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~172_combout\,
	datad => \gpmc_driver|gpmc_data_out~177_combout\,
	combout => \gpmc_driver|gpmc_data_out~180_combout\);

-- Location: LCCOMB_X45_Y18_N14
\gpmc_driver|gpmc_data_out~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~191_combout\ = (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~180_combout\) # ((\gpmc_driver|gpmc_data_out~21_combout\ & \gpmc_driver|gpmc_data_out~190_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~20_combout\,
	datab => \gpmc_driver|gpmc_data_out~21_combout\,
	datac => \gpmc_driver|gpmc_data_out~190_combout\,
	datad => \gpmc_driver|gpmc_data_out~180_combout\,
	combout => \gpmc_driver|gpmc_data_out~191_combout\);

-- Location: FF_X45_Y18_N15
\gpmc_driver|gpmc_data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~191_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(8));

-- Location: IOIBUF_X54_Y0_N15
\GPMC_DATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(9),
	o => \GPMC_DATA[9]~input_o\);

-- Location: LCCOMB_X48_Y19_N20
\gpmc_driver|gpmc_data_in[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[9]~feeder_combout\ = \GPMC_DATA[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[9]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[9]~feeder_combout\);

-- Location: FF_X48_Y19_N21
\gpmc_driver|gpmc_data_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(9));

-- Location: LCCOMB_X41_Y19_N10
\gpmc_driver|ram[7][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[7][9]~feeder_combout\);

-- Location: FF_X41_Y19_N11
\gpmc_driver|ram[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][9]~q\);

-- Location: FF_X43_Y21_N3
\gpmc_driver|ram[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][9]~q\);

-- Location: FF_X42_Y21_N21
\gpmc_driver|ram[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][9]~q\);

-- Location: LCCOMB_X42_Y23_N28
\gpmc_driver|ram[5][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[5][9]~feeder_combout\);

-- Location: FF_X42_Y23_N29
\gpmc_driver|ram[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][9]~q\);

-- Location: LCCOMB_X42_Y21_N20
\gpmc_driver|gpmc_data_out~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~192_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][9]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][9]~q\,
	datad => \gpmc_driver|ram[5][9]~q\,
	combout => \gpmc_driver|gpmc_data_out~192_combout\);

-- Location: LCCOMB_X43_Y21_N2
\gpmc_driver|gpmc_data_out~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~193_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~192_combout\ & (\gpmc_driver|ram[7][9]~q\)) # (!\gpmc_driver|gpmc_data_out~192_combout\ & ((\gpmc_driver|ram[6][9]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[7][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[6][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~192_combout\,
	combout => \gpmc_driver|gpmc_data_out~193_combout\);

-- Location: LCCOMB_X43_Y19_N16
\gpmc_driver|ram[14][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[14][9]~feeder_combout\);

-- Location: FF_X43_Y19_N17
\gpmc_driver|ram[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][9]~q\);

-- Location: FF_X43_Y19_N19
\gpmc_driver|ram[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][9]~q\);

-- Location: LCCOMB_X48_Y19_N24
\gpmc_driver|ram[13][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[13][9]~feeder_combout\);

-- Location: FF_X48_Y19_N25
\gpmc_driver|ram[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][9]~q\);

-- Location: FF_X46_Y19_N19
\gpmc_driver|ram[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][9]~q\);

-- Location: LCCOMB_X46_Y19_N18
\gpmc_driver|gpmc_data_out~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~199_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~199_combout\);

-- Location: LCCOMB_X43_Y19_N18
\gpmc_driver|gpmc_data_out~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~200_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~199_combout\ & ((\gpmc_driver|ram[15][9]~q\))) # (!\gpmc_driver|gpmc_data_out~199_combout\ & (\gpmc_driver|ram[14][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][9]~q\,
	datac => \gpmc_driver|ram[15][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~199_combout\,
	combout => \gpmc_driver|gpmc_data_out~200_combout\);

-- Location: LCCOMB_X43_Y22_N28
\gpmc_driver|ram[9][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[9][9]~feeder_combout\);

-- Location: FF_X43_Y22_N29
\gpmc_driver|ram[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][9]~q\);

-- Location: FF_X43_Y22_N11
\gpmc_driver|ram[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][9]~q\);

-- Location: LCCOMB_X44_Y22_N26
\gpmc_driver|ram[10][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[10][9]~feeder_combout\);

-- Location: FF_X44_Y22_N27
\gpmc_driver|ram[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][9]~q\);

-- Location: FF_X44_Y22_N17
\gpmc_driver|ram[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][9]~q\);

-- Location: LCCOMB_X44_Y22_N16
\gpmc_driver|gpmc_data_out~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~194_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~194_combout\);

-- Location: LCCOMB_X43_Y22_N10
\gpmc_driver|gpmc_data_out~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~195_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~194_combout\ & ((\gpmc_driver|ram[11][9]~q\))) # (!\gpmc_driver|gpmc_data_out~194_combout\ & (\gpmc_driver|ram[9][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][9]~q\,
	datac => \gpmc_driver|ram[11][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~194_combout\,
	combout => \gpmc_driver|gpmc_data_out~195_combout\);

-- Location: LCCOMB_X48_Y24_N18
\encoder_compP|counter[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[9]~35_combout\ = (\ENC4B~input_o\ & ((\encoder_compP|counter\(9) & (\encoder_compP|counter[8]~34\ & VCC)) # (!\encoder_compP|counter\(9) & (!\encoder_compP|counter[8]~34\)))) # (!\ENC4B~input_o\ & ((\encoder_compP|counter\(9) & 
-- (!\encoder_compP|counter[8]~34\)) # (!\encoder_compP|counter\(9) & ((\encoder_compP|counter[8]~34\) # (GND)))))
-- \encoder_compP|counter[9]~36\ = CARRY((\ENC4B~input_o\ & (!\encoder_compP|counter\(9) & !\encoder_compP|counter[8]~34\)) # (!\ENC4B~input_o\ & ((!\encoder_compP|counter[8]~34\) # (!\encoder_compP|counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC4B~input_o\,
	datab => \encoder_compP|counter\(9),
	datad => VCC,
	cin => \encoder_compP|counter[8]~34\,
	combout => \encoder_compP|counter[9]~35_combout\,
	cout => \encoder_compP|counter[9]~36\);

-- Location: FF_X48_Y24_N19
\encoder_compP|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[9]~35_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(9));

-- Location: LCCOMB_X42_Y24_N26
\gpmc_driver|ram[1][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][9]~feeder_combout\ = \encoder_compP|counter\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(9),
	combout => \gpmc_driver|ram[1][9]~feeder_combout\);

-- Location: FF_X42_Y24_N27
\gpmc_driver|ram[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][9]~q\);

-- Location: FF_X42_Y24_N7
\gpmc_driver|ram[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][9]~q\);

-- Location: LCCOMB_X42_Y20_N18
\gpmc_driver|ram[2][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[2][9]~feeder_combout\);

-- Location: FF_X42_Y20_N19
\gpmc_driver|ram[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][9]~q\);

-- Location: LCCOMB_X43_Y24_N18
\encoder_compT|counter[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[9]~35_combout\ = (\encoder_compT|counter\(9) & ((\ENC3B~input_o\ & (\encoder_compT|counter[8]~34\ & VCC)) # (!\ENC3B~input_o\ & (!\encoder_compT|counter[8]~34\)))) # (!\encoder_compT|counter\(9) & ((\ENC3B~input_o\ & 
-- (!\encoder_compT|counter[8]~34\)) # (!\ENC3B~input_o\ & ((\encoder_compT|counter[8]~34\) # (GND)))))
-- \encoder_compT|counter[9]~36\ = CARRY((\encoder_compT|counter\(9) & (!\ENC3B~input_o\ & !\encoder_compT|counter[8]~34\)) # (!\encoder_compT|counter\(9) & ((!\encoder_compT|counter[8]~34\) # (!\ENC3B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compT|counter\(9),
	datab => \ENC3B~input_o\,
	datad => VCC,
	cin => \encoder_compT|counter[8]~34\,
	combout => \encoder_compT|counter[9]~35_combout\,
	cout => \encoder_compT|counter[9]~36\);

-- Location: FF_X43_Y24_N19
\encoder_compT|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[9]~35_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(9));

-- Location: FF_X42_Y24_N29
\gpmc_driver|ram[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][9]~q\);

-- Location: LCCOMB_X42_Y24_N28
\gpmc_driver|gpmc_data_out~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~196_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[2][9]~q\) # ((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|ram[0][9]~q\ & !\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[2][9]~q\,
	datac => \gpmc_driver|ram[0][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~196_combout\);

-- Location: LCCOMB_X42_Y24_N6
\gpmc_driver|gpmc_data_out~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~197_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~196_combout\ & ((\gpmc_driver|ram[3][9]~q\))) # (!\gpmc_driver|gpmc_data_out~196_combout\ & (\gpmc_driver|ram[1][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[1][9]~q\,
	datac => \gpmc_driver|ram[3][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~196_combout\,
	combout => \gpmc_driver|gpmc_data_out~197_combout\);

-- Location: LCCOMB_X43_Y23_N28
\gpmc_driver|gpmc_data_out~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~198_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_data_out~195_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|gpmc_data_out~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~195_combout\,
	datad => \gpmc_driver|gpmc_data_out~197_combout\,
	combout => \gpmc_driver|gpmc_data_out~198_combout\);

-- Location: LCCOMB_X43_Y23_N22
\gpmc_driver|gpmc_data_out~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~201_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~198_combout\ & ((\gpmc_driver|gpmc_data_out~200_combout\))) # (!\gpmc_driver|gpmc_data_out~198_combout\ & (\gpmc_driver|gpmc_data_out~193_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~193_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~200_combout\,
	datad => \gpmc_driver|gpmc_data_out~198_combout\,
	combout => \gpmc_driver|gpmc_data_out~201_combout\);

-- Location: LCCOMB_X43_Y18_N14
\gpmc_driver|ram[26][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[26][9]~feeder_combout\);

-- Location: FF_X43_Y18_N15
\gpmc_driver|ram[26][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][9]~q\);

-- Location: FF_X46_Y21_N31
\gpmc_driver|ram[30][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][9]~q\);

-- Location: LCCOMB_X43_Y21_N12
\gpmc_driver|ram[22][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[22][9]~feeder_combout\);

-- Location: FF_X43_Y21_N13
\gpmc_driver|ram[22][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][9]~q\);

-- Location: FF_X46_Y21_N17
\gpmc_driver|ram[18][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][9]~q\);

-- Location: LCCOMB_X46_Y21_N16
\gpmc_driver|gpmc_data_out~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~204_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][9]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][9]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][9]~q\,
	datac => \gpmc_driver|ram[18][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~204_combout\);

-- Location: LCCOMB_X46_Y21_N30
\gpmc_driver|gpmc_data_out~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~205_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~204_combout\ & ((\gpmc_driver|ram[30][9]~q\))) # (!\gpmc_driver|gpmc_data_out~204_combout\ & (\gpmc_driver|ram[26][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[30][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~204_combout\,
	combout => \gpmc_driver|gpmc_data_out~205_combout\);

-- Location: LCCOMB_X45_Y20_N14
\gpmc_driver|ram[24][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[24][9]~feeder_combout\);

-- Location: FF_X45_Y20_N15
\gpmc_driver|ram[24][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][9]~q\);

-- Location: FF_X44_Y20_N19
\gpmc_driver|ram[28][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][9]~q\);

-- Location: LCCOMB_X43_Y20_N0
\gpmc_driver|ram[20][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[20][9]~feeder_combout\);

-- Location: FF_X43_Y20_N1
\gpmc_driver|ram[20][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][9]~q\);

-- Location: FF_X44_Y20_N25
\gpmc_driver|ram[16][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][9]~q\);

-- Location: LCCOMB_X44_Y20_N24
\gpmc_driver|gpmc_data_out~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~206_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~206_combout\);

-- Location: LCCOMB_X44_Y20_N18
\gpmc_driver|gpmc_data_out~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~207_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~206_combout\ & ((\gpmc_driver|ram[28][9]~q\))) # (!\gpmc_driver|gpmc_data_out~206_combout\ & (\gpmc_driver|ram[24][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~206_combout\,
	combout => \gpmc_driver|gpmc_data_out~207_combout\);

-- Location: LCCOMB_X44_Y20_N28
\gpmc_driver|gpmc_data_out~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~208_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~205_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|gpmc_data_out~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~205_combout\,
	datad => \gpmc_driver|gpmc_data_out~207_combout\,
	combout => \gpmc_driver|gpmc_data_out~208_combout\);

-- Location: LCCOMB_X49_Y22_N28
\gpmc_driver|ram[21][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[21][9]~feeder_combout\);

-- Location: FF_X49_Y22_N29
\gpmc_driver|ram[21][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][9]~q\);

-- Location: FF_X48_Y21_N31
\gpmc_driver|ram[29][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][9]~q\);

-- Location: LCCOMB_X48_Y23_N0
\gpmc_driver|ram[25][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[25][9]~feeder_combout\);

-- Location: FF_X48_Y23_N1
\gpmc_driver|ram[25][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][9]~q\);

-- Location: FF_X48_Y21_N17
\gpmc_driver|ram[17][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][9]~q\);

-- Location: LCCOMB_X48_Y21_N16
\gpmc_driver|gpmc_data_out~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~202_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][9]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[25][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[17][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~202_combout\);

-- Location: LCCOMB_X48_Y21_N30
\gpmc_driver|gpmc_data_out~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~203_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~202_combout\ & ((\gpmc_driver|ram[29][9]~q\))) # (!\gpmc_driver|gpmc_data_out~202_combout\ & (\gpmc_driver|ram[21][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[21][9]~q\,
	datac => \gpmc_driver|ram[29][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~202_combout\,
	combout => \gpmc_driver|gpmc_data_out~203_combout\);

-- Location: LCCOMB_X49_Y20_N8
\gpmc_driver|ram[23][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[23][9]~feeder_combout\);

-- Location: FF_X49_Y20_N9
\gpmc_driver|ram[23][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][9]~q\);

-- Location: FF_X49_Y19_N7
\gpmc_driver|ram[31][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][9]~q\);

-- Location: LCCOMB_X49_Y21_N12
\gpmc_driver|ram[27][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][9]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(9),
	combout => \gpmc_driver|ram[27][9]~feeder_combout\);

-- Location: FF_X49_Y21_N13
\gpmc_driver|ram[27][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][9]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][9]~q\);

-- Location: FF_X49_Y19_N29
\gpmc_driver|ram[19][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(9),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][9]~q\);

-- Location: LCCOMB_X49_Y19_N28
\gpmc_driver|gpmc_data_out~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~209_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][9]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][9]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][9]~q\,
	datac => \gpmc_driver|ram[19][9]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~209_combout\);

-- Location: LCCOMB_X49_Y19_N6
\gpmc_driver|gpmc_data_out~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~210_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~209_combout\ & ((\gpmc_driver|ram[31][9]~q\))) # (!\gpmc_driver|gpmc_data_out~209_combout\ & (\gpmc_driver|ram[23][9]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][9]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][9]~q\,
	datad => \gpmc_driver|gpmc_data_out~209_combout\,
	combout => \gpmc_driver|gpmc_data_out~210_combout\);

-- Location: LCCOMB_X44_Y20_N2
\gpmc_driver|gpmc_data_out~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~211_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~208_combout\ & ((\gpmc_driver|gpmc_data_out~210_combout\))) # (!\gpmc_driver|gpmc_data_out~208_combout\ & (\gpmc_driver|gpmc_data_out~203_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~208_combout\,
	datac => \gpmc_driver|gpmc_data_out~203_combout\,
	datad => \gpmc_driver|gpmc_data_out~210_combout\,
	combout => \gpmc_driver|gpmc_data_out~211_combout\);

-- Location: LCCOMB_X43_Y23_N16
\gpmc_driver|gpmc_data_out~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~212_combout\ = (\gpmc_driver|gpmc_data_out~21_combout\ & ((\gpmc_driver|gpmc_data_out~211_combout\) # ((\gpmc_driver|gpmc_data_out~20_combout\ & \gpmc_driver|gpmc_data_out~201_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~21_combout\,
	datab => \gpmc_driver|gpmc_data_out~20_combout\,
	datac => \gpmc_driver|gpmc_data_out~201_combout\,
	datad => \gpmc_driver|gpmc_data_out~211_combout\,
	combout => \gpmc_driver|gpmc_data_out~212_combout\);

-- Location: FF_X43_Y23_N17
\gpmc_driver|gpmc_data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~212_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(9));

-- Location: IOIBUF_X56_Y0_N1
\GPMC_DATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(10),
	o => \GPMC_DATA[10]~input_o\);

-- Location: FF_X45_Y19_N27
\gpmc_driver|gpmc_data_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(10));

-- Location: LCCOMB_X46_Y18_N20
\gpmc_driver|ram[22][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[22][10]~feeder_combout\);

-- Location: FF_X46_Y18_N21
\gpmc_driver|ram[22][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][10]~q\);

-- Location: FF_X46_Y21_N27
\gpmc_driver|ram[30][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][10]~q\);

-- Location: LCCOMB_X43_Y18_N16
\gpmc_driver|ram[26][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[26][10]~feeder_combout\);

-- Location: FF_X43_Y18_N17
\gpmc_driver|ram[26][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][10]~q\);

-- Location: FF_X46_Y21_N29
\gpmc_driver|ram[18][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][10]~q\);

-- Location: LCCOMB_X46_Y21_N28
\gpmc_driver|gpmc_data_out~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~223_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[26][10]~q\,
	datac => \gpmc_driver|ram[18][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~223_combout\);

-- Location: LCCOMB_X46_Y21_N26
\gpmc_driver|gpmc_data_out~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~224_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~223_combout\ & ((\gpmc_driver|ram[30][10]~q\))) # (!\gpmc_driver|gpmc_data_out~223_combout\ & (\gpmc_driver|ram[22][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][10]~q\,
	datac => \gpmc_driver|ram[30][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~223_combout\,
	combout => \gpmc_driver|gpmc_data_out~224_combout\);

-- Location: LCCOMB_X49_Y21_N14
\gpmc_driver|ram[27][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[27][10]~feeder_combout\);

-- Location: FF_X49_Y21_N15
\gpmc_driver|ram[27][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][10]~q\);

-- Location: FF_X49_Y19_N19
\gpmc_driver|ram[31][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][10]~q\);

-- Location: LCCOMB_X45_Y19_N8
\gpmc_driver|ram[23][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[23][10]~feeder_combout\);

-- Location: FF_X45_Y19_N9
\gpmc_driver|ram[23][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][10]~q\);

-- Location: FF_X49_Y19_N9
\gpmc_driver|ram[19][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][10]~q\);

-- Location: LCCOMB_X49_Y19_N8
\gpmc_driver|gpmc_data_out~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~230_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[23][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[19][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[23][10]~q\,
	datac => \gpmc_driver|ram[19][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~230_combout\);

-- Location: LCCOMB_X49_Y19_N18
\gpmc_driver|gpmc_data_out~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~231_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~230_combout\ & ((\gpmc_driver|ram[31][10]~q\))) # (!\gpmc_driver|gpmc_data_out~230_combout\ & (\gpmc_driver|ram[27][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[31][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~230_combout\,
	combout => \gpmc_driver|gpmc_data_out~231_combout\);

-- Location: LCCOMB_X43_Y20_N6
\gpmc_driver|ram[20][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[20][10]~feeder_combout\);

-- Location: FF_X43_Y20_N7
\gpmc_driver|ram[20][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][10]~q\);

-- Location: LCCOMB_X45_Y20_N16
\gpmc_driver|ram[24][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[24][10]~feeder_combout\);

-- Location: FF_X45_Y20_N17
\gpmc_driver|ram[24][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][10]~q\);

-- Location: FF_X46_Y20_N17
\gpmc_driver|ram[16][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][10]~q\);

-- Location: LCCOMB_X46_Y20_N16
\gpmc_driver|gpmc_data_out~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~227_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][10]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][10]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~227_combout\);

-- Location: FF_X46_Y20_N19
\gpmc_driver|ram[28][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][10]~q\);

-- Location: LCCOMB_X46_Y20_N18
\gpmc_driver|gpmc_data_out~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~228_combout\ = (\gpmc_driver|gpmc_data_out~227_combout\ & (((\gpmc_driver|ram[28][10]~q\) # (!\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_data_out~227_combout\ & (\gpmc_driver|ram[20][10]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][10]~q\,
	datab => \gpmc_driver|gpmc_data_out~227_combout\,
	datac => \gpmc_driver|ram[28][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~228_combout\);

-- Location: LCCOMB_X48_Y23_N2
\gpmc_driver|ram[25][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[25][10]~feeder_combout\);

-- Location: FF_X48_Y23_N3
\gpmc_driver|ram[25][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][10]~q\);

-- Location: FF_X48_Y21_N23
\gpmc_driver|ram[29][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][10]~q\);

-- Location: LCCOMB_X49_Y22_N22
\gpmc_driver|ram[21][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[21][10]~feeder_combout\);

-- Location: FF_X49_Y22_N23
\gpmc_driver|ram[21][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][10]~q\);

-- Location: FF_X48_Y21_N29
\gpmc_driver|ram[17][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][10]~q\);

-- Location: LCCOMB_X48_Y21_N28
\gpmc_driver|gpmc_data_out~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~225_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][10]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][10]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[17][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~225_combout\);

-- Location: LCCOMB_X48_Y21_N22
\gpmc_driver|gpmc_data_out~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~226_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~225_combout\ & ((\gpmc_driver|ram[29][10]~q\))) # (!\gpmc_driver|gpmc_data_out~225_combout\ & (\gpmc_driver|ram[25][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][10]~q\,
	datac => \gpmc_driver|ram[29][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~225_combout\,
	combout => \gpmc_driver|gpmc_data_out~226_combout\);

-- Location: LCCOMB_X46_Y22_N16
\gpmc_driver|gpmc_data_out~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~229_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|gpmc_data_out~226_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|gpmc_data_out~228_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~228_combout\,
	datad => \gpmc_driver|gpmc_data_out~226_combout\,
	combout => \gpmc_driver|gpmc_data_out~229_combout\);

-- Location: LCCOMB_X46_Y22_N22
\gpmc_driver|gpmc_data_out~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~232_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~229_combout\ & ((\gpmc_driver|gpmc_data_out~231_combout\))) # (!\gpmc_driver|gpmc_data_out~229_combout\ & (\gpmc_driver|gpmc_data_out~224_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~224_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~231_combout\,
	datad => \gpmc_driver|gpmc_data_out~229_combout\,
	combout => \gpmc_driver|gpmc_data_out~232_combout\);

-- Location: LCCOMB_X43_Y22_N8
\gpmc_driver|ram[11][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[11][10]~feeder_combout\);

-- Location: FF_X43_Y22_N9
\gpmc_driver|ram[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][10]~q\);

-- Location: FF_X44_Y22_N15
\gpmc_driver|ram[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][10]~q\);

-- Location: FF_X41_Y22_N13
\gpmc_driver|ram[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][10]~q\);

-- Location: LCCOMB_X42_Y18_N22
\gpmc_driver|ram[9][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[9][10]~feeder_combout\);

-- Location: FF_X42_Y18_N23
\gpmc_driver|ram[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][10]~q\);

-- Location: LCCOMB_X41_Y22_N12
\gpmc_driver|gpmc_data_out~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~213_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][10]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[8][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][10]~q\,
	datad => \gpmc_driver|ram[9][10]~q\,
	combout => \gpmc_driver|gpmc_data_out~213_combout\);

-- Location: LCCOMB_X44_Y22_N14
\gpmc_driver|gpmc_data_out~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~214_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~213_combout\ & (\gpmc_driver|ram[11][10]~q\)) # (!\gpmc_driver|gpmc_data_out~213_combout\ & ((\gpmc_driver|ram[10][10]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[11][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[10][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~213_combout\,
	combout => \gpmc_driver|gpmc_data_out~214_combout\);

-- Location: LCCOMB_X45_Y23_N22
\gpmc_driver|ram[14][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[14][10]~feeder_combout\);

-- Location: FF_X45_Y23_N23
\gpmc_driver|ram[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][10]~q\);

-- Location: FF_X45_Y23_N1
\gpmc_driver|ram[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][10]~q\);

-- Location: LCCOMB_X45_Y23_N0
\gpmc_driver|gpmc_data_out~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~220_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[14][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[12][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~220_combout\);

-- Location: LCCOMB_X46_Y23_N8
\gpmc_driver|ram[13][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[13][10]~feeder_combout\);

-- Location: FF_X46_Y23_N9
\gpmc_driver|ram[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][10]~q\);

-- Location: FF_X46_Y23_N31
\gpmc_driver|ram[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][10]~q\);

-- Location: LCCOMB_X46_Y23_N30
\gpmc_driver|gpmc_data_out~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~221_combout\ = (\gpmc_driver|gpmc_data_out~220_combout\ & (((\gpmc_driver|ram[15][10]~q\) # (!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~220_combout\ & (\gpmc_driver|ram[13][10]~q\ & 
-- ((\gpmc_driver|gpmc_addr_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~220_combout\,
	datab => \gpmc_driver|ram[13][10]~q\,
	datac => \gpmc_driver|ram[15][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~221_combout\);

-- Location: LCCOMB_X42_Y20_N16
\gpmc_driver|ram[2][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[2][10]~feeder_combout\);

-- Location: FF_X42_Y20_N17
\gpmc_driver|ram[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][10]~q\);

-- Location: FF_X46_Y22_N15
\gpmc_driver|ram[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][10]~q\);

-- Location: LCCOMB_X48_Y24_N20
\encoder_compP|counter[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[10]~37_combout\ = ((\ENC4B~input_o\ $ (\encoder_compP|counter\(10) $ (!\encoder_compP|counter[9]~36\)))) # (GND)
-- \encoder_compP|counter[10]~38\ = CARRY((\ENC4B~input_o\ & ((\encoder_compP|counter\(10)) # (!\encoder_compP|counter[9]~36\))) # (!\ENC4B~input_o\ & (\encoder_compP|counter\(10) & !\encoder_compP|counter[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC4B~input_o\,
	datab => \encoder_compP|counter\(10),
	datad => VCC,
	cin => \encoder_compP|counter[9]~36\,
	combout => \encoder_compP|counter[10]~37_combout\,
	cout => \encoder_compP|counter[10]~38\);

-- Location: FF_X48_Y24_N21
\encoder_compP|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[10]~37_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(10));

-- Location: LCCOMB_X46_Y24_N20
\gpmc_driver|ram[1][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][10]~feeder_combout\ = \encoder_compP|counter\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(10),
	combout => \gpmc_driver|ram[1][10]~feeder_combout\);

-- Location: FF_X46_Y24_N21
\gpmc_driver|ram[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][10]~q\);

-- Location: LCCOMB_X43_Y24_N20
\encoder_compT|counter[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[10]~37_combout\ = ((\encoder_compT|counter\(10) $ (\ENC3B~input_o\ $ (!\encoder_compT|counter[9]~36\)))) # (GND)
-- \encoder_compT|counter[10]~38\ = CARRY((\encoder_compT|counter\(10) & ((\ENC3B~input_o\) # (!\encoder_compT|counter[9]~36\))) # (!\encoder_compT|counter\(10) & (\ENC3B~input_o\ & !\encoder_compT|counter[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compT|counter\(10),
	datab => \ENC3B~input_o\,
	datad => VCC,
	cin => \encoder_compT|counter[9]~36\,
	combout => \encoder_compT|counter[10]~37_combout\,
	cout => \encoder_compT|counter[10]~38\);

-- Location: FF_X43_Y24_N21
\encoder_compT|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[10]~37_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(10));

-- Location: FF_X46_Y24_N7
\gpmc_driver|ram[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][10]~q\);

-- Location: LCCOMB_X46_Y24_N6
\gpmc_driver|gpmc_data_out~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~217_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[1][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[1][10]~q\,
	datac => \gpmc_driver|ram[0][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~217_combout\);

-- Location: LCCOMB_X46_Y22_N14
\gpmc_driver|gpmc_data_out~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~218_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~217_combout\ & ((\gpmc_driver|ram[3][10]~q\))) # (!\gpmc_driver|gpmc_data_out~217_combout\ & (\gpmc_driver|ram[2][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[2][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[3][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~217_combout\,
	combout => \gpmc_driver|gpmc_data_out~218_combout\);

-- Location: LCCOMB_X42_Y23_N26
\gpmc_driver|ram[5][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[5][10]~feeder_combout\);

-- Location: FF_X42_Y23_N27
\gpmc_driver|ram[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][10]~q\);

-- Location: FF_X42_Y23_N9
\gpmc_driver|ram[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][10]~q\);

-- Location: LCCOMB_X42_Y21_N22
\gpmc_driver|ram[6][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][10]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(10),
	combout => \gpmc_driver|ram[6][10]~feeder_combout\);

-- Location: FF_X42_Y21_N23
\gpmc_driver|ram[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][10]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][10]~q\);

-- Location: FF_X42_Y21_N9
\gpmc_driver|ram[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(10),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][10]~q\);

-- Location: LCCOMB_X42_Y21_N8
\gpmc_driver|gpmc_data_out~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~215_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][10]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[6][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][10]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~215_combout\);

-- Location: LCCOMB_X42_Y23_N8
\gpmc_driver|gpmc_data_out~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~216_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~215_combout\ & ((\gpmc_driver|ram[7][10]~q\))) # (!\gpmc_driver|gpmc_data_out~215_combout\ & (\gpmc_driver|ram[5][10]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][10]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][10]~q\,
	datad => \gpmc_driver|gpmc_data_out~215_combout\,
	combout => \gpmc_driver|gpmc_data_out~216_combout\);

-- Location: LCCOMB_X46_Y22_N28
\gpmc_driver|gpmc_data_out~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~219_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~216_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~218_combout\,
	datad => \gpmc_driver|gpmc_data_out~216_combout\,
	combout => \gpmc_driver|gpmc_data_out~219_combout\);

-- Location: LCCOMB_X46_Y22_N2
\gpmc_driver|gpmc_data_out~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~222_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~219_combout\ & ((\gpmc_driver|gpmc_data_out~221_combout\))) # (!\gpmc_driver|gpmc_data_out~219_combout\ & (\gpmc_driver|gpmc_data_out~214_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~214_combout\,
	datac => \gpmc_driver|gpmc_data_out~221_combout\,
	datad => \gpmc_driver|gpmc_data_out~219_combout\,
	combout => \gpmc_driver|gpmc_data_out~222_combout\);

-- Location: LCCOMB_X46_Y22_N6
\gpmc_driver|gpmc_data_out~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~233_combout\ = (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~222_combout\) # ((\gpmc_driver|gpmc_data_out~21_combout\ & \gpmc_driver|gpmc_data_out~232_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~232_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~20_combout\,
	datab => \gpmc_driver|gpmc_data_out~21_combout\,
	datac => \gpmc_driver|gpmc_data_out~232_combout\,
	datad => \gpmc_driver|gpmc_data_out~222_combout\,
	combout => \gpmc_driver|gpmc_data_out~233_combout\);

-- Location: FF_X46_Y22_N7
\gpmc_driver|gpmc_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~233_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(10));

-- Location: IOIBUF_X59_Y0_N29
\GPMC_DATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(11),
	o => \GPMC_DATA[11]~input_o\);

-- Location: FF_X49_Y20_N27
\gpmc_driver|gpmc_data_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GPMC_DATA[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(11));

-- Location: LCCOMB_X45_Y23_N14
\gpmc_driver|ram[14][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[14][11]~feeder_combout\);

-- Location: FF_X45_Y23_N15
\gpmc_driver|ram[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][11]~q\);

-- Location: FF_X46_Y23_N7
\gpmc_driver|ram[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][11]~q\);

-- Location: FF_X45_Y23_N13
\gpmc_driver|ram[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][11]~q\);

-- Location: LCCOMB_X46_Y23_N16
\gpmc_driver|ram[13][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[13][11]~feeder_combout\);

-- Location: FF_X46_Y23_N17
\gpmc_driver|ram[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][11]~q\);

-- Location: LCCOMB_X45_Y23_N12
\gpmc_driver|gpmc_data_out~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~241_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[13][11]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[12][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][11]~q\,
	datad => \gpmc_driver|ram[13][11]~q\,
	combout => \gpmc_driver|gpmc_data_out~241_combout\);

-- Location: LCCOMB_X46_Y23_N6
\gpmc_driver|gpmc_data_out~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~242_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~241_combout\ & ((\gpmc_driver|ram[15][11]~q\))) # (!\gpmc_driver|gpmc_data_out~241_combout\ & (\gpmc_driver|ram[14][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[15][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~241_combout\,
	combout => \gpmc_driver|gpmc_data_out~242_combout\);

-- Location: LCCOMB_X41_Y19_N8
\gpmc_driver|ram[7][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[7][11]~feeder_combout\);

-- Location: FF_X41_Y19_N9
\gpmc_driver|ram[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][11]~q\);

-- Location: FF_X41_Y23_N5
\gpmc_driver|ram[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][11]~q\);

-- Location: LCCOMB_X41_Y21_N12
\gpmc_driver|ram[5][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[5][11]~feeder_combout\);

-- Location: FF_X41_Y21_N13
\gpmc_driver|ram[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][11]~q\);

-- Location: FF_X41_Y21_N27
\gpmc_driver|ram[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][11]~q\);

-- Location: LCCOMB_X41_Y21_N26
\gpmc_driver|gpmc_data_out~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~234_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[4][11]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~234_combout\);

-- Location: LCCOMB_X41_Y23_N4
\gpmc_driver|gpmc_data_out~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~235_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~234_combout\ & (\gpmc_driver|ram[7][11]~q\)) # (!\gpmc_driver|gpmc_data_out~234_combout\ & ((\gpmc_driver|ram[6][11]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[7][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[6][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~234_combout\,
	combout => \gpmc_driver|gpmc_data_out~235_combout\);

-- Location: LCCOMB_X48_Y24_N22
\encoder_compP|counter[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[11]~39_combout\ = (\encoder_compP|counter\(11) & ((\ENC4B~input_o\ & (\encoder_compP|counter[10]~38\ & VCC)) # (!\ENC4B~input_o\ & (!\encoder_compP|counter[10]~38\)))) # (!\encoder_compP|counter\(11) & ((\ENC4B~input_o\ & 
-- (!\encoder_compP|counter[10]~38\)) # (!\ENC4B~input_o\ & ((\encoder_compP|counter[10]~38\) # (GND)))))
-- \encoder_compP|counter[11]~40\ = CARRY((\encoder_compP|counter\(11) & (!\ENC4B~input_o\ & !\encoder_compP|counter[10]~38\)) # (!\encoder_compP|counter\(11) & ((!\encoder_compP|counter[10]~38\) # (!\ENC4B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compP|counter\(11),
	datab => \ENC4B~input_o\,
	datad => VCC,
	cin => \encoder_compP|counter[10]~38\,
	combout => \encoder_compP|counter[11]~39_combout\,
	cout => \encoder_compP|counter[11]~40\);

-- Location: FF_X48_Y24_N23
\encoder_compP|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[11]~39_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(11));

-- Location: LCCOMB_X46_Y24_N0
\gpmc_driver|ram[1][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][11]~feeder_combout\ = \encoder_compP|counter\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(11),
	combout => \gpmc_driver|ram[1][11]~feeder_combout\);

-- Location: FF_X46_Y24_N1
\gpmc_driver|ram[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][11]~q\);

-- Location: FF_X44_Y23_N23
\gpmc_driver|ram[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][11]~q\);

-- Location: LCCOMB_X43_Y24_N22
\encoder_compT|counter[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[11]~39_combout\ = (\encoder_compT|counter\(11) & ((\ENC3B~input_o\ & (\encoder_compT|counter[10]~38\ & VCC)) # (!\ENC3B~input_o\ & (!\encoder_compT|counter[10]~38\)))) # (!\encoder_compT|counter\(11) & ((\ENC3B~input_o\ & 
-- (!\encoder_compT|counter[10]~38\)) # (!\ENC3B~input_o\ & ((\encoder_compT|counter[10]~38\) # (GND)))))
-- \encoder_compT|counter[11]~40\ = CARRY((\encoder_compT|counter\(11) & (!\ENC3B~input_o\ & !\encoder_compT|counter[10]~38\)) # (!\encoder_compT|counter\(11) & ((!\encoder_compT|counter[10]~38\) # (!\ENC3B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compT|counter\(11),
	datab => \ENC3B~input_o\,
	datad => VCC,
	cin => \encoder_compT|counter[10]~38\,
	combout => \encoder_compT|counter[11]~39_combout\,
	cout => \encoder_compT|counter[11]~40\);

-- Location: FF_X43_Y24_N23
\encoder_compT|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[11]~39_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(11));

-- Location: FF_X44_Y23_N17
\gpmc_driver|ram[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][11]~q\);

-- Location: LCCOMB_X42_Y20_N30
\gpmc_driver|ram[2][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[2][11]~feeder_combout\);

-- Location: FF_X42_Y20_N31
\gpmc_driver|ram[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][11]~q\);

-- Location: LCCOMB_X44_Y23_N16
\gpmc_driver|gpmc_data_out~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~238_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[2][11]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[0][11]~q\,
	datad => \gpmc_driver|ram[2][11]~q\,
	combout => \gpmc_driver|gpmc_data_out~238_combout\);

-- Location: LCCOMB_X44_Y23_N22
\gpmc_driver|gpmc_data_out~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~239_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~238_combout\ & ((\gpmc_driver|ram[3][11]~q\))) # (!\gpmc_driver|gpmc_data_out~238_combout\ & (\gpmc_driver|ram[1][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[1][11]~q\,
	datac => \gpmc_driver|ram[3][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~238_combout\,
	combout => \gpmc_driver|gpmc_data_out~239_combout\);

-- Location: LCCOMB_X44_Y22_N8
\gpmc_driver|ram[10][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[10][11]~feeder_combout\);

-- Location: FF_X44_Y22_N9
\gpmc_driver|ram[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][11]~q\);

-- Location: FF_X44_Y22_N31
\gpmc_driver|ram[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][11]~q\);

-- Location: LCCOMB_X44_Y22_N30
\gpmc_driver|gpmc_data_out~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~236_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~236_combout\);

-- Location: LCCOMB_X43_Y22_N22
\gpmc_driver|ram[9][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[9][11]~feeder_combout\);

-- Location: FF_X43_Y22_N23
\gpmc_driver|ram[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][11]~q\);

-- Location: LCCOMB_X43_Y22_N12
\gpmc_driver|ram[11][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[11][11]~feeder_combout\);

-- Location: FF_X43_Y22_N13
\gpmc_driver|ram[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][11]~q\);

-- Location: LCCOMB_X44_Y22_N0
\gpmc_driver|gpmc_data_out~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~237_combout\ = (\gpmc_driver|gpmc_data_out~236_combout\ & (((\gpmc_driver|ram[11][11]~q\) # (!\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_data_out~236_combout\ & (\gpmc_driver|ram[9][11]~q\ & 
-- (\gpmc_driver|gpmc_addr_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~236_combout\,
	datab => \gpmc_driver|ram[9][11]~q\,
	datac => \gpmc_driver|gpmc_addr_in\(0),
	datad => \gpmc_driver|ram[11][11]~q\,
	combout => \gpmc_driver|gpmc_data_out~237_combout\);

-- Location: LCCOMB_X44_Y23_N24
\gpmc_driver|gpmc_data_out~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~240_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~237_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~239_combout\,
	datad => \gpmc_driver|gpmc_data_out~237_combout\,
	combout => \gpmc_driver|gpmc_data_out~240_combout\);

-- Location: LCCOMB_X44_Y23_N14
\gpmc_driver|gpmc_data_out~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~243_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~240_combout\ & (\gpmc_driver|gpmc_data_out~242_combout\)) # (!\gpmc_driver|gpmc_data_out~240_combout\ & ((\gpmc_driver|gpmc_data_out~235_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~242_combout\,
	datac => \gpmc_driver|gpmc_data_out~235_combout\,
	datad => \gpmc_driver|gpmc_data_out~240_combout\,
	combout => \gpmc_driver|gpmc_data_out~243_combout\);

-- Location: LCCOMB_X49_Y22_N8
\gpmc_driver|ram[21][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[21][11]~feeder_combout\);

-- Location: FF_X49_Y22_N9
\gpmc_driver|ram[21][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][11]~q\);

-- Location: FF_X48_Y21_N19
\gpmc_driver|ram[29][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][11]~q\);

-- Location: LCCOMB_X48_Y23_N12
\gpmc_driver|ram[25][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[25][11]~feeder_combout\);

-- Location: FF_X48_Y23_N13
\gpmc_driver|ram[25][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][11]~q\);

-- Location: FF_X48_Y21_N5
\gpmc_driver|ram[17][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][11]~q\);

-- Location: LCCOMB_X48_Y21_N4
\gpmc_driver|gpmc_data_out~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~244_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][11]~q\,
	datac => \gpmc_driver|ram[17][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~244_combout\);

-- Location: LCCOMB_X48_Y21_N18
\gpmc_driver|gpmc_data_out~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~245_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~244_combout\ & ((\gpmc_driver|ram[29][11]~q\))) # (!\gpmc_driver|gpmc_data_out~244_combout\ & (\gpmc_driver|ram[21][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[29][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~244_combout\,
	combout => \gpmc_driver|gpmc_data_out~245_combout\);

-- Location: LCCOMB_X45_Y19_N14
\gpmc_driver|ram[23][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[23][11]~feeder_combout\);

-- Location: FF_X45_Y19_N15
\gpmc_driver|ram[23][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][11]~q\);

-- Location: FF_X49_Y19_N3
\gpmc_driver|ram[31][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][11]~q\);

-- Location: LCCOMB_X49_Y21_N20
\gpmc_driver|ram[27][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[27][11]~feeder_combout\);

-- Location: FF_X49_Y21_N21
\gpmc_driver|ram[27][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][11]~q\);

-- Location: FF_X49_Y19_N17
\gpmc_driver|ram[19][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][11]~q\);

-- Location: LCCOMB_X49_Y19_N16
\gpmc_driver|gpmc_data_out~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~251_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][11]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][11]~q\,
	datac => \gpmc_driver|ram[19][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~251_combout\);

-- Location: LCCOMB_X49_Y19_N2
\gpmc_driver|gpmc_data_out~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~252_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~251_combout\ & ((\gpmc_driver|ram[31][11]~q\))) # (!\gpmc_driver|gpmc_data_out~251_combout\ & (\gpmc_driver|ram[23][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~251_combout\,
	combout => \gpmc_driver|gpmc_data_out~252_combout\);

-- Location: LCCOMB_X43_Y18_N26
\gpmc_driver|ram[26][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[26][11]~feeder_combout\);

-- Location: FF_X43_Y18_N27
\gpmc_driver|ram[26][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][11]~q\);

-- Location: FF_X46_Y21_N3
\gpmc_driver|ram[30][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][11]~q\);

-- Location: LCCOMB_X43_Y21_N6
\gpmc_driver|ram[22][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[22][11]~feeder_combout\);

-- Location: FF_X43_Y21_N7
\gpmc_driver|ram[22][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][11]~q\);

-- Location: FF_X46_Y21_N25
\gpmc_driver|ram[18][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][11]~q\);

-- Location: LCCOMB_X46_Y21_N24
\gpmc_driver|gpmc_data_out~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~246_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][11]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][11]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][11]~q\,
	datac => \gpmc_driver|ram[18][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~246_combout\);

-- Location: LCCOMB_X46_Y21_N2
\gpmc_driver|gpmc_data_out~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~247_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~246_combout\ & ((\gpmc_driver|ram[30][11]~q\))) # (!\gpmc_driver|gpmc_data_out~246_combout\ & (\gpmc_driver|ram[26][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][11]~q\,
	datac => \gpmc_driver|ram[30][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~246_combout\,
	combout => \gpmc_driver|gpmc_data_out~247_combout\);

-- Location: LCCOMB_X45_Y20_N30
\gpmc_driver|ram[24][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[24][11]~feeder_combout\);

-- Location: FF_X45_Y20_N31
\gpmc_driver|ram[24][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][11]~q\);

-- Location: FF_X44_Y20_N23
\gpmc_driver|ram[28][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][11]~q\);

-- Location: LCCOMB_X43_Y20_N8
\gpmc_driver|ram[20][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][11]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(11),
	combout => \gpmc_driver|ram[20][11]~feeder_combout\);

-- Location: FF_X43_Y20_N9
\gpmc_driver|ram[20][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][11]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][11]~q\);

-- Location: FF_X44_Y20_N17
\gpmc_driver|ram[16][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(11),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][11]~q\);

-- Location: LCCOMB_X44_Y20_N16
\gpmc_driver|gpmc_data_out~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~248_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][11]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][11]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][11]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~248_combout\);

-- Location: LCCOMB_X44_Y20_N22
\gpmc_driver|gpmc_data_out~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~249_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~248_combout\ & ((\gpmc_driver|ram[28][11]~q\))) # (!\gpmc_driver|gpmc_data_out~248_combout\ & (\gpmc_driver|ram[24][11]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[24][11]~q\,
	datac => \gpmc_driver|ram[28][11]~q\,
	datad => \gpmc_driver|gpmc_data_out~248_combout\,
	combout => \gpmc_driver|gpmc_data_out~249_combout\);

-- Location: LCCOMB_X43_Y23_N12
\gpmc_driver|gpmc_data_out~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~250_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~247_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|gpmc_data_out~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~247_combout\,
	datad => \gpmc_driver|gpmc_data_out~249_combout\,
	combout => \gpmc_driver|gpmc_data_out~250_combout\);

-- Location: LCCOMB_X43_Y23_N10
\gpmc_driver|gpmc_data_out~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~253_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~250_combout\ & ((\gpmc_driver|gpmc_data_out~252_combout\))) # (!\gpmc_driver|gpmc_data_out~250_combout\ & (\gpmc_driver|gpmc_data_out~245_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~245_combout\,
	datac => \gpmc_driver|gpmc_data_out~252_combout\,
	datad => \gpmc_driver|gpmc_data_out~250_combout\,
	combout => \gpmc_driver|gpmc_data_out~253_combout\);

-- Location: LCCOMB_X43_Y23_N26
\gpmc_driver|gpmc_data_out~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~254_combout\ = (\gpmc_driver|gpmc_data_out~21_combout\ & ((\gpmc_driver|gpmc_data_out~253_combout\) # ((\gpmc_driver|gpmc_data_out~20_combout\ & \gpmc_driver|gpmc_data_out~243_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~243_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~21_combout\,
	datab => \gpmc_driver|gpmc_data_out~20_combout\,
	datac => \gpmc_driver|gpmc_data_out~243_combout\,
	datad => \gpmc_driver|gpmc_data_out~253_combout\,
	combout => \gpmc_driver|gpmc_data_out~254_combout\);

-- Location: FF_X43_Y23_N27
\gpmc_driver|gpmc_data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~254_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(11));

-- Location: IOIBUF_X61_Y0_N29
\GPMC_DATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(12),
	o => \GPMC_DATA[12]~input_o\);

-- Location: LCCOMB_X50_Y19_N22
\gpmc_driver|gpmc_data_in[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[12]~feeder_combout\ = \GPMC_DATA[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[12]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[12]~feeder_combout\);

-- Location: FF_X50_Y19_N23
\gpmc_driver|gpmc_data_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(12));

-- Location: LCCOMB_X50_Y21_N20
\gpmc_driver|ram[26][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[26][12]~feeder_combout\);

-- Location: FF_X50_Y21_N21
\gpmc_driver|ram[26][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][12]~q\);

-- Location: FF_X46_Y21_N5
\gpmc_driver|ram[18][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][12]~q\);

-- Location: LCCOMB_X46_Y21_N4
\gpmc_driver|gpmc_data_out~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~265_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][12]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[26][12]~q\,
	datac => \gpmc_driver|ram[18][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~265_combout\);

-- Location: FF_X46_Y21_N11
\gpmc_driver|ram[30][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][12]~q\);

-- Location: LCCOMB_X46_Y18_N6
\gpmc_driver|ram[22][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[22][12]~feeder_combout\);

-- Location: FF_X46_Y18_N7
\gpmc_driver|ram[22][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][12]~q\);

-- Location: LCCOMB_X46_Y21_N10
\gpmc_driver|gpmc_data_out~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~266_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~265_combout\ & (\gpmc_driver|ram[30][12]~q\)) # (!\gpmc_driver|gpmc_data_out~265_combout\ & ((\gpmc_driver|ram[22][12]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~265_combout\,
	datac => \gpmc_driver|ram[30][12]~q\,
	datad => \gpmc_driver|ram[22][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~266_combout\);

-- Location: LCCOMB_X49_Y21_N6
\gpmc_driver|ram[27][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[27][12]~feeder_combout\);

-- Location: FF_X49_Y21_N7
\gpmc_driver|ram[27][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][12]~q\);

-- Location: FF_X49_Y19_N23
\gpmc_driver|ram[31][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][12]~q\);

-- Location: LCCOMB_X45_Y19_N16
\gpmc_driver|ram[23][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[23][12]~feeder_combout\);

-- Location: FF_X45_Y19_N17
\gpmc_driver|ram[23][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][12]~q\);

-- Location: FF_X49_Y19_N1
\gpmc_driver|ram[19][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][12]~q\);

-- Location: LCCOMB_X49_Y19_N0
\gpmc_driver|gpmc_data_out~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~272_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[23][12]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[19][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[23][12]~q\,
	datac => \gpmc_driver|ram[19][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~272_combout\);

-- Location: LCCOMB_X49_Y19_N22
\gpmc_driver|gpmc_data_out~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~273_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~272_combout\ & ((\gpmc_driver|ram[31][12]~q\))) # (!\gpmc_driver|gpmc_data_out~272_combout\ & (\gpmc_driver|ram[27][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[31][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~272_combout\,
	combout => \gpmc_driver|gpmc_data_out~273_combout\);

-- Location: LCCOMB_X43_Y20_N30
\gpmc_driver|ram[20][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[20][12]~feeder_combout\);

-- Location: FF_X43_Y20_N31
\gpmc_driver|ram[20][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][12]~q\);

-- Location: FF_X46_Y20_N31
\gpmc_driver|ram[28][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][12]~q\);

-- Location: LCCOMB_X45_Y20_N0
\gpmc_driver|ram[24][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[24][12]~feeder_combout\);

-- Location: FF_X45_Y20_N1
\gpmc_driver|ram[24][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][12]~q\);

-- Location: FF_X46_Y20_N21
\gpmc_driver|ram[16][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][12]~q\);

-- Location: LCCOMB_X46_Y20_N20
\gpmc_driver|gpmc_data_out~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~269_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][12]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][12]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~269_combout\);

-- Location: LCCOMB_X46_Y20_N30
\gpmc_driver|gpmc_data_out~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~270_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~269_combout\ & ((\gpmc_driver|ram[28][12]~q\))) # (!\gpmc_driver|gpmc_data_out~269_combout\ & (\gpmc_driver|ram[20][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~269_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[20][12]~q\,
	datac => \gpmc_driver|ram[28][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~269_combout\,
	combout => \gpmc_driver|gpmc_data_out~270_combout\);

-- Location: LCCOMB_X50_Y21_N22
\gpmc_driver|ram[25][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[25][12]~feeder_combout\);

-- Location: FF_X50_Y21_N23
\gpmc_driver|ram[25][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][12]~q\);

-- Location: FF_X48_Y21_N11
\gpmc_driver|ram[29][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][12]~q\);

-- Location: LCCOMB_X48_Y23_N10
\gpmc_driver|ram[21][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[21][12]~feeder_combout\);

-- Location: FF_X48_Y23_N11
\gpmc_driver|ram[21][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][12]~q\);

-- Location: FF_X48_Y21_N1
\gpmc_driver|ram[17][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][12]~q\);

-- Location: LCCOMB_X48_Y21_N0
\gpmc_driver|gpmc_data_out~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~267_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][12]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][12]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][12]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[17][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~267_combout\);

-- Location: LCCOMB_X48_Y21_N10
\gpmc_driver|gpmc_data_out~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~268_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~267_combout\ & ((\gpmc_driver|ram[29][12]~q\))) # (!\gpmc_driver|gpmc_data_out~267_combout\ & (\gpmc_driver|ram[25][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][12]~q\,
	datac => \gpmc_driver|ram[29][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~267_combout\,
	combout => \gpmc_driver|gpmc_data_out~268_combout\);

-- Location: LCCOMB_X42_Y19_N12
\gpmc_driver|gpmc_data_out~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~271_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~268_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~270_combout\,
	datad => \gpmc_driver|gpmc_data_out~268_combout\,
	combout => \gpmc_driver|gpmc_data_out~271_combout\);

-- Location: LCCOMB_X42_Y19_N26
\gpmc_driver|gpmc_data_out~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~274_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~271_combout\ & ((\gpmc_driver|gpmc_data_out~273_combout\))) # (!\gpmc_driver|gpmc_data_out~271_combout\ & (\gpmc_driver|gpmc_data_out~266_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~266_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~273_combout\,
	datad => \gpmc_driver|gpmc_data_out~271_combout\,
	combout => \gpmc_driver|gpmc_data_out~274_combout\);

-- Location: LCCOMB_X42_Y18_N14
\gpmc_driver|ram[11][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[11][12]~feeder_combout\);

-- Location: FF_X42_Y18_N15
\gpmc_driver|ram[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][12]~q\);

-- Location: FF_X41_Y22_N7
\gpmc_driver|ram[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][12]~q\);

-- Location: FF_X41_Y22_N17
\gpmc_driver|ram[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][12]~q\);

-- Location: LCCOMB_X42_Y18_N8
\gpmc_driver|ram[9][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[9][12]~feeder_combout\);

-- Location: FF_X42_Y18_N9
\gpmc_driver|ram[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][12]~q\);

-- Location: LCCOMB_X41_Y22_N16
\gpmc_driver|gpmc_data_out~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~255_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][12]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[8][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][12]~q\,
	datad => \gpmc_driver|ram[9][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~255_combout\);

-- Location: LCCOMB_X41_Y22_N6
\gpmc_driver|gpmc_data_out~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~256_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~255_combout\ & (\gpmc_driver|ram[11][12]~q\)) # (!\gpmc_driver|gpmc_data_out~255_combout\ & ((\gpmc_driver|ram[10][12]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[11][12]~q\,
	datac => \gpmc_driver|ram[10][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~255_combout\,
	combout => \gpmc_driver|gpmc_data_out~256_combout\);

-- Location: LCCOMB_X46_Y23_N28
\gpmc_driver|ram[13][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[13][12]~feeder_combout\);

-- Location: FF_X46_Y23_N29
\gpmc_driver|ram[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][12]~q\);

-- Location: FF_X46_Y23_N15
\gpmc_driver|ram[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][12]~q\);

-- Location: FF_X45_Y23_N9
\gpmc_driver|ram[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][12]~q\);

-- Location: LCCOMB_X45_Y23_N30
\gpmc_driver|ram[14][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[14][12]~feeder_combout\);

-- Location: FF_X45_Y23_N31
\gpmc_driver|ram[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][12]~q\);

-- Location: LCCOMB_X45_Y23_N8
\gpmc_driver|gpmc_data_out~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~262_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|ram[14][12]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[12][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][12]~q\,
	datad => \gpmc_driver|ram[14][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~262_combout\);

-- Location: LCCOMB_X46_Y23_N14
\gpmc_driver|gpmc_data_out~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~263_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~262_combout\ & ((\gpmc_driver|ram[15][12]~q\))) # (!\gpmc_driver|gpmc_data_out~262_combout\ & (\gpmc_driver|ram[13][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][12]~q\,
	datac => \gpmc_driver|ram[15][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~262_combout\,
	combout => \gpmc_driver|gpmc_data_out~263_combout\);

-- Location: LCCOMB_X41_Y19_N2
\gpmc_driver|ram[5][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[5][12]~feeder_combout\);

-- Location: FF_X41_Y19_N3
\gpmc_driver|ram[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][12]~q\);

-- Location: FF_X41_Y19_N1
\gpmc_driver|ram[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][12]~q\);

-- Location: FF_X41_Y21_N29
\gpmc_driver|ram[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][12]~q\);

-- Location: LCCOMB_X41_Y20_N22
\gpmc_driver|ram[6][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][12]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(12),
	combout => \gpmc_driver|ram[6][12]~feeder_combout\);

-- Location: FF_X41_Y20_N23
\gpmc_driver|ram[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][12]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][12]~q\);

-- Location: LCCOMB_X41_Y21_N28
\gpmc_driver|gpmc_data_out~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~257_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|ram[6][12]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[4][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][12]~q\,
	datad => \gpmc_driver|ram[6][12]~q\,
	combout => \gpmc_driver|gpmc_data_out~257_combout\);

-- Location: LCCOMB_X41_Y19_N0
\gpmc_driver|gpmc_data_out~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~258_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~257_combout\ & ((\gpmc_driver|ram[7][12]~q\))) # (!\gpmc_driver|gpmc_data_out~257_combout\ & (\gpmc_driver|ram[5][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[5][12]~q\,
	datac => \gpmc_driver|ram[7][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~257_combout\,
	combout => \gpmc_driver|gpmc_data_out~258_combout\);

-- Location: FF_X42_Y20_N1
\gpmc_driver|ram[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][12]~q\);

-- Location: FF_X42_Y19_N19
\gpmc_driver|ram[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(12),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][12]~q\);

-- Location: LCCOMB_X48_Y24_N24
\encoder_compP|counter[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[12]~41_combout\ = ((\ENC4B~input_o\ $ (\encoder_compP|counter\(12) $ (!\encoder_compP|counter[11]~40\)))) # (GND)
-- \encoder_compP|counter[12]~42\ = CARRY((\ENC4B~input_o\ & ((\encoder_compP|counter\(12)) # (!\encoder_compP|counter[11]~40\))) # (!\ENC4B~input_o\ & (\encoder_compP|counter\(12) & !\encoder_compP|counter[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC4B~input_o\,
	datab => \encoder_compP|counter\(12),
	datad => VCC,
	cin => \encoder_compP|counter[11]~40\,
	combout => \encoder_compP|counter[12]~41_combout\,
	cout => \encoder_compP|counter[12]~42\);

-- Location: FF_X48_Y24_N25
\encoder_compP|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[12]~41_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(12));

-- Location: LCCOMB_X46_Y24_N18
\gpmc_driver|ram[1][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][12]~feeder_combout\ = \encoder_compP|counter\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(12),
	combout => \gpmc_driver|ram[1][12]~feeder_combout\);

-- Location: FF_X46_Y24_N19
\gpmc_driver|ram[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][12]~q\);

-- Location: LCCOMB_X43_Y24_N24
\encoder_compT|counter[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[12]~41_combout\ = ((\ENC3B~input_o\ $ (\encoder_compT|counter\(12) $ (!\encoder_compT|counter[11]~40\)))) # (GND)
-- \encoder_compT|counter[12]~42\ = CARRY((\ENC3B~input_o\ & ((\encoder_compT|counter\(12)) # (!\encoder_compT|counter[11]~40\))) # (!\ENC3B~input_o\ & (\encoder_compT|counter\(12) & !\encoder_compT|counter[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC3B~input_o\,
	datab => \encoder_compT|counter\(12),
	datad => VCC,
	cin => \encoder_compT|counter[11]~40\,
	combout => \encoder_compT|counter[12]~41_combout\,
	cout => \encoder_compT|counter[12]~42\);

-- Location: FF_X43_Y24_N25
\encoder_compT|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[12]~41_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(12));

-- Location: FF_X46_Y24_N25
\gpmc_driver|ram[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][12]~q\);

-- Location: LCCOMB_X46_Y24_N24
\gpmc_driver|gpmc_data_out~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~259_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[1][12]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[1][12]~q\,
	datac => \gpmc_driver|ram[0][12]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~259_combout\);

-- Location: LCCOMB_X42_Y19_N18
\gpmc_driver|gpmc_data_out~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~260_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~259_combout\ & ((\gpmc_driver|ram[3][12]~q\))) # (!\gpmc_driver|gpmc_data_out~259_combout\ & (\gpmc_driver|ram[2][12]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[2][12]~q\,
	datac => \gpmc_driver|ram[3][12]~q\,
	datad => \gpmc_driver|gpmc_data_out~259_combout\,
	combout => \gpmc_driver|gpmc_data_out~260_combout\);

-- Location: LCCOMB_X42_Y19_N0
\gpmc_driver|gpmc_data_out~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~261_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|gpmc_data_out~258_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|gpmc_data_out~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~258_combout\,
	datad => \gpmc_driver|gpmc_data_out~260_combout\,
	combout => \gpmc_driver|gpmc_data_out~261_combout\);

-- Location: LCCOMB_X42_Y19_N10
\gpmc_driver|gpmc_data_out~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~264_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~261_combout\ & ((\gpmc_driver|gpmc_data_out~263_combout\))) # (!\gpmc_driver|gpmc_data_out~261_combout\ & (\gpmc_driver|gpmc_data_out~256_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~256_combout\,
	datac => \gpmc_driver|gpmc_data_out~263_combout\,
	datad => \gpmc_driver|gpmc_data_out~261_combout\,
	combout => \gpmc_driver|gpmc_data_out~264_combout\);

-- Location: LCCOMB_X42_Y19_N20
\gpmc_driver|gpmc_data_out~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~275_combout\ = (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~264_combout\) # ((\gpmc_driver|gpmc_data_out~21_combout\ & \gpmc_driver|gpmc_data_out~274_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~274_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~20_combout\,
	datab => \gpmc_driver|gpmc_data_out~21_combout\,
	datac => \gpmc_driver|gpmc_data_out~274_combout\,
	datad => \gpmc_driver|gpmc_data_out~264_combout\,
	combout => \gpmc_driver|gpmc_data_out~275_combout\);

-- Location: FF_X42_Y19_N21
\gpmc_driver|gpmc_data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~275_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(12));

-- Location: IOIBUF_X61_Y0_N8
\GPMC_DATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(13),
	o => \GPMC_DATA[13]~input_o\);

-- Location: LCCOMB_X49_Y18_N14
\gpmc_driver|gpmc_data_in[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[13]~feeder_combout\ = \GPMC_DATA[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[13]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[13]~feeder_combout\);

-- Location: FF_X49_Y18_N15
\gpmc_driver|gpmc_data_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(13));

-- Location: LCCOMB_X41_Y19_N24
\gpmc_driver|ram[7][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[7][13]~feeder_combout\);

-- Location: FF_X41_Y19_N25
\gpmc_driver|ram[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][13]~q\);

-- Location: FF_X42_Y21_N7
\gpmc_driver|ram[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][13]~q\);

-- Location: FF_X41_Y21_N19
\gpmc_driver|ram[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][13]~q\);

-- Location: LCCOMB_X41_Y19_N6
\gpmc_driver|ram[5][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[5][13]~feeder_combout\);

-- Location: FF_X41_Y19_N7
\gpmc_driver|ram[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][13]~q\);

-- Location: LCCOMB_X41_Y21_N18
\gpmc_driver|gpmc_data_out~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~276_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|ram[5][13]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[4][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[4][13]~q\,
	datad => \gpmc_driver|ram[5][13]~q\,
	combout => \gpmc_driver|gpmc_data_out~276_combout\);

-- Location: LCCOMB_X42_Y21_N6
\gpmc_driver|gpmc_data_out~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~277_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~276_combout\ & (\gpmc_driver|ram[7][13]~q\)) # (!\gpmc_driver|gpmc_data_out~276_combout\ & ((\gpmc_driver|ram[6][13]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[7][13]~q\,
	datac => \gpmc_driver|ram[6][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~276_combout\,
	combout => \gpmc_driver|gpmc_data_out~277_combout\);

-- Location: LCCOMB_X43_Y19_N20
\gpmc_driver|ram[14][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[14][13]~feeder_combout\);

-- Location: FF_X43_Y19_N21
\gpmc_driver|ram[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][13]~q\);

-- Location: FF_X43_Y19_N31
\gpmc_driver|ram[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][13]~q\);

-- Location: FF_X46_Y19_N5
\gpmc_driver|ram[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][13]~q\);

-- Location: LCCOMB_X46_Y23_N4
\gpmc_driver|ram[13][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[13][13]~feeder_combout\);

-- Location: FF_X46_Y23_N5
\gpmc_driver|ram[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][13]~q\);

-- Location: LCCOMB_X46_Y19_N4
\gpmc_driver|gpmc_data_out~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~283_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1)) # ((\gpmc_driver|ram[13][13]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[12][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][13]~q\,
	datad => \gpmc_driver|ram[13][13]~q\,
	combout => \gpmc_driver|gpmc_data_out~283_combout\);

-- Location: LCCOMB_X43_Y19_N30
\gpmc_driver|gpmc_data_out~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~284_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~283_combout\ & ((\gpmc_driver|ram[15][13]~q\))) # (!\gpmc_driver|gpmc_data_out~283_combout\ & (\gpmc_driver|ram[14][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[14][13]~q\,
	datac => \gpmc_driver|ram[15][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~283_combout\,
	combout => \gpmc_driver|gpmc_data_out~284_combout\);

-- Location: LCCOMB_X48_Y24_N26
\encoder_compP|counter[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[13]~43_combout\ = (\encoder_compP|counter\(13) & ((\ENC4B~input_o\ & (\encoder_compP|counter[12]~42\ & VCC)) # (!\ENC4B~input_o\ & (!\encoder_compP|counter[12]~42\)))) # (!\encoder_compP|counter\(13) & ((\ENC4B~input_o\ & 
-- (!\encoder_compP|counter[12]~42\)) # (!\ENC4B~input_o\ & ((\encoder_compP|counter[12]~42\) # (GND)))))
-- \encoder_compP|counter[13]~44\ = CARRY((\encoder_compP|counter\(13) & (!\ENC4B~input_o\ & !\encoder_compP|counter[12]~42\)) # (!\encoder_compP|counter\(13) & ((!\encoder_compP|counter[12]~42\) # (!\ENC4B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compP|counter\(13),
	datab => \ENC4B~input_o\,
	datad => VCC,
	cin => \encoder_compP|counter[12]~42\,
	combout => \encoder_compP|counter[13]~43_combout\,
	cout => \encoder_compP|counter[13]~44\);

-- Location: FF_X48_Y24_N27
\encoder_compP|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[13]~43_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(13));

-- Location: LCCOMB_X46_Y24_N2
\gpmc_driver|ram[1][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][13]~feeder_combout\ = \encoder_compP|counter\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(13),
	combout => \gpmc_driver|ram[1][13]~feeder_combout\);

-- Location: FF_X46_Y24_N3
\gpmc_driver|ram[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][13]~q\);

-- Location: FF_X42_Y22_N27
\gpmc_driver|ram[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][13]~q\);

-- Location: LCCOMB_X42_Y20_N22
\gpmc_driver|ram[2][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[2][13]~feeder_combout\);

-- Location: FF_X42_Y20_N23
\gpmc_driver|ram[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][13]~q\);

-- Location: LCCOMB_X43_Y24_N26
\encoder_compT|counter[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[13]~43_combout\ = (\ENC3B~input_o\ & ((\encoder_compT|counter\(13) & (\encoder_compT|counter[12]~42\ & VCC)) # (!\encoder_compT|counter\(13) & (!\encoder_compT|counter[12]~42\)))) # (!\ENC3B~input_o\ & ((\encoder_compT|counter\(13) 
-- & (!\encoder_compT|counter[12]~42\)) # (!\encoder_compT|counter\(13) & ((\encoder_compT|counter[12]~42\) # (GND)))))
-- \encoder_compT|counter[13]~44\ = CARRY((\ENC3B~input_o\ & (!\encoder_compT|counter\(13) & !\encoder_compT|counter[12]~42\)) # (!\ENC3B~input_o\ & ((!\encoder_compT|counter[12]~42\) # (!\encoder_compT|counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC3B~input_o\,
	datab => \encoder_compT|counter\(13),
	datad => VCC,
	cin => \encoder_compT|counter[12]~42\,
	combout => \encoder_compT|counter[13]~43_combout\,
	cout => \encoder_compT|counter[13]~44\);

-- Location: FF_X43_Y24_N27
\encoder_compT|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[13]~43_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(13));

-- Location: FF_X41_Y20_N29
\gpmc_driver|ram[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][13]~q\);

-- Location: LCCOMB_X41_Y20_N28
\gpmc_driver|gpmc_data_out~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~280_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[2][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[2][13]~q\,
	datac => \gpmc_driver|ram[0][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~280_combout\);

-- Location: LCCOMB_X42_Y22_N26
\gpmc_driver|gpmc_data_out~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~281_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~280_combout\ & ((\gpmc_driver|ram[3][13]~q\))) # (!\gpmc_driver|gpmc_data_out~280_combout\ & (\gpmc_driver|ram[1][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[1][13]~q\,
	datac => \gpmc_driver|ram[3][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~280_combout\,
	combout => \gpmc_driver|gpmc_data_out~281_combout\);

-- Location: LCCOMB_X43_Y22_N2
\gpmc_driver|ram[9][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[9][13]~feeder_combout\);

-- Location: FF_X43_Y22_N3
\gpmc_driver|ram[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][13]~q\);

-- Location: FF_X43_Y22_N17
\gpmc_driver|ram[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][13]~q\);

-- Location: LCCOMB_X41_Y22_N26
\gpmc_driver|ram[10][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[10][13]~feeder_combout\);

-- Location: FF_X41_Y22_N27
\gpmc_driver|ram[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][13]~q\);

-- Location: FF_X44_Y22_N7
\gpmc_driver|ram[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][13]~q\);

-- Location: LCCOMB_X44_Y22_N6
\gpmc_driver|gpmc_data_out~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~278_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~278_combout\);

-- Location: LCCOMB_X43_Y22_N16
\gpmc_driver|gpmc_data_out~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~279_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~278_combout\ & ((\gpmc_driver|ram[11][13]~q\))) # (!\gpmc_driver|gpmc_data_out~278_combout\ & (\gpmc_driver|ram[9][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][13]~q\,
	datac => \gpmc_driver|ram[11][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~278_combout\,
	combout => \gpmc_driver|gpmc_data_out~279_combout\);

-- Location: LCCOMB_X42_Y22_N0
\gpmc_driver|gpmc_data_out~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~282_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2)) # ((\gpmc_driver|gpmc_data_out~279_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(3) & (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|gpmc_data_out~281_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~281_combout\,
	datad => \gpmc_driver|gpmc_data_out~279_combout\,
	combout => \gpmc_driver|gpmc_data_out~282_combout\);

-- Location: LCCOMB_X42_Y22_N30
\gpmc_driver|gpmc_data_out~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~285_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~282_combout\ & ((\gpmc_driver|gpmc_data_out~284_combout\))) # (!\gpmc_driver|gpmc_data_out~282_combout\ & (\gpmc_driver|gpmc_data_out~277_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~277_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|gpmc_data_out~284_combout\,
	datad => \gpmc_driver|gpmc_data_out~282_combout\,
	combout => \gpmc_driver|gpmc_data_out~285_combout\);

-- Location: LCCOMB_X45_Y20_N6
\gpmc_driver|ram[24][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[24][13]~feeder_combout\);

-- Location: FF_X45_Y20_N7
\gpmc_driver|ram[24][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][13]~q\);

-- Location: FF_X46_Y20_N27
\gpmc_driver|ram[28][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][13]~q\);

-- Location: LCCOMB_X43_Y20_N20
\gpmc_driver|ram[20][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[20][13]~feeder_combout\);

-- Location: FF_X43_Y20_N21
\gpmc_driver|ram[20][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][13]~q\);

-- Location: FF_X46_Y20_N25
\gpmc_driver|ram[16][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][13]~q\);

-- Location: LCCOMB_X46_Y20_N24
\gpmc_driver|gpmc_data_out~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~290_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[20][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[16][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~290_combout\);

-- Location: LCCOMB_X46_Y20_N26
\gpmc_driver|gpmc_data_out~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~291_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~290_combout\ & ((\gpmc_driver|ram[28][13]~q\))) # (!\gpmc_driver|gpmc_data_out~290_combout\ & (\gpmc_driver|ram[24][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~290_combout\,
	combout => \gpmc_driver|gpmc_data_out~291_combout\);

-- Location: LCCOMB_X43_Y18_N20
\gpmc_driver|ram[26][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[26][13]~feeder_combout\);

-- Location: FF_X43_Y18_N21
\gpmc_driver|ram[26][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][13]~q\);

-- Location: FF_X46_Y21_N23
\gpmc_driver|ram[30][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][13]~q\);

-- Location: LCCOMB_X43_Y21_N16
\gpmc_driver|ram[22][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[22][13]~feeder_combout\);

-- Location: FF_X43_Y21_N17
\gpmc_driver|ram[22][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][13]~q\);

-- Location: FF_X46_Y21_N13
\gpmc_driver|ram[18][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][13]~q\);

-- Location: LCCOMB_X46_Y21_N12
\gpmc_driver|gpmc_data_out~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~288_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][13]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][13]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[22][13]~q\,
	datac => \gpmc_driver|ram[18][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~288_combout\);

-- Location: LCCOMB_X46_Y21_N22
\gpmc_driver|gpmc_data_out~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~289_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~288_combout\ & ((\gpmc_driver|ram[30][13]~q\))) # (!\gpmc_driver|gpmc_data_out~288_combout\ & (\gpmc_driver|ram[26][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[26][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[30][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~288_combout\,
	combout => \gpmc_driver|gpmc_data_out~289_combout\);

-- Location: LCCOMB_X42_Y22_N20
\gpmc_driver|gpmc_data_out~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~292_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~289_combout\))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_data_out~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~291_combout\,
	datad => \gpmc_driver|gpmc_data_out~289_combout\,
	combout => \gpmc_driver|gpmc_data_out~292_combout\);

-- Location: LCCOMB_X48_Y23_N16
\gpmc_driver|ram[21][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[21][13]~feeder_combout\);

-- Location: FF_X48_Y23_N17
\gpmc_driver|ram[21][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][13]~q\);

-- Location: FF_X48_Y21_N27
\gpmc_driver|ram[29][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][13]~q\);

-- Location: LCCOMB_X48_Y23_N26
\gpmc_driver|ram[25][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[25][13]~feeder_combout\);

-- Location: FF_X48_Y23_N27
\gpmc_driver|ram[25][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][13]~q\);

-- Location: FF_X48_Y21_N25
\gpmc_driver|ram[17][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][13]~q\);

-- Location: LCCOMB_X48_Y21_N24
\gpmc_driver|gpmc_data_out~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~286_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[25][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[17][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~286_combout\);

-- Location: LCCOMB_X48_Y21_N26
\gpmc_driver|gpmc_data_out~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~287_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~286_combout\ & ((\gpmc_driver|ram[29][13]~q\))) # (!\gpmc_driver|gpmc_data_out~286_combout\ & (\gpmc_driver|ram[21][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[29][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~286_combout\,
	combout => \gpmc_driver|gpmc_data_out~287_combout\);

-- Location: LCCOMB_X45_Y19_N6
\gpmc_driver|ram[23][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[23][13]~feeder_combout\);

-- Location: FF_X45_Y19_N7
\gpmc_driver|ram[23][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][13]~q\);

-- Location: FF_X49_Y19_N11
\gpmc_driver|ram[31][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][13]~q\);

-- Location: LCCOMB_X49_Y21_N4
\gpmc_driver|ram[27][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][13]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(13),
	combout => \gpmc_driver|ram[27][13]~feeder_combout\);

-- Location: FF_X49_Y21_N5
\gpmc_driver|ram[27][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][13]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][13]~q\);

-- Location: FF_X49_Y19_N13
\gpmc_driver|ram[19][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(13),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][13]~q\);

-- Location: LCCOMB_X49_Y19_N12
\gpmc_driver|gpmc_data_out~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~293_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[27][13]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[19][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[19][13]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~293_combout\);

-- Location: LCCOMB_X49_Y19_N10
\gpmc_driver|gpmc_data_out~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~294_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~293_combout\ & ((\gpmc_driver|ram[31][13]~q\))) # (!\gpmc_driver|gpmc_data_out~293_combout\ & (\gpmc_driver|ram[23][13]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[23][13]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[31][13]~q\,
	datad => \gpmc_driver|gpmc_data_out~293_combout\,
	combout => \gpmc_driver|gpmc_data_out~294_combout\);

-- Location: LCCOMB_X42_Y22_N10
\gpmc_driver|gpmc_data_out~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~295_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~292_combout\ & ((\gpmc_driver|gpmc_data_out~294_combout\))) # (!\gpmc_driver|gpmc_data_out~292_combout\ & (\gpmc_driver|gpmc_data_out~287_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~292_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~292_combout\,
	datac => \gpmc_driver|gpmc_data_out~287_combout\,
	datad => \gpmc_driver|gpmc_data_out~294_combout\,
	combout => \gpmc_driver|gpmc_data_out~295_combout\);

-- Location: LCCOMB_X42_Y22_N16
\gpmc_driver|gpmc_data_out~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~296_combout\ = (\gpmc_driver|gpmc_data_out~21_combout\ & ((\gpmc_driver|gpmc_data_out~295_combout\) # ((\gpmc_driver|gpmc_data_out~20_combout\ & \gpmc_driver|gpmc_data_out~285_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~285_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~21_combout\,
	datab => \gpmc_driver|gpmc_data_out~20_combout\,
	datac => \gpmc_driver|gpmc_data_out~285_combout\,
	datad => \gpmc_driver|gpmc_data_out~295_combout\,
	combout => \gpmc_driver|gpmc_data_out~296_combout\);

-- Location: FF_X42_Y22_N17
\gpmc_driver|gpmc_data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~296_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(13));

-- Location: IOIBUF_X63_Y0_N8
\GPMC_DATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(14),
	o => \GPMC_DATA[14]~input_o\);

-- Location: LCCOMB_X49_Y18_N12
\gpmc_driver|gpmc_data_in[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[14]~feeder_combout\ = \GPMC_DATA[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[14]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[14]~feeder_combout\);

-- Location: FF_X49_Y18_N13
\gpmc_driver|gpmc_data_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(14));

-- Location: LCCOMB_X48_Y20_N22
\gpmc_driver|ram[26][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[26][14]~feeder_combout\);

-- Location: FF_X48_Y20_N23
\gpmc_driver|ram[26][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][14]~q\);

-- Location: FF_X46_Y21_N9
\gpmc_driver|ram[18][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][14]~q\);

-- Location: LCCOMB_X46_Y21_N8
\gpmc_driver|gpmc_data_out~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~307_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[26][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[18][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[26][14]~q\,
	datac => \gpmc_driver|ram[18][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~307_combout\);

-- Location: FF_X46_Y21_N7
\gpmc_driver|ram[30][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][14]~q\);

-- Location: FF_X43_Y21_N23
\gpmc_driver|ram[22][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][14]~q\);

-- Location: LCCOMB_X46_Y21_N6
\gpmc_driver|gpmc_data_out~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~308_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~307_combout\ & (\gpmc_driver|ram[30][14]~q\)) # (!\gpmc_driver|gpmc_data_out~307_combout\ & ((\gpmc_driver|ram[22][14]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_data_out~307_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~307_combout\,
	datac => \gpmc_driver|ram[30][14]~q\,
	datad => \gpmc_driver|ram[22][14]~q\,
	combout => \gpmc_driver|gpmc_data_out~308_combout\);

-- Location: LCCOMB_X46_Y18_N8
\gpmc_driver|ram[20][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[20][14]~feeder_combout\);

-- Location: FF_X46_Y18_N9
\gpmc_driver|ram[20][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][14]~q\);

-- Location: FF_X46_Y20_N11
\gpmc_driver|ram[28][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][14]~q\);

-- Location: LCCOMB_X45_Y20_N4
\gpmc_driver|ram[24][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[24][14]~feeder_combout\);

-- Location: FF_X45_Y20_N5
\gpmc_driver|ram[24][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][14]~q\);

-- Location: FF_X46_Y20_N9
\gpmc_driver|ram[16][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][14]~q\);

-- Location: LCCOMB_X46_Y20_N8
\gpmc_driver|gpmc_data_out~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~311_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[24][14]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[16][14]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[16][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~311_combout\);

-- Location: LCCOMB_X46_Y20_N10
\gpmc_driver|gpmc_data_out~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~312_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~311_combout\ & ((\gpmc_driver|ram[28][14]~q\))) # (!\gpmc_driver|gpmc_data_out~311_combout\ & (\gpmc_driver|ram[20][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[20][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[28][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~311_combout\,
	combout => \gpmc_driver|gpmc_data_out~312_combout\);

-- Location: LCCOMB_X48_Y23_N28
\gpmc_driver|ram[25][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[25][14]~feeder_combout\);

-- Location: FF_X48_Y23_N29
\gpmc_driver|ram[25][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][14]~q\);

-- Location: FF_X48_Y21_N7
\gpmc_driver|ram[29][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][14]~q\);

-- Location: LCCOMB_X48_Y23_N18
\gpmc_driver|ram[21][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[21][14]~feeder_combout\);

-- Location: FF_X48_Y23_N19
\gpmc_driver|ram[21][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][14]~q\);

-- Location: FF_X48_Y21_N9
\gpmc_driver|ram[17][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][14]~q\);

-- Location: LCCOMB_X48_Y21_N8
\gpmc_driver|gpmc_data_out~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~309_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[21][14]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[17][14]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[17][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~309_combout\);

-- Location: LCCOMB_X49_Y21_N30
\gpmc_driver|gpmc_data_out~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~310_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~309_combout\ & ((\gpmc_driver|ram[29][14]~q\))) # (!\gpmc_driver|gpmc_data_out~309_combout\ & (\gpmc_driver|ram[25][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[25][14]~q\,
	datac => \gpmc_driver|ram[29][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~309_combout\,
	combout => \gpmc_driver|gpmc_data_out~310_combout\);

-- Location: LCCOMB_X45_Y21_N4
\gpmc_driver|gpmc_data_out~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~313_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1)) # (\gpmc_driver|gpmc_data_out~310_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_data_out~312_combout\ & 
-- (!\gpmc_driver|gpmc_addr_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_data_out~312_combout\,
	datac => \gpmc_driver|gpmc_addr_in\(1),
	datad => \gpmc_driver|gpmc_data_out~310_combout\,
	combout => \gpmc_driver|gpmc_data_out~313_combout\);

-- Location: LCCOMB_X50_Y22_N28
\gpmc_driver|ram[27][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[27][14]~feeder_combout\);

-- Location: FF_X50_Y22_N29
\gpmc_driver|ram[27][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][14]~q\);

-- Location: FF_X49_Y19_N27
\gpmc_driver|ram[31][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][14]~q\);

-- Location: LCCOMB_X45_Y19_N20
\gpmc_driver|ram[23][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[23][14]~feeder_combout\);

-- Location: FF_X45_Y19_N21
\gpmc_driver|ram[23][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][14]~q\);

-- Location: FF_X49_Y19_N21
\gpmc_driver|ram[19][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][14]~q\);

-- Location: LCCOMB_X49_Y19_N20
\gpmc_driver|gpmc_data_out~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~314_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|ram[23][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- ((\gpmc_driver|ram[19][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[23][14]~q\,
	datac => \gpmc_driver|ram[19][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~314_combout\);

-- Location: LCCOMB_X49_Y19_N26
\gpmc_driver|gpmc_data_out~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~315_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~314_combout\ & ((\gpmc_driver|ram[31][14]~q\))) # (!\gpmc_driver|gpmc_data_out~314_combout\ & (\gpmc_driver|ram[27][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[27][14]~q\,
	datac => \gpmc_driver|ram[31][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~314_combout\,
	combout => \gpmc_driver|gpmc_data_out~315_combout\);

-- Location: LCCOMB_X45_Y21_N8
\gpmc_driver|gpmc_data_out~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~316_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~313_combout\ & ((\gpmc_driver|gpmc_data_out~315_combout\))) # (!\gpmc_driver|gpmc_data_out~313_combout\ & (\gpmc_driver|gpmc_data_out~308_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~308_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|gpmc_data_out~313_combout\,
	datad => \gpmc_driver|gpmc_data_out~315_combout\,
	combout => \gpmc_driver|gpmc_data_out~316_combout\);

-- Location: LCCOMB_X46_Y23_N2
\gpmc_driver|ram[13][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[13][14]~feeder_combout\);

-- Location: FF_X46_Y23_N3
\gpmc_driver|ram[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][14]~q\);

-- Location: FF_X46_Y23_N25
\gpmc_driver|ram[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][14]~q\);

-- Location: FF_X45_Y23_N21
\gpmc_driver|ram[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][14]~q\);

-- Location: LCCOMB_X45_Y23_N6
\gpmc_driver|ram[14][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[14][14]~feeder_combout\);

-- Location: FF_X45_Y23_N7
\gpmc_driver|ram[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][14]~q\);

-- Location: LCCOMB_X45_Y23_N20
\gpmc_driver|gpmc_data_out~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~304_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|ram[14][14]~q\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[12][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[12][14]~q\,
	datad => \gpmc_driver|ram[14][14]~q\,
	combout => \gpmc_driver|gpmc_data_out~304_combout\);

-- Location: LCCOMB_X46_Y23_N24
\gpmc_driver|gpmc_data_out~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~305_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~304_combout\ & ((\gpmc_driver|ram[15][14]~q\))) # (!\gpmc_driver|gpmc_data_out~304_combout\ & (\gpmc_driver|ram[13][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[13][14]~q\,
	datac => \gpmc_driver|ram[15][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~304_combout\,
	combout => \gpmc_driver|gpmc_data_out~305_combout\);

-- Location: LCCOMB_X43_Y22_N6
\gpmc_driver|ram[11][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[11][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[11][14]~feeder_combout\);

-- Location: FF_X43_Y22_N7
\gpmc_driver|ram[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[11][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][14]~q\);

-- Location: FF_X44_Y22_N5
\gpmc_driver|ram[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][14]~q\);

-- Location: LCCOMB_X42_Y18_N12
\gpmc_driver|ram[9][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[9][14]~feeder_combout\);

-- Location: FF_X42_Y18_N13
\gpmc_driver|ram[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][14]~q\);

-- Location: FF_X44_Y22_N19
\gpmc_driver|ram[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][14]~q\);

-- Location: LCCOMB_X44_Y22_N18
\gpmc_driver|gpmc_data_out~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~297_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[9][14]~q\) # ((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|ram[8][14]~q\ & !\gpmc_driver|gpmc_addr_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[9][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~297_combout\);

-- Location: LCCOMB_X44_Y22_N4
\gpmc_driver|gpmc_data_out~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~298_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~297_combout\ & (\gpmc_driver|ram[11][14]~q\)) # (!\gpmc_driver|gpmc_data_out~297_combout\ & ((\gpmc_driver|ram[10][14]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[11][14]~q\,
	datac => \gpmc_driver|ram[10][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~297_combout\,
	combout => \gpmc_driver|gpmc_data_out~298_combout\);

-- Location: LCCOMB_X42_Y20_N4
\gpmc_driver|ram[2][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[2][14]~feeder_combout\);

-- Location: FF_X42_Y20_N5
\gpmc_driver|ram[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][14]~q\);

-- Location: FF_X46_Y24_N13
\gpmc_driver|ram[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][14]~q\);

-- Location: LCCOMB_X48_Y24_N28
\encoder_compP|counter[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[14]~45_combout\ = ((\ENC4B~input_o\ $ (\encoder_compP|counter\(14) $ (!\encoder_compP|counter[13]~44\)))) # (GND)
-- \encoder_compP|counter[14]~46\ = CARRY((\ENC4B~input_o\ & ((\encoder_compP|counter\(14)) # (!\encoder_compP|counter[13]~44\))) # (!\ENC4B~input_o\ & (\encoder_compP|counter\(14) & !\encoder_compP|counter[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC4B~input_o\,
	datab => \encoder_compP|counter\(14),
	datad => VCC,
	cin => \encoder_compP|counter[13]~44\,
	combout => \encoder_compP|counter[14]~45_combout\,
	cout => \encoder_compP|counter[14]~46\);

-- Location: FF_X48_Y24_N29
\encoder_compP|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[14]~45_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(14));

-- Location: LCCOMB_X46_Y24_N16
\gpmc_driver|ram[1][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][14]~feeder_combout\ = \encoder_compP|counter\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encoder_compP|counter\(14),
	combout => \gpmc_driver|ram[1][14]~feeder_combout\);

-- Location: FF_X46_Y24_N17
\gpmc_driver|ram[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][14]~q\);

-- Location: LCCOMB_X43_Y24_N28
\encoder_compT|counter[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[14]~45_combout\ = ((\ENC3B~input_o\ $ (\encoder_compT|counter\(14) $ (!\encoder_compT|counter[13]~44\)))) # (GND)
-- \encoder_compT|counter[14]~46\ = CARRY((\ENC3B~input_o\ & ((\encoder_compT|counter\(14)) # (!\encoder_compT|counter[13]~44\))) # (!\ENC3B~input_o\ & (\encoder_compT|counter\(14) & !\encoder_compT|counter[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ENC3B~input_o\,
	datab => \encoder_compT|counter\(14),
	datad => VCC,
	cin => \encoder_compT|counter[13]~44\,
	combout => \encoder_compT|counter[14]~45_combout\,
	cout => \encoder_compT|counter[14]~46\);

-- Location: FF_X43_Y24_N29
\encoder_compT|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[14]~45_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(14));

-- Location: FF_X46_Y24_N11
\gpmc_driver|ram[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][14]~q\);

-- Location: LCCOMB_X46_Y24_N10
\gpmc_driver|gpmc_data_out~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~301_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[1][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[1][14]~q\,
	datac => \gpmc_driver|ram[0][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~301_combout\);

-- Location: LCCOMB_X46_Y24_N12
\gpmc_driver|gpmc_data_out~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~302_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~301_combout\ & ((\gpmc_driver|ram[3][14]~q\))) # (!\gpmc_driver|gpmc_data_out~301_combout\ & (\gpmc_driver|ram[2][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|ram[2][14]~q\,
	datac => \gpmc_driver|ram[3][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~301_combout\,
	combout => \gpmc_driver|gpmc_data_out~302_combout\);

-- Location: LCCOMB_X42_Y23_N10
\gpmc_driver|ram[5][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[5][14]~feeder_combout\);

-- Location: FF_X42_Y23_N11
\gpmc_driver|ram[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][14]~q\);

-- Location: FF_X42_Y23_N5
\gpmc_driver|ram[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][14]~q\);

-- Location: LCCOMB_X42_Y21_N4
\gpmc_driver|ram[6][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[6][14]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(14),
	combout => \gpmc_driver|ram[6][14]~feeder_combout\);

-- Location: FF_X42_Y21_N5
\gpmc_driver|ram[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[6][14]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][14]~q\);

-- Location: FF_X41_Y21_N5
\gpmc_driver|ram[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(14),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][14]~q\);

-- Location: LCCOMB_X41_Y21_N4
\gpmc_driver|gpmc_data_out~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~299_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[6][14]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[6][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][14]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~299_combout\);

-- Location: LCCOMB_X42_Y23_N4
\gpmc_driver|gpmc_data_out~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~300_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~299_combout\ & ((\gpmc_driver|ram[7][14]~q\))) # (!\gpmc_driver|gpmc_data_out~299_combout\ & (\gpmc_driver|ram[5][14]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[5][14]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[7][14]~q\,
	datad => \gpmc_driver|gpmc_data_out~299_combout\,
	combout => \gpmc_driver|gpmc_data_out~300_combout\);

-- Location: LCCOMB_X45_Y21_N28
\gpmc_driver|gpmc_data_out~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~303_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3)) # ((\gpmc_driver|gpmc_data_out~300_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(2) & (!\gpmc_driver|gpmc_addr_in\(3) & 
-- (\gpmc_driver|gpmc_data_out~302_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~302_combout\,
	datad => \gpmc_driver|gpmc_data_out~300_combout\,
	combout => \gpmc_driver|gpmc_data_out~303_combout\);

-- Location: LCCOMB_X45_Y21_N18
\gpmc_driver|gpmc_data_out~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~306_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~303_combout\ & (\gpmc_driver|gpmc_data_out~305_combout\)) # (!\gpmc_driver|gpmc_data_out~303_combout\ & ((\gpmc_driver|gpmc_data_out~298_combout\))))) 
-- # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_data_out~305_combout\,
	datac => \gpmc_driver|gpmc_data_out~298_combout\,
	datad => \gpmc_driver|gpmc_data_out~303_combout\,
	combout => \gpmc_driver|gpmc_data_out~306_combout\);

-- Location: LCCOMB_X45_Y21_N0
\gpmc_driver|gpmc_data_out~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~317_combout\ = (\gpmc_driver|gpmc_data_out~21_combout\ & ((\gpmc_driver|gpmc_data_out~316_combout\) # ((\gpmc_driver|gpmc_data_out~20_combout\ & \gpmc_driver|gpmc_data_out~306_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~21_combout\,
	datab => \gpmc_driver|gpmc_data_out~20_combout\,
	datac => \gpmc_driver|gpmc_data_out~316_combout\,
	datad => \gpmc_driver|gpmc_data_out~306_combout\,
	combout => \gpmc_driver|gpmc_data_out~317_combout\);

-- Location: FF_X45_Y21_N1
\gpmc_driver|gpmc_data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~317_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(14));

-- Location: IOIBUF_X63_Y0_N1
\GPMC_DATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPMC_DATA(15),
	o => \GPMC_DATA[15]~input_o\);

-- Location: LCCOMB_X49_Y18_N10
\gpmc_driver|gpmc_data_in[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_in[15]~feeder_combout\ = \GPMC_DATA[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPMC_DATA[15]~input_o\,
	combout => \gpmc_driver|gpmc_data_in[15]~feeder_combout\);

-- Location: FF_X49_Y18_N11
\gpmc_driver|gpmc_data_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_in[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_in\(15));

-- Location: LCCOMB_X49_Y22_N30
\gpmc_driver|ram[21][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[21][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[21][15]~feeder_combout\);

-- Location: FF_X49_Y22_N31
\gpmc_driver|ram[21][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[21][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[21][15]~q\);

-- Location: FF_X48_Y21_N15
\gpmc_driver|ram[29][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[29][15]~q\);

-- Location: LCCOMB_X48_Y23_N20
\gpmc_driver|ram[25][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[25][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[25][15]~feeder_combout\);

-- Location: FF_X48_Y23_N21
\gpmc_driver|ram[25][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[25][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[25][15]~q\);

-- Location: FF_X48_Y21_N13
\gpmc_driver|ram[17][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[17][15]~q\);

-- Location: LCCOMB_X48_Y21_N12
\gpmc_driver|gpmc_data_out~328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~328_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|ram[25][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(3) & 
-- ((\gpmc_driver|ram[17][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[25][15]~q\,
	datac => \gpmc_driver|ram[17][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~328_combout\);

-- Location: LCCOMB_X48_Y21_N14
\gpmc_driver|gpmc_data_out~329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~329_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~328_combout\ & ((\gpmc_driver|ram[29][15]~q\))) # (!\gpmc_driver|gpmc_data_out~328_combout\ & (\gpmc_driver|ram[21][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[21][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[29][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~328_combout\,
	combout => \gpmc_driver|gpmc_data_out~329_combout\);

-- Location: LCCOMB_X45_Y19_N22
\gpmc_driver|ram[23][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[23][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[23][15]~feeder_combout\);

-- Location: FF_X45_Y19_N23
\gpmc_driver|ram[23][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[23][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[23][15]~q\);

-- Location: FF_X49_Y19_N15
\gpmc_driver|ram[31][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[31][15]~q\);

-- Location: LCCOMB_X50_Y19_N4
\gpmc_driver|ram[27][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[27][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[27][15]~feeder_combout\);

-- Location: FF_X50_Y19_N5
\gpmc_driver|ram[27][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[27][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[27][15]~q\);

-- Location: FF_X49_Y19_N25
\gpmc_driver|ram[19][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[19][15]~q\);

-- Location: LCCOMB_X49_Y19_N24
\gpmc_driver|gpmc_data_out~335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~335_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|ram[27][15]~q\) # ((\gpmc_driver|gpmc_addr_in\(2))))) # (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|ram[19][15]~q\ & !\gpmc_driver|gpmc_addr_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[27][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[19][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(2),
	combout => \gpmc_driver|gpmc_data_out~335_combout\);

-- Location: LCCOMB_X49_Y19_N14
\gpmc_driver|gpmc_data_out~336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~336_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~335_combout\ & ((\gpmc_driver|ram[31][15]~q\))) # (!\gpmc_driver|gpmc_data_out~335_combout\ & (\gpmc_driver|ram[23][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|ram[23][15]~q\,
	datac => \gpmc_driver|ram[31][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~335_combout\,
	combout => \gpmc_driver|gpmc_data_out~336_combout\);

-- Location: LCCOMB_X45_Y20_N2
\gpmc_driver|ram[24][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[24][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[24][15]~feeder_combout\);

-- Location: FF_X45_Y20_N3
\gpmc_driver|ram[24][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[24][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[24][15]~q\);

-- Location: FF_X45_Y22_N17
\gpmc_driver|ram[28][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[28][15]~q\);

-- Location: FF_X45_Y22_N3
\gpmc_driver|ram[16][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[16][15]~q\);

-- Location: LCCOMB_X43_Y20_N26
\gpmc_driver|ram[20][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[20][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[20][15]~feeder_combout\);

-- Location: FF_X43_Y20_N27
\gpmc_driver|ram[20][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[20][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[20][15]~q\);

-- Location: LCCOMB_X45_Y22_N2
\gpmc_driver|gpmc_data_out~332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~332_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_addr_in\(2))) # (!\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[20][15]~q\))) # (!\gpmc_driver|gpmc_addr_in\(2) & 
-- (\gpmc_driver|ram[16][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[16][15]~q\,
	datad => \gpmc_driver|ram[20][15]~q\,
	combout => \gpmc_driver|gpmc_data_out~332_combout\);

-- Location: LCCOMB_X45_Y22_N16
\gpmc_driver|gpmc_data_out~333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~333_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~332_combout\ & ((\gpmc_driver|ram[28][15]~q\))) # (!\gpmc_driver|gpmc_data_out~332_combout\ & (\gpmc_driver|ram[24][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[24][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|ram[28][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~332_combout\,
	combout => \gpmc_driver|gpmc_data_out~333_combout\);

-- Location: LCCOMB_X43_Y18_N2
\gpmc_driver|ram[26][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[26][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[26][15]~feeder_combout\);

-- Location: FF_X43_Y18_N3
\gpmc_driver|ram[26][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[26][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[26][15]~q\);

-- Location: FF_X46_Y21_N19
\gpmc_driver|ram[30][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[30][15]~q\);

-- Location: LCCOMB_X43_Y21_N0
\gpmc_driver|ram[22][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[22][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[22][15]~feeder_combout\);

-- Location: FF_X43_Y21_N1
\gpmc_driver|ram[22][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[22][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[22][15]~q\);

-- Location: FF_X46_Y21_N21
\gpmc_driver|ram[18][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[18][15]~q\);

-- Location: LCCOMB_X46_Y21_N20
\gpmc_driver|gpmc_data_out~330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~330_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|ram[22][15]~q\) # ((\gpmc_driver|gpmc_addr_in\(3))))) # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|ram[18][15]~q\ & !\gpmc_driver|gpmc_addr_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[22][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(2),
	datac => \gpmc_driver|ram[18][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(3),
	combout => \gpmc_driver|gpmc_data_out~330_combout\);

-- Location: LCCOMB_X46_Y21_N18
\gpmc_driver|gpmc_data_out~331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~331_combout\ = (\gpmc_driver|gpmc_addr_in\(3) & ((\gpmc_driver|gpmc_data_out~330_combout\ & ((\gpmc_driver|ram[30][15]~q\))) # (!\gpmc_driver|gpmc_data_out~330_combout\ & (\gpmc_driver|ram[26][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(3) & (((\gpmc_driver|gpmc_data_out~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(3),
	datab => \gpmc_driver|ram[26][15]~q\,
	datac => \gpmc_driver|ram[30][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~330_combout\,
	combout => \gpmc_driver|gpmc_data_out~331_combout\);

-- Location: LCCOMB_X45_Y18_N16
\gpmc_driver|gpmc_data_out~334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~334_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0)) # ((\gpmc_driver|gpmc_data_out~331_combout\)))) # (!\gpmc_driver|gpmc_addr_in\(1) & (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|gpmc_data_out~333_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~333_combout\,
	datad => \gpmc_driver|gpmc_data_out~331_combout\,
	combout => \gpmc_driver|gpmc_data_out~334_combout\);

-- Location: LCCOMB_X45_Y18_N30
\gpmc_driver|gpmc_data_out~337\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~337_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~334_combout\ & ((\gpmc_driver|gpmc_data_out~336_combout\))) # (!\gpmc_driver|gpmc_data_out~334_combout\ & (\gpmc_driver|gpmc_data_out~329_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~329_combout\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|gpmc_data_out~336_combout\,
	datad => \gpmc_driver|gpmc_data_out~334_combout\,
	combout => \gpmc_driver|gpmc_data_out~337_combout\);

-- Location: LCCOMB_X41_Y19_N4
\gpmc_driver|ram[7][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[7][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[7][15]~feeder_combout\);

-- Location: FF_X41_Y19_N5
\gpmc_driver|ram[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[7][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[7][15]~q\);

-- Location: FF_X42_Y21_N31
\gpmc_driver|ram[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[6][15]~q\);

-- Location: FF_X41_Y21_N15
\gpmc_driver|ram[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[4][15]~q\);

-- Location: LCCOMB_X41_Y19_N26
\gpmc_driver|ram[5][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[5][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[5][15]~feeder_combout\);

-- Location: FF_X41_Y19_N27
\gpmc_driver|ram[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[5][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[5][15]~q\);

-- Location: LCCOMB_X41_Y21_N14
\gpmc_driver|gpmc_data_out~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~318_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|gpmc_addr_in\(0))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|ram[5][15]~q\))) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- (\gpmc_driver|ram[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(1),
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[4][15]~q\,
	datad => \gpmc_driver|ram[5][15]~q\,
	combout => \gpmc_driver|gpmc_data_out~318_combout\);

-- Location: LCCOMB_X42_Y21_N30
\gpmc_driver|gpmc_data_out~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~319_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~318_combout\ & (\gpmc_driver|ram[7][15]~q\)) # (!\gpmc_driver|gpmc_data_out~318_combout\ & ((\gpmc_driver|ram[6][15]~q\))))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[7][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[6][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~318_combout\,
	combout => \gpmc_driver|gpmc_data_out~319_combout\);

-- Location: LCCOMB_X45_Y23_N26
\gpmc_driver|ram[14][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[14][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[14][15]~feeder_combout\);

-- Location: FF_X45_Y23_N27
\gpmc_driver|ram[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[14][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[14][15]~q\);

-- Location: FF_X46_Y23_N11
\gpmc_driver|ram[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[15][15]~q\);

-- Location: LCCOMB_X48_Y19_N10
\gpmc_driver|ram[13][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[13][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[13][15]~feeder_combout\);

-- Location: FF_X48_Y19_N11
\gpmc_driver|ram[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[13][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[13][15]~q\);

-- Location: FF_X46_Y19_N25
\gpmc_driver|ram[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[12][15]~q\);

-- Location: LCCOMB_X46_Y19_N24
\gpmc_driver|gpmc_data_out~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~325_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_addr_in\(0))))) # (!\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|ram[13][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(0) & 
-- ((\gpmc_driver|ram[12][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[13][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[12][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(0),
	combout => \gpmc_driver|gpmc_data_out~325_combout\);

-- Location: LCCOMB_X46_Y23_N10
\gpmc_driver|gpmc_data_out~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~326_combout\ = (\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|gpmc_data_out~325_combout\ & ((\gpmc_driver|ram[15][15]~q\))) # (!\gpmc_driver|gpmc_data_out~325_combout\ & (\gpmc_driver|ram[14][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(1) & (((\gpmc_driver|gpmc_data_out~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[14][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[15][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~325_combout\,
	combout => \gpmc_driver|gpmc_data_out~326_combout\);

-- Location: LCCOMB_X43_Y22_N0
\gpmc_driver|ram[9][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[9][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[9][15]~feeder_combout\);

-- Location: FF_X43_Y22_N1
\gpmc_driver|ram[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[9][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[9][15]~q\);

-- Location: FF_X43_Y22_N19
\gpmc_driver|ram[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[11][15]~q\);

-- Location: LCCOMB_X44_Y22_N12
\gpmc_driver|ram[10][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[10][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[10][15]~feeder_combout\);

-- Location: FF_X44_Y22_N13
\gpmc_driver|ram[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[10][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[10][15]~q\);

-- Location: FF_X44_Y22_N3
\gpmc_driver|ram[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[8][15]~q\);

-- Location: LCCOMB_X44_Y22_N2
\gpmc_driver|gpmc_data_out~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~320_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_addr_in\(1))))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & (\gpmc_driver|ram[10][15]~q\)) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- ((\gpmc_driver|ram[8][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|ram[10][15]~q\,
	datab => \gpmc_driver|gpmc_addr_in\(0),
	datac => \gpmc_driver|ram[8][15]~q\,
	datad => \gpmc_driver|gpmc_addr_in\(1),
	combout => \gpmc_driver|gpmc_data_out~320_combout\);

-- Location: LCCOMB_X43_Y22_N18
\gpmc_driver|gpmc_data_out~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~321_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~320_combout\ & ((\gpmc_driver|ram[11][15]~q\))) # (!\gpmc_driver|gpmc_data_out~320_combout\ & (\gpmc_driver|ram[9][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[9][15]~q\,
	datac => \gpmc_driver|ram[11][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~320_combout\,
	combout => \gpmc_driver|gpmc_data_out~321_combout\);

-- Location: LCCOMB_X48_Y24_N30
\encoder_compP|counter[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compP|counter[15]~47_combout\ = \encoder_compP|counter\(15) $ (\encoder_compP|counter[14]~46\ $ (\ENC4B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compP|counter\(15),
	datad => \ENC4B~input_o\,
	cin => \encoder_compP|counter[14]~46\,
	combout => \encoder_compP|counter[15]~47_combout\);

-- Location: FF_X48_Y24_N31
\encoder_compP|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compP|counter[15]~47_combout\,
	ena => \encoder_compP|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compP|counter\(15));

-- Location: LCCOMB_X49_Y18_N28
\gpmc_driver|ram[1][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[1][15]~feeder_combout\ = \encoder_compP|counter\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encoder_compP|counter\(15),
	combout => \gpmc_driver|ram[1][15]~feeder_combout\);

-- Location: FF_X49_Y18_N29
\gpmc_driver|ram[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[1][15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[1][15]~q\);

-- Location: FF_X48_Y18_N9
\gpmc_driver|ram[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|gpmc_data_in\(15),
	sload => VCC,
	ena => \gpmc_driver|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[3][15]~q\);

-- Location: LCCOMB_X43_Y24_N30
\encoder_compT|counter[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \encoder_compT|counter[15]~47_combout\ = \encoder_compT|counter\(15) $ (\encoder_compT|counter[14]~46\ $ (\ENC3B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_compT|counter\(15),
	datad => \ENC3B~input_o\,
	cin => \encoder_compT|counter[14]~46\,
	combout => \encoder_compT|counter[15]~47_combout\);

-- Location: FF_X43_Y24_N31
\encoder_compT|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \encoder_compT|counter[15]~47_combout\,
	ena => \encoder_compT|counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_compT|counter\(15));

-- Location: FF_X49_Y21_N29
\gpmc_driver|ram[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \encoder_compT|counter\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[0][15]~q\);

-- Location: LCCOMB_X42_Y20_N2
\gpmc_driver|ram[2][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|ram[2][15]~feeder_combout\ = \gpmc_driver|gpmc_data_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|gpmc_data_in\(15),
	combout => \gpmc_driver|ram[2][15]~feeder_combout\);

-- Location: FF_X42_Y20_N3
\gpmc_driver|ram[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|ram[2][15]~feeder_combout\,
	ena => \gpmc_driver|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|ram[2][15]~q\);

-- Location: LCCOMB_X49_Y21_N28
\gpmc_driver|gpmc_data_out~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~322_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & (\gpmc_driver|gpmc_addr_in\(1))) # (!\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_addr_in\(1) & ((\gpmc_driver|ram[2][15]~q\))) # (!\gpmc_driver|gpmc_addr_in\(1) & 
-- (\gpmc_driver|ram[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|gpmc_addr_in\(1),
	datac => \gpmc_driver|ram[0][15]~q\,
	datad => \gpmc_driver|ram[2][15]~q\,
	combout => \gpmc_driver|gpmc_data_out~322_combout\);

-- Location: LCCOMB_X48_Y18_N8
\gpmc_driver|gpmc_data_out~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~323_combout\ = (\gpmc_driver|gpmc_addr_in\(0) & ((\gpmc_driver|gpmc_data_out~322_combout\ & ((\gpmc_driver|ram[3][15]~q\))) # (!\gpmc_driver|gpmc_data_out~322_combout\ & (\gpmc_driver|ram[1][15]~q\)))) # 
-- (!\gpmc_driver|gpmc_addr_in\(0) & (((\gpmc_driver|gpmc_data_out~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(0),
	datab => \gpmc_driver|ram[1][15]~q\,
	datac => \gpmc_driver|ram[3][15]~q\,
	datad => \gpmc_driver|gpmc_data_out~322_combout\,
	combout => \gpmc_driver|gpmc_data_out~323_combout\);

-- Location: LCCOMB_X45_Y18_N20
\gpmc_driver|gpmc_data_out~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~324_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & (\gpmc_driver|gpmc_addr_in\(3))) # (!\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_addr_in\(3) & (\gpmc_driver|gpmc_data_out~321_combout\)) # (!\gpmc_driver|gpmc_addr_in\(3) 
-- & ((\gpmc_driver|gpmc_data_out~323_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_addr_in\(3),
	datac => \gpmc_driver|gpmc_data_out~321_combout\,
	datad => \gpmc_driver|gpmc_data_out~323_combout\,
	combout => \gpmc_driver|gpmc_data_out~324_combout\);

-- Location: LCCOMB_X45_Y18_N10
\gpmc_driver|gpmc_data_out~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~327_combout\ = (\gpmc_driver|gpmc_addr_in\(2) & ((\gpmc_driver|gpmc_data_out~324_combout\ & ((\gpmc_driver|gpmc_data_out~326_combout\))) # (!\gpmc_driver|gpmc_data_out~324_combout\ & (\gpmc_driver|gpmc_data_out~319_combout\)))) 
-- # (!\gpmc_driver|gpmc_addr_in\(2) & (((\gpmc_driver|gpmc_data_out~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_addr_in\(2),
	datab => \gpmc_driver|gpmc_data_out~319_combout\,
	datac => \gpmc_driver|gpmc_data_out~326_combout\,
	datad => \gpmc_driver|gpmc_data_out~324_combout\,
	combout => \gpmc_driver|gpmc_data_out~327_combout\);

-- Location: LCCOMB_X45_Y18_N8
\gpmc_driver|gpmc_data_out~338\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|gpmc_data_out~338_combout\ = (\gpmc_driver|gpmc_data_out~20_combout\ & ((\gpmc_driver|gpmc_data_out~327_combout\) # ((\gpmc_driver|gpmc_data_out~21_combout\ & \gpmc_driver|gpmc_data_out~337_combout\)))) # 
-- (!\gpmc_driver|gpmc_data_out~20_combout\ & (\gpmc_driver|gpmc_data_out~21_combout\ & (\gpmc_driver|gpmc_data_out~337_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|gpmc_data_out~20_combout\,
	datab => \gpmc_driver|gpmc_data_out~21_combout\,
	datac => \gpmc_driver|gpmc_data_out~337_combout\,
	datad => \gpmc_driver|gpmc_data_out~327_combout\,
	combout => \gpmc_driver|gpmc_data_out~338_combout\);

-- Location: FF_X45_Y18_N9
\gpmc_driver|gpmc_data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|gpmc_data_out~338_combout\,
	ena => \gpmc_driver|gpmc_data_out[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|gpmc_data_out\(15));

-- Location: LCCOMB_X37_Y1_N12
\FDIV_PWM_comp|cnt[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FDIV_PWM_comp|cnt[0]~1_combout\ = !\FDIV_PWM_comp|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FDIV_PWM_comp|cnt\(0),
	combout => \FDIV_PWM_comp|cnt[0]~1_combout\);

-- Location: FF_X37_Y1_N13
\FDIV_PWM_comp|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FDIV_PWM_comp|cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_PWM_comp|cnt\(0));

-- Location: LCCOMB_X37_Y1_N30
\FDIV_PWM_comp|cnt[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FDIV_PWM_comp|cnt[1]~0_combout\ = \FDIV_PWM_comp|cnt\(1) $ (\FDIV_PWM_comp|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FDIV_PWM_comp|cnt\(1),
	datad => \FDIV_PWM_comp|cnt\(0),
	combout => \FDIV_PWM_comp|cnt[1]~0_combout\);

-- Location: FF_X37_Y1_N31
\FDIV_PWM_comp|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FDIV_PWM_comp|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_PWM_comp|cnt\(1));

-- Location: LCCOMB_X37_Y1_N10
\FDIV_PWM_comp|iclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FDIV_PWM_comp|iclk~0_combout\ = \FDIV_PWM_comp|iclk~q\ $ (((\FDIV_PWM_comp|cnt\(1) & \FDIV_PWM_comp|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FDIV_PWM_comp|iclk~q\,
	datac => \FDIV_PWM_comp|cnt\(1),
	datad => \FDIV_PWM_comp|cnt\(0),
	combout => \FDIV_PWM_comp|iclk~0_combout\);

-- Location: LCCOMB_X37_Y1_N28
\FDIV_PWM_comp|iclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FDIV_PWM_comp|iclk~feeder_combout\ = \FDIV_PWM_comp|iclk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FDIV_PWM_comp|iclk~0_combout\,
	combout => \FDIV_PWM_comp|iclk~feeder_combout\);

-- Location: FF_X37_Y1_N29
\FDIV_PWM_comp|iclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FDIV_PWM_comp|iclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FDIV_PWM_comp|iclk~q\);

-- Location: CLKCTRL_G18
\FDIV_PWM_comp|iclk~clkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X1_Y15_N28
\gpmc_driver|out_reg2[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|out_reg2[8]~feeder_combout\ = \gpmc_driver|ram[2][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[2][8]~q\,
	combout => \gpmc_driver|out_reg2[8]~feeder_combout\);

-- Location: FF_X1_Y15_N29
\gpmc_driver|out_reg2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|out_reg2[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg2\(8));

-- Location: LCCOMB_X1_Y15_N16
\PWM_compT|INA~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|INA~reg0feeder_combout\ = \gpmc_driver|out_reg2\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|out_reg2\(8),
	combout => \PWM_compT|INA~reg0feeder_combout\);

-- Location: FF_X1_Y15_N17
\PWM_compT|INA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compT|INA~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compT|INA~reg0_q\);

-- Location: LCCOMB_X1_Y15_N30
\PWM_compT|INB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|INB~0_combout\ = !\gpmc_driver|out_reg2\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|out_reg2\(8),
	combout => \PWM_compT|INB~0_combout\);

-- Location: FF_X1_Y15_N31
\PWM_compT|INB~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compT|INB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compT|INB~reg0_q\);

-- Location: LCCOMB_X45_Y24_N2
\PWM_compTP|counter[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|counter[0]~21_combout\ = !\PWM_compTP|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PWM_compTP|counter\(0),
	combout => \PWM_compTP|counter[0]~21_combout\);

-- Location: FF_X45_Y24_N3
\PWM_compTP|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|counter\(0));

-- Location: LCCOMB_X44_Y24_N0
\PWM_compTP|counter[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|counter[1]~7_combout\ = (\PWM_compTP|counter\(0) & (\PWM_compTP|counter\(1) $ (VCC))) # (!\PWM_compTP|counter\(0) & (\PWM_compTP|counter\(1) & VCC))
-- \PWM_compTP|counter[1]~8\ = CARRY((\PWM_compTP|counter\(0) & \PWM_compTP|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(0),
	datab => \PWM_compTP|counter\(1),
	datad => VCC,
	combout => \PWM_compTP|counter[1]~7_combout\,
	cout => \PWM_compTP|counter[1]~8\);

-- Location: FF_X44_Y24_N1
\PWM_compTP|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|counter\(1));

-- Location: LCCOMB_X44_Y24_N2
\PWM_compTP|counter[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|counter[2]~9_combout\ = (\PWM_compTP|counter\(2) & (!\PWM_compTP|counter[1]~8\)) # (!\PWM_compTP|counter\(2) & ((\PWM_compTP|counter[1]~8\) # (GND)))
-- \PWM_compTP|counter[2]~10\ = CARRY((!\PWM_compTP|counter[1]~8\) # (!\PWM_compTP|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM_compTP|counter\(2),
	datad => VCC,
	cin => \PWM_compTP|counter[1]~8\,
	combout => \PWM_compTP|counter[2]~9_combout\,
	cout => \PWM_compTP|counter[2]~10\);

-- Location: FF_X44_Y24_N3
\PWM_compTP|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|counter\(2));

-- Location: LCCOMB_X44_Y24_N4
\PWM_compTP|counter[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|counter[3]~11_combout\ = (\PWM_compTP|counter\(3) & (\PWM_compTP|counter[2]~10\ $ (GND))) # (!\PWM_compTP|counter\(3) & (!\PWM_compTP|counter[2]~10\ & VCC))
-- \PWM_compTP|counter[3]~12\ = CARRY((\PWM_compTP|counter\(3) & !\PWM_compTP|counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM_compTP|counter\(3),
	datad => VCC,
	cin => \PWM_compTP|counter[2]~10\,
	combout => \PWM_compTP|counter[3]~11_combout\,
	cout => \PWM_compTP|counter[3]~12\);

-- Location: FF_X44_Y24_N5
\PWM_compTP|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|counter\(3));

-- Location: LCCOMB_X44_Y24_N6
\PWM_compTP|counter[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|counter[4]~13_combout\ = (\PWM_compTP|counter\(4) & (!\PWM_compTP|counter[3]~12\)) # (!\PWM_compTP|counter\(4) & ((\PWM_compTP|counter[3]~12\) # (GND)))
-- \PWM_compTP|counter[4]~14\ = CARRY((!\PWM_compTP|counter[3]~12\) # (!\PWM_compTP|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(4),
	datad => VCC,
	cin => \PWM_compTP|counter[3]~12\,
	combout => \PWM_compTP|counter[4]~13_combout\,
	cout => \PWM_compTP|counter[4]~14\);

-- Location: FF_X44_Y24_N7
\PWM_compTP|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|counter\(4));

-- Location: LCCOMB_X44_Y24_N8
\PWM_compTP|counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|counter[5]~15_combout\ = (\PWM_compTP|counter\(5) & (\PWM_compTP|counter[4]~14\ $ (GND))) # (!\PWM_compTP|counter\(5) & (!\PWM_compTP|counter[4]~14\ & VCC))
-- \PWM_compTP|counter[5]~16\ = CARRY((\PWM_compTP|counter\(5) & !\PWM_compTP|counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PWM_compTP|counter\(5),
	datad => VCC,
	cin => \PWM_compTP|counter[4]~14\,
	combout => \PWM_compTP|counter[5]~15_combout\,
	cout => \PWM_compTP|counter[5]~16\);

-- Location: FF_X44_Y24_N9
\PWM_compTP|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|counter\(5));

-- Location: LCCOMB_X44_Y24_N10
\PWM_compTP|counter[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|counter[6]~17_combout\ = (\PWM_compTP|counter\(6) & (!\PWM_compTP|counter[5]~16\)) # (!\PWM_compTP|counter\(6) & ((\PWM_compTP|counter[5]~16\) # (GND)))
-- \PWM_compTP|counter[6]~18\ = CARRY((!\PWM_compTP|counter[5]~16\) # (!\PWM_compTP|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(6),
	datad => VCC,
	cin => \PWM_compTP|counter[5]~16\,
	combout => \PWM_compTP|counter[6]~17_combout\,
	cout => \PWM_compTP|counter[6]~18\);

-- Location: FF_X44_Y24_N11
\PWM_compTP|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|counter\(6));

-- Location: LCCOMB_X44_Y24_N12
\PWM_compTP|counter[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|counter[7]~19_combout\ = \PWM_compTP|counter[6]~18\ $ (!\PWM_compTP|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PWM_compTP|counter\(7),
	cin => \PWM_compTP|counter[6]~18\,
	combout => \PWM_compTP|counter[7]~19_combout\);

-- Location: FF_X44_Y24_N13
\PWM_compTP|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|counter\(7));

-- Location: LCCOMB_X45_Y24_N30
\PWM_compT|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|Equal0~1_combout\ = (!\PWM_compTP|counter\(6) & (!\PWM_compTP|counter\(7) & (!\PWM_compTP|counter\(4) & !\PWM_compTP|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(6),
	datab => \PWM_compTP|counter\(7),
	datac => \PWM_compTP|counter\(4),
	datad => \PWM_compTP|counter\(5),
	combout => \PWM_compT|Equal0~1_combout\);

-- Location: FF_X44_Y24_N31
\gpmc_driver|out_reg2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[2][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg2\(7));

-- Location: FF_X44_Y24_N29
\gpmc_driver|out_reg2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[2][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg2\(6));

-- Location: FF_X44_Y24_N27
\gpmc_driver|out_reg2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[2][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg2\(5));

-- Location: FF_X44_Y24_N25
\gpmc_driver|out_reg2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[2][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg2\(4));

-- Location: FF_X44_Y24_N23
\gpmc_driver|out_reg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[2][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg2\(3));

-- Location: FF_X44_Y24_N21
\gpmc_driver|out_reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[2][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg2\(2));

-- Location: FF_X44_Y24_N19
\gpmc_driver|out_reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[2][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg2\(1));

-- Location: FF_X44_Y24_N17
\gpmc_driver|out_reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[2][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg2\(0));

-- Location: LCCOMB_X44_Y24_N16
\PWM_compT|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|LessThan0~1_cout\ = CARRY((\PWM_compTP|counter\(0) & !\gpmc_driver|out_reg2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(0),
	datab => \gpmc_driver|out_reg2\(0),
	datad => VCC,
	cout => \PWM_compT|LessThan0~1_cout\);

-- Location: LCCOMB_X44_Y24_N18
\PWM_compT|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|LessThan0~3_cout\ = CARRY((\gpmc_driver|out_reg2\(1) & ((!\PWM_compT|LessThan0~1_cout\) # (!\PWM_compTP|counter\(1)))) # (!\gpmc_driver|out_reg2\(1) & (!\PWM_compTP|counter\(1) & !\PWM_compT|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|out_reg2\(1),
	datab => \PWM_compTP|counter\(1),
	datad => VCC,
	cin => \PWM_compT|LessThan0~1_cout\,
	cout => \PWM_compT|LessThan0~3_cout\);

-- Location: LCCOMB_X44_Y24_N20
\PWM_compT|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|LessThan0~5_cout\ = CARRY((\PWM_compTP|counter\(2) & ((!\PWM_compT|LessThan0~3_cout\) # (!\gpmc_driver|out_reg2\(2)))) # (!\PWM_compTP|counter\(2) & (!\gpmc_driver|out_reg2\(2) & !\PWM_compT|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(2),
	datab => \gpmc_driver|out_reg2\(2),
	datad => VCC,
	cin => \PWM_compT|LessThan0~3_cout\,
	cout => \PWM_compT|LessThan0~5_cout\);

-- Location: LCCOMB_X44_Y24_N22
\PWM_compT|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|LessThan0~7_cout\ = CARRY((\gpmc_driver|out_reg2\(3) & ((!\PWM_compT|LessThan0~5_cout\) # (!\PWM_compTP|counter\(3)))) # (!\gpmc_driver|out_reg2\(3) & (!\PWM_compTP|counter\(3) & !\PWM_compT|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|out_reg2\(3),
	datab => \PWM_compTP|counter\(3),
	datad => VCC,
	cin => \PWM_compT|LessThan0~5_cout\,
	cout => \PWM_compT|LessThan0~7_cout\);

-- Location: LCCOMB_X44_Y24_N24
\PWM_compT|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|LessThan0~9_cout\ = CARRY((\PWM_compTP|counter\(4) & ((!\PWM_compT|LessThan0~7_cout\) # (!\gpmc_driver|out_reg2\(4)))) # (!\PWM_compTP|counter\(4) & (!\gpmc_driver|out_reg2\(4) & !\PWM_compT|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(4),
	datab => \gpmc_driver|out_reg2\(4),
	datad => VCC,
	cin => \PWM_compT|LessThan0~7_cout\,
	cout => \PWM_compT|LessThan0~9_cout\);

-- Location: LCCOMB_X44_Y24_N26
\PWM_compT|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|LessThan0~11_cout\ = CARRY((\gpmc_driver|out_reg2\(5) & ((!\PWM_compT|LessThan0~9_cout\) # (!\PWM_compTP|counter\(5)))) # (!\gpmc_driver|out_reg2\(5) & (!\PWM_compTP|counter\(5) & !\PWM_compT|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|out_reg2\(5),
	datab => \PWM_compTP|counter\(5),
	datad => VCC,
	cin => \PWM_compT|LessThan0~9_cout\,
	cout => \PWM_compT|LessThan0~11_cout\);

-- Location: LCCOMB_X44_Y24_N28
\PWM_compT|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|LessThan0~13_cout\ = CARRY((\PWM_compTP|counter\(6) & ((!\PWM_compT|LessThan0~11_cout\) # (!\gpmc_driver|out_reg2\(6)))) # (!\PWM_compTP|counter\(6) & (!\gpmc_driver|out_reg2\(6) & !\PWM_compT|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(6),
	datab => \gpmc_driver|out_reg2\(6),
	datad => VCC,
	cin => \PWM_compT|LessThan0~11_cout\,
	cout => \PWM_compT|LessThan0~13_cout\);

-- Location: LCCOMB_X44_Y24_N30
\PWM_compT|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|LessThan0~14_combout\ = (\gpmc_driver|out_reg2\(7) & (\PWM_compT|LessThan0~13_cout\ & \PWM_compTP|counter\(7))) # (!\gpmc_driver|out_reg2\(7) & ((\PWM_compT|LessThan0~13_cout\) # (\PWM_compTP|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|out_reg2\(7),
	datad => \PWM_compTP|counter\(7),
	cin => \PWM_compT|LessThan0~13_cout\,
	combout => \PWM_compT|LessThan0~14_combout\);

-- Location: LCCOMB_X45_Y24_N8
\PWM_compT|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|Equal0~0_combout\ = (!\PWM_compTP|counter\(2) & (!\PWM_compTP|counter\(3) & (!\PWM_compTP|counter\(1) & !\PWM_compTP|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(2),
	datab => \PWM_compTP|counter\(3),
	datac => \PWM_compTP|counter\(1),
	datad => \PWM_compTP|counter\(0),
	combout => \PWM_compT|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y24_N14
\PWM_compT|C~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compT|C~0_combout\ = (!\PWM_compT|LessThan0~14_combout\ & ((!\PWM_compT|Equal0~0_combout\) # (!\PWM_compT|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM_compT|Equal0~1_combout\,
	datac => \PWM_compT|LessThan0~14_combout\,
	datad => \PWM_compT|Equal0~0_combout\,
	combout => \PWM_compT|C~0_combout\);

-- Location: FF_X44_Y24_N15
\PWM_compT|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compT|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compT|C~q\);

-- Location: LCCOMB_X8_Y15_N28
\gpmc_driver|out_reg3[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gpmc_driver|out_reg3[8]~feeder_combout\ = \gpmc_driver|ram[3][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|ram[3][8]~q\,
	combout => \gpmc_driver|out_reg3[8]~feeder_combout\);

-- Location: FF_X8_Y15_N29
\gpmc_driver|out_reg3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \gpmc_driver|out_reg3[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg3\(8));

-- Location: LCCOMB_X8_Y15_N16
\PWM_compTP|INA~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|INA~reg0feeder_combout\ = \gpmc_driver|out_reg3\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|out_reg3\(8),
	combout => \PWM_compTP|INA~reg0feeder_combout\);

-- Location: FF_X8_Y15_N17
\PWM_compTP|INA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|INA~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|INA~reg0_q\);

-- Location: LCCOMB_X8_Y15_N30
\PWM_compTP|INB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|INB~0_combout\ = !\gpmc_driver|out_reg3\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gpmc_driver|out_reg3\(8),
	combout => \PWM_compTP|INB~0_combout\);

-- Location: FF_X8_Y15_N31
\PWM_compTP|INB~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|INB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|INB~reg0_q\);

-- Location: FF_X45_Y24_N25
\gpmc_driver|out_reg3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[3][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg3\(7));

-- Location: FF_X45_Y24_N23
\gpmc_driver|out_reg3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[3][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg3\(6));

-- Location: FF_X45_Y24_N21
\gpmc_driver|out_reg3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[3][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg3\(5));

-- Location: FF_X45_Y24_N19
\gpmc_driver|out_reg3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[3][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg3\(4));

-- Location: FF_X45_Y24_N17
\gpmc_driver|out_reg3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[3][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg3\(3));

-- Location: FF_X45_Y24_N15
\gpmc_driver|out_reg3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[3][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg3\(2));

-- Location: FF_X45_Y24_N13
\gpmc_driver|out_reg3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[3][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg3\(1));

-- Location: FF_X45_Y24_N11
\gpmc_driver|out_reg3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \gpmc_driver|ram[3][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpmc_driver|out_reg3\(0));

-- Location: LCCOMB_X45_Y24_N10
\PWM_compTP|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|LessThan0~1_cout\ = CARRY((!\gpmc_driver|out_reg3\(0) & \PWM_compTP|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|out_reg3\(0),
	datab => \PWM_compTP|counter\(0),
	datad => VCC,
	cout => \PWM_compTP|LessThan0~1_cout\);

-- Location: LCCOMB_X45_Y24_N12
\PWM_compTP|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|LessThan0~3_cout\ = CARRY((\gpmc_driver|out_reg3\(1) & ((!\PWM_compTP|LessThan0~1_cout\) # (!\PWM_compTP|counter\(1)))) # (!\gpmc_driver|out_reg3\(1) & (!\PWM_compTP|counter\(1) & !\PWM_compTP|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|out_reg3\(1),
	datab => \PWM_compTP|counter\(1),
	datad => VCC,
	cin => \PWM_compTP|LessThan0~1_cout\,
	cout => \PWM_compTP|LessThan0~3_cout\);

-- Location: LCCOMB_X45_Y24_N14
\PWM_compTP|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|LessThan0~5_cout\ = CARRY((\PWM_compTP|counter\(2) & ((!\PWM_compTP|LessThan0~3_cout\) # (!\gpmc_driver|out_reg3\(2)))) # (!\PWM_compTP|counter\(2) & (!\gpmc_driver|out_reg3\(2) & !\PWM_compTP|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(2),
	datab => \gpmc_driver|out_reg3\(2),
	datad => VCC,
	cin => \PWM_compTP|LessThan0~3_cout\,
	cout => \PWM_compTP|LessThan0~5_cout\);

-- Location: LCCOMB_X45_Y24_N16
\PWM_compTP|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|LessThan0~7_cout\ = CARRY((\gpmc_driver|out_reg3\(3) & ((!\PWM_compTP|LessThan0~5_cout\) # (!\PWM_compTP|counter\(3)))) # (!\gpmc_driver|out_reg3\(3) & (!\PWM_compTP|counter\(3) & !\PWM_compTP|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|out_reg3\(3),
	datab => \PWM_compTP|counter\(3),
	datad => VCC,
	cin => \PWM_compTP|LessThan0~5_cout\,
	cout => \PWM_compTP|LessThan0~7_cout\);

-- Location: LCCOMB_X45_Y24_N18
\PWM_compTP|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|LessThan0~9_cout\ = CARRY((\gpmc_driver|out_reg3\(4) & (\PWM_compTP|counter\(4) & !\PWM_compTP|LessThan0~7_cout\)) # (!\gpmc_driver|out_reg3\(4) & ((\PWM_compTP|counter\(4)) # (!\PWM_compTP|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gpmc_driver|out_reg3\(4),
	datab => \PWM_compTP|counter\(4),
	datad => VCC,
	cin => \PWM_compTP|LessThan0~7_cout\,
	cout => \PWM_compTP|LessThan0~9_cout\);

-- Location: LCCOMB_X45_Y24_N20
\PWM_compTP|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|LessThan0~11_cout\ = CARRY((\PWM_compTP|counter\(5) & (\gpmc_driver|out_reg3\(5) & !\PWM_compTP|LessThan0~9_cout\)) # (!\PWM_compTP|counter\(5) & ((\gpmc_driver|out_reg3\(5)) # (!\PWM_compTP|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(5),
	datab => \gpmc_driver|out_reg3\(5),
	datad => VCC,
	cin => \PWM_compTP|LessThan0~9_cout\,
	cout => \PWM_compTP|LessThan0~11_cout\);

-- Location: LCCOMB_X45_Y24_N22
\PWM_compTP|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|LessThan0~13_cout\ = CARRY((\PWM_compTP|counter\(6) & ((!\PWM_compTP|LessThan0~11_cout\) # (!\gpmc_driver|out_reg3\(6)))) # (!\PWM_compTP|counter\(6) & (!\gpmc_driver|out_reg3\(6) & !\PWM_compTP|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PWM_compTP|counter\(6),
	datab => \gpmc_driver|out_reg3\(6),
	datad => VCC,
	cin => \PWM_compTP|LessThan0~11_cout\,
	cout => \PWM_compTP|LessThan0~13_cout\);

-- Location: LCCOMB_X45_Y24_N24
\PWM_compTP|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|LessThan0~14_combout\ = (\gpmc_driver|out_reg3\(7) & (\PWM_compTP|LessThan0~13_cout\ & \PWM_compTP|counter\(7))) # (!\gpmc_driver|out_reg3\(7) & ((\PWM_compTP|LessThan0~13_cout\) # (\PWM_compTP|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gpmc_driver|out_reg3\(7),
	datad => \PWM_compTP|counter\(7),
	cin => \PWM_compTP|LessThan0~13_cout\,
	combout => \PWM_compTP|LessThan0~14_combout\);

-- Location: LCCOMB_X45_Y24_N28
\PWM_compTP|C~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PWM_compTP|C~0_combout\ = (!\PWM_compTP|LessThan0~14_combout\ & ((!\PWM_compT|Equal0~0_combout\) # (!\PWM_compT|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PWM_compT|Equal0~1_combout\,
	datac => \PWM_compT|Equal0~0_combout\,
	datad => \PWM_compTP|LessThan0~14_combout\,
	combout => \PWM_compTP|C~0_combout\);

-- Location: FF_X45_Y24_N29
\PWM_compTP|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FDIV_PWM_comp|iclk~clkctrl_outclk\,
	d => \PWM_compTP|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PWM_compTP|C~q\);

-- Location: IOIBUF_X67_Y18_N15
\GPMC_FPGA_IRQ~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_FPGA_IRQ,
	o => \GPMC_FPGA_IRQ~input_o\);

-- Location: IOIBUF_X67_Y22_N22
\GPMC_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPMC_CLK,
	o => \GPMC_CLK~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\PWM3A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PWM3A,
	o => \PWM3A~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\PWM3B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PWM3B,
	o => \PWM3B~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\PWM3C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PWM3C,
	o => \PWM3C~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\PWM4A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PWM4A,
	o => \PWM4A~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\PWM4B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PWM4B,
	o => \PWM4B~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\PWM4C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PWM4C,
	o => \PWM4C~input_o\);

GPMC_DATA(0) <= \GPMC_DATA[0]~output_o\;

GPMC_DATA(1) <= \GPMC_DATA[1]~output_o\;

GPMC_DATA(2) <= \GPMC_DATA[2]~output_o\;

GPMC_DATA(3) <= \GPMC_DATA[3]~output_o\;

GPMC_DATA(4) <= \GPMC_DATA[4]~output_o\;

GPMC_DATA(5) <= \GPMC_DATA[5]~output_o\;

GPMC_DATA(6) <= \GPMC_DATA[6]~output_o\;

GPMC_DATA(7) <= \GPMC_DATA[7]~output_o\;

GPMC_DATA(8) <= \GPMC_DATA[8]~output_o\;

GPMC_DATA(9) <= \GPMC_DATA[9]~output_o\;

GPMC_DATA(10) <= \GPMC_DATA[10]~output_o\;

GPMC_DATA(11) <= \GPMC_DATA[11]~output_o\;

GPMC_DATA(12) <= \GPMC_DATA[12]~output_o\;

GPMC_DATA(13) <= \GPMC_DATA[13]~output_o\;

GPMC_DATA(14) <= \GPMC_DATA[14]~output_o\;

GPMC_DATA(15) <= \GPMC_DATA[15]~output_o\;

PWM3A <= \PWM3A~output_o\;

PWM3B <= \PWM3B~output_o\;

PWM3C <= \PWM3C~output_o\;

PWM4A <= \PWM4A~output_o\;

PWM4B <= \PWM4B~output_o\;

PWM4C <= \PWM4C~output_o\;
END structure;


