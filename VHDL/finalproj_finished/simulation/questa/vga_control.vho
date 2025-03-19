-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "03/19/2025 09:27:24"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA IS
    PORT (
	pixel_clk : OUT std_logic;
	clock50MHz : IN std_logic;
	button : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	hsync : OUT std_logic;
	vsync : OUT std_logic;
	nblank : OUT std_logic;
	nsync : OUT std_logic;
	blue : OUT std_logic_vector(7 DOWNTO 0);
	green : OUT std_logic_vector(7 DOWNTO 0);
	red : OUT std_logic_vector(7 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- pixel_clk	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nblank	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nsync	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock50MHz	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pixel_clk : std_logic;
SIGNAL ww_clock50MHz : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_nblank : std_logic;
SIGNAL ww_nsync : std_logic;
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock50MHz~input_o\ : std_logic;
SIGNAL \inst3|pixel_clk~0_combout\ : std_logic;
SIGNAL \inst3|pixel_clk~q\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst3|Add0~2\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst3|Add0~26\ : std_logic;
SIGNAL \inst3|Add0~30\ : std_logic;
SIGNAL \inst3|Add0~33_sumout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Add0~34\ : std_logic;
SIGNAL \inst3|Add0~37_sumout\ : std_logic;
SIGNAL \inst3|hcount~1_combout\ : std_logic;
SIGNAL \inst3|Add0~38\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst3|hcount~0_combout\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|hsync~2_combout\ : std_logic;
SIGNAL \inst3|hcount~2_combout\ : std_logic;
SIGNAL \inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|process_1~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|hsync~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|hsync~1_combout\ : std_logic;
SIGNAL \inst3|hsync~q\ : std_logic;
SIGNAL \inst3|Add2~14\ : std_logic;
SIGNAL \inst3|Add2~17_sumout\ : std_logic;
SIGNAL \inst3|process_2~2_combout\ : std_logic;
SIGNAL \inst3|vcount~3_combout\ : std_logic;
SIGNAL \inst3|Add2~33_sumout\ : std_logic;
SIGNAL \inst3|vsync~3_combout\ : std_logic;
SIGNAL \inst3|Add2~34\ : std_logic;
SIGNAL \inst3|Add2~5_sumout\ : std_logic;
SIGNAL \inst3|Add2~6\ : std_logic;
SIGNAL \inst3|Add2~25_sumout\ : std_logic;
SIGNAL \inst3|vcount~1_combout\ : std_logic;
SIGNAL \inst3|Add2~26\ : std_logic;
SIGNAL \inst3|Add2~29_sumout\ : std_logic;
SIGNAL \inst3|vsync~0_combout\ : std_logic;
SIGNAL \inst3|vcount~2_combout\ : std_logic;
SIGNAL \inst3|Add2~30\ : std_logic;
SIGNAL \inst3|Add2~21_sumout\ : std_logic;
SIGNAL \inst3|Add2~22\ : std_logic;
SIGNAL \inst3|Add2~37_sumout\ : std_logic;
SIGNAL \inst3|Add2~38\ : std_logic;
SIGNAL \inst3|Add2~9_sumout\ : std_logic;
SIGNAL \inst3|Add2~10\ : std_logic;
SIGNAL \inst3|Add2~13_sumout\ : std_logic;
SIGNAL \inst3|vcount~0_combout\ : std_logic;
SIGNAL \inst3|Add2~18\ : std_logic;
SIGNAL \inst3|Add2~1_sumout\ : std_logic;
SIGNAL \inst3|Equal4~1_combout\ : std_logic;
SIGNAL \inst3|vsync~1_combout\ : std_logic;
SIGNAL \inst3|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|Equal4~0_combout\ : std_logic;
SIGNAL \inst3|vsync~2_combout\ : std_logic;
SIGNAL \inst3|vsync~q\ : std_logic;
SIGNAL \inst3|Add1~37_sumout\ : std_logic;
SIGNAL \inst3|process_1~1_combout\ : std_logic;
SIGNAL \inst3|Add1~38\ : std_logic;
SIGNAL \inst3|Add1~29_sumout\ : std_logic;
SIGNAL \inst3|Add1~30\ : std_logic;
SIGNAL \inst3|Add1~33_sumout\ : std_logic;
SIGNAL \inst3|Add1~34\ : std_logic;
SIGNAL \inst3|Add1~25_sumout\ : std_logic;
SIGNAL \inst3|Add1~26\ : std_logic;
SIGNAL \inst3|Add1~21_sumout\ : std_logic;
SIGNAL \inst3|Add1~22\ : std_logic;
SIGNAL \inst3|Add1~9_sumout\ : std_logic;
SIGNAL \inst3|Add1~10\ : std_logic;
SIGNAL \inst3|Add1~17_sumout\ : std_logic;
SIGNAL \inst3|Add1~18\ : std_logic;
SIGNAL \inst3|Add1~5_sumout\ : std_logic;
SIGNAL \inst3|Add1~6\ : std_logic;
SIGNAL \inst3|Add1~13_sumout\ : std_logic;
SIGNAL \inst3|Add1~14\ : std_logic;
SIGNAL \inst3|Add1~1_sumout\ : std_logic;
SIGNAL \inst|digit~3_combout\ : std_logic;
SIGNAL \inst|digit~2_combout\ : std_logic;
SIGNAL \inst|digit~4_combout\ : std_logic;
SIGNAL \inst|digit~0_combout\ : std_logic;
SIGNAL \inst|digit~1_combout\ : std_logic;
SIGNAL \inst|digit[3]~5_combout\ : std_logic;
SIGNAL \inst|digit~8_combout\ : std_logic;
SIGNAL \inst|digit~6_combout\ : std_logic;
SIGNAL \inst|digit~7_combout\ : std_logic;
SIGNAL \inst|digit[0]~9_combout\ : std_logic;
SIGNAL \inst|digit~15_combout\ : std_logic;
SIGNAL \inst|digit~16_combout\ : std_logic;
SIGNAL \inst|digit~17_combout\ : std_logic;
SIGNAL \inst|digit[3]~20_combout\ : std_logic;
SIGNAL \inst|digit[3]~21_combout\ : std_logic;
SIGNAL \inst|digit[3]~19_combout\ : std_logic;
SIGNAL \inst|digit[3]~22_combout\ : std_logic;
SIGNAL \inst|digit[0]~24_combout\ : std_logic;
SIGNAL \inst|digit[0]~23_combout\ : std_logic;
SIGNAL \inst|digit[0]~25_combout\ : std_logic;
SIGNAL \inst|digit~13_combout\ : std_logic;
SIGNAL \inst|digit~12_combout\ : std_logic;
SIGNAL \inst|digit~10_combout\ : std_logic;
SIGNAL \inst|digit~11_combout\ : std_logic;
SIGNAL \inst|digit[3]~14_combout\ : std_logic;
SIGNAL \inst|digit[0]~39_combout\ : std_logic;
SIGNAL \inst|digit[3]~40_combout\ : std_logic;
SIGNAL \inst|digit[3]~26_combout\ : std_logic;
SIGNAL \inst|digit[0]~28_combout\ : std_logic;
SIGNAL \inst|digit[2]~18_combout\ : std_logic;
SIGNAL \inst|digit[1]~30_combout\ : std_logic;
SIGNAL \inst|digit[1]~31_combout\ : std_logic;
SIGNAL \inst|digit[1]~32_combout\ : std_logic;
SIGNAL \inst|digit[1]~36_combout\ : std_logic;
SIGNAL \inst|digit[3]~41_combout\ : std_logic;
SIGNAL \inst|digit[2]~34_combout\ : std_logic;
SIGNAL \inst|digit[1]~33_combout\ : std_logic;
SIGNAL \inst|digit[0]~29_combout\ : std_logic;
SIGNAL \inst|digit[3]~27_combout\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|digit[2]~35_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|LessThan19~8_combout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|LessThan19~2_combout\ : std_logic;
SIGNAL \inst|LessThan19~1_combout\ : std_logic;
SIGNAL \inst|LessThan19~3_combout\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|LessThan19~4_combout\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|LessThan19~0_combout\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|LessThan19~5_combout\ : std_logic;
SIGNAL \inst3|Add3~1_sumout\ : std_logic;
SIGNAL \inst3|LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|process_2~0_combout\ : std_logic;
SIGNAL \inst3|LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|vsync~4_combout\ : std_logic;
SIGNAL \inst3|process_2~1_combout\ : std_logic;
SIGNAL \inst3|Add3~2\ : std_logic;
SIGNAL \inst3|Add3~5_sumout\ : std_logic;
SIGNAL \inst3|Add3~6\ : std_logic;
SIGNAL \inst3|Add3~17_sumout\ : std_logic;
SIGNAL \inst3|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add3~18\ : std_logic;
SIGNAL \inst3|Add3~13_sumout\ : std_logic;
SIGNAL \inst3|Add3~14\ : std_logic;
SIGNAL \inst3|Add3~9_sumout\ : std_logic;
SIGNAL \inst3|Add3~10\ : std_logic;
SIGNAL \inst3|Add3~21_sumout\ : std_logic;
SIGNAL \inst|check_pixel~0_combout\ : std_logic;
SIGNAL \inst|LessThan18~8_combout\ : std_logic;
SIGNAL \inst|LessThan18~6_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|LessThan18~0_combout\ : std_logic;
SIGNAL \inst|LessThan18~1_combout\ : std_logic;
SIGNAL \inst|LessThan18~2_combout\ : std_logic;
SIGNAL \inst|LessThan18~3_combout\ : std_logic;
SIGNAL \inst|LessThan18~4_combout\ : std_logic;
SIGNAL \inst|LessThan18~5_combout\ : std_logic;
SIGNAL \inst|LessThan18~7_combout\ : std_logic;
SIGNAL \inst3|Add3~22\ : std_logic;
SIGNAL \inst3|Add3~25_sumout\ : std_logic;
SIGNAL \inst3|Add3~26\ : std_logic;
SIGNAL \inst3|Add3~29_sumout\ : std_logic;
SIGNAL \inst3|Add3~30\ : std_logic;
SIGNAL \inst3|Add3~33_sumout\ : std_logic;
SIGNAL \inst|digit_on~0_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|digit_on~1_combout\ : std_logic;
SIGNAL \inst|LessThan19~7_combout\ : std_logic;
SIGNAL \inst|LessThan19~6_combout\ : std_logic;
SIGNAL \inst|digit_on~2_combout\ : std_logic;
SIGNAL \inst3|hactive~0_combout\ : std_logic;
SIGNAL \inst3|hactive~1_combout\ : std_logic;
SIGNAL \inst3|hactive~2_combout\ : std_logic;
SIGNAL \inst3|hactive~q\ : std_logic;
SIGNAL \inst3|Equal4~2_combout\ : std_logic;
SIGNAL \inst3|vactive~0_combout\ : std_logic;
SIGNAL \inst3|vactive~q\ : std_logic;
SIGNAL \inst3|b[7]~0_combout\ : std_logic;
SIGNAL \inst|digit[1]~37_combout\ : std_logic;
SIGNAL \inst|digit[0]~38_combout\ : std_logic;
SIGNAL \inst|Add2~22_cout\ : std_logic;
SIGNAL \inst|Add2~10\ : std_logic;
SIGNAL \inst|Add2~5_sumout\ : std_logic;
SIGNAL \inst|Add2~6\ : std_logic;
SIGNAL \inst|Add2~14\ : std_logic;
SIGNAL \inst|Add2~1_sumout\ : std_logic;
SIGNAL \inst|Add2~2\ : std_logic;
SIGNAL \inst|Add2~17_sumout\ : std_logic;
SIGNAL \inst|Add2~13_sumout\ : std_logic;
SIGNAL \inst|Add2~9_sumout\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Mux25~1_combout\ : std_logic;
SIGNAL \inst|Mux25~7_combout\ : std_logic;
SIGNAL \inst|Mux25~8_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux25~9_combout\ : std_logic;
SIGNAL \inst|Mux25~6_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Mux25~10_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux25~5_combout\ : std_logic;
SIGNAL \inst|Mux12~1_combout\ : std_logic;
SIGNAL \inst|Mux25~12_combout\ : std_logic;
SIGNAL \inst|Mux25~4_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux25~13_combout\ : std_logic;
SIGNAL \inst|Mux25~2_combout\ : std_logic;
SIGNAL \inst|Mux25~3_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|Mux25~11_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \inst3|b[7]~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|g[7]~0_combout\ : std_logic;
SIGNAL \inst3|g[7]~1_combout\ : std_logic;
SIGNAL \inst3|r[7]~0_combout\ : std_logic;
SIGNAL \inst3|r[7]~1_combout\ : std_logic;
SIGNAL \inst3|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|pixel_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_switch[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_button~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~12_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_process_2~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_hsync~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_hactive~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_hactive~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~41_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~40_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[0]~39_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_vsync~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_vsync~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[0]~38_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[1]~37_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_vsync~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_vsync~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_hsync~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_r[7]~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_g[7]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_b[7]~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_hactive~q\ : std_logic;
SIGNAL \inst3|ALT_INV_vactive~q\ : std_logic;
SIGNAL \inst|ALT_INV_digit_on~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit_on~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit_on~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan18~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan18~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan18~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan18~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan18~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan18~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan18~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan18~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan18~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[1]~36_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[2]~35_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_check_pixel~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan19~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan19~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan19~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan19~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan19~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan19~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan19~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan19~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[2]~34_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan19~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[1]~33_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[1]~32_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[1]~31_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[1]~30_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[0]~29_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[0]~28_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~27_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~26_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[0]~25_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[0]~24_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[0]~23_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~22_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~21_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~20_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~19_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[2]~18_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~17_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~16_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~15_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~14_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~12_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[0]~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit[3]~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digit~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_vsync~q\ : std_logic;
SIGNAL \inst3|ALT_INV_hsync~q\ : std_logic;
SIGNAL \inst3|ALT_INV_pixel_clk~q\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~13_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_pixel_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~1_sumout\ : std_logic;

BEGIN

pixel_clk <= ww_pixel_clk;
ww_clock50MHz <= clock50MHz;
ww_button <= button;
ww_switch <= switch;
hsync <= ww_hsync;
vsync <= ww_vsync;
nblank <= ww_nblank;
nsync <= ww_nsync;
blue <= ww_blue;
green <= ww_green;
red <= ww_red;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_switch[8]~input_o\ <= NOT \switch[8]~input_o\;
\ALT_INV_switch[9]~input_o\ <= NOT \switch[9]~input_o\;
\ALT_INV_switch[7]~input_o\ <= NOT \switch[7]~input_o\;
\ALT_INV_switch[6]~input_o\ <= NOT \switch[6]~input_o\;
\ALT_INV_switch[5]~input_o\ <= NOT \switch[5]~input_o\;
\ALT_INV_switch[4]~input_o\ <= NOT \switch[4]~input_o\;
\ALT_INV_switch[3]~input_o\ <= NOT \switch[3]~input_o\;
\ALT_INV_switch[2]~input_o\ <= NOT \switch[2]~input_o\;
\ALT_INV_switch[1]~input_o\ <= NOT \switch[1]~input_o\;
\ALT_INV_switch[0]~input_o\ <= NOT \switch[0]~input_o\;
\ALT_INV_button~input_o\ <= NOT \button~input_o\;
\inst|ALT_INV_Mux2~0_combout\ <= NOT \inst|Mux2~0_combout\;
\inst|ALT_INV_Mux25~12_combout\ <= NOT \inst|Mux25~12_combout\;
\inst3|ALT_INV_process_2~2_combout\ <= NOT \inst3|process_2~2_combout\;
\inst3|ALT_INV_hsync~2_combout\ <= NOT \inst3|hsync~2_combout\;
\inst3|ALT_INV_Equal0~3_combout\ <= NOT \inst3|Equal0~3_combout\;
\inst3|ALT_INV_vcount\(5) <= NOT \inst3|vcount\(5);
\inst3|ALT_INV_vcount\(0) <= NOT \inst3|vcount\(0);
\inst3|ALT_INV_vcount\(3) <= NOT \inst3|vcount\(3);
\inst3|ALT_INV_vcount\(2) <= NOT \inst3|vcount\(2);
\inst3|ALT_INV_vcount\(4) <= NOT \inst3|vcount\(4);
\inst3|ALT_INV_vcount\(8) <= NOT \inst3|vcount\(8);
\inst3|ALT_INV_vcount\(7) <= NOT \inst3|vcount\(7);
\inst3|ALT_INV_vcount\(6) <= NOT \inst3|vcount\(6);
\inst3|ALT_INV_vcount\(1) <= NOT \inst3|vcount\(1);
\inst3|ALT_INV_vcount\(9) <= NOT \inst3|vcount\(9);
\inst3|ALT_INV_hcount\(7) <= NOT \inst3|hcount\(7);
\inst3|ALT_INV_hcount\(6) <= NOT \inst3|hcount\(6);
\inst3|ALT_INV_hcount\(5) <= NOT \inst3|hcount\(5);
\inst3|ALT_INV_hcount\(4) <= NOT \inst3|hcount\(4);
\inst3|ALT_INV_hcount\(9) <= NOT \inst3|hcount\(9);
\inst3|ALT_INV_hcount\(8) <= NOT \inst3|hcount\(8);
\inst3|ALT_INV_hcount\(3) <= NOT \inst3|hcount\(3);
\inst3|ALT_INV_hcount\(2) <= NOT \inst3|hcount\(2);
\inst3|ALT_INV_hcount\(1) <= NOT \inst3|hcount\(1);
\inst3|ALT_INV_hcount\(0) <= NOT \inst3|hcount\(0);
\inst3|ALT_INV_hactive~1_combout\ <= NOT \inst3|hactive~1_combout\;
\inst3|ALT_INV_hactive~0_combout\ <= NOT \inst3|hactive~0_combout\;
\inst3|ALT_INV_Equal4~2_combout\ <= NOT \inst3|Equal4~2_combout\;
\inst|ALT_INV_digit[3]~41_combout\ <= NOT \inst|digit[3]~41_combout\;
\inst|ALT_INV_digit[3]~40_combout\ <= NOT \inst|digit[3]~40_combout\;
\inst|ALT_INV_digit[0]~39_combout\ <= NOT \inst|digit[0]~39_combout\;
\inst3|ALT_INV_LessThan2~2_combout\ <= NOT \inst3|LessThan2~2_combout\;
\inst3|ALT_INV_vsync~4_combout\ <= NOT \inst3|vsync~4_combout\;
\inst3|ALT_INV_vsync~3_combout\ <= NOT \inst3|vsync~3_combout\;
\inst3|ALT_INV_LessThan2~1_combout\ <= NOT \inst3|LessThan2~1_combout\;
\inst3|ALT_INV_process_2~0_combout\ <= NOT \inst3|process_2~0_combout\;
\inst|ALT_INV_digit[0]~38_combout\ <= NOT \inst|digit[0]~38_combout\;
\inst|ALT_INV_digit[1]~37_combout\ <= NOT \inst|digit[1]~37_combout\;
\inst3|ALT_INV_Equal4~1_combout\ <= NOT \inst3|Equal4~1_combout\;
\inst3|ALT_INV_vsync~1_combout\ <= NOT \inst3|vsync~1_combout\;
\inst3|ALT_INV_vsync~0_combout\ <= NOT \inst3|vsync~0_combout\;
\inst3|ALT_INV_Equal4~0_combout\ <= NOT \inst3|Equal4~0_combout\;
\inst3|ALT_INV_LessThan2~0_combout\ <= NOT \inst3|LessThan2~0_combout\;
\inst3|ALT_INV_Equal0~2_combout\ <= NOT \inst3|Equal0~2_combout\;
\inst3|ALT_INV_hsync~0_combout\ <= NOT \inst3|hsync~0_combout\;
\inst3|ALT_INV_process_1~0_combout\ <= NOT \inst3|process_1~0_combout\;
\inst3|ALT_INV_Equal0~1_combout\ <= NOT \inst3|Equal0~1_combout\;
\inst3|ALT_INV_Equal0~0_combout\ <= NOT \inst3|Equal0~0_combout\;
\inst3|ALT_INV_r[7]~0_combout\ <= NOT \inst3|r[7]~0_combout\;
\inst3|ALT_INV_g[7]~0_combout\ <= NOT \inst3|g[7]~0_combout\;
\inst|ALT_INV_Equal0~2_combout\ <= NOT \inst|Equal0~2_combout\;
\inst|ALT_INV_Equal0~1_combout\ <= NOT \inst|Equal0~1_combout\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst3|ALT_INV_b[7]~0_combout\ <= NOT \inst3|b[7]~0_combout\;
\inst3|ALT_INV_hactive~q\ <= NOT \inst3|hactive~q\;
\inst3|ALT_INV_vactive~q\ <= NOT \inst3|vactive~q\;
\inst|ALT_INV_digit_on~2_combout\ <= NOT \inst|digit_on~2_combout\;
\inst|ALT_INV_digit_on~1_combout\ <= NOT \inst|digit_on~1_combout\;
\inst|ALT_INV_digit_on~0_combout\ <= NOT \inst|digit_on~0_combout\;
\inst|ALT_INV_LessThan18~8_combout\ <= NOT \inst|LessThan18~8_combout\;
\inst|ALT_INV_LessThan18~7_combout\ <= NOT \inst|LessThan18~7_combout\;
\inst|ALT_INV_LessThan18~6_combout\ <= NOT \inst|LessThan18~6_combout\;
\inst|ALT_INV_LessThan18~5_combout\ <= NOT \inst|LessThan18~5_combout\;
\inst|ALT_INV_LessThan18~4_combout\ <= NOT \inst|LessThan18~4_combout\;
\inst|ALT_INV_LessThan18~3_combout\ <= NOT \inst|LessThan18~3_combout\;
\inst|ALT_INV_LessThan18~2_combout\ <= NOT \inst|LessThan18~2_combout\;
\inst|ALT_INV_Mux22~0_combout\ <= NOT \inst|Mux22~0_combout\;
\inst|ALT_INV_LessThan18~1_combout\ <= NOT \inst|LessThan18~1_combout\;
\inst|ALT_INV_LessThan18~0_combout\ <= NOT \inst|LessThan18~0_combout\;
\inst|ALT_INV_digit[1]~36_combout\ <= NOT \inst|digit[1]~36_combout\;
\inst|ALT_INV_digit[2]~35_combout\ <= NOT \inst|digit[2]~35_combout\;
\inst|ALT_INV_Mux18~0_combout\ <= NOT \inst|Mux18~0_combout\;
\inst|ALT_INV_Mux21~0_combout\ <= NOT \inst|Mux21~0_combout\;
\inst|ALT_INV_check_pixel~0_combout\ <= NOT \inst|check_pixel~0_combout\;
\inst|ALT_INV_Mux19~0_combout\ <= NOT \inst|Mux19~0_combout\;
\inst|ALT_INV_LessThan19~8_combout\ <= NOT \inst|LessThan19~8_combout\;
\inst|ALT_INV_LessThan19~7_combout\ <= NOT \inst|LessThan19~7_combout\;
\inst|ALT_INV_LessThan19~6_combout\ <= NOT \inst|LessThan19~6_combout\;
\inst|ALT_INV_LessThan19~5_combout\ <= NOT \inst|LessThan19~5_combout\;
\inst|ALT_INV_LessThan19~4_combout\ <= NOT \inst|LessThan19~4_combout\;
\inst|ALT_INV_LessThan19~3_combout\ <= NOT \inst|LessThan19~3_combout\;
\inst|ALT_INV_LessThan19~2_combout\ <= NOT \inst|LessThan19~2_combout\;
\inst|ALT_INV_LessThan19~1_combout\ <= NOT \inst|LessThan19~1_combout\;
\inst|ALT_INV_digit[2]~34_combout\ <= NOT \inst|digit[2]~34_combout\;
\inst|ALT_INV_LessThan19~0_combout\ <= NOT \inst|LessThan19~0_combout\;
\inst|ALT_INV_Mux25~11_combout\ <= NOT \inst|Mux25~11_combout\;
\inst|ALT_INV_Mux25~10_combout\ <= NOT \inst|Mux25~10_combout\;
\inst|ALT_INV_Mux25~9_combout\ <= NOT \inst|Mux25~9_combout\;
\inst|ALT_INV_Mux1~0_combout\ <= NOT \inst|Mux1~0_combout\;
\inst|ALT_INV_Mux25~8_combout\ <= NOT \inst|Mux25~8_combout\;
\inst|ALT_INV_Mux25~7_combout\ <= NOT \inst|Mux25~7_combout\;
\inst|ALT_INV_Mux25~6_combout\ <= NOT \inst|Mux25~6_combout\;
\inst|ALT_INV_Add1~0_combout\ <= NOT \inst|Add1~0_combout\;
\inst|ALT_INV_Mux25~5_combout\ <= NOT \inst|Mux25~5_combout\;
\inst|ALT_INV_Mux13~0_combout\ <= NOT \inst|Mux13~0_combout\;
\inst|ALT_INV_Mux25~4_combout\ <= NOT \inst|Mux25~4_combout\;
\inst|ALT_INV_Mux12~1_combout\ <= NOT \inst|Mux12~1_combout\;
\inst|ALT_INV_Mux12~0_combout\ <= NOT \inst|Mux12~0_combout\;
\inst|ALT_INV_Mux25~3_combout\ <= NOT \inst|Mux25~3_combout\;
\inst|ALT_INV_Mux25~2_combout\ <= NOT \inst|Mux25~2_combout\;
\inst|ALT_INV_Mux9~0_combout\ <= NOT \inst|Mux9~0_combout\;
\inst|ALT_INV_Mux25~1_combout\ <= NOT \inst|Mux25~1_combout\;
\inst|ALT_INV_Mux25~0_combout\ <= NOT \inst|Mux25~0_combout\;
\inst|ALT_INV_Mux5~0_combout\ <= NOT \inst|Mux5~0_combout\;
\inst|ALT_INV_Mux4~0_combout\ <= NOT \inst|Mux4~0_combout\;
\inst|ALT_INV_Mux3~0_combout\ <= NOT \inst|Mux3~0_combout\;
\inst|ALT_INV_Mux0~3_combout\ <= NOT \inst|Mux0~3_combout\;
\inst|ALT_INV_Mux0~2_combout\ <= NOT \inst|Mux0~2_combout\;
\inst|ALT_INV_Mux0~1_combout\ <= NOT \inst|Mux0~1_combout\;
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;
\inst|ALT_INV_digit[1]~33_combout\ <= NOT \inst|digit[1]~33_combout\;
\inst|ALT_INV_digit[1]~32_combout\ <= NOT \inst|digit[1]~32_combout\;
\inst|ALT_INV_digit[1]~31_combout\ <= NOT \inst|digit[1]~31_combout\;
\inst|ALT_INV_digit[1]~30_combout\ <= NOT \inst|digit[1]~30_combout\;
\inst|ALT_INV_digit[0]~29_combout\ <= NOT \inst|digit[0]~29_combout\;
\inst|ALT_INV_digit[0]~28_combout\ <= NOT \inst|digit[0]~28_combout\;
\inst|ALT_INV_digit[3]~27_combout\ <= NOT \inst|digit[3]~27_combout\;
\inst|ALT_INV_digit[3]~26_combout\ <= NOT \inst|digit[3]~26_combout\;
\inst|ALT_INV_digit[0]~25_combout\ <= NOT \inst|digit[0]~25_combout\;
\inst|ALT_INV_digit[0]~24_combout\ <= NOT \inst|digit[0]~24_combout\;
\inst|ALT_INV_digit[0]~23_combout\ <= NOT \inst|digit[0]~23_combout\;
\inst|ALT_INV_digit[3]~22_combout\ <= NOT \inst|digit[3]~22_combout\;
\inst|ALT_INV_digit[3]~21_combout\ <= NOT \inst|digit[3]~21_combout\;
\inst|ALT_INV_digit[3]~20_combout\ <= NOT \inst|digit[3]~20_combout\;
\inst|ALT_INV_digit[3]~19_combout\ <= NOT \inst|digit[3]~19_combout\;
\inst|ALT_INV_digit[2]~18_combout\ <= NOT \inst|digit[2]~18_combout\;
\inst|ALT_INV_digit~17_combout\ <= NOT \inst|digit~17_combout\;
\inst|ALT_INV_digit~16_combout\ <= NOT \inst|digit~16_combout\;
\inst|ALT_INV_digit~15_combout\ <= NOT \inst|digit~15_combout\;
\inst|ALT_INV_digit[3]~14_combout\ <= NOT \inst|digit[3]~14_combout\;
\inst|ALT_INV_digit~13_combout\ <= NOT \inst|digit~13_combout\;
\inst|ALT_INV_digit~12_combout\ <= NOT \inst|digit~12_combout\;
\inst|ALT_INV_digit~11_combout\ <= NOT \inst|digit~11_combout\;
\inst|ALT_INV_digit~10_combout\ <= NOT \inst|digit~10_combout\;
\inst|ALT_INV_digit[0]~9_combout\ <= NOT \inst|digit[0]~9_combout\;
\inst|ALT_INV_digit~8_combout\ <= NOT \inst|digit~8_combout\;
\inst|ALT_INV_digit~7_combout\ <= NOT \inst|digit~7_combout\;
\inst|ALT_INV_digit~6_combout\ <= NOT \inst|digit~6_combout\;
\inst|ALT_INV_digit[3]~5_combout\ <= NOT \inst|digit[3]~5_combout\;
\inst|ALT_INV_digit~4_combout\ <= NOT \inst|digit~4_combout\;
\inst|ALT_INV_digit~3_combout\ <= NOT \inst|digit~3_combout\;
\inst|ALT_INV_digit~2_combout\ <= NOT \inst|digit~2_combout\;
\inst|ALT_INV_digit~1_combout\ <= NOT \inst|digit~1_combout\;
\inst|ALT_INV_digit~0_combout\ <= NOT \inst|digit~0_combout\;
\inst3|ALT_INV_vsync~q\ <= NOT \inst3|vsync~q\;
\inst3|ALT_INV_hsync~q\ <= NOT \inst3|hsync~q\;
\inst3|ALT_INV_pixel_clk~q\ <= NOT \inst3|pixel_clk~q\;
\inst|ALT_INV_Mux25~13_combout\ <= NOT \inst|Mux25~13_combout\;
\inst3|ALT_INV_Add3~17_sumout\ <= NOT \inst3|Add3~17_sumout\;
\inst3|ALT_INV_Add2~37_sumout\ <= NOT \inst3|Add2~37_sumout\;
\inst3|ALT_INV_Add2~33_sumout\ <= NOT \inst3|Add2~33_sumout\;
\inst3|ALT_INV_Add2~29_sumout\ <= NOT \inst3|Add2~29_sumout\;
\inst3|ALT_INV_Add2~25_sumout\ <= NOT \inst3|Add2~25_sumout\;
\inst3|ALT_INV_Add2~21_sumout\ <= NOT \inst3|Add2~21_sumout\;
\inst3|ALT_INV_Add2~17_sumout\ <= NOT \inst3|Add2~17_sumout\;
\inst3|ALT_INV_Add2~13_sumout\ <= NOT \inst3|Add2~13_sumout\;
\inst3|ALT_INV_Add2~9_sumout\ <= NOT \inst3|Add2~9_sumout\;
\inst3|ALT_INV_Add2~5_sumout\ <= NOT \inst3|Add2~5_sumout\;
\inst3|ALT_INV_Add2~1_sumout\ <= NOT \inst3|Add2~1_sumout\;
\inst3|ALT_INV_Add0~37_sumout\ <= NOT \inst3|Add0~37_sumout\;
\inst3|ALT_INV_Add0~33_sumout\ <= NOT \inst3|Add0~33_sumout\;
\inst3|ALT_INV_Add0~29_sumout\ <= NOT \inst3|Add0~29_sumout\;
\inst3|ALT_INV_Add0~25_sumout\ <= NOT \inst3|Add0~25_sumout\;
\inst3|ALT_INV_Add0~21_sumout\ <= NOT \inst3|Add0~21_sumout\;
\inst3|ALT_INV_Add0~17_sumout\ <= NOT \inst3|Add0~17_sumout\;
\inst3|ALT_INV_Add0~13_sumout\ <= NOT \inst3|Add0~13_sumout\;
\inst3|ALT_INV_Add0~9_sumout\ <= NOT \inst3|Add0~9_sumout\;
\inst3|ALT_INV_Add0~5_sumout\ <= NOT \inst3|Add0~5_sumout\;
\inst3|ALT_INV_Add0~1_sumout\ <= NOT \inst3|Add0~1_sumout\;
\inst3|ALT_INV_pixel_row\(8) <= NOT \inst3|pixel_row\(8);
\inst3|ALT_INV_pixel_row\(7) <= NOT \inst3|pixel_row\(7);
\inst3|ALT_INV_pixel_row\(6) <= NOT \inst3|pixel_row\(6);
\inst3|ALT_INV_pixel_row\(5) <= NOT \inst3|pixel_row\(5);
\inst|ALT_INV_Add0~29_sumout\ <= NOT \inst|Add0~29_sumout\;
\inst|ALT_INV_Add0~25_sumout\ <= NOT \inst|Add0~25_sumout\;
\inst|ALT_INV_Add0~21_sumout\ <= NOT \inst|Add0~21_sumout\;
\inst|ALT_INV_Add0~17_sumout\ <= NOT \inst|Add0~17_sumout\;
\inst|ALT_INV_Add0~13_sumout\ <= NOT \inst|Add0~13_sumout\;
\inst|ALT_INV_Add0~9_sumout\ <= NOT \inst|Add0~9_sumout\;
\inst|ALT_INV_Add0~5_sumout\ <= NOT \inst|Add0~5_sumout\;
\inst|ALT_INV_Add0~1_sumout\ <= NOT \inst|Add0~1_sumout\;
\inst3|ALT_INV_pixel_row\(2) <= NOT \inst3|pixel_row\(2);
\inst3|ALT_INV_pixel_row\(3) <= NOT \inst3|pixel_row\(3);
\inst3|ALT_INV_pixel_row\(4) <= NOT \inst3|pixel_row\(4);
\inst3|ALT_INV_pixel_row\(1) <= NOT \inst3|pixel_row\(1);
\inst3|ALT_INV_pixel_row\(0) <= NOT \inst3|pixel_row\(0);
\inst|ALT_INV_Add2~17_sumout\ <= NOT \inst|Add2~17_sumout\;
\inst|ALT_INV_Add2~13_sumout\ <= NOT \inst|Add2~13_sumout\;
\inst3|ALT_INV_pixel_column\(0) <= NOT \inst3|pixel_column\(0);
\inst3|ALT_INV_pixel_column\(2) <= NOT \inst3|pixel_column\(2);
\inst3|ALT_INV_pixel_column\(1) <= NOT \inst3|pixel_column\(1);
\inst3|ALT_INV_pixel_column\(3) <= NOT \inst3|pixel_column\(3);
\inst3|ALT_INV_pixel_column\(4) <= NOT \inst3|pixel_column\(4);
\inst3|ALT_INV_pixel_column\(6) <= NOT \inst3|pixel_column\(6);
\inst3|ALT_INV_pixel_column\(8) <= NOT \inst3|pixel_column\(8);
\inst3|ALT_INV_pixel_column\(5) <= NOT \inst3|pixel_column\(5);
\inst3|ALT_INV_pixel_column\(7) <= NOT \inst3|pixel_column\(7);
\inst3|ALT_INV_pixel_column\(9) <= NOT \inst3|pixel_column\(9);
\inst|ALT_INV_Add2~9_sumout\ <= NOT \inst|Add2~9_sumout\;
\inst|ALT_INV_Add2~5_sumout\ <= NOT \inst|Add2~5_sumout\;
\inst|ALT_INV_Add2~1_sumout\ <= NOT \inst|Add2~1_sumout\;

-- Location: IOOBUF_X38_Y81_N36
\pixel_clk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|pixel_clk~q\,
	devoe => ww_devoe,
	o => ww_pixel_clk);

-- Location: IOOBUF_X36_Y81_N53
\hsync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|hsync~q\,
	devoe => ww_devoe,
	o => ww_hsync);

-- Location: IOOBUF_X34_Y81_N42
\vsync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|vsync~q\,
	devoe => ww_devoe,
	o => ww_vsync);

-- Location: IOOBUF_X6_Y81_N19
\nblank~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_nblank);

-- Location: IOOBUF_X28_Y81_N36
\nsync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_nsync);

-- Location: IOOBUF_X32_Y81_N19
\blue[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|b[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(7));

-- Location: IOOBUF_X40_Y81_N19
\blue[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|b[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(6));

-- Location: IOOBUF_X36_Y81_N2
\blue[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|b[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(5));

-- Location: IOOBUF_X28_Y81_N2
\blue[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|b[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(4));

-- Location: IOOBUF_X36_Y81_N19
\blue[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|b[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X20_Y81_N2
\blue[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|b[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X28_Y81_N19
\blue[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|b[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X40_Y81_N36
\blue[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|b[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X18_Y81_N59
\green[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|g[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_green(7));

-- Location: IOOBUF_X18_Y81_N42
\green[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|g[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_green(6));

-- Location: IOOBUF_X10_Y81_N42
\green[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|g[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_green(5));

-- Location: IOOBUF_X10_Y81_N59
\green[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|g[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_green(4));

-- Location: IOOBUF_X6_Y81_N2
\green[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|g[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X20_Y81_N19
\green[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|g[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X4_Y81_N2
\green[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|g[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X4_Y81_N19
\green[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|g[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X26_Y81_N42
\red[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|r[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_red(7));

-- Location: IOOBUF_X22_Y81_N2
\red[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|r[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_red(6));

-- Location: IOOBUF_X22_Y81_N19
\red[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|r[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_red(5));

-- Location: IOOBUF_X36_Y81_N36
\red[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|r[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_red(4));

-- Location: IOOBUF_X38_Y81_N19
\red[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|r[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X26_Y81_N59
\red[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|r[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X38_Y81_N2
\red[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|r[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X40_Y81_N53
\red[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|r[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOIBUF_X32_Y0_N1
\clock50MHz~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock50MHz,
	o => \clock50MHz~input_o\);

-- Location: MLABCELL_X28_Y73_N57
\inst3|pixel_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|pixel_clk~0_combout\ = ( !\inst3|pixel_clk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst3|ALT_INV_pixel_clk~q\,
	combout => \inst3|pixel_clk~0_combout\);

-- Location: FF_X28_Y73_N29
\inst3|pixel_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50MHz~input_o\,
	asdata => \inst3|pixel_clk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_clk~q\);

-- Location: FF_X29_Y73_N29
\inst3|hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(4));

-- Location: LABCELL_X29_Y73_N30
\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( \inst3|hcount\(0) ) + ( VCC ) + ( !VCC ))
-- \inst3|Add0~2\ = CARRY(( \inst3|hcount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_hcount\(0),
	cin => GND,
	sumout => \inst3|Add0~1_sumout\,
	cout => \inst3|Add0~2\);

-- Location: FF_X29_Y73_N5
\inst3|hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(0));

-- Location: LABCELL_X29_Y73_N33
\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( \inst3|hcount\(1) ) + ( GND ) + ( \inst3|Add0~2\ ))
-- \inst3|Add0~6\ = CARRY(( \inst3|hcount\(1) ) + ( GND ) + ( \inst3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_hcount\(1),
	cin => \inst3|Add0~2\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

-- Location: FF_X29_Y73_N17
\inst3|hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(1));

-- Location: LABCELL_X29_Y73_N36
\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( \inst3|hcount\(2) ) + ( GND ) + ( \inst3|Add0~6\ ))
-- \inst3|Add0~10\ = CARRY(( \inst3|hcount\(2) ) + ( GND ) + ( \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_hcount\(2),
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

-- Location: FF_X29_Y73_N10
\inst3|hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(2));

-- Location: LABCELL_X29_Y73_N39
\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( \inst3|hcount\(3) ) + ( GND ) + ( \inst3|Add0~10\ ))
-- \inst3|Add0~14\ = CARRY(( \inst3|hcount\(3) ) + ( GND ) + ( \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_hcount\(3),
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

-- Location: FF_X29_Y73_N23
\inst3|hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(3));

-- Location: LABCELL_X29_Y73_N42
\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( \inst3|hcount\(4) ) + ( GND ) + ( \inst3|Add0~14\ ))
-- \inst3|Add0~26\ = CARRY(( \inst3|hcount\(4) ) + ( GND ) + ( \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_hcount\(4),
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~25_sumout\,
	cout => \inst3|Add0~26\);

-- Location: FF_X28_Y73_N10
\inst3|hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add0~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(6));

-- Location: LABCELL_X29_Y73_N45
\inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~29_sumout\ = SUM(( \inst3|hcount\(5) ) + ( GND ) + ( \inst3|Add0~26\ ))
-- \inst3|Add0~30\ = CARRY(( \inst3|hcount\(5) ) + ( GND ) + ( \inst3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_hcount\(5),
	cin => \inst3|Add0~26\,
	sumout => \inst3|Add0~29_sumout\,
	cout => \inst3|Add0~30\);

-- Location: LABCELL_X29_Y73_N48
\inst3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~33_sumout\ = SUM(( \inst3|hcount\(6) ) + ( GND ) + ( \inst3|Add0~30\ ))
-- \inst3|Add0~34\ = CARRY(( \inst3|hcount\(6) ) + ( GND ) + ( \inst3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_hcount\(6),
	cin => \inst3|Add0~30\,
	sumout => \inst3|Add0~33_sumout\,
	cout => \inst3|Add0~34\);

-- Location: MLABCELL_X28_Y73_N33
\inst3|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = ( !\inst3|Add0~5_sumout\ & ( (!\inst3|Add0~13_sumout\ & (!\inst3|Add0~9_sumout\ & !\inst3|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~13_sumout\,
	datab => \inst3|ALT_INV_Add0~9_sumout\,
	datac => \inst3|ALT_INV_Add0~1_sumout\,
	dataf => \inst3|ALT_INV_Add0~5_sumout\,
	combout => \inst3|Equal0~3_combout\);

-- Location: FF_X29_Y73_N13
\inst3|hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add0~37_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(7));

-- Location: LABCELL_X29_Y73_N51
\inst3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~37_sumout\ = SUM(( \inst3|hcount\(7) ) + ( GND ) + ( \inst3|Add0~34\ ))
-- \inst3|Add0~38\ = CARRY(( \inst3|hcount\(7) ) + ( GND ) + ( \inst3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_hcount\(7),
	cin => \inst3|Add0~34\,
	sumout => \inst3|Add0~37_sumout\,
	cout => \inst3|Add0~38\);

-- Location: MLABCELL_X28_Y73_N6
\inst3|hcount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|hcount~1_combout\ = ( \inst3|Add0~17_sumout\ & ( \inst3|Equal0~3_combout\ & ( (\inst3|Add0~21_sumout\ & (((!\inst3|Equal0~1_combout\) # (\inst3|Add0~33_sumout\)) # (\inst3|Add0~37_sumout\))) ) ) ) # ( !\inst3|Add0~17_sumout\ & ( 
-- \inst3|Equal0~3_combout\ & ( \inst3|Add0~21_sumout\ ) ) ) # ( \inst3|Add0~17_sumout\ & ( !\inst3|Equal0~3_combout\ & ( \inst3|Add0~21_sumout\ ) ) ) # ( !\inst3|Add0~17_sumout\ & ( !\inst3|Equal0~3_combout\ & ( \inst3|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~37_sumout\,
	datab => \inst3|ALT_INV_Add0~33_sumout\,
	datac => \inst3|ALT_INV_Equal0~1_combout\,
	datad => \inst3|ALT_INV_Add0~21_sumout\,
	datae => \inst3|ALT_INV_Add0~17_sumout\,
	dataf => \inst3|ALT_INV_Equal0~3_combout\,
	combout => \inst3|hcount~1_combout\);

-- Location: FF_X28_Y73_N7
\inst3|hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	d => \inst3|hcount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(9));

-- Location: LABCELL_X29_Y73_N54
\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( \inst3|hcount\(8) ) + ( GND ) + ( \inst3|Add0~38\ ))
-- \inst3|Add0~18\ = CARRY(( \inst3|hcount\(8) ) + ( GND ) + ( \inst3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_hcount\(8),
	cin => \inst3|Add0~38\,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

-- Location: LABCELL_X29_Y73_N57
\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( \inst3|hcount\(9) ) + ( GND ) + ( \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_hcount\(9),
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~21_sumout\);

-- Location: MLABCELL_X28_Y73_N0
\inst3|hcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|hcount~0_combout\ = ( \inst3|Add0~17_sumout\ & ( \inst3|Add0~21_sumout\ & ( (!\inst3|Equal0~1_combout\) # (((!\inst3|Equal0~3_combout\) # (\inst3|Add0~37_sumout\)) # (\inst3|Add0~33_sumout\)) ) ) ) # ( \inst3|Add0~17_sumout\ & ( 
-- !\inst3|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~1_combout\,
	datab => \inst3|ALT_INV_Add0~33_sumout\,
	datac => \inst3|ALT_INV_Equal0~3_combout\,
	datad => \inst3|ALT_INV_Add0~37_sumout\,
	datae => \inst3|ALT_INV_Add0~17_sumout\,
	dataf => \inst3|ALT_INV_Add0~21_sumout\,
	combout => \inst3|hcount~0_combout\);

-- Location: FF_X28_Y73_N1
\inst3|hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	d => \inst3|hcount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(8));

-- Location: MLABCELL_X28_Y73_N12
\inst3|hsync~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|hsync~2_combout\ = ( !\inst3|Add0~5_sumout\ & ( (!\inst3|Add0~13_sumout\ & (!\inst3|Add0~33_sumout\ & (!\inst3|Add0~1_sumout\ & !\inst3|Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~13_sumout\,
	datab => \inst3|ALT_INV_Add0~33_sumout\,
	datac => \inst3|ALT_INV_Add0~1_sumout\,
	datad => \inst3|ALT_INV_Add0~9_sumout\,
	dataf => \inst3|ALT_INV_Add0~5_sumout\,
	combout => \inst3|hsync~2_combout\);

-- Location: LABCELL_X29_Y73_N6
\inst3|hcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|hcount~2_combout\ = ( \inst3|hsync~2_combout\ & ( \inst3|Add0~37_sumout\ & ( \inst3|Add0~29_sumout\ ) ) ) # ( !\inst3|hsync~2_combout\ & ( \inst3|Add0~37_sumout\ & ( \inst3|Add0~29_sumout\ ) ) ) # ( \inst3|hsync~2_combout\ & ( 
-- !\inst3|Add0~37_sumout\ & ( (\inst3|Add0~29_sumout\ & ((!\inst3|Add0~17_sumout\) # ((!\inst3|Add0~21_sumout\) # (\inst3|Add0~25_sumout\)))) ) ) ) # ( !\inst3|hsync~2_combout\ & ( !\inst3|Add0~37_sumout\ & ( \inst3|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000101100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~17_sumout\,
	datab => \inst3|ALT_INV_Add0~25_sumout\,
	datac => \inst3|ALT_INV_Add0~29_sumout\,
	datad => \inst3|ALT_INV_Add0~21_sumout\,
	datae => \inst3|ALT_INV_hsync~2_combout\,
	dataf => \inst3|ALT_INV_Add0~37_sumout\,
	combout => \inst3|hcount~2_combout\);

-- Location: FF_X29_Y73_N8
\inst3|hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	d => \inst3|hcount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hcount\(5));

-- Location: MLABCELL_X28_Y73_N36
\inst3|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = ( !\inst3|Add0~25_sumout\ & ( \inst3|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst3|ALT_INV_Add0~25_sumout\,
	dataf => \inst3|ALT_INV_Add0~29_sumout\,
	combout => \inst3|Equal0~1_combout\);

-- Location: MLABCELL_X28_Y73_N30
\inst3|process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|process_1~0_combout\ = ( \inst3|Add0~21_sumout\ & ( \inst3|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add0~17_sumout\,
	dataf => \inst3|ALT_INV_Add0~21_sumout\,
	combout => \inst3|process_1~0_combout\);

-- Location: MLABCELL_X28_Y73_N54
\inst3|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = ( !\inst3|Add0~37_sumout\ & ( (\inst3|Add0~29_sumout\ & (\inst3|Add0~33_sumout\ & !\inst3|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~29_sumout\,
	datab => \inst3|ALT_INV_Add0~33_sumout\,
	datac => \inst3|ALT_INV_Add0~25_sumout\,
	dataf => \inst3|ALT_INV_Add0~37_sumout\,
	combout => \inst3|Equal0~2_combout\);

-- Location: MLABCELL_X28_Y73_N45
\inst3|hsync~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|hsync~0_combout\ = ( !\inst3|Add0~33_sumout\ & ( !\inst3|Add0~37_sumout\ & ( (!\inst3|Add0~5_sumout\ & (!\inst3|Add0~1_sumout\ & (!\inst3|Add0~9_sumout\ & !\inst3|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~5_sumout\,
	datab => \inst3|ALT_INV_Add0~1_sumout\,
	datac => \inst3|ALT_INV_Add0~9_sumout\,
	datad => \inst3|ALT_INV_Add0~13_sumout\,
	datae => \inst3|ALT_INV_Add0~33_sumout\,
	dataf => \inst3|ALT_INV_Add0~37_sumout\,
	combout => \inst3|hsync~0_combout\);

-- Location: MLABCELL_X28_Y73_N42
\inst3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = ( !\inst3|Add0~17_sumout\ & ( !\inst3|Add0~21_sumout\ & ( (!\inst3|Add0~5_sumout\ & (!\inst3|Add0~1_sumout\ & (!\inst3|Add0~13_sumout\ & !\inst3|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~5_sumout\,
	datab => \inst3|ALT_INV_Add0~1_sumout\,
	datac => \inst3|ALT_INV_Add0~13_sumout\,
	datad => \inst3|ALT_INV_Add0~9_sumout\,
	datae => \inst3|ALT_INV_Add0~17_sumout\,
	dataf => \inst3|ALT_INV_Add0~21_sumout\,
	combout => \inst3|Equal0~0_combout\);

-- Location: MLABCELL_X28_Y73_N51
\inst3|hsync~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|hsync~1_combout\ = ( \inst3|hsync~0_combout\ & ( \inst3|Equal0~0_combout\ & ( ((\inst3|hsync~q\ & ((!\inst3|Equal0~1_combout\) # (!\inst3|process_1~0_combout\)))) # (\inst3|Equal0~2_combout\) ) ) ) # ( !\inst3|hsync~0_combout\ & ( 
-- \inst3|Equal0~0_combout\ & ( (\inst3|Equal0~2_combout\) # (\inst3|hsync~q\) ) ) ) # ( \inst3|hsync~0_combout\ & ( !\inst3|Equal0~0_combout\ & ( (\inst3|hsync~q\ & ((!\inst3|Equal0~1_combout\) # (!\inst3|process_1~0_combout\))) ) ) ) # ( 
-- !\inst3|hsync~0_combout\ & ( !\inst3|Equal0~0_combout\ & ( \inst3|hsync~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100100011001000110011111111110011001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Equal0~1_combout\,
	datab => \inst3|ALT_INV_hsync~q\,
	datac => \inst3|ALT_INV_process_1~0_combout\,
	datad => \inst3|ALT_INV_Equal0~2_combout\,
	datae => \inst3|ALT_INV_hsync~0_combout\,
	dataf => \inst3|ALT_INV_Equal0~0_combout\,
	combout => \inst3|hsync~1_combout\);

-- Location: FF_X28_Y73_N5
\inst3|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|hsync~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hsync~q\);

-- Location: FF_X25_Y71_N35
\inst3|vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add2~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(7));

-- Location: FF_X24_Y71_N41
\inst3|vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add2~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(8));

-- Location: LABCELL_X24_Y71_N21
\inst3|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~13_sumout\ = SUM(( \inst3|vcount\(7) ) + ( GND ) + ( \inst3|Add2~10\ ))
-- \inst3|Add2~14\ = CARRY(( \inst3|vcount\(7) ) + ( GND ) + ( \inst3|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_vcount\(7),
	cin => \inst3|Add2~10\,
	sumout => \inst3|Add2~13_sumout\,
	cout => \inst3|Add2~14\);

-- Location: LABCELL_X24_Y71_N24
\inst3|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~17_sumout\ = SUM(( \inst3|vcount\(8) ) + ( GND ) + ( \inst3|Add2~14\ ))
-- \inst3|Add2~18\ = CARRY(( \inst3|vcount\(8) ) + ( GND ) + ( \inst3|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_vcount\(8),
	cin => \inst3|Add2~14\,
	sumout => \inst3|Add2~17_sumout\,
	cout => \inst3|Add2~18\);

-- Location: MLABCELL_X25_Y71_N21
\inst3|process_2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|process_2~2_combout\ = ( !\inst3|Add2~9_sumout\ & ( !\inst3|Add2~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add2~13_sumout\,
	dataf => \inst3|ALT_INV_Add2~9_sumout\,
	combout => \inst3|process_2~2_combout\);

-- Location: LABCELL_X24_Y71_N45
\inst3|vcount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vcount~3_combout\ = ( \inst3|process_2~2_combout\ & ( \inst3|Add2~17_sumout\ & ( \inst3|Add2~33_sumout\ ) ) ) # ( !\inst3|process_2~2_combout\ & ( \inst3|Add2~17_sumout\ & ( \inst3|Add2~33_sumout\ ) ) ) # ( \inst3|process_2~2_combout\ & ( 
-- !\inst3|Add2~17_sumout\ & ( (\inst3|Add2~33_sumout\ & (((!\inst3|vsync~0_combout\) # (!\inst3|Add2~1_sumout\)) # (\inst3|Add2~37_sumout\))) ) ) ) # ( !\inst3|process_2~2_combout\ & ( !\inst3|Add2~17_sumout\ & ( \inst3|Add2~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~33_sumout\,
	datab => \inst3|ALT_INV_Add2~37_sumout\,
	datac => \inst3|ALT_INV_vsync~0_combout\,
	datad => \inst3|ALT_INV_Add2~1_sumout\,
	datae => \inst3|ALT_INV_process_2~2_combout\,
	dataf => \inst3|ALT_INV_Add2~17_sumout\,
	combout => \inst3|vcount~3_combout\);

-- Location: FF_X24_Y71_N47
\inst3|vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	d => \inst3|vcount~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(0));

-- Location: LABCELL_X24_Y71_N0
\inst3|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~33_sumout\ = SUM(( \inst3|vcount\(0) ) + ( VCC ) + ( !VCC ))
-- \inst3|Add2~34\ = CARRY(( \inst3|vcount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_vcount\(0),
	cin => GND,
	sumout => \inst3|Add2~33_sumout\,
	cout => \inst3|Add2~34\);

-- Location: MLABCELL_X25_Y71_N18
\inst3|vsync~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vsync~3_combout\ = ( !\inst3|Add2~37_sumout\ & ( \inst3|Add2~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Add2~33_sumout\,
	dataf => \inst3|ALT_INV_Add2~37_sumout\,
	combout => \inst3|vsync~3_combout\);

-- Location: LABCELL_X24_Y71_N3
\inst3|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~5_sumout\ = SUM(( \inst3|vcount\(1) ) + ( GND ) + ( \inst3|Add2~34\ ))
-- \inst3|Add2~6\ = CARRY(( \inst3|vcount\(1) ) + ( GND ) + ( \inst3|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_vcount\(1),
	cin => \inst3|Add2~34\,
	sumout => \inst3|Add2~5_sumout\,
	cout => \inst3|Add2~6\);

-- Location: FF_X24_Y71_N59
\inst3|vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add2~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(1));

-- Location: LABCELL_X24_Y71_N6
\inst3|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~25_sumout\ = SUM(( \inst3|vcount\(2) ) + ( GND ) + ( \inst3|Add2~6\ ))
-- \inst3|Add2~26\ = CARRY(( \inst3|vcount\(2) ) + ( GND ) + ( \inst3|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_vcount\(2),
	cin => \inst3|Add2~6\,
	sumout => \inst3|Add2~25_sumout\,
	cout => \inst3|Add2~26\);

-- Location: LABCELL_X24_Y71_N48
\inst3|vcount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vcount~1_combout\ = ( \inst3|vsync~3_combout\ & ( \inst3|Add2~25_sumout\ & ( (!\inst3|vsync~0_combout\) # (((!\inst3|process_2~2_combout\) # (!\inst3|Add2~1_sumout\)) # (\inst3|Add2~17_sumout\)) ) ) ) # ( !\inst3|vsync~3_combout\ & ( 
-- \inst3|Add2~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_vsync~0_combout\,
	datab => \inst3|ALT_INV_Add2~17_sumout\,
	datac => \inst3|ALT_INV_process_2~2_combout\,
	datad => \inst3|ALT_INV_Add2~1_sumout\,
	datae => \inst3|ALT_INV_vsync~3_combout\,
	dataf => \inst3|ALT_INV_Add2~25_sumout\,
	combout => \inst3|vcount~1_combout\);

-- Location: FF_X24_Y71_N50
\inst3|vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	d => \inst3|vcount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(2));

-- Location: LABCELL_X24_Y71_N9
\inst3|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~29_sumout\ = SUM(( \inst3|vcount\(3) ) + ( GND ) + ( \inst3|Add2~26\ ))
-- \inst3|Add2~30\ = CARRY(( \inst3|vcount\(3) ) + ( GND ) + ( \inst3|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_vcount\(3),
	cin => \inst3|Add2~26\,
	sumout => \inst3|Add2~29_sumout\,
	cout => \inst3|Add2~30\);

-- Location: LABCELL_X24_Y71_N36
\inst3|vsync~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vsync~0_combout\ = ( !\inst3|Add2~21_sumout\ & ( (\inst3|Add2~29_sumout\ & (!\inst3|Add2~5_sumout\ & \inst3|Add2~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Add2~29_sumout\,
	datac => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst3|ALT_INV_Add2~25_sumout\,
	dataf => \inst3|ALT_INV_Add2~21_sumout\,
	combout => \inst3|vsync~0_combout\);

-- Location: LABCELL_X24_Y71_N51
\inst3|vcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vcount~2_combout\ = ( \inst3|vsync~3_combout\ & ( \inst3|Add2~29_sumout\ & ( (!\inst3|vsync~0_combout\) # (((!\inst3|Add2~1_sumout\) # (!\inst3|process_2~2_combout\)) # (\inst3|Add2~17_sumout\)) ) ) ) # ( !\inst3|vsync~3_combout\ & ( 
-- \inst3|Add2~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_vsync~0_combout\,
	datab => \inst3|ALT_INV_Add2~17_sumout\,
	datac => \inst3|ALT_INV_Add2~1_sumout\,
	datad => \inst3|ALT_INV_process_2~2_combout\,
	datae => \inst3|ALT_INV_vsync~3_combout\,
	dataf => \inst3|ALT_INV_Add2~29_sumout\,
	combout => \inst3|vcount~2_combout\);

-- Location: FF_X24_Y71_N52
\inst3|vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	d => \inst3|vcount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(3));

-- Location: LABCELL_X24_Y71_N12
\inst3|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~21_sumout\ = SUM(( \inst3|vcount\(4) ) + ( GND ) + ( \inst3|Add2~30\ ))
-- \inst3|Add2~22\ = CARRY(( \inst3|vcount\(4) ) + ( GND ) + ( \inst3|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_vcount\(4),
	cin => \inst3|Add2~30\,
	sumout => \inst3|Add2~21_sumout\,
	cout => \inst3|Add2~22\);

-- Location: FF_X24_Y71_N35
\inst3|vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add2~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(4));

-- Location: LABCELL_X24_Y71_N15
\inst3|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~37_sumout\ = SUM(( \inst3|vcount\(5) ) + ( GND ) + ( \inst3|Add2~22\ ))
-- \inst3|Add2~38\ = CARRY(( \inst3|vcount\(5) ) + ( GND ) + ( \inst3|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_vcount\(5),
	cin => \inst3|Add2~22\,
	sumout => \inst3|Add2~37_sumout\,
	cout => \inst3|Add2~38\);

-- Location: FF_X24_Y71_N43
\inst3|vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add2~37_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(5));

-- Location: LABCELL_X24_Y71_N18
\inst3|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~9_sumout\ = SUM(( \inst3|vcount\(6) ) + ( GND ) + ( \inst3|Add2~38\ ))
-- \inst3|Add2~10\ = CARRY(( \inst3|vcount\(6) ) + ( GND ) + ( \inst3|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_vcount\(6),
	cin => \inst3|Add2~38\,
	sumout => \inst3|Add2~9_sumout\,
	cout => \inst3|Add2~10\);

-- Location: FF_X24_Y71_N56
\inst3|vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add2~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(6));

-- Location: MLABCELL_X25_Y71_N12
\inst3|vcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vcount~0_combout\ = ( \inst3|Add2~1_sumout\ & ( \inst3|Add2~17_sumout\ ) ) # ( \inst3|Add2~1_sumout\ & ( !\inst3|Add2~17_sumout\ & ( (((!\inst3|vsync~0_combout\) # (!\inst3|vsync~3_combout\)) # (\inst3|Add2~9_sumout\)) # (\inst3|Add2~13_sumout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~13_sumout\,
	datab => \inst3|ALT_INV_Add2~9_sumout\,
	datac => \inst3|ALT_INV_vsync~0_combout\,
	datad => \inst3|ALT_INV_vsync~3_combout\,
	datae => \inst3|ALT_INV_Add2~1_sumout\,
	dataf => \inst3|ALT_INV_Add2~17_sumout\,
	combout => \inst3|vcount~0_combout\);

-- Location: FF_X25_Y71_N13
\inst3|vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	d => \inst3|vcount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vcount\(9));

-- Location: LABCELL_X24_Y71_N27
\inst3|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~1_sumout\ = SUM(( \inst3|vcount\(9) ) + ( GND ) + ( \inst3|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_vcount\(9),
	cin => \inst3|Add2~18\,
	sumout => \inst3|Add2~1_sumout\);

-- Location: MLABCELL_X25_Y71_N39
\inst3|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal4~1_combout\ = ( !\inst3|Add2~37_sumout\ & ( !\inst3|Add2~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Add2~33_sumout\,
	dataf => \inst3|ALT_INV_Add2~37_sumout\,
	combout => \inst3|Equal4~1_combout\);

-- Location: MLABCELL_X25_Y71_N0
\inst3|vsync~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vsync~1_combout\ = ( \inst3|Add2~1_sumout\ & ( !\inst3|Add2~17_sumout\ & ( (\inst3|Add2~33_sumout\ & (!\inst3|Add2~9_sumout\ & (!\inst3|Add2~13_sumout\ & !\inst3|Add2~37_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~33_sumout\,
	datab => \inst3|ALT_INV_Add2~9_sumout\,
	datac => \inst3|ALT_INV_Add2~13_sumout\,
	datad => \inst3|ALT_INV_Add2~37_sumout\,
	datae => \inst3|ALT_INV_Add2~1_sumout\,
	dataf => \inst3|ALT_INV_Add2~17_sumout\,
	combout => \inst3|vsync~1_combout\);

-- Location: MLABCELL_X25_Y71_N36
\inst3|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~0_combout\ = ( !\inst3|Add2~29_sumout\ & ( !\inst3|Add2~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add2~25_sumout\,
	dataf => \inst3|ALT_INV_Add2~29_sumout\,
	combout => \inst3|LessThan2~0_combout\);

-- Location: MLABCELL_X25_Y71_N6
\inst3|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal4~0_combout\ = ( \inst3|LessThan2~0_combout\ & ( \inst3|Add2~5_sumout\ & ( (!\inst3|Add2~21_sumout\ & (!\inst3|Add2~17_sumout\ & (!\inst3|Add2~13_sumout\ & !\inst3|Add2~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~21_sumout\,
	datab => \inst3|ALT_INV_Add2~17_sumout\,
	datac => \inst3|ALT_INV_Add2~13_sumout\,
	datad => \inst3|ALT_INV_Add2~9_sumout\,
	datae => \inst3|ALT_INV_LessThan2~0_combout\,
	dataf => \inst3|ALT_INV_Add2~5_sumout\,
	combout => \inst3|Equal4~0_combout\);

-- Location: MLABCELL_X25_Y71_N24
\inst3|vsync~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vsync~2_combout\ = ( \inst3|vsync~1_combout\ & ( \inst3|Equal4~0_combout\ & ( (!\inst3|Add2~1_sumout\ & (((\inst3|vsync~q\ & !\inst3|vsync~0_combout\)) # (\inst3|Equal4~1_combout\))) # (\inst3|Add2~1_sumout\ & (\inst3|vsync~q\ & 
-- (!\inst3|vsync~0_combout\))) ) ) ) # ( !\inst3|vsync~1_combout\ & ( \inst3|Equal4~0_combout\ & ( ((!\inst3|Add2~1_sumout\ & \inst3|Equal4~1_combout\)) # (\inst3|vsync~q\) ) ) ) # ( \inst3|vsync~1_combout\ & ( !\inst3|Equal4~0_combout\ & ( (\inst3|vsync~q\ 
-- & !\inst3|vsync~0_combout\) ) ) ) # ( !\inst3|vsync~1_combout\ & ( !\inst3|Equal4~0_combout\ & ( \inst3|vsync~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100000011000000110011101110110011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~1_sumout\,
	datab => \inst3|ALT_INV_vsync~q\,
	datac => \inst3|ALT_INV_vsync~0_combout\,
	datad => \inst3|ALT_INV_Equal4~1_combout\,
	datae => \inst3|ALT_INV_vsync~1_combout\,
	dataf => \inst3|ALT_INV_Equal4~0_combout\,
	combout => \inst3|vsync~2_combout\);

-- Location: FF_X25_Y71_N8
\inst3|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|vsync~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vsync~q\);

-- Location: LABCELL_X30_Y73_N30
\inst3|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~37_sumout\ = SUM(( \inst3|pixel_column\(0) ) + ( VCC ) + ( !VCC ))
-- \inst3|Add1~38\ = CARRY(( \inst3|pixel_column\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_column\(0),
	cin => GND,
	sumout => \inst3|Add1~37_sumout\,
	cout => \inst3|Add1~38\);

-- Location: LABCELL_X29_Y73_N18
\inst3|process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|process_1~1_combout\ = ( \inst3|Add0~17_sumout\ & ( \inst3|Add0~21_sumout\ & ( (((\inst3|Add0~29_sumout\) # (\inst3|Add0~37_sumout\)) # (\inst3|Add0~25_sumout\)) # (\inst3|Add0~33_sumout\) ) ) ) # ( !\inst3|Add0~17_sumout\ & ( 
-- !\inst3|Add0~21_sumout\ & ( (!\inst3|Add0~37_sumout\) # ((!\inst3|Add0~33_sumout\ & (!\inst3|Add0~25_sumout\ & !\inst3|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000000000000000000000000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~33_sumout\,
	datab => \inst3|ALT_INV_Add0~25_sumout\,
	datac => \inst3|ALT_INV_Add0~37_sumout\,
	datad => \inst3|ALT_INV_Add0~29_sumout\,
	datae => \inst3|ALT_INV_Add0~17_sumout\,
	dataf => \inst3|ALT_INV_Add0~21_sumout\,
	combout => \inst3|process_1~1_combout\);

-- Location: FF_X29_Y73_N26
\inst3|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~37_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(0));

-- Location: LABCELL_X30_Y73_N33
\inst3|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~29_sumout\ = SUM(( \inst3|pixel_column\(1) ) + ( GND ) + ( \inst3|Add1~38\ ))
-- \inst3|Add1~30\ = CARRY(( \inst3|pixel_column\(1) ) + ( GND ) + ( \inst3|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_column\(1),
	cin => \inst3|Add1~38\,
	sumout => \inst3|Add1~29_sumout\,
	cout => \inst3|Add1~30\);

-- Location: FF_X29_Y73_N2
\inst3|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~29_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(1));

-- Location: LABCELL_X30_Y73_N36
\inst3|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~33_sumout\ = SUM(( \inst3|pixel_column\(2) ) + ( GND ) + ( \inst3|Add1~30\ ))
-- \inst3|Add1~34\ = CARRY(( \inst3|pixel_column\(2) ) + ( GND ) + ( \inst3|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_column\(2),
	cin => \inst3|Add1~30\,
	sumout => \inst3|Add1~33_sumout\,
	cout => \inst3|Add1~34\);

-- Location: FF_X29_Y73_N20
\inst3|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~33_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(2));

-- Location: LABCELL_X30_Y73_N39
\inst3|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~25_sumout\ = SUM(( \inst3|pixel_column\(3) ) + ( GND ) + ( \inst3|Add1~34\ ))
-- \inst3|Add1~26\ = CARRY(( \inst3|pixel_column\(3) ) + ( GND ) + ( \inst3|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_column\(3),
	cin => \inst3|Add1~34\,
	sumout => \inst3|Add1~25_sumout\,
	cout => \inst3|Add1~26\);

-- Location: FF_X28_Y73_N40
\inst3|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~25_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(3));

-- Location: LABCELL_X30_Y73_N42
\inst3|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~21_sumout\ = SUM(( \inst3|pixel_column\(4) ) + ( GND ) + ( \inst3|Add1~26\ ))
-- \inst3|Add1~22\ = CARRY(( \inst3|pixel_column\(4) ) + ( GND ) + ( \inst3|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_pixel_column\(4),
	cin => \inst3|Add1~26\,
	sumout => \inst3|Add1~21_sumout\,
	cout => \inst3|Add1~22\);

-- Location: FF_X29_Y73_N59
\inst3|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~21_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(4));

-- Location: LABCELL_X30_Y73_N45
\inst3|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~9_sumout\ = SUM(( \inst3|pixel_column\(5) ) + ( GND ) + ( \inst3|Add1~22\ ))
-- \inst3|Add1~10\ = CARRY(( \inst3|pixel_column\(5) ) + ( GND ) + ( \inst3|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_pixel_column\(5),
	cin => \inst3|Add1~22\,
	sumout => \inst3|Add1~9_sumout\,
	cout => \inst3|Add1~10\);

-- Location: FF_X28_Y73_N20
\inst3|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~9_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(5));

-- Location: LABCELL_X30_Y73_N48
\inst3|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~17_sumout\ = SUM(( \inst3|pixel_column\(6) ) + ( GND ) + ( \inst3|Add1~10\ ))
-- \inst3|Add1~18\ = CARRY(( \inst3|pixel_column\(6) ) + ( GND ) + ( \inst3|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_pixel_column\(6),
	cin => \inst3|Add1~10\,
	sumout => \inst3|Add1~17_sumout\,
	cout => \inst3|Add1~18\);

-- Location: FF_X29_Y73_N35
\inst3|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~17_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(6));

-- Location: LABCELL_X30_Y73_N51
\inst3|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~5_sumout\ = SUM(( \inst3|pixel_column\(7) ) + ( GND ) + ( \inst3|Add1~18\ ))
-- \inst3|Add1~6\ = CARRY(( \inst3|pixel_column\(7) ) + ( GND ) + ( \inst3|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_column\(7),
	cin => \inst3|Add1~18\,
	sumout => \inst3|Add1~5_sumout\,
	cout => \inst3|Add1~6\);

-- Location: FF_X28_Y73_N50
\inst3|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~5_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(7));

-- Location: LABCELL_X30_Y73_N54
\inst3|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~13_sumout\ = SUM(( \inst3|pixel_column\(8) ) + ( GND ) + ( \inst3|Add1~6\ ))
-- \inst3|Add1~14\ = CARRY(( \inst3|pixel_column\(8) ) + ( GND ) + ( \inst3|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_column\(8),
	cin => \inst3|Add1~6\,
	sumout => \inst3|Add1~13_sumout\,
	cout => \inst3|Add1~14\);

-- Location: FF_X28_Y73_N35
\inst3|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~13_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(8));

-- Location: LABCELL_X30_Y73_N57
\inst3|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add1~1_sumout\ = SUM(( \inst3|pixel_column\(9) ) + ( GND ) + ( \inst3|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_pixel_column\(9),
	cin => \inst3|Add1~14\,
	sumout => \inst3|Add1~1_sumout\);

-- Location: FF_X28_Y73_N56
\inst3|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|Add1~1_sumout\,
	sclr => \inst3|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_column\(9));

-- Location: LABCELL_X29_Y73_N24
\inst|digit~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~3_combout\ = ( \inst3|pixel_column\(0) & ( \inst3|pixel_column\(1) & ( (!\inst3|pixel_column\(5) & (\inst3|pixel_column\(2) & (\inst3|pixel_column\(4) & \inst3|pixel_column\(3)))) # (\inst3|pixel_column\(5) & (((!\inst3|pixel_column\(4))))) ) 
-- ) ) # ( !\inst3|pixel_column\(0) & ( \inst3|pixel_column\(1) & ( (!\inst3|pixel_column\(5) & (\inst3|pixel_column\(2) & (\inst3|pixel_column\(4) & \inst3|pixel_column\(3)))) # (\inst3|pixel_column\(5) & (((!\inst3|pixel_column\(4))))) ) ) ) # ( 
-- \inst3|pixel_column\(0) & ( !\inst3|pixel_column\(1) & ( (!\inst3|pixel_column\(5) & (\inst3|pixel_column\(2) & (\inst3|pixel_column\(4) & \inst3|pixel_column\(3)))) # (\inst3|pixel_column\(5) & ((!\inst3|pixel_column\(4)) # ((!\inst3|pixel_column\(2) & 
-- !\inst3|pixel_column\(3))))) ) ) ) # ( !\inst3|pixel_column\(0) & ( !\inst3|pixel_column\(1) & ( (\inst3|pixel_column\(5) & ((!\inst3|pixel_column\(4)) # ((!\inst3|pixel_column\(2) & !\inst3|pixel_column\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110000001100100011010000110000001101000011000000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(2),
	datab => \inst3|ALT_INV_pixel_column\(5),
	datac => \inst3|ALT_INV_pixel_column\(4),
	datad => \inst3|ALT_INV_pixel_column\(3),
	datae => \inst3|ALT_INV_pixel_column\(0),
	dataf => \inst3|ALT_INV_pixel_column\(1),
	combout => \inst|digit~3_combout\);

-- Location: LABCELL_X24_Y73_N6
\inst|digit~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~2_combout\ = ( !\inst3|pixel_column\(8) & ( (!\inst3|pixel_column\(9) & \inst3|pixel_column\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_pixel_column\(9),
	datad => \inst3|ALT_INV_pixel_column\(7),
	dataf => \inst3|ALT_INV_pixel_column\(8),
	combout => \inst|digit~2_combout\);

-- Location: LABCELL_X24_Y73_N24
\inst|digit~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~4_combout\ = ( \inst|digit~2_combout\ & ( (!\inst|digit~3_combout\) # (\inst3|pixel_column\(6)) ) ) # ( !\inst|digit~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(6),
	datac => \inst|ALT_INV_digit~3_combout\,
	dataf => \inst|ALT_INV_digit~2_combout\,
	combout => \inst|digit~4_combout\);

-- Location: LABCELL_X24_Y73_N39
\inst|digit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~0_combout\ = ( !\inst3|pixel_column\(8) & ( \inst3|pixel_column\(6) & ( (!\inst3|pixel_column\(9) & (!\inst3|pixel_column\(7) & \inst3|pixel_column\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(9),
	datac => \inst3|ALT_INV_pixel_column\(7),
	datad => \inst3|ALT_INV_pixel_column\(5),
	datae => \inst3|ALT_INV_pixel_column\(8),
	dataf => \inst3|ALT_INV_pixel_column\(6),
	combout => \inst|digit~0_combout\);

-- Location: MLABCELL_X25_Y73_N0
\inst|digit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~1_combout\ = ( \inst3|pixel_column\(4) & ( \inst|digit~0_combout\ & ( ((\inst3|pixel_column\(1) & (\inst3|pixel_column\(0) & \inst3|pixel_column\(2)))) # (\inst3|pixel_column\(3)) ) ) ) # ( !\inst3|pixel_column\(4) & ( \inst|digit~0_combout\ & 
-- ( (!\inst3|pixel_column\(1) & (!\inst3|pixel_column\(3) & !\inst3|pixel_column\(2))) ) ) ) # ( \inst3|pixel_column\(4) & ( !\inst|digit~0_combout\ ) ) # ( !\inst3|pixel_column\(4) & ( !\inst|digit~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110100000000000000000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(1),
	datab => \inst3|ALT_INV_pixel_column\(0),
	datac => \inst3|ALT_INV_pixel_column\(3),
	datad => \inst3|ALT_INV_pixel_column\(2),
	datae => \inst3|ALT_INV_pixel_column\(4),
	dataf => \inst|ALT_INV_digit~0_combout\,
	combout => \inst|digit~1_combout\);

-- Location: LABCELL_X24_Y73_N18
\inst|digit[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~5_combout\ = (!\inst3|pixel_column\(9) & (\inst3|pixel_column\(8) & \inst3|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(9),
	datab => \inst3|ALT_INV_pixel_column\(8),
	datad => \inst3|ALT_INV_pixel_column\(7),
	combout => \inst|digit[3]~5_combout\);

-- Location: MLABCELL_X25_Y73_N6
\inst|digit~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~8_combout\ = ( !\inst3|pixel_column\(4) & ( \inst3|pixel_column\(5) & ( (!\inst3|pixel_column\(3) & (!\inst3|pixel_column\(2) & ((!\inst3|pixel_column\(1)) # (!\inst3|pixel_column\(0))))) ) ) ) # ( \inst3|pixel_column\(4) & ( 
-- !\inst3|pixel_column\(5) ) ) # ( !\inst3|pixel_column\(4) & ( !\inst3|pixel_column\(5) & ( (\inst3|pixel_column\(1) & (\inst3|pixel_column\(3) & \inst3|pixel_column\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111111111111111100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(1),
	datab => \inst3|ALT_INV_pixel_column\(0),
	datac => \inst3|ALT_INV_pixel_column\(3),
	datad => \inst3|ALT_INV_pixel_column\(2),
	datae => \inst3|ALT_INV_pixel_column\(4),
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|digit~8_combout\);

-- Location: LABCELL_X29_Y73_N12
\inst|digit~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~6_combout\ = ( \inst3|pixel_column\(2) & ( \inst3|pixel_column\(0) & ( (!\inst3|pixel_column\(5) & ((!\inst3|pixel_column\(3)) # (!\inst3|pixel_column\(4)))) ) ) ) # ( !\inst3|pixel_column\(2) & ( \inst3|pixel_column\(0) & ( 
-- (!\inst3|pixel_column\(5) & (!\inst3|pixel_column\(3) $ (!\inst3|pixel_column\(4)))) ) ) ) # ( \inst3|pixel_column\(2) & ( !\inst3|pixel_column\(0) & ( (!\inst3|pixel_column\(5) & ((!\inst3|pixel_column\(3)) # (!\inst3|pixel_column\(4)))) ) ) ) # ( 
-- !\inst3|pixel_column\(2) & ( !\inst3|pixel_column\(0) & ( (!\inst3|pixel_column\(5) & ((!\inst3|pixel_column\(3) & ((\inst3|pixel_column\(4)))) # (\inst3|pixel_column\(3) & ((!\inst3|pixel_column\(1)) # (!\inst3|pixel_column\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000000000111111000000000000111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(1),
	datab => \inst3|ALT_INV_pixel_column\(3),
	datac => \inst3|ALT_INV_pixel_column\(4),
	datad => \inst3|ALT_INV_pixel_column\(5),
	datae => \inst3|ALT_INV_pixel_column\(2),
	dataf => \inst3|ALT_INV_pixel_column\(0),
	combout => \inst|digit~6_combout\);

-- Location: LABCELL_X24_Y73_N15
\inst|digit~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~7_combout\ = (!\inst3|pixel_column\(9) & (!\inst3|pixel_column\(7) & \inst3|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(9),
	datab => \inst3|ALT_INV_pixel_column\(7),
	datac => \inst3|ALT_INV_pixel_column\(8),
	combout => \inst|digit~7_combout\);

-- Location: MLABCELL_X25_Y73_N27
\inst|digit[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[0]~9_combout\ = ( \inst|digit~7_combout\ & ( (\inst3|pixel_column\(6) & (((\inst|digit[3]~5_combout\ & \inst|digit~6_combout\)) # (\inst|digit~8_combout\))) ) ) # ( !\inst|digit~7_combout\ & ( (\inst3|pixel_column\(6) & 
-- (\inst|digit[3]~5_combout\ & \inst|digit~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000101000101010000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(6),
	datab => \inst|ALT_INV_digit[3]~5_combout\,
	datac => \inst|ALT_INV_digit~8_combout\,
	datad => \inst|ALT_INV_digit~6_combout\,
	dataf => \inst|ALT_INV_digit~7_combout\,
	combout => \inst|digit[0]~9_combout\);

-- Location: MLABCELL_X25_Y73_N12
\inst|digit~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~15_combout\ = ( \inst3|pixel_column\(2) & ( (\inst3|pixel_column\(3) & (!\inst3|pixel_column\(4) & ((\inst3|pixel_column\(1)) # (\inst3|pixel_column\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(3),
	datab => \inst3|ALT_INV_pixel_column\(0),
	datac => \inst3|ALT_INV_pixel_column\(1),
	datad => \inst3|ALT_INV_pixel_column\(4),
	dataf => \inst3|ALT_INV_pixel_column\(2),
	combout => \inst|digit~15_combout\);

-- Location: LABCELL_X24_Y73_N27
\inst|digit~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~16_combout\ = ( \inst3|pixel_column\(5) & ( (\inst3|pixel_column\(6) & !\inst3|pixel_column\(4)) ) ) # ( !\inst3|pixel_column\(5) & ( (\inst3|pixel_column\(6) & (\inst3|pixel_column\(3) & \inst3|pixel_column\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(6),
	datac => \inst3|ALT_INV_pixel_column\(3),
	datad => \inst3|ALT_INV_pixel_column\(4),
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|digit~16_combout\);

-- Location: LABCELL_X24_Y73_N45
\inst|digit~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~17_combout\ = ( \inst|digit~2_combout\ & ( (!\inst|digit~16_combout\) # (\inst|digit~15_combout\) ) ) # ( !\inst|digit~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~15_combout\,
	datab => \inst|ALT_INV_digit~16_combout\,
	dataf => \inst|ALT_INV_digit~2_combout\,
	combout => \inst|digit~17_combout\);

-- Location: LABCELL_X24_Y73_N21
\inst|digit[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~20_combout\ = (\inst3|pixel_column\(9) & (!\inst3|pixel_column\(8) & !\inst3|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(9),
	datac => \inst3|ALT_INV_pixel_column\(8),
	datad => \inst3|ALT_INV_pixel_column\(7),
	combout => \inst|digit[3]~20_combout\);

-- Location: LABCELL_X24_Y73_N9
\inst|digit[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~21_combout\ = ( !\inst3|pixel_column\(6) & ( (!\inst3|pixel_column\(5) & ((!\inst3|pixel_column\(4)) # ((!\inst3|pixel_column\(3) & !\inst3|pixel_column\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010100000101010001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(5),
	datab => \inst3|ALT_INV_pixel_column\(3),
	datac => \inst3|ALT_INV_pixel_column\(4),
	datad => \inst3|ALT_INV_pixel_column\(2),
	dataf => \inst3|ALT_INV_pixel_column\(6),
	combout => \inst|digit[3]~21_combout\);

-- Location: MLABCELL_X25_Y73_N30
\inst|digit[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~19_combout\ = ( \inst3|pixel_column\(4) & ( \inst3|pixel_column\(5) & ( (\inst3|pixel_column\(1) & (\inst3|pixel_column\(0) & (\inst3|pixel_column\(3) & \inst3|pixel_column\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(1),
	datab => \inst3|ALT_INV_pixel_column\(0),
	datac => \inst3|ALT_INV_pixel_column\(3),
	datad => \inst3|ALT_INV_pixel_column\(2),
	datae => \inst3|ALT_INV_pixel_column\(4),
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|digit[3]~19_combout\);

-- Location: MLABCELL_X25_Y73_N24
\inst|digit[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~22_combout\ = ( \inst|digit[3]~19_combout\ & ( (!\inst3|pixel_column\(6) & (((\inst|digit[3]~20_combout\ & \inst|digit[3]~21_combout\)))) # (\inst3|pixel_column\(6) & (((\inst|digit[3]~20_combout\ & \inst|digit[3]~21_combout\)) # 
-- (\inst|digit[3]~5_combout\))) ) ) # ( !\inst|digit[3]~19_combout\ & ( (\inst|digit[3]~20_combout\ & \inst|digit[3]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(6),
	datab => \inst|ALT_INV_digit[3]~5_combout\,
	datac => \inst|ALT_INV_digit[3]~20_combout\,
	datad => \inst|ALT_INV_digit[3]~21_combout\,
	dataf => \inst|ALT_INV_digit[3]~19_combout\,
	combout => \inst|digit[3]~22_combout\);

-- Location: MLABCELL_X25_Y73_N48
\inst|digit[0]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[0]~24_combout\ = ( \inst3|pixel_column\(1) & ( \inst3|pixel_column\(5) & ( (\inst3|pixel_column\(3) & (!\inst3|pixel_column\(6) & \inst3|pixel_column\(4))) ) ) ) # ( !\inst3|pixel_column\(1) & ( \inst3|pixel_column\(5) & ( 
-- (\inst3|pixel_column\(3) & (\inst3|pixel_column\(2) & (!\inst3|pixel_column\(6) & \inst3|pixel_column\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(3),
	datab => \inst3|ALT_INV_pixel_column\(2),
	datac => \inst3|ALT_INV_pixel_column\(6),
	datad => \inst3|ALT_INV_pixel_column\(4),
	datae => \inst3|ALT_INV_pixel_column\(1),
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|digit[0]~24_combout\);

-- Location: MLABCELL_X25_Y73_N15
\inst|digit[0]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[0]~23_combout\ = ( \inst3|pixel_column\(2) & ( (\inst3|pixel_column\(3) & (\inst3|pixel_column\(0) & \inst3|pixel_column\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(3),
	datab => \inst3|ALT_INV_pixel_column\(0),
	datad => \inst3|ALT_INV_pixel_column\(1),
	dataf => \inst3|ALT_INV_pixel_column\(2),
	combout => \inst|digit[0]~23_combout\);

-- Location: MLABCELL_X25_Y73_N18
\inst|digit[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[0]~25_combout\ = ( \inst|digit[3]~20_combout\ & ( \inst3|pixel_column\(5) & ( \inst|digit[0]~24_combout\ ) ) ) # ( \inst|digit[3]~20_combout\ & ( !\inst3|pixel_column\(5) & ( ((\inst3|pixel_column\(6) & (!\inst3|pixel_column\(4) & 
-- !\inst|digit[0]~23_combout\))) # (\inst|digit[0]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(6),
	datab => \inst3|ALT_INV_pixel_column\(4),
	datac => \inst|ALT_INV_digit[0]~24_combout\,
	datad => \inst|ALT_INV_digit[0]~23_combout\,
	datae => \inst|ALT_INV_digit[3]~20_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|digit[0]~25_combout\);

-- Location: MLABCELL_X25_Y73_N36
\inst|digit~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~13_combout\ = ( \inst3|pixel_column\(5) & ( (!\inst3|pixel_column\(6) & (!\inst3|pixel_column\(3) & !\inst3|pixel_column\(4))) ) ) # ( !\inst3|pixel_column\(5) & ( (!\inst3|pixel_column\(6) & \inst3|pixel_column\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(6),
	datac => \inst3|ALT_INV_pixel_column\(3),
	datad => \inst3|ALT_INV_pixel_column\(4),
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|digit~13_combout\);

-- Location: MLABCELL_X25_Y73_N57
\inst|digit~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~12_combout\ = ( !\inst3|pixel_column\(5) & ( (!\inst3|pixel_column\(3) & (!\inst3|pixel_column\(2) & ((!\inst3|pixel_column\(0)) # (!\inst3|pixel_column\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(3),
	datab => \inst3|ALT_INV_pixel_column\(0),
	datac => \inst3|ALT_INV_pixel_column\(2),
	datad => \inst3|ALT_INV_pixel_column\(1),
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|digit~12_combout\);

-- Location: MLABCELL_X25_Y73_N54
\inst|digit~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~10_combout\ = ( \inst3|pixel_column\(2) & ( (!\inst3|pixel_column\(3) & ((!\inst3|pixel_column\(4)))) # (\inst3|pixel_column\(3) & (\inst3|pixel_column\(1) & \inst3|pixel_column\(4))) ) ) # ( !\inst3|pixel_column\(2) & ( 
-- (!\inst3|pixel_column\(4) & ((!\inst3|pixel_column\(3)) # ((!\inst3|pixel_column\(0) & !\inst3|pixel_column\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000111010100000000010101010000001011010101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(3),
	datab => \inst3|ALT_INV_pixel_column\(0),
	datac => \inst3|ALT_INV_pixel_column\(1),
	datad => \inst3|ALT_INV_pixel_column\(4),
	dataf => \inst3|ALT_INV_pixel_column\(2),
	combout => \inst|digit~10_combout\);

-- Location: LABCELL_X24_Y73_N12
\inst|digit~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit~11_combout\ = ( !\inst3|pixel_column\(6) & ( (!\inst3|pixel_column\(9) & (\inst3|pixel_column\(7) & (!\inst3|pixel_column\(5) & \inst3|pixel_column\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(9),
	datab => \inst3|ALT_INV_pixel_column\(7),
	datac => \inst3|ALT_INV_pixel_column\(5),
	datad => \inst3|ALT_INV_pixel_column\(8),
	dataf => \inst3|ALT_INV_pixel_column\(6),
	combout => \inst|digit~11_combout\);

-- Location: MLABCELL_X25_Y73_N42
\inst|digit[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~14_combout\ = ( \inst|digit~7_combout\ & ( (!\inst|digit~13_combout\ & (((!\inst|digit~10_combout\ & \inst|digit~11_combout\)))) # (\inst|digit~13_combout\ & ((!\inst|digit~12_combout\) # ((!\inst|digit~10_combout\ & 
-- \inst|digit~11_combout\)))) ) ) # ( !\inst|digit~7_combout\ & ( (!\inst|digit~10_combout\ & \inst|digit~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001000100111101000100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~13_combout\,
	datab => \inst|ALT_INV_digit~12_combout\,
	datac => \inst|ALT_INV_digit~10_combout\,
	datad => \inst|ALT_INV_digit~11_combout\,
	dataf => \inst|ALT_INV_digit~7_combout\,
	combout => \inst|digit[3]~14_combout\);

-- Location: LABCELL_X27_Y72_N33
\inst|digit[0]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[0]~39_combout\ = ( \inst|digit[0]~25_combout\ & ( \inst|digit[3]~14_combout\ & ( (!\inst|digit~17_combout\) # (\inst|digit[0]~9_combout\) ) ) ) # ( !\inst|digit[0]~25_combout\ & ( \inst|digit[3]~14_combout\ & ( (!\inst|digit~17_combout\) # 
-- (\inst|digit[0]~9_combout\) ) ) ) # ( \inst|digit[0]~25_combout\ & ( !\inst|digit[3]~14_combout\ & ( ((!\inst|digit~17_combout\) # (!\inst|digit[3]~22_combout\)) # (\inst|digit[0]~9_combout\) ) ) ) # ( !\inst|digit[0]~25_combout\ & ( 
-- !\inst|digit[3]~14_combout\ & ( (!\inst|digit~17_combout\) # (\inst|digit[0]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101111111011111110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[0]~9_combout\,
	datab => \inst|ALT_INV_digit~17_combout\,
	datac => \inst|ALT_INV_digit[3]~22_combout\,
	datae => \inst|ALT_INV_digit[0]~25_combout\,
	dataf => \inst|ALT_INV_digit[3]~14_combout\,
	combout => \inst|digit[0]~39_combout\);

-- Location: LABCELL_X27_Y72_N36
\inst|digit[3]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~40_combout\ = ( \inst|digit[3]~22_combout\ & ( (!\inst|digit[3]~14_combout\ & (!\inst|digit[0]~9_combout\ & \inst|digit~17_combout\)) ) ) # ( !\inst|digit[3]~22_combout\ & ( (!\inst|digit[3]~14_combout\ & (\inst|digit[0]~25_combout\ & 
-- (!\inst|digit[0]~9_combout\ & \inst|digit~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[3]~14_combout\,
	datab => \inst|ALT_INV_digit[0]~25_combout\,
	datac => \inst|ALT_INV_digit[0]~9_combout\,
	datad => \inst|ALT_INV_digit~17_combout\,
	dataf => \inst|ALT_INV_digit[3]~22_combout\,
	combout => \inst|digit[3]~40_combout\);

-- Location: LABCELL_X27_Y72_N6
\inst|digit[3]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~26_combout\ = ( \inst|digit[0]~25_combout\ & ( \inst|digit~4_combout\ & ( (!\inst|digit[0]~9_combout\ & (!\inst|digit[3]~14_combout\ & \inst|digit~17_combout\)) ) ) ) # ( !\inst|digit[0]~25_combout\ & ( \inst|digit~4_combout\ & ( 
-- (!\inst|digit[0]~9_combout\ & (\inst|digit[3]~22_combout\ & (!\inst|digit[3]~14_combout\ & \inst|digit~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[0]~9_combout\,
	datab => \inst|ALT_INV_digit[3]~22_combout\,
	datac => \inst|ALT_INV_digit[3]~14_combout\,
	datad => \inst|ALT_INV_digit~17_combout\,
	datae => \inst|ALT_INV_digit[0]~25_combout\,
	dataf => \inst|ALT_INV_digit~4_combout\,
	combout => \inst|digit[3]~26_combout\);

-- Location: LABCELL_X27_Y72_N0
\inst|digit[0]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[0]~28_combout\ = ( \inst|digit[0]~25_combout\ & ( \inst|digit~4_combout\ & ( ((!\inst|digit~17_combout\) # ((!\inst|digit[3]~22_combout\ & !\inst|digit[3]~14_combout\))) # (\inst|digit[0]~9_combout\) ) ) ) # ( !\inst|digit[0]~25_combout\ & ( 
-- \inst|digit~4_combout\ & ( (!\inst|digit~17_combout\) # (\inst|digit[0]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111010101011111111111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[0]~9_combout\,
	datab => \inst|ALT_INV_digit[3]~22_combout\,
	datac => \inst|ALT_INV_digit[3]~14_combout\,
	datad => \inst|ALT_INV_digit~17_combout\,
	datae => \inst|ALT_INV_digit[0]~25_combout\,
	dataf => \inst|ALT_INV_digit~4_combout\,
	combout => \inst|digit[0]~28_combout\);

-- Location: LABCELL_X27_Y72_N48
\inst|digit[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[2]~18_combout\ = ( \inst|digit~17_combout\ & ( \inst|digit[3]~14_combout\ & ( \inst|digit~4_combout\ ) ) ) # ( \inst|digit~17_combout\ & ( !\inst|digit[3]~14_combout\ & ( (\inst|digit~4_combout\ & \inst|digit[0]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_digit~4_combout\,
	datac => \inst|ALT_INV_digit[0]~9_combout\,
	datae => \inst|ALT_INV_digit~17_combout\,
	dataf => \inst|ALT_INV_digit[3]~14_combout\,
	combout => \inst|digit[2]~18_combout\);

-- Location: LABCELL_X29_Y73_N0
\inst|digit[1]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[1]~30_combout\ = ( \inst|digit[3]~5_combout\ & ( (!\inst3|pixel_column\(6) & (!\inst|digit~10_combout\ & ((!\inst3|pixel_column\(5))))) # (\inst3|pixel_column\(6) & (((\inst|digit~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000110000001100000000000000001010001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~10_combout\,
	datab => \inst|ALT_INV_digit~6_combout\,
	datac => \inst3|ALT_INV_pixel_column\(6),
	datad => \inst3|ALT_INV_pixel_column\(5),
	datae => \inst|ALT_INV_digit[3]~5_combout\,
	combout => \inst|digit[1]~30_combout\);

-- Location: MLABCELL_X25_Y73_N39
\inst|digit[1]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[1]~31_combout\ = ( \inst|digit~8_combout\ & ( (\inst|digit~7_combout\ & (((!\inst|digit~12_combout\ & \inst|digit~13_combout\)) # (\inst3|pixel_column\(6)))) ) ) # ( !\inst|digit~8_combout\ & ( (\inst|digit~7_combout\ & 
-- (!\inst|digit~12_combout\ & \inst|digit~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000010001001100010001000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(6),
	datab => \inst|ALT_INV_digit~7_combout\,
	datac => \inst|ALT_INV_digit~12_combout\,
	datad => \inst|ALT_INV_digit~13_combout\,
	dataf => \inst|ALT_INV_digit~8_combout\,
	combout => \inst|digit[1]~31_combout\);

-- Location: LABCELL_X24_Y73_N42
\inst|digit[1]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[1]~32_combout\ = ( \inst3|pixel_column\(6) & ( (!\inst|digit~15_combout\ & (\inst|digit~16_combout\ & \inst|digit~2_combout\)) ) ) # ( !\inst3|pixel_column\(6) & ( (\inst|digit~2_combout\ & (((!\inst|digit~15_combout\ & 
-- \inst|digit~16_combout\)) # (\inst|digit~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101111000000000010111100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~15_combout\,
	datab => \inst|ALT_INV_digit~16_combout\,
	datac => \inst|ALT_INV_digit~3_combout\,
	datad => \inst|ALT_INV_digit~2_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(6),
	combout => \inst|digit[1]~32_combout\);

-- Location: LABCELL_X27_Y72_N12
\inst|digit[1]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[1]~36_combout\ = ( \inst|digit[1]~32_combout\ ) # ( !\inst|digit[1]~32_combout\ & ( (\inst|digit[1]~30_combout\ & !\inst|digit[1]~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111101010000010100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[1]~30_combout\,
	datac => \inst|ALT_INV_digit[1]~31_combout\,
	datae => \inst|ALT_INV_digit[1]~32_combout\,
	combout => \inst|digit[1]~36_combout\);

-- Location: MLABCELL_X25_Y73_N45
\inst|digit[3]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~41_combout\ = ( !\inst|digit[3]~14_combout\ & ( !\inst|digit[0]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_digit[0]~9_combout\,
	dataf => \inst|ALT_INV_digit[3]~14_combout\,
	combout => \inst|digit[3]~41_combout\);

-- Location: LABCELL_X27_Y72_N27
\inst|digit[2]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[2]~34_combout\ = ( \inst|digit~1_combout\ & ( \inst|digit[3]~14_combout\ & ( (\inst|digit~17_combout\ & \inst|digit~4_combout\) ) ) ) # ( \inst|digit~1_combout\ & ( !\inst|digit[3]~14_combout\ & ( (\inst|digit[0]~9_combout\ & 
-- (\inst|digit~17_combout\ & \inst|digit~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[0]~9_combout\,
	datab => \inst|ALT_INV_digit~17_combout\,
	datac => \inst|ALT_INV_digit~4_combout\,
	datae => \inst|ALT_INV_digit~1_combout\,
	dataf => \inst|ALT_INV_digit[3]~14_combout\,
	combout => \inst|digit[2]~34_combout\);

-- Location: LABCELL_X27_Y72_N57
\inst|digit[1]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[1]~33_combout\ = ( \inst|digit~1_combout\ & ( ((!\inst|digit[1]~31_combout\ & \inst|digit[1]~30_combout\)) # (\inst|digit[1]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111010111100000000000000000000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[1]~31_combout\,
	datac => \inst|ALT_INV_digit[1]~32_combout\,
	datad => \inst|ALT_INV_digit[1]~30_combout\,
	datae => \inst|ALT_INV_digit~1_combout\,
	combout => \inst|digit[1]~33_combout\);

-- Location: LABCELL_X27_Y73_N27
\inst|digit[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[0]~29_combout\ = ( \inst|digit~1_combout\ & ( \inst|digit[0]~28_combout\ ) ) # ( !\inst|digit~1_combout\ & ( \inst|digit[0]~28_combout\ ) ) # ( !\inst|digit~1_combout\ & ( !\inst|digit[0]~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_digit~1_combout\,
	dataf => \inst|ALT_INV_digit[0]~28_combout\,
	combout => \inst|digit[0]~29_combout\);

-- Location: LABCELL_X31_Y73_N36
\inst|digit[3]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[3]~27_combout\ = ( \inst|digit~1_combout\ & ( \inst|digit[3]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_digit[3]~26_combout\,
	datae => \inst|ALT_INV_digit~1_combout\,
	combout => \inst|digit[3]~27_combout\);

-- Location: LABCELL_X31_Y73_N48
\inst|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = ((!\inst|digit[2]~34_combout\ & (\inst|digit[1]~33_combout\)) # (\inst|digit[2]~34_combout\ & (!\inst|digit[1]~33_combout\ & !\inst|digit[0]~29_combout\))) # (\inst|digit[3]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001011111111011000101111111101100010111111110110001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[2]~34_combout\,
	datab => \inst|ALT_INV_digit[1]~33_combout\,
	datac => \inst|ALT_INV_digit[0]~29_combout\,
	datad => \inst|ALT_INV_digit[3]~27_combout\,
	combout => \inst|Mux21~0_combout\);

-- Location: LABCELL_X27_Y72_N42
\inst|digit[2]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[2]~35_combout\ = ( \inst|digit~4_combout\ & ( (\inst|digit[0]~9_combout\) # (\inst|digit[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_digit[3]~14_combout\,
	datad => \inst|ALT_INV_digit[0]~9_combout\,
	dataf => \inst|ALT_INV_digit~4_combout\,
	combout => \inst|digit[2]~35_combout\);

-- Location: LABCELL_X31_Y73_N51
\inst|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = ( \inst|digit[0]~29_combout\ & ( (!\inst|digit[2]~34_combout\ $ (!\inst|digit[1]~33_combout\)) # (\inst|digit[3]~27_combout\) ) ) # ( !\inst|digit[0]~29_combout\ & ( (\inst|digit[3]~27_combout\) # (\inst|digit[1]~33_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111101100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[2]~34_combout\,
	datab => \inst|ALT_INV_digit[1]~33_combout\,
	datad => \inst|ALT_INV_digit[3]~27_combout\,
	dataf => \inst|ALT_INV_digit[0]~29_combout\,
	combout => \inst|Mux22~0_combout\);

-- Location: LABCELL_X27_Y73_N0
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( (\inst|digit~1_combout\ & (!\inst|digit[0]~28_combout\ $ (((\inst|digit~17_combout\ & \inst|digit[2]~35_combout\))))) ) + ( \inst|Mux22~0_combout\ ) + ( !VCC ))
-- \inst|Add0~22\ = CARRY(( (\inst|digit~1_combout\ & (!\inst|digit[0]~28_combout\ $ (((\inst|digit~17_combout\ & \inst|digit[2]~35_combout\))))) ) + ( \inst|Mux22~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~17_combout\,
	datab => \inst|ALT_INV_digit[0]~28_combout\,
	datac => \inst|ALT_INV_digit~1_combout\,
	datad => \inst|ALT_INV_digit[2]~35_combout\,
	dataf => \inst|ALT_INV_Mux22~0_combout\,
	cin => GND,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: LABCELL_X27_Y73_N3
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|Mux21~0_combout\ ) + ( VCC ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst|Mux21~0_combout\ ) + ( VCC ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Mux21~0_combout\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: LABCELL_X27_Y73_N6
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( (!\inst|digit~1_combout\) # ((!\inst|digit[1]~36_combout\ & ((!\inst|digit~4_combout\) # (\inst|digit[3]~41_combout\)))) ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( (!\inst|digit~1_combout\) # ((!\inst|digit[1]~36_combout\ & ((!\inst|digit~4_combout\) # (\inst|digit[3]~41_combout\)))) ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001110110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~4_combout\,
	datab => \inst|ALT_INV_digit~1_combout\,
	datac => \inst|ALT_INV_digit[1]~36_combout\,
	datad => \inst|ALT_INV_digit[3]~41_combout\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: LABCELL_X27_Y73_N9
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( GND ) + ( (!\inst|digit~1_combout\) # ((\inst|digit~4_combout\ & (!\inst|digit[0]~39_combout\ $ (!\inst|digit[3]~40_combout\)))) ) + ( \inst|Add0~14\ ))
-- \inst|Add0~10\ = CARRY(( GND ) + ( (!\inst|digit~1_combout\) # ((\inst|digit~4_combout\ & (!\inst|digit[0]~39_combout\ $ (!\inst|digit[3]~40_combout\)))) ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100100010001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~4_combout\,
	datab => \inst|ALT_INV_digit~1_combout\,
	datac => \inst|ALT_INV_digit[0]~39_combout\,
	dataf => \inst|ALT_INV_digit[3]~40_combout\,
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: LABCELL_X27_Y73_N12
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( (\inst|digit~1_combout\ & (((\inst|digit[3]~26_combout\ & !\inst|digit[0]~28_combout\)) # (\inst|digit[1]~36_combout\))) ) + ( GND ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( (\inst|digit~1_combout\ & (((\inst|digit[3]~26_combout\ & !\inst|digit[0]~28_combout\)) # (\inst|digit[1]~36_combout\))) ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[3]~26_combout\,
	datab => \inst|ALT_INV_digit[0]~28_combout\,
	datac => \inst|ALT_INV_digit~1_combout\,
	datad => \inst|ALT_INV_digit[1]~36_combout\,
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: LABCELL_X27_Y73_N15
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( (\inst|digit~1_combout\ & (((\inst|digit[3]~26_combout\ & !\inst|digit[0]~28_combout\)) # (\inst|digit[2]~18_combout\))) ) + ( GND ) + ( \inst|Add0~6\ ))
-- \inst|Add0~30\ = CARRY(( (\inst|digit~1_combout\ & (((\inst|digit[3]~26_combout\ & !\inst|digit[0]~28_combout\)) # (\inst|digit[2]~18_combout\))) ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[3]~26_combout\,
	datab => \inst|ALT_INV_digit[0]~28_combout\,
	datac => \inst|ALT_INV_digit~1_combout\,
	datad => \inst|ALT_INV_digit[2]~18_combout\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: LABCELL_X27_Y73_N18
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( GND ) + ( (\inst|digit~4_combout\ & (\inst|digit~1_combout\ & (\inst|digit[0]~39_combout\ & \inst|digit[3]~40_combout\))) ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( GND ) + ( (\inst|digit~4_combout\ & (\inst|digit~1_combout\ & (\inst|digit[0]~39_combout\ & \inst|digit[3]~40_combout\))) ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~4_combout\,
	datab => \inst|ALT_INV_digit~1_combout\,
	datac => \inst|ALT_INV_digit[0]~39_combout\,
	dataf => \inst|ALT_INV_digit[3]~40_combout\,
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: LABCELL_X24_Y73_N3
\inst|LessThan19~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan19~8_combout\ = ( \inst|Add0~29_sumout\ & ( (\inst3|pixel_column\(9) & !\inst|Add0~25_sumout\) ) ) # ( !\inst|Add0~29_sumout\ & ( (!\inst3|pixel_column\(9) & (\inst3|pixel_column\(8) & !\inst|Add0~25_sumout\)) # (\inst3|pixel_column\(9) & 
-- ((!\inst|Add0~25_sumout\) # (\inst3|pixel_column\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(9),
	datab => \inst3|ALT_INV_pixel_column\(8),
	datad => \inst|ALT_INV_Add0~25_sumout\,
	dataf => \inst|ALT_INV_Add0~29_sumout\,
	combout => \inst|LessThan19~8_combout\);

-- Location: LABCELL_X27_Y73_N21
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~1_sumout\);

-- Location: LABCELL_X30_Y73_N0
\inst|LessThan19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan19~2_combout\ = ( \inst|digit[1]~31_combout\ & ( \inst|digit[1]~32_combout\ & ( (\inst3|pixel_column\(0) & (!\inst|digit~1_combout\ $ (!\inst3|pixel_column\(1)))) ) ) ) # ( !\inst|digit[1]~31_combout\ & ( \inst|digit[1]~32_combout\ & ( 
-- (\inst3|pixel_column\(0) & (!\inst|digit~1_combout\ $ (!\inst3|pixel_column\(1)))) ) ) ) # ( \inst|digit[1]~31_combout\ & ( !\inst|digit[1]~32_combout\ & ( (\inst3|pixel_column\(0) & \inst3|pixel_column\(1)) ) ) ) # ( !\inst|digit[1]~31_combout\ & ( 
-- !\inst|digit[1]~32_combout\ & ( (\inst3|pixel_column\(0) & (!\inst3|pixel_column\(1) $ (((!\inst|digit~1_combout\) # (!\inst|digit[1]~30_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010010000000110000001100010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~1_combout\,
	datab => \inst3|ALT_INV_pixel_column\(0),
	datac => \inst3|ALT_INV_pixel_column\(1),
	datad => \inst|ALT_INV_digit[1]~30_combout\,
	datae => \inst|ALT_INV_digit[1]~31_combout\,
	dataf => \inst|ALT_INV_digit[1]~32_combout\,
	combout => \inst|LessThan19~2_combout\);

-- Location: LABCELL_X27_Y72_N45
\inst|LessThan19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan19~1_combout\ = ( \inst|digit[1]~31_combout\ & ( (\inst3|pixel_column\(1) & (\inst|digit[1]~32_combout\ & \inst|digit~1_combout\)) ) ) # ( !\inst|digit[1]~31_combout\ & ( (\inst3|pixel_column\(1) & (\inst|digit~1_combout\ & 
-- ((\inst|digit[1]~32_combout\) # (\inst|digit[1]~30_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[1]~30_combout\,
	datab => \inst3|ALT_INV_pixel_column\(1),
	datac => \inst|ALT_INV_digit[1]~32_combout\,
	datad => \inst|ALT_INV_digit~1_combout\,
	dataf => \inst|ALT_INV_digit[1]~31_combout\,
	combout => \inst|LessThan19~1_combout\);

-- Location: LABCELL_X27_Y73_N30
\inst|LessThan19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan19~3_combout\ = ( \inst|digit~1_combout\ & ( \inst3|pixel_column\(2) & ( (!\inst|LessThan19~1_combout\ & ((!\inst|digit[0]~28_combout\ & ((\inst|digit[2]~34_combout\))) # (\inst|digit[0]~28_combout\ & (!\inst|LessThan19~2_combout\ & 
-- !\inst|digit[2]~34_combout\)))) ) ) ) # ( !\inst|digit~1_combout\ & ( \inst3|pixel_column\(2) & ( (!\inst|LessThan19~2_combout\ & (!\inst|LessThan19~1_combout\ & !\inst|digit[2]~34_combout\)) ) ) ) # ( \inst|digit~1_combout\ & ( !\inst3|pixel_column\(2) & 
-- ( (!\inst|digit[0]~28_combout\ & (((!\inst|LessThan19~1_combout\) # (\inst|digit[2]~34_combout\)))) # (\inst|digit[0]~28_combout\ & ((!\inst|digit[2]~34_combout\) # ((!\inst|LessThan19~2_combout\ & !\inst|LessThan19~1_combout\)))) ) ) ) # ( 
-- !\inst|digit~1_combout\ & ( !\inst3|pixel_column\(2) & ( (!\inst|digit[2]~34_combout\) # ((!\inst|LessThan19~2_combout\ & !\inst|LessThan19~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111100111110110010100000000000000010000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan19~2_combout\,
	datab => \inst|ALT_INV_digit[0]~28_combout\,
	datac => \inst|ALT_INV_LessThan19~1_combout\,
	datad => \inst|ALT_INV_digit[2]~34_combout\,
	datae => \inst|ALT_INV_digit~1_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(2),
	combout => \inst|LessThan19~3_combout\);

-- Location: LABCELL_X27_Y73_N54
\inst|LessThan19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan19~4_combout\ = ( \inst3|pixel_column\(3) & ( (!\inst|Add0~17_sumout\ & ((!\inst|Add0~21_sumout\) # ((!\inst|LessThan19~3_combout\) # (\inst3|pixel_column\(4))))) # (\inst|Add0~17_sumout\ & (\inst3|pixel_column\(4) & 
-- ((!\inst|Add0~21_sumout\) # (!\inst|LessThan19~3_combout\)))) ) ) # ( !\inst3|pixel_column\(3) & ( (!\inst|Add0~17_sumout\ & (((!\inst|Add0~21_sumout\ & !\inst|LessThan19~3_combout\)) # (\inst3|pixel_column\(4)))) # (\inst|Add0~17_sumout\ & 
-- (!\inst|Add0~21_sumout\ & (!\inst|LessThan19~3_combout\ & \inst3|pixel_column\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011111000100000001111100011100000111111101110000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~21_sumout\,
	datab => \inst|ALT_INV_LessThan19~3_combout\,
	datac => \inst|ALT_INV_Add0~17_sumout\,
	datad => \inst3|ALT_INV_pixel_column\(4),
	dataf => \inst3|ALT_INV_pixel_column\(3),
	combout => \inst|LessThan19~4_combout\);

-- Location: LABCELL_X27_Y73_N57
\inst|LessThan19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan19~0_combout\ = ( \inst3|pixel_column\(5) & ( !\inst|Add0~13_sumout\ ) ) # ( !\inst3|pixel_column\(5) & ( \inst|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add0~13_sumout\,
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|LessThan19~0_combout\);

-- Location: LABCELL_X24_Y73_N48
\inst|LessThan19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan19~5_combout\ = ( \inst|Add0~9_sumout\ & ( \inst3|pixel_column\(6) & ( (\inst|LessThan19~4_combout\ & (!\inst|LessThan19~0_combout\ & (!\inst3|pixel_column\(7) $ (\inst|Add0~5_sumout\)))) ) ) ) # ( !\inst|Add0~9_sumout\ & ( 
-- !\inst3|pixel_column\(6) & ( (\inst|LessThan19~4_combout\ & (!\inst|LessThan19~0_combout\ & (!\inst3|pixel_column\(7) $ (\inst|Add0~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000000000000000000000000000000000000000100000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan19~4_combout\,
	datab => \inst3|ALT_INV_pixel_column\(7),
	datac => \inst|ALT_INV_Add0~5_sumout\,
	datad => \inst|ALT_INV_LessThan19~0_combout\,
	datae => \inst|ALT_INV_Add0~9_sumout\,
	dataf => \inst3|ALT_INV_pixel_column\(6),
	combout => \inst|LessThan19~5_combout\);

-- Location: LABCELL_X23_Y71_N30
\inst3|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~1_sumout\ = SUM(( \inst3|pixel_row\(0) ) + ( VCC ) + ( !VCC ))
-- \inst3|Add3~2\ = CARRY(( \inst3|pixel_row\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_row\(0),
	cin => GND,
	sumout => \inst3|Add3~1_sumout\,
	cout => \inst3|Add3~2\);

-- Location: MLABCELL_X25_Y71_N51
\inst3|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~2_combout\ = ( \inst3|Add2~33_sumout\ & ( \inst3|Add2~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst3|ALT_INV_Add2~33_sumout\,
	dataf => \inst3|ALT_INV_Add2~5_sumout\,
	combout => \inst3|LessThan2~2_combout\);

-- Location: LABCELL_X24_Y71_N39
\inst3|process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|process_2~0_combout\ = (!\inst3|Add2~9_sumout\ & (!\inst3|Add2~13_sumout\ & !\inst3|Add2~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~9_sumout\,
	datac => \inst3|ALT_INV_Add2~13_sumout\,
	datad => \inst3|ALT_INV_Add2~17_sumout\,
	combout => \inst3|process_2~0_combout\);

-- Location: LABCELL_X23_Y71_N6
\inst3|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~1_combout\ = ( !\inst3|Add2~21_sumout\ & ( (!\inst3|Add2~25_sumout\ & !\inst3|Add2~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Add2~25_sumout\,
	datad => \inst3|ALT_INV_Add2~29_sumout\,
	dataf => \inst3|ALT_INV_Add2~21_sumout\,
	combout => \inst3|LessThan2~1_combout\);

-- Location: LABCELL_X24_Y71_N30
\inst3|vsync~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vsync~4_combout\ = ( \inst3|vsync~0_combout\ & ( \inst3|Add2~1_sumout\ & ( (!\inst3|Add2~17_sumout\ & (!\inst3|Add2~13_sumout\ & (!\inst3|Add2~9_sumout\ & \inst3|vsync~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~17_sumout\,
	datab => \inst3|ALT_INV_Add2~13_sumout\,
	datac => \inst3|ALT_INV_Add2~9_sumout\,
	datad => \inst3|ALT_INV_vsync~3_combout\,
	datae => \inst3|ALT_INV_vsync~0_combout\,
	dataf => \inst3|ALT_INV_Add2~1_sumout\,
	combout => \inst3|vsync~4_combout\);

-- Location: LABCELL_X24_Y71_N54
\inst3|process_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|process_2~1_combout\ = ( \inst3|LessThan2~1_combout\ & ( \inst3|vsync~4_combout\ & ( (\inst3|process_2~0_combout\ & ((!\inst3|Add2~37_sumout\) # (!\inst3|LessThan2~2_combout\))) ) ) ) # ( !\inst3|LessThan2~1_combout\ & ( \inst3|vsync~4_combout\ & ( 
-- (\inst3|process_2~0_combout\ & ((!\inst3|Add2~37_sumout\) # (!\inst3|LessThan2~2_combout\))) ) ) ) # ( \inst3|LessThan2~1_combout\ & ( !\inst3|vsync~4_combout\ & ( (!\inst3|Add2~1_sumout\ & (\inst3|process_2~0_combout\ & ((!\inst3|Add2~37_sumout\) # 
-- (!\inst3|LessThan2~2_combout\)))) # (\inst3|Add2~1_sumout\ & (((!\inst3|process_2~0_combout\) # (\inst3|LessThan2~2_combout\)) # (\inst3|Add2~37_sumout\))) ) ) ) # ( !\inst3|LessThan2~1_combout\ & ( !\inst3|vsync~4_combout\ & ( ((!\inst3|Add2~37_sumout\ & 
-- \inst3|process_2~0_combout\)) # (\inst3|Add2~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101010101011011110100000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~1_sumout\,
	datab => \inst3|ALT_INV_Add2~37_sumout\,
	datac => \inst3|ALT_INV_LessThan2~2_combout\,
	datad => \inst3|ALT_INV_process_2~0_combout\,
	datae => \inst3|ALT_INV_LessThan2~1_combout\,
	dataf => \inst3|ALT_INV_vsync~4_combout\,
	combout => \inst3|process_2~1_combout\);

-- Location: FF_X24_Y71_N38
\inst3|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add3~1_sumout\,
	sclr => \inst3|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(0));

-- Location: LABCELL_X23_Y71_N33
\inst3|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~5_sumout\ = SUM(( \inst3|pixel_row\(1) ) + ( GND ) + ( \inst3|Add3~2\ ))
-- \inst3|Add3~6\ = CARRY(( \inst3|pixel_row\(1) ) + ( GND ) + ( \inst3|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_row\(1),
	cin => \inst3|Add3~2\,
	sumout => \inst3|Add3~5_sumout\,
	cout => \inst3|Add3~6\);

-- Location: FF_X25_Y71_N50
\inst3|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add3~5_sumout\,
	sclr => \inst3|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(1));

-- Location: LABCELL_X23_Y71_N36
\inst3|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~17_sumout\ = SUM(( \inst3|pixel_row\(2) ) + ( GND ) + ( \inst3|Add3~6\ ))
-- \inst3|Add3~18\ = CARRY(( \inst3|pixel_row\(2) ) + ( GND ) + ( \inst3|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_pixel_row\(2),
	cin => \inst3|Add3~6\,
	sumout => \inst3|Add3~17_sumout\,
	cout => \inst3|Add3~18\);

-- Location: MLABCELL_X25_Y71_N30
\inst3|pixel_row[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|pixel_row[2]~feeder_combout\ = ( \inst3|Add3~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst3|ALT_INV_Add3~17_sumout\,
	combout => \inst3|pixel_row[2]~feeder_combout\);

-- Location: FF_X25_Y71_N31
\inst3|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	d => \inst3|pixel_row[2]~feeder_combout\,
	sclr => \inst3|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(2));

-- Location: LABCELL_X23_Y71_N39
\inst3|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~13_sumout\ = SUM(( \inst3|pixel_row\(3) ) + ( GND ) + ( \inst3|Add3~18\ ))
-- \inst3|Add3~14\ = CARRY(( \inst3|pixel_row\(3) ) + ( GND ) + ( \inst3|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_row\(3),
	cin => \inst3|Add3~18\,
	sumout => \inst3|Add3~13_sumout\,
	cout => \inst3|Add3~14\);

-- Location: FF_X24_Y71_N29
\inst3|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add3~13_sumout\,
	sclr => \inst3|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(3));

-- Location: LABCELL_X23_Y71_N42
\inst3|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~9_sumout\ = SUM(( \inst3|pixel_row\(4) ) + ( GND ) + ( \inst3|Add3~14\ ))
-- \inst3|Add3~10\ = CARRY(( \inst3|pixel_row\(4) ) + ( GND ) + ( \inst3|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_pixel_row\(4),
	cin => \inst3|Add3~14\,
	sumout => \inst3|Add3~9_sumout\,
	cout => \inst3|Add3~10\);

-- Location: FF_X24_Y71_N14
\inst3|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add3~9_sumout\,
	sclr => \inst3|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(4));

-- Location: LABCELL_X23_Y71_N45
\inst3|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~21_sumout\ = SUM(( \inst3|pixel_row\(5) ) + ( GND ) + ( \inst3|Add3~10\ ))
-- \inst3|Add3~22\ = CARRY(( \inst3|pixel_row\(5) ) + ( GND ) + ( \inst3|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_row\(5),
	cin => \inst3|Add3~10\,
	sumout => \inst3|Add3~21_sumout\,
	cout => \inst3|Add3~22\);

-- Location: FF_X24_Y71_N11
\inst3|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add3~21_sumout\,
	sclr => \inst3|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(5));

-- Location: LABCELL_X23_Y71_N12
\inst|check_pixel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|check_pixel~0_combout\ = ( \inst3|pixel_row\(1) & ( \inst3|pixel_row\(4) & ( (\inst3|pixel_row\(3) & !\inst3|pixel_row\(5)) ) ) ) # ( !\inst3|pixel_row\(1) & ( \inst3|pixel_row\(4) & ( (\inst3|pixel_row\(3) & !\inst3|pixel_row\(5)) ) ) ) # ( 
-- \inst3|pixel_row\(1) & ( !\inst3|pixel_row\(4) & ( (\inst3|pixel_row\(5) & ((!\inst3|pixel_row\(2)) # (!\inst3|pixel_row\(3)))) ) ) ) # ( !\inst3|pixel_row\(1) & ( !\inst3|pixel_row\(4) & ( (\inst3|pixel_row\(5) & ((!\inst3|pixel_row\(2)) # 
-- ((!\inst3|pixel_row\(3)) # (!\inst3|pixel_row\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011100000111000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_row\(2),
	datab => \inst3|ALT_INV_pixel_row\(3),
	datac => \inst3|ALT_INV_pixel_row\(5),
	datad => \inst3|ALT_INV_pixel_row\(0),
	datae => \inst3|ALT_INV_pixel_row\(1),
	dataf => \inst3|ALT_INV_pixel_row\(4),
	combout => \inst|check_pixel~0_combout\);

-- Location: LABCELL_X31_Y73_N57
\inst|LessThan18~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan18~8_combout\ = ( !\inst3|pixel_column\(8) & ( ((\inst|digit[3]~27_combout\ & !\inst|digit[0]~28_combout\)) # (\inst|digit[2]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[3]~27_combout\,
	datab => \inst|ALT_INV_digit[0]~28_combout\,
	datac => \inst|ALT_INV_digit[2]~34_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(8),
	combout => \inst|LessThan18~8_combout\);

-- Location: LABCELL_X31_Y73_N0
\inst|LessThan18~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan18~6_combout\ = ( \inst|digit[3]~26_combout\ & ( \inst3|pixel_column\(9) & ( (\inst|digit[0]~28_combout\ & (\inst|digit~1_combout\ & (!\inst|digit[2]~34_combout\ $ (\inst3|pixel_column\(8))))) ) ) ) # ( \inst|digit[3]~26_combout\ & ( 
-- !\inst3|pixel_column\(9) & ( (!\inst|digit~1_combout\ & (!\inst|digit[2]~34_combout\ $ (((\inst3|pixel_column\(8)))))) # (\inst|digit~1_combout\ & (((!\inst|digit[0]~28_combout\ & \inst3|pixel_column\(8))))) ) ) ) # ( !\inst|digit[3]~26_combout\ & ( 
-- !\inst3|pixel_column\(9) & ( !\inst|digit[2]~34_combout\ $ (\inst3|pixel_column\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001010000110000000000000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[2]~34_combout\,
	datab => \inst|ALT_INV_digit[0]~28_combout\,
	datac => \inst3|ALT_INV_pixel_column\(8),
	datad => \inst|ALT_INV_digit~1_combout\,
	datae => \inst|ALT_INV_digit[3]~26_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(9),
	combout => \inst|LessThan18~6_combout\);

-- Location: LABCELL_X30_Y73_N6
\inst|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = ( \inst|digit[0]~28_combout\ & ( !\inst|digit[1]~33_combout\ ) ) # ( !\inst|digit[0]~28_combout\ & ( (!\inst|digit[1]~33_combout\ & ((!\inst|digit~1_combout\) # (!\inst|digit[3]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~1_combout\,
	datac => \inst|ALT_INV_digit[3]~26_combout\,
	datad => \inst|ALT_INV_digit[1]~33_combout\,
	dataf => \inst|ALT_INV_digit[0]~28_combout\,
	combout => \inst|Mux18~0_combout\);

-- Location: LABCELL_X30_Y73_N9
\inst|LessThan18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan18~0_combout\ = ( \inst3|pixel_column\(5) & ( (!\inst|digit~1_combout\) # ((!\inst|digit[2]~35_combout\ & !\inst|digit[1]~36_combout\)) ) ) # ( !\inst3|pixel_column\(5) & ( (\inst|digit~1_combout\ & ((\inst|digit[1]~36_combout\) # 
-- (\inst|digit[2]~35_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010111111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~1_combout\,
	datac => \inst|ALT_INV_digit[2]~35_combout\,
	datad => \inst|ALT_INV_digit[1]~36_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|LessThan18~0_combout\);

-- Location: LABCELL_X30_Y73_N27
\inst|LessThan18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan18~1_combout\ = ( \inst|digit[0]~29_combout\ & ( \inst3|pixel_column\(6) & ( (\inst|LessThan18~0_combout\ & (!\inst|digit[3]~27_combout\ & (!\inst3|pixel_column\(7) $ (!\inst|Mux18~0_combout\)))) ) ) ) # ( !\inst|digit[0]~29_combout\ & ( 
-- \inst3|pixel_column\(6) & ( (\inst|LessThan18~0_combout\ & (\inst|digit[3]~27_combout\ & (!\inst3|pixel_column\(7) $ (!\inst|Mux18~0_combout\)))) ) ) ) # ( \inst|digit[0]~29_combout\ & ( !\inst3|pixel_column\(6) & ( (\inst|LessThan18~0_combout\ & 
-- (\inst|digit[3]~27_combout\ & (!\inst3|pixel_column\(7) $ (!\inst|Mux18~0_combout\)))) ) ) ) # ( !\inst|digit[0]~29_combout\ & ( !\inst3|pixel_column\(6) & ( (\inst|LessThan18~0_combout\ & (!\inst|digit[3]~27_combout\ & (!\inst3|pixel_column\(7) $ 
-- (!\inst|Mux18~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000000000000011000000000000001100000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(7),
	datab => \inst|ALT_INV_Mux18~0_combout\,
	datac => \inst|ALT_INV_LessThan18~0_combout\,
	datad => \inst|ALT_INV_digit[3]~27_combout\,
	datae => \inst|ALT_INV_digit[0]~29_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(6),
	combout => \inst|LessThan18~1_combout\);

-- Location: LABCELL_X30_Y73_N18
\inst|LessThan18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan18~2_combout\ = ( \inst|digit[0]~28_combout\ & ( (!\inst|digit[1]~33_combout\ & !\inst3|pixel_column\(1)) ) ) # ( !\inst|digit[0]~28_combout\ & ( (!\inst|digit[1]~33_combout\ & ((!\inst3|pixel_column\(1)) # ((\inst|digit~1_combout\ & 
-- !\inst3|pixel_column\(0))))) # (\inst|digit[1]~33_combout\ & (\inst|digit~1_combout\ & (!\inst3|pixel_column\(0) & !\inst3|pixel_column\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110001000000110111000100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~1_combout\,
	datab => \inst|ALT_INV_digit[1]~33_combout\,
	datac => \inst3|ALT_INV_pixel_column\(0),
	datad => \inst3|ALT_INV_pixel_column\(1),
	dataf => \inst|ALT_INV_digit[0]~28_combout\,
	combout => \inst|LessThan18~2_combout\);

-- Location: LABCELL_X31_Y73_N9
\inst|LessThan18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan18~3_combout\ = ( \inst3|pixel_column\(2) & ( \inst|digit[2]~34_combout\ & ( (!\inst|Mux22~0_combout\ & (\inst|digit[0]~29_combout\ & (!\inst3|pixel_column\(3) & \inst|LessThan18~2_combout\))) # (\inst|Mux22~0_combout\ & 
-- ((!\inst3|pixel_column\(3)) # ((\inst|digit[0]~29_combout\ & \inst|LessThan18~2_combout\)))) ) ) ) # ( !\inst3|pixel_column\(2) & ( \inst|digit[2]~34_combout\ & ( (!\inst|Mux22~0_combout\ & (!\inst3|pixel_column\(3) & ((\inst|LessThan18~2_combout\) # 
-- (\inst|digit[0]~29_combout\)))) # (\inst|Mux22~0_combout\ & (((!\inst3|pixel_column\(3)) # (\inst|LessThan18~2_combout\)) # (\inst|digit[0]~29_combout\))) ) ) ) # ( \inst3|pixel_column\(2) & ( !\inst|digit[2]~34_combout\ & ( (!\inst|Mux22~0_combout\ & 
-- (!\inst|digit[0]~29_combout\ & (!\inst3|pixel_column\(3) & \inst|LessThan18~2_combout\))) # (\inst|Mux22~0_combout\ & ((!\inst3|pixel_column\(3)) # ((!\inst|digit[0]~29_combout\ & \inst|LessThan18~2_combout\)))) ) ) ) # ( !\inst3|pixel_column\(2) & ( 
-- !\inst|digit[2]~34_combout\ & ( (!\inst|Mux22~0_combout\ & (!\inst3|pixel_column\(3) & ((!\inst|digit[0]~29_combout\) # (\inst|LessThan18~2_combout\)))) # (\inst|Mux22~0_combout\ & ((!\inst|digit[0]~29_combout\) # ((!\inst3|pixel_column\(3)) # 
-- (\inst|LessThan18~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001011110011001100001011001001110001111100110011000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[0]~29_combout\,
	datab => \inst|ALT_INV_Mux22~0_combout\,
	datac => \inst3|ALT_INV_pixel_column\(3),
	datad => \inst|ALT_INV_LessThan18~2_combout\,
	datae => \inst3|ALT_INV_pixel_column\(2),
	dataf => \inst|ALT_INV_digit[2]~34_combout\,
	combout => \inst|LessThan18~3_combout\);

-- Location: LABCELL_X30_Y73_N21
\inst|LessThan18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan18~4_combout\ = ( !\inst3|pixel_column\(5) & ( (!\inst|digit~1_combout\) # ((!\inst|digit[2]~35_combout\ & !\inst|digit[1]~36_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~1_combout\,
	datac => \inst|ALT_INV_digit[2]~35_combout\,
	datad => \inst|ALT_INV_digit[1]~36_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(5),
	combout => \inst|LessThan18~4_combout\);

-- Location: LABCELL_X30_Y73_N12
\inst|LessThan18~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan18~5_combout\ = ( \inst|LessThan18~4_combout\ & ( \inst3|pixel_column\(6) & ( (!\inst3|pixel_column\(7) & ((!\inst|Mux18~0_combout\) # (!\inst|digit[0]~29_combout\ $ (!\inst|digit[3]~27_combout\)))) # (\inst3|pixel_column\(7) & 
-- (!\inst|Mux18~0_combout\ & (!\inst|digit[0]~29_combout\ $ (!\inst|digit[3]~27_combout\)))) ) ) ) # ( !\inst|LessThan18~4_combout\ & ( \inst3|pixel_column\(6) & ( (!\inst3|pixel_column\(7) & !\inst|Mux18~0_combout\) ) ) ) # ( \inst|LessThan18~4_combout\ & 
-- ( !\inst3|pixel_column\(6) & ( (!\inst3|pixel_column\(7)) # (!\inst|Mux18~0_combout\) ) ) ) # ( !\inst|LessThan18~4_combout\ & ( !\inst3|pixel_column\(6) & ( (!\inst3|pixel_column\(7) & ((!\inst|Mux18~0_combout\) # (!\inst|digit[0]~29_combout\ $ 
-- (!\inst|digit[3]~27_combout\)))) # (\inst3|pixel_column\(7) & (!\inst|Mux18~0_combout\ & (!\inst|digit[0]~29_combout\ $ (!\inst|digit[3]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111000101000111111111010101010101010000000001011111000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(7),
	datab => \inst|ALT_INV_digit[0]~29_combout\,
	datac => \inst|ALT_INV_digit[3]~27_combout\,
	datad => \inst|ALT_INV_Mux18~0_combout\,
	datae => \inst|ALT_INV_LessThan18~4_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(6),
	combout => \inst|LessThan18~5_combout\);

-- Location: LABCELL_X31_Y73_N42
\inst|LessThan18~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan18~7_combout\ = ( \inst|LessThan18~5_combout\ & ( \inst|Mux21~0_combout\ & ( \inst|LessThan18~6_combout\ ) ) ) # ( !\inst|LessThan18~5_combout\ & ( \inst|Mux21~0_combout\ & ( (\inst|LessThan18~6_combout\ & (\inst|LessThan18~1_combout\ & 
-- ((!\inst3|pixel_column\(4)) # (\inst|LessThan18~3_combout\)))) ) ) ) # ( \inst|LessThan18~5_combout\ & ( !\inst|Mux21~0_combout\ & ( \inst|LessThan18~6_combout\ ) ) ) # ( !\inst|LessThan18~5_combout\ & ( !\inst|Mux21~0_combout\ & ( 
-- (\inst|LessThan18~6_combout\ & (!\inst3|pixel_column\(4) & (\inst|LessThan18~1_combout\ & \inst|LessThan18~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100010101010101010100000100000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan18~6_combout\,
	datab => \inst3|ALT_INV_pixel_column\(4),
	datac => \inst|ALT_INV_LessThan18~1_combout\,
	datad => \inst|ALT_INV_LessThan18~3_combout\,
	datae => \inst|ALT_INV_LessThan18~5_combout\,
	dataf => \inst|ALT_INV_Mux21~0_combout\,
	combout => \inst|LessThan18~7_combout\);

-- Location: LABCELL_X23_Y71_N48
\inst3|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~25_sumout\ = SUM(( \inst3|pixel_row\(6) ) + ( GND ) + ( \inst3|Add3~22\ ))
-- \inst3|Add3~26\ = CARRY(( \inst3|pixel_row\(6) ) + ( GND ) + ( \inst3|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_pixel_row\(6),
	cin => \inst3|Add3~22\,
	sumout => \inst3|Add3~25_sumout\,
	cout => \inst3|Add3~26\);

-- Location: FF_X24_Y71_N26
\inst3|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add3~25_sumout\,
	sclr => \inst3|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(6));

-- Location: LABCELL_X23_Y71_N51
\inst3|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~29_sumout\ = SUM(( \inst3|pixel_row\(7) ) + ( GND ) + ( \inst3|Add3~26\ ))
-- \inst3|Add3~30\ = CARRY(( \inst3|pixel_row\(7) ) + ( GND ) + ( \inst3|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_row\(7),
	cin => \inst3|Add3~26\,
	sumout => \inst3|Add3~29_sumout\,
	cout => \inst3|Add3~30\);

-- Location: FF_X24_Y71_N2
\inst3|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add3~29_sumout\,
	sclr => \inst3|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(7));

-- Location: LABCELL_X23_Y71_N54
\inst3|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~33_sumout\ = SUM(( \inst3|pixel_row\(8) ) + ( GND ) + ( \inst3|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_pixel_row\(8),
	cin => \inst3|Add3~30\,
	sumout => \inst3|Add3~33_sumout\);

-- Location: FF_X25_Y71_N43
\inst3|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|Add3~33_sumout\,
	sclr => \inst3|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pixel_row\(8));

-- Location: MLABCELL_X25_Y71_N42
\inst|digit_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit_on~0_combout\ = ( !\inst3|pixel_row\(6) & ( (!\inst3|pixel_row\(7) & \inst3|pixel_row\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_pixel_row\(7),
	datad => \inst3|ALT_INV_pixel_row\(8),
	dataf => \inst3|ALT_INV_pixel_row\(6),
	combout => \inst|digit_on~0_combout\);

-- Location: LABCELL_X31_Y73_N54
\inst|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (\inst|digit[3]~27_combout\ & \inst|digit[0]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[3]~27_combout\,
	datab => \inst|ALT_INV_digit[0]~28_combout\,
	combout => \inst|Mux19~0_combout\);

-- Location: LABCELL_X31_Y73_N27
\inst|digit_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit_on~1_combout\ = ( \inst|Mux19~0_combout\ & ( \inst3|pixel_column\(9) & ( (\inst|check_pixel~0_combout\ & (!\inst|LessThan18~8_combout\ & (!\inst|LessThan18~7_combout\ & \inst|digit_on~0_combout\))) ) ) ) # ( !\inst|Mux19~0_combout\ & ( 
-- \inst3|pixel_column\(9) & ( (\inst|check_pixel~0_combout\ & (!\inst|LessThan18~7_combout\ & \inst|digit_on~0_combout\)) ) ) ) # ( !\inst|Mux19~0_combout\ & ( !\inst3|pixel_column\(9) & ( (\inst|check_pixel~0_combout\ & (!\inst|LessThan18~8_combout\ & 
-- (!\inst|LessThan18~7_combout\ & \inst|digit_on~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010100000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_check_pixel~0_combout\,
	datab => \inst|ALT_INV_LessThan18~8_combout\,
	datac => \inst|ALT_INV_LessThan18~7_combout\,
	datad => \inst|ALT_INV_digit_on~0_combout\,
	datae => \inst|ALT_INV_Mux19~0_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(9),
	combout => \inst|digit_on~1_combout\);

-- Location: LABCELL_X24_Y73_N0
\inst|LessThan19~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan19~7_combout\ = ( \inst|Add0~29_sumout\ & ( (\inst3|pixel_column\(8) & (!\inst3|pixel_column\(9) $ (\inst|Add0~25_sumout\))) ) ) # ( !\inst|Add0~29_sumout\ & ( (!\inst3|pixel_column\(8) & (!\inst3|pixel_column\(9) $ (\inst|Add0~25_sumout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(9),
	datab => \inst3|ALT_INV_pixel_column\(8),
	datac => \inst|ALT_INV_Add0~25_sumout\,
	dataf => \inst|ALT_INV_Add0~29_sumout\,
	combout => \inst|LessThan19~7_combout\);

-- Location: LABCELL_X24_Y73_N30
\inst|LessThan19~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan19~6_combout\ = ( \inst|Add0~5_sumout\ & ( \inst3|pixel_column\(6) & ( (\inst3|pixel_column\(7) & ((!\inst|Add0~9_sumout\) # ((\inst3|pixel_column\(5) & !\inst|Add0~13_sumout\)))) ) ) ) # ( !\inst|Add0~5_sumout\ & ( \inst3|pixel_column\(6) & 
-- ( ((!\inst|Add0~9_sumout\) # ((\inst3|pixel_column\(5) & !\inst|Add0~13_sumout\))) # (\inst3|pixel_column\(7)) ) ) ) # ( \inst|Add0~5_sumout\ & ( !\inst3|pixel_column\(6) & ( (\inst3|pixel_column\(5) & (\inst3|pixel_column\(7) & (!\inst|Add0~9_sumout\ & 
-- !\inst|Add0~13_sumout\))) ) ) ) # ( !\inst|Add0~5_sumout\ & ( !\inst3|pixel_column\(6) & ( ((\inst3|pixel_column\(5) & (!\inst|Add0~9_sumout\ & !\inst|Add0~13_sumout\))) # (\inst3|pixel_column\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011000100000000000011110111111100110011000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_column\(5),
	datab => \inst3|ALT_INV_pixel_column\(7),
	datac => \inst|ALT_INV_Add0~9_sumout\,
	datad => \inst|ALT_INV_Add0~13_sumout\,
	datae => \inst|ALT_INV_Add0~5_sumout\,
	dataf => \inst3|ALT_INV_pixel_column\(6),
	combout => \inst|LessThan19~6_combout\);

-- Location: LABCELL_X24_Y73_N54
\inst|digit_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit_on~2_combout\ = ( \inst|LessThan19~7_combout\ & ( \inst|LessThan19~6_combout\ & ( (\inst|Add0~1_sumout\ & \inst|digit_on~1_combout\) ) ) ) # ( !\inst|LessThan19~7_combout\ & ( \inst|LessThan19~6_combout\ & ( (\inst|digit_on~1_combout\ & 
-- ((!\inst|LessThan19~8_combout\) # (\inst|Add0~1_sumout\))) ) ) ) # ( \inst|LessThan19~7_combout\ & ( !\inst|LessThan19~6_combout\ & ( (\inst|digit_on~1_combout\ & (((!\inst|LessThan19~8_combout\ & !\inst|LessThan19~5_combout\)) # (\inst|Add0~1_sumout\))) 
-- ) ) ) # ( !\inst|LessThan19~7_combout\ & ( !\inst|LessThan19~6_combout\ & ( (\inst|digit_on~1_combout\ & ((!\inst|LessThan19~8_combout\) # (\inst|Add0~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011001100000000101110110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan19~8_combout\,
	datab => \inst|ALT_INV_Add0~1_sumout\,
	datac => \inst|ALT_INV_LessThan19~5_combout\,
	datad => \inst|ALT_INV_digit_on~1_combout\,
	datae => \inst|ALT_INV_LessThan19~7_combout\,
	dataf => \inst|ALT_INV_LessThan19~6_combout\,
	combout => \inst|digit_on~2_combout\);

-- Location: MLABCELL_X28_Y73_N15
\inst3|hactive~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|hactive~0_combout\ = ( !\inst3|Add0~29_sumout\ & ( \inst3|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Add0~25_sumout\,
	dataf => \inst3|ALT_INV_Add0~29_sumout\,
	combout => \inst3|hactive~0_combout\);

-- Location: MLABCELL_X28_Y73_N21
\inst3|hactive~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|hactive~1_combout\ = ( \inst3|Add0~37_sumout\ & ( (!\inst3|Add0~29_sumout\ & (\inst3|Add0~25_sumout\ & !\inst3|Add0~33_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~29_sumout\,
	datac => \inst3|ALT_INV_Add0~25_sumout\,
	datad => \inst3|ALT_INV_Add0~33_sumout\,
	dataf => \inst3|ALT_INV_Add0~37_sumout\,
	combout => \inst3|hactive~1_combout\);

-- Location: MLABCELL_X28_Y73_N24
\inst3|hactive~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|hactive~2_combout\ = ( \inst3|hsync~0_combout\ & ( \inst3|Equal0~0_combout\ & ( ((\inst3|hactive~q\ & ((!\inst3|hactive~0_combout\) # (!\inst3|process_1~0_combout\)))) # (\inst3|hactive~1_combout\) ) ) ) # ( !\inst3|hsync~0_combout\ & ( 
-- \inst3|Equal0~0_combout\ & ( (\inst3|hactive~1_combout\) # (\inst3|hactive~q\) ) ) ) # ( \inst3|hsync~0_combout\ & ( !\inst3|Equal0~0_combout\ & ( (\inst3|hactive~q\ & ((!\inst3|hactive~0_combout\) # (!\inst3|process_1~0_combout\))) ) ) ) # ( 
-- !\inst3|hsync~0_combout\ & ( !\inst3|Equal0~0_combout\ & ( \inst3|hactive~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010100010001011111010111110101111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_hactive~q\,
	datab => \inst3|ALT_INV_hactive~0_combout\,
	datac => \inst3|ALT_INV_hactive~1_combout\,
	datad => \inst3|ALT_INV_process_1~0_combout\,
	datae => \inst3|ALT_INV_hsync~0_combout\,
	dataf => \inst3|ALT_INV_Equal0~0_combout\,
	combout => \inst3|hactive~2_combout\);

-- Location: FF_X28_Y73_N23
\inst3|hactive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pixel_clk~q\,
	asdata => \inst3|hactive~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hactive~q\);

-- Location: MLABCELL_X25_Y71_N45
\inst3|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal4~2_combout\ = ( !\inst3|Add2~29_sumout\ & ( (!\inst3|Add2~25_sumout\ & (\inst3|Add2~5_sumout\ & !\inst3|Add2~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add2~25_sumout\,
	datac => \inst3|ALT_INV_Add2~5_sumout\,
	datad => \inst3|ALT_INV_Add2~21_sumout\,
	dataf => \inst3|ALT_INV_Add2~29_sumout\,
	combout => \inst3|Equal4~2_combout\);

-- Location: MLABCELL_X25_Y71_N54
\inst3|vactive~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|vactive~0_combout\ = ( \inst3|Equal4~2_combout\ & ( \inst3|process_2~0_combout\ & ( (!\inst3|vactive~q\ & (\inst3|Add2~33_sumout\ & (!\inst3|Add2~1_sumout\ & \inst3|Add2~37_sumout\))) # (\inst3|vactive~q\ & ((!\inst3|Add2~33_sumout\) # 
-- ((!\inst3|Add2~1_sumout\) # (\inst3|Add2~37_sumout\)))) ) ) ) # ( !\inst3|Equal4~2_combout\ & ( \inst3|process_2~0_combout\ & ( \inst3|vactive~q\ ) ) ) # ( \inst3|Equal4~2_combout\ & ( !\inst3|process_2~0_combout\ & ( \inst3|vactive~q\ ) ) ) # ( 
-- !\inst3|Equal4~2_combout\ & ( !\inst3|process_2~0_combout\ & ( \inst3|vactive~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_vactive~q\,
	datab => \inst3|ALT_INV_Add2~33_sumout\,
	datac => \inst3|ALT_INV_Add2~1_sumout\,
	datad => \inst3|ALT_INV_Add2~37_sumout\,
	datae => \inst3|ALT_INV_Equal4~2_combout\,
	dataf => \inst3|ALT_INV_process_2~0_combout\,
	combout => \inst3|vactive~0_combout\);

-- Location: FF_X25_Y71_N58
\inst3|vactive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|hsync~q\,
	asdata => \inst3|vactive~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vactive~q\);

-- Location: MLABCELL_X28_Y73_N18
\inst3|b[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|b[7]~0_combout\ = (\inst3|hactive~q\ & \inst3|vactive~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_hactive~q\,
	datac => \inst3|ALT_INV_vactive~q\,
	combout => \inst3|b[7]~0_combout\);

-- Location: LABCELL_X27_Y72_N18
\inst|digit[1]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[1]~37_combout\ = ( \inst|digit[1]~30_combout\ & ( !\inst|digit[1]~31_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_digit[1]~31_combout\,
	datae => \inst|ALT_INV_digit[1]~30_combout\,
	combout => \inst|digit[1]~37_combout\);

-- Location: LABCELL_X27_Y72_N39
\inst|digit[0]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|digit[0]~38_combout\ = ( \inst|digit[3]~22_combout\ & ( \inst|digit[0]~9_combout\ ) ) # ( !\inst|digit[3]~22_combout\ & ( ((!\inst|digit[3]~14_combout\ & \inst|digit[0]~25_combout\)) # (\inst|digit[0]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010101111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[3]~14_combout\,
	datac => \inst|ALT_INV_digit[0]~25_combout\,
	datad => \inst|ALT_INV_digit[0]~9_combout\,
	dataf => \inst|ALT_INV_digit[3]~22_combout\,
	combout => \inst|digit[0]~38_combout\);

-- Location: LABCELL_X27_Y73_N36
\inst|Add2~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Add2~22_cout\);

-- Location: LABCELL_X27_Y73_N39
\inst|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~9_sumout\ = SUM(( \inst3|pixel_column\(0) ) + ( (!\inst|digit~1_combout\) # ((\inst|digit~4_combout\ & ((!\inst|digit~17_combout\) # (\inst|digit[0]~38_combout\)))) ) + ( \inst|Add2~22_cout\ ))
-- \inst|Add2~10\ = CARRY(( \inst3|pixel_column\(0) ) + ( (!\inst|digit~1_combout\) # ((\inst|digit~4_combout\ & ((!\inst|digit~17_combout\) # (\inst|digit[0]~38_combout\)))) ) + ( \inst|Add2~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000110010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~4_combout\,
	datab => \inst|ALT_INV_digit~1_combout\,
	datac => \inst|ALT_INV_digit~17_combout\,
	datad => \inst3|ALT_INV_pixel_column\(0),
	dataf => \inst|ALT_INV_digit[0]~38_combout\,
	cin => \inst|Add2~22_cout\,
	sumout => \inst|Add2~9_sumout\,
	cout => \inst|Add2~10\);

-- Location: LABCELL_X27_Y73_N42
\inst|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~5_sumout\ = SUM(( (\inst|digit~1_combout\ & ((!\inst|digit~17_combout\) # ((!\inst|digit~4_combout\) # (\inst|digit[1]~37_combout\)))) ) + ( \inst3|pixel_column\(1) ) + ( \inst|Add2~10\ ))
-- \inst|Add2~6\ = CARRY(( (\inst|digit~1_combout\ & ((!\inst|digit~17_combout\) # ((!\inst|digit~4_combout\) # (\inst|digit[1]~37_combout\)))) ) + ( \inst3|pixel_column\(1) ) + ( \inst|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~1_combout\,
	datab => \inst|ALT_INV_digit~17_combout\,
	datac => \inst|ALT_INV_digit~4_combout\,
	datad => \inst|ALT_INV_digit[1]~37_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(1),
	cin => \inst|Add2~10\,
	sumout => \inst|Add2~5_sumout\,
	cout => \inst|Add2~6\);

-- Location: LABCELL_X27_Y73_N45
\inst|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~13_sumout\ = SUM(( (!\inst|digit~1_combout\) # (!\inst|digit[0]~28_combout\ $ (((!\inst|digit~17_combout\) # (!\inst|digit[2]~35_combout\)))) ) + ( \inst3|pixel_column\(2) ) + ( \inst|Add2~6\ ))
-- \inst|Add2~14\ = CARRY(( (!\inst|digit~1_combout\) # (!\inst|digit[0]~28_combout\ $ (((!\inst|digit~17_combout\) # (!\inst|digit[2]~35_combout\)))) ) + ( \inst3|pixel_column\(2) ) + ( \inst|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit~1_combout\,
	datab => \inst|ALT_INV_digit~17_combout\,
	datac => \inst|ALT_INV_digit[0]~28_combout\,
	datad => \inst|ALT_INV_digit[2]~35_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(2),
	cin => \inst|Add2~6\,
	sumout => \inst|Add2~13_sumout\,
	cout => \inst|Add2~14\);

-- Location: LABCELL_X27_Y73_N48
\inst|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~1_sumout\ = SUM(( (!\inst|digit[3]~27_combout\ & (!\inst|digit[1]~33_combout\ $ (((\inst|digit[0]~29_combout\ & \inst|digit[2]~34_combout\))))) ) + ( \inst3|pixel_column\(3) ) + ( \inst|Add2~14\ ))
-- \inst|Add2~2\ = CARRY(( (!\inst|digit[3]~27_combout\ & (!\inst|digit[1]~33_combout\ $ (((\inst|digit[0]~29_combout\ & \inst|digit[2]~34_combout\))))) ) + ( \inst3|pixel_column\(3) ) + ( \inst|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[1]~33_combout\,
	datab => \inst|ALT_INV_digit[0]~29_combout\,
	datac => \inst|ALT_INV_digit[3]~27_combout\,
	datad => \inst|ALT_INV_digit[2]~34_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(3),
	cin => \inst|Add2~14\,
	sumout => \inst|Add2~1_sumout\,
	cout => \inst|Add2~2\);

-- Location: LABCELL_X27_Y73_N51
\inst|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~17_sumout\ = SUM(( (!\inst|digit[3]~27_combout\ & ((!\inst|digit[1]~33_combout\ & ((!\inst|digit[2]~34_combout\) # (\inst|digit[0]~29_combout\))) # (\inst|digit[1]~33_combout\ & ((\inst|digit[2]~34_combout\))))) ) + ( \inst3|pixel_column\(4) ) 
-- + ( \inst|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit[1]~33_combout\,
	datab => \inst|ALT_INV_digit[0]~29_combout\,
	datac => \inst|ALT_INV_digit[3]~27_combout\,
	datad => \inst|ALT_INV_digit[2]~34_combout\,
	dataf => \inst3|ALT_INV_pixel_column\(4),
	cin => \inst|Add2~2\,
	sumout => \inst|Add2~17_sumout\);

-- Location: IOIBUF_X4_Y0_N35
\switch[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\switch[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\switch[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\switch[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LABCELL_X9_Y2_N12
\inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = ( \inst|digit[0]~29_combout\ & ( \inst|digit[1]~33_combout\ & ( !\switch[3]~input_o\ ) ) ) # ( !\inst|digit[0]~29_combout\ & ( \inst|digit[1]~33_combout\ & ( !\switch[2]~input_o\ ) ) ) # ( \inst|digit[0]~29_combout\ & ( 
-- !\inst|digit[1]~33_combout\ & ( !\switch[1]~input_o\ ) ) ) # ( !\inst|digit[0]~29_combout\ & ( !\inst|digit[1]~33_combout\ & ( !\switch[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111100001111000011001100110011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[3]~input_o\,
	datab => \ALT_INV_switch[2]~input_o\,
	datac => \ALT_INV_switch[1]~input_o\,
	datad => \ALT_INV_switch[0]~input_o\,
	datae => \inst|ALT_INV_digit[0]~29_combout\,
	dataf => \inst|ALT_INV_digit[1]~33_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\switch[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\switch[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\switch[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\switch[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: LABCELL_X9_Y2_N42
\inst|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = ( \inst|digit[0]~29_combout\ & ( \switch[4]~input_o\ & ( (!\inst|digit[1]~33_combout\ & ((!\switch[5]~input_o\))) # (\inst|digit[1]~33_combout\ & (!\switch[7]~input_o\)) ) ) ) # ( !\inst|digit[0]~29_combout\ & ( \switch[4]~input_o\ 
-- & ( (!\switch[6]~input_o\ & \inst|digit[1]~33_combout\) ) ) ) # ( \inst|digit[0]~29_combout\ & ( !\switch[4]~input_o\ & ( (!\inst|digit[1]~33_combout\ & ((!\switch[5]~input_o\))) # (\inst|digit[1]~33_combout\ & (!\switch[7]~input_o\)) ) ) ) # ( 
-- !\inst|digit[0]~29_combout\ & ( !\switch[4]~input_o\ & ( (!\switch[6]~input_o\) # (!\inst|digit[1]~33_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111110100000101000001100000011001111101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[7]~input_o\,
	datab => \ALT_INV_switch[6]~input_o\,
	datac => \inst|ALT_INV_digit[1]~33_combout\,
	datad => \ALT_INV_switch[5]~input_o\,
	datae => \inst|ALT_INV_digit[0]~29_combout\,
	dataf => \ALT_INV_switch[4]~input_o\,
	combout => \inst|Mux0~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\switch[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\switch[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LABCELL_X31_Y73_N33
\inst|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = ( \inst|digit~1_combout\ & ( \switch[9]~input_o\ & ( (!\inst|digit[1]~33_combout\ & ((\inst|digit[0]~28_combout\) # (\switch[8]~input_o\))) ) ) ) # ( !\inst|digit~1_combout\ & ( \switch[9]~input_o\ & ( !\inst|digit[1]~33_combout\ ) 
-- ) ) # ( \inst|digit~1_combout\ & ( !\switch[9]~input_o\ & ( (\switch[8]~input_o\ & (!\inst|digit[0]~28_combout\ & !\inst|digit[1]~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000011110000111100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[8]~input_o\,
	datab => \inst|ALT_INV_digit[0]~28_combout\,
	datac => \inst|ALT_INV_digit[1]~33_combout\,
	datae => \inst|ALT_INV_digit~1_combout\,
	dataf => \ALT_INV_switch[9]~input_o\,
	combout => \inst|Mux0~2_combout\);

-- Location: LABCELL_X31_Y73_N12
\inst|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = ( \inst|digit[3]~27_combout\ & ( \inst|Mux0~2_combout\ & ( !\inst|digit[2]~18_combout\ ) ) ) # ( !\inst|digit[3]~27_combout\ & ( \inst|Mux0~2_combout\ & ( (!\inst|digit[2]~18_combout\ & (!\inst|Mux0~0_combout\)) # 
-- (\inst|digit[2]~18_combout\ & ((!\inst|digit~1_combout\ & (!\inst|Mux0~0_combout\)) # (\inst|digit~1_combout\ & ((!\inst|Mux0~1_combout\))))) ) ) ) # ( !\inst|digit[3]~27_combout\ & ( !\inst|Mux0~2_combout\ & ( (!\inst|digit[2]~18_combout\ & 
-- (!\inst|Mux0~0_combout\)) # (\inst|digit[2]~18_combout\ & ((!\inst|digit~1_combout\ & (!\inst|Mux0~0_combout\)) # (\inst|digit~1_combout\ & ((!\inst|Mux0~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101000000000000000000010101011101010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux0~0_combout\,
	datab => \inst|ALT_INV_digit[2]~18_combout\,
	datac => \inst|ALT_INV_digit~1_combout\,
	datad => \inst|ALT_INV_Mux0~1_combout\,
	datae => \inst|ALT_INV_digit[3]~27_combout\,
	dataf => \inst|ALT_INV_Mux0~2_combout\,
	combout => \inst|Mux0~3_combout\);

-- Location: LABCELL_X29_Y72_N36
\inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = ( \inst|Add2~9_sumout\ & ( \inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & (!\inst|Add2~1_sumout\ $ (!\inst|Add2~13_sumout\))) ) ) ) # ( !\inst|Add2~9_sumout\ & ( \inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & 
-- ((!\inst|Add2~1_sumout\ & ((\inst|Add2~13_sumout\))) # (\inst|Add2~1_sumout\ & ((!\inst|Add2~5_sumout\) # (!\inst|Add2~13_sumout\))))) ) ) ) # ( \inst|Add2~9_sumout\ & ( !\inst|Mux0~3_combout\ & ( (!\inst|Add2~13_sumout\ & (!\inst|Add2~1_sumout\ & 
-- (!\inst|Add2~5_sumout\ $ (!\inst|Add2~17_sumout\)))) # (\inst|Add2~13_sumout\ & (((!\inst|Add2~17_sumout\)))) ) ) ) # ( !\inst|Add2~9_sumout\ & ( !\inst|Mux0~3_combout\ & ( (!\inst|Add2~13_sumout\ & (!\inst|Add2~5_sumout\ & (!\inst|Add2~1_sumout\ $ 
-- (!\inst|Add2~17_sumout\)))) # (\inst|Add2~13_sumout\ & (((!\inst|Add2~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100011110000010010001111000000110000111000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~5_sumout\,
	datab => \inst|ALT_INV_Add2~1_sumout\,
	datac => \inst|ALT_INV_Add2~17_sumout\,
	datad => \inst|ALT_INV_Add2~13_sumout\,
	datae => \inst|ALT_INV_Add2~9_sumout\,
	dataf => \inst|ALT_INV_Mux0~3_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LABCELL_X29_Y72_N12
\inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = ( \inst|Add2~9_sumout\ & ( \inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & ((!\inst|Add2~1_sumout\ & (\inst|Add2~5_sumout\ & \inst|Add2~13_sumout\)) # (\inst|Add2~1_sumout\ & ((!\inst|Add2~13_sumout\))))) ) ) ) # ( 
-- !\inst|Add2~9_sumout\ & ( \inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & (!\inst|Add2~1_sumout\ $ (((!\inst|Add2~5_sumout\) # (!\inst|Add2~13_sumout\))))) ) ) ) # ( \inst|Add2~9_sumout\ & ( !\inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & 
-- ((\inst|Add2~13_sumout\) # (\inst|Add2~1_sumout\))) ) ) ) # ( !\inst|Add2~9_sumout\ & ( !\inst|Mux0~3_combout\ & ( (!\inst|Add2~1_sumout\ & ((!\inst|Add2~17_sumout\ & ((\inst|Add2~13_sumout\))) # (\inst|Add2~17_sumout\ & (!\inst|Add2~5_sumout\ & 
-- !\inst|Add2~13_sumout\)))) # (\inst|Add2~1_sumout\ & (((!\inst|Add2~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100011110000001100001111000000110000011000000011000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~5_sumout\,
	datab => \inst|ALT_INV_Add2~1_sumout\,
	datac => \inst|ALT_INV_Add2~17_sumout\,
	datad => \inst|ALT_INV_Add2~13_sumout\,
	datae => \inst|ALT_INV_Add2~9_sumout\,
	dataf => \inst|ALT_INV_Mux0~3_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LABCELL_X29_Y72_N18
\inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = ( \inst|Add2~9_sumout\ & ( \inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & (!\inst|Add2~1_sumout\ $ (!\inst|Add2~13_sumout\))) ) ) ) # ( !\inst|Add2~9_sumout\ & ( \inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & 
-- (!\inst|Add2~1_sumout\ $ (((!\inst|Add2~5_sumout\) # (!\inst|Add2~13_sumout\))))) ) ) ) # ( \inst|Add2~9_sumout\ & ( !\inst|Mux0~3_combout\ & ( !\inst|Add2~17_sumout\ $ (((!\inst|Add2~5_sumout\ & (!\inst|Add2~1_sumout\ & !\inst|Add2~13_sumout\)))) ) ) ) # 
-- ( !\inst|Add2~9_sumout\ & ( !\inst|Mux0~3_combout\ & ( (!\inst|Add2~13_sumout\ & (!\inst|Add2~5_sumout\ & (!\inst|Add2~1_sumout\ $ (!\inst|Add2~17_sumout\)))) # (\inst|Add2~13_sumout\ & (((!\inst|Add2~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100011110000011110001111000000110000011000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~5_sumout\,
	datab => \inst|ALT_INV_Add2~1_sumout\,
	datac => \inst|ALT_INV_Add2~17_sumout\,
	datad => \inst|ALT_INV_Add2~13_sumout\,
	datae => \inst|ALT_INV_Add2~9_sumout\,
	dataf => \inst|ALT_INV_Mux0~3_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LABCELL_X29_Y72_N24
\inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = ( \inst|Add2~9_sumout\ & ( \inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & ((!\inst|Add2~1_sumout\ & (\inst|Add2~5_sumout\ & \inst|Add2~13_sumout\)) # (\inst|Add2~1_sumout\ & ((!\inst|Add2~13_sumout\))))) ) ) ) # ( 
-- !\inst|Add2~9_sumout\ & ( \inst|Mux0~3_combout\ & ( (\inst|Add2~1_sumout\ & (!\inst|Add2~17_sumout\ & ((!\inst|Add2~5_sumout\) # (!\inst|Add2~13_sumout\)))) ) ) ) # ( \inst|Add2~9_sumout\ & ( !\inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & 
-- ((\inst|Add2~13_sumout\) # (\inst|Add2~1_sumout\))) ) ) ) # ( !\inst|Add2~9_sumout\ & ( !\inst|Mux0~3_combout\ & ( (!\inst|Add2~17_sumout\ & (((\inst|Add2~5_sumout\ & \inst|Add2~13_sumout\)) # (\inst|Add2~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110000001100001111000000110000001000000011000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~5_sumout\,
	datab => \inst|ALT_INV_Add2~1_sumout\,
	datac => \inst|ALT_INV_Add2~17_sumout\,
	datad => \inst|ALT_INV_Add2~13_sumout\,
	datae => \inst|ALT_INV_Add2~9_sumout\,
	dataf => \inst|ALT_INV_Mux0~3_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LABCELL_X29_Y72_N42
\inst|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = ( \inst3|pixel_row\(1) & ( \inst|Mux2~0_combout\ & ( (!\inst3|pixel_row\(0) & ((!\inst|Mux4~0_combout\))) # (\inst3|pixel_row\(0) & (!\inst|Mux5~0_combout\)) ) ) ) # ( !\inst3|pixel_row\(1) & ( \inst|Mux2~0_combout\ & ( 
-- (!\inst|Mux3~0_combout\ & \inst3|pixel_row\(0)) ) ) ) # ( \inst3|pixel_row\(1) & ( !\inst|Mux2~0_combout\ & ( (!\inst3|pixel_row\(0) & ((!\inst|Mux4~0_combout\))) # (\inst3|pixel_row\(0) & (!\inst|Mux5~0_combout\)) ) ) ) # ( !\inst3|pixel_row\(1) & ( 
-- !\inst|Mux2~0_combout\ & ( (!\inst|Mux3~0_combout\) # (!\inst3|pixel_row\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001010101000000000110011001111000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux5~0_combout\,
	datab => \inst|ALT_INV_Mux3~0_combout\,
	datac => \inst|ALT_INV_Mux4~0_combout\,
	datad => \inst3|ALT_INV_pixel_row\(0),
	datae => \inst3|ALT_INV_pixel_row\(1),
	dataf => \inst|ALT_INV_Mux2~0_combout\,
	combout => \inst|Mux25~0_combout\);

-- Location: LABCELL_X23_Y71_N3
\inst|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~1_combout\ = ( \inst3|pixel_row\(4) & ( (\inst3|pixel_row\(2) & \inst3|pixel_row\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_row\(2),
	datac => \inst3|ALT_INV_pixel_row\(3),
	dataf => \inst3|ALT_INV_pixel_row\(4),
	combout => \inst|Mux25~1_combout\);

-- Location: LABCELL_X27_Y71_N3
\inst|Mux25~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~7_combout\ = ( !\inst|Add2~1_sumout\ & ( (!\inst|Add2~5_sumout\ & !\inst|Add2~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~5_sumout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	dataf => \inst|ALT_INV_Add2~1_sumout\,
	combout => \inst|Mux25~7_combout\);

-- Location: LABCELL_X23_Y71_N27
\inst|Mux25~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~8_combout\ = ( \inst3|pixel_row\(3) & ( \inst|Add2~13_sumout\ & ( (!\inst|Add2~17_sumout\ & (!\inst3|pixel_row\(1) & !\inst3|pixel_row\(2))) ) ) ) # ( \inst3|pixel_row\(3) & ( !\inst|Add2~13_sumout\ & ( (!\inst3|pixel_row\(1) & 
-- (!\inst3|pixel_row\(2) & (!\inst|Add2~17_sumout\ $ (!\inst|Add2~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010000000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~17_sumout\,
	datab => \inst3|ALT_INV_pixel_row\(1),
	datac => \inst|ALT_INV_Add2~1_sumout\,
	datad => \inst3|ALT_INV_pixel_row\(2),
	datae => \inst3|ALT_INV_pixel_row\(3),
	dataf => \inst|ALT_INV_Add2~13_sumout\,
	combout => \inst|Mux25~8_combout\);

-- Location: LABCELL_X27_Y71_N0
\inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = ( \inst|Add2~13_sumout\ & ( (!\inst|Add2~5_sumout\ & (!\inst|Add2~9_sumout\ & \inst|Add2~1_sumout\)) ) ) # ( !\inst|Add2~13_sumout\ & ( \inst|Add2~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~5_sumout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	datac => \inst|ALT_INV_Add2~1_sumout\,
	dataf => \inst|ALT_INV_Add2~13_sumout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LABCELL_X23_Y71_N18
\inst|Mux25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~9_combout\ = ( \inst3|pixel_row\(1) & ( !\inst3|pixel_row\(2) & ( (\inst3|pixel_row\(4) & (\inst3|pixel_row\(3) & ((!\inst|Mux1~0_combout\) # (!\inst3|pixel_row\(0))))) ) ) ) # ( !\inst3|pixel_row\(1) & ( !\inst3|pixel_row\(2) & ( 
-- (\inst3|pixel_row\(4) & \inst3|pixel_row\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux1~0_combout\,
	datab => \inst3|ALT_INV_pixel_row\(4),
	datac => \inst3|ALT_INV_pixel_row\(3),
	datad => \inst3|ALT_INV_pixel_row\(0),
	datae => \inst3|ALT_INV_pixel_row\(1),
	dataf => \inst3|ALT_INV_pixel_row\(2),
	combout => \inst|Mux25~9_combout\);

-- Location: LABCELL_X27_Y71_N54
\inst|Mux25~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~6_combout\ = ( \inst|Mux0~3_combout\ & ( \inst|Add2~13_sumout\ & ( (\inst|Add2~17_sumout\ & ((\inst|Add2~5_sumout\) # (\inst|Add2~9_sumout\))) ) ) ) # ( !\inst|Mux0~3_combout\ & ( \inst|Add2~13_sumout\ & ( (!\inst|Add2~17_sumout\ & 
-- (\inst3|pixel_row\(0) & ((\inst|Add2~5_sumout\) # (\inst|Add2~9_sumout\)))) # (\inst|Add2~17_sumout\ & (((\inst|Add2~5_sumout\)) # (\inst|Add2~9_sumout\))) ) ) ) # ( \inst|Mux0~3_combout\ & ( !\inst|Add2~13_sumout\ & ( (\inst|Add2~17_sumout\ & 
-- ((\inst|Add2~5_sumout\) # (\inst|Add2~9_sumout\))) ) ) ) # ( !\inst|Mux0~3_combout\ & ( !\inst|Add2~13_sumout\ & ( (\inst|Add2~17_sumout\ & ((\inst|Add2~5_sumout\) # (\inst|Add2~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010100010011010111110001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~17_sumout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	datac => \inst3|ALT_INV_pixel_row\(0),
	datad => \inst|ALT_INV_Add2~5_sumout\,
	datae => \inst|ALT_INV_Mux0~3_combout\,
	dataf => \inst|ALT_INV_Add2~13_sumout\,
	combout => \inst|Mux25~6_combout\);

-- Location: LABCELL_X23_Y71_N9
\inst|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = ( \inst3|pixel_row\(4) & ( !\inst3|pixel_row\(3) ) ) # ( !\inst3|pixel_row\(4) & ( \inst3|pixel_row\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_row\(3),
	dataf => \inst3|ALT_INV_pixel_row\(4),
	combout => \inst|Add1~0_combout\);

-- Location: LABCELL_X27_Y71_N18
\inst|Mux25~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~10_combout\ = ( !\inst|Mux25~6_combout\ & ( \inst|Add1~0_combout\ & ( (\inst|Mux25~8_combout\ & (!\inst|Mux25~9_combout\ & ((!\inst|Mux25~7_combout\) # (\inst|Mux0~3_combout\)))) ) ) ) # ( \inst|Mux25~6_combout\ & ( !\inst|Add1~0_combout\ & ( 
-- !\inst|Mux25~9_combout\ ) ) ) # ( !\inst|Mux25~6_combout\ & ( !\inst|Add1~0_combout\ & ( !\inst|Mux25~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000100011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux25~7_combout\,
	datab => \inst|ALT_INV_Mux25~8_combout\,
	datac => \inst|ALT_INV_Mux0~3_combout\,
	datad => \inst|ALT_INV_Mux25~9_combout\,
	datae => \inst|ALT_INV_Mux25~6_combout\,
	dataf => \inst|ALT_INV_Add1~0_combout\,
	combout => \inst|Mux25~10_combout\);

-- Location: LABCELL_X27_Y71_N51
\inst|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = ( \inst|Add2~17_sumout\ & ( (!\inst|Add2~13_sumout\ & (!\inst|Add2~9_sumout\ & !\inst|Add2~5_sumout\)) ) ) # ( !\inst|Add2~17_sumout\ & ( \inst|Add2~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~13_sumout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	datac => \inst|ALT_INV_Add2~5_sumout\,
	dataf => \inst|ALT_INV_Add2~17_sumout\,
	combout => \inst|Mux13~0_combout\);

-- Location: LABCELL_X23_Y71_N0
\inst|Mux25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~5_combout\ = (\inst3|pixel_row\(2) & (\inst3|pixel_row\(1) & \inst3|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_pixel_row\(2),
	datab => \inst3|ALT_INV_pixel_row\(1),
	datad => \inst3|ALT_INV_pixel_row\(0),
	combout => \inst|Mux25~5_combout\);

-- Location: LABCELL_X27_Y71_N9
\inst|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~1_combout\ = ( \inst|Add2~13_sumout\ & ( (!\inst|Mux0~3_combout\) # ((!\inst|Add2~1_sumout\ & (\inst|Add2~9_sumout\ & \inst|Add2~5_sumout\)) # (\inst|Add2~1_sumout\ & (!\inst|Add2~9_sumout\ & !\inst|Add2~5_sumout\))) ) ) # ( 
-- !\inst|Add2~13_sumout\ & ( (!\inst|Add2~1_sumout\ & (\inst|Add2~9_sumout\ & (\inst|Add2~5_sumout\ & !\inst|Mux0~3_combout\))) # (\inst|Add2~1_sumout\ & (((!\inst|Add2~9_sumout\ & !\inst|Add2~5_sumout\)) # (\inst|Mux0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001010101010000100101010111111111010000101111111101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~1_sumout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	datac => \inst|ALT_INV_Add2~5_sumout\,
	datad => \inst|ALT_INV_Mux0~3_combout\,
	dataf => \inst|ALT_INV_Add2~13_sumout\,
	combout => \inst|Mux12~1_combout\);

-- Location: LABCELL_X27_Y71_N30
\inst|Mux25~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~12_combout\ = ( \inst|Mux0~3_combout\ & ( \inst|Add2~13_sumout\ & ( (!\inst|Mux13~0_combout\ & (\inst|Mux25~5_combout\ & !\inst|Add2~1_sumout\)) ) ) ) # ( !\inst|Mux0~3_combout\ & ( \inst|Add2~13_sumout\ & ( (!\inst|Mux13~0_combout\ & 
-- (\inst|Mux25~5_combout\ & !\inst|Add2~1_sumout\)) ) ) ) # ( \inst|Mux0~3_combout\ & ( !\inst|Add2~13_sumout\ & ( (!\inst|Mux13~0_combout\ & (!\inst|Add2~1_sumout\ & ((!\inst|Mux12~1_combout\) # (\inst|Mux25~5_combout\)))) ) ) ) # ( !\inst|Mux0~3_combout\ 
-- & ( !\inst|Add2~13_sumout\ & ( (!\inst|Mux13~0_combout\ & (\inst|Mux25~5_combout\ & !\inst|Add2~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000101000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux13~0_combout\,
	datab => \inst|ALT_INV_Mux25~5_combout\,
	datac => \inst|ALT_INV_Add2~1_sumout\,
	datad => \inst|ALT_INV_Mux12~1_combout\,
	datae => \inst|ALT_INV_Mux0~3_combout\,
	dataf => \inst|ALT_INV_Add2~13_sumout\,
	combout => \inst|Mux25~12_combout\);

-- Location: LABCELL_X27_Y71_N36
\inst|Mux25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~4_combout\ = ( \inst|Add2~9_sumout\ & ( \inst|Add2~1_sumout\ & ( (\inst3|pixel_row\(2) & ((!\inst|Add2~13_sumout\) # (\inst|Mux0~3_combout\))) ) ) ) # ( !\inst|Add2~9_sumout\ & ( \inst|Add2~1_sumout\ & ( (\inst3|pixel_row\(2) & 
-- ((!\inst|Add2~13_sumout\) # ((\inst|Mux0~3_combout\ & \inst|Add2~5_sumout\)))) ) ) ) # ( \inst|Add2~9_sumout\ & ( !\inst|Add2~1_sumout\ & ( (\inst3|pixel_row\(2) & ((!\inst|Add2~13_sumout\) # ((\inst|Mux0~3_combout\ & !\inst|Add2~5_sumout\)))) ) ) ) # ( 
-- !\inst|Add2~9_sumout\ & ( !\inst|Add2~1_sumout\ & ( ((!\inst|Add2~13_sumout\ & \inst3|pixel_row\(2))) # (\inst|Mux0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001000110010001000100010001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~13_sumout\,
	datab => \inst3|ALT_INV_pixel_row\(2),
	datac => \inst|ALT_INV_Mux0~3_combout\,
	datad => \inst|ALT_INV_Add2~5_sumout\,
	datae => \inst|ALT_INV_Add2~9_sumout\,
	dataf => \inst|ALT_INV_Add2~1_sumout\,
	combout => \inst|Mux25~4_combout\);

-- Location: LABCELL_X27_Y71_N6
\inst|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = ( \inst|Add2~5_sumout\ & ( (!\inst|Add2~13_sumout\ & ((!\inst|Mux0~3_combout\ & ((\inst|Add2~9_sumout\))) # (\inst|Mux0~3_combout\ & (\inst|Add2~1_sumout\)))) ) ) # ( !\inst|Add2~5_sumout\ & ( (\inst|Add2~1_sumout\ & 
-- !\inst|Add2~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000110000010100000011000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~1_sumout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	datac => \inst|ALT_INV_Add2~13_sumout\,
	datad => \inst|ALT_INV_Mux0~3_combout\,
	dataf => \inst|ALT_INV_Add2~5_sumout\,
	combout => \inst|Mux12~0_combout\);

-- Location: LABCELL_X27_Y71_N24
\inst|Mux25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~13_combout\ = ( !\inst3|pixel_row\(1) & ( ((((\inst3|pixel_row\(2) & !\inst|Mux12~1_combout\)) # (\inst|Add2~17_sumout\))) ) ) # ( \inst3|pixel_row\(1) & ( (!\inst3|pixel_row\(0) & ((((\inst|Mux25~4_combout\ & !\inst|Mux12~0_combout\)) # 
-- (\inst|Add2~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000010000000100000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux25~4_combout\,
	datab => \inst|ALT_INV_Mux12~0_combout\,
	datac => \inst3|ALT_INV_pixel_row\(0),
	datad => \inst|ALT_INV_Mux12~1_combout\,
	datae => \inst3|ALT_INV_pixel_row\(1),
	dataf => \inst|ALT_INV_Add2~17_sumout\,
	datag => \inst3|ALT_INV_pixel_row\(2),
	combout => \inst|Mux25~13_combout\);

-- Location: LABCELL_X27_Y71_N48
\inst|Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~2_combout\ = ( \inst|Add2~1_sumout\ & ( !\inst|Mux0~3_combout\ $ (((!\inst|Add2~13_sumout\) # ((!\inst|Add2~9_sumout\ & !\inst|Add2~5_sumout\)))) ) ) # ( !\inst|Add2~1_sumout\ & ( (!\inst|Add2~13_sumout\ & (\inst|Add2~9_sumout\ & 
-- (!\inst|Mux0~3_combout\ & \inst|Add2~5_sumout\))) # (\inst|Add2~13_sumout\ & ((!\inst|Mux0~3_combout\) # ((\inst|Add2~9_sumout\ & \inst|Add2~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110001010100000111000100011110010110100001111001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~13_sumout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	datac => \inst|ALT_INV_Mux0~3_combout\,
	datad => \inst|ALT_INV_Add2~5_sumout\,
	dataf => \inst|ALT_INV_Add2~1_sumout\,
	combout => \inst|Mux25~2_combout\);

-- Location: LABCELL_X27_Y71_N45
\inst|Mux25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~3_combout\ = ( \inst|Mux25~2_combout\ & ( (\inst|Add2~17_sumout\ & !\inst3|pixel_row\(2)) ) ) # ( !\inst|Mux25~2_combout\ & ( !\inst3|pixel_row\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~17_sumout\,
	datac => \inst3|ALT_INV_pixel_row\(2),
	dataf => \inst|ALT_INV_Mux25~2_combout\,
	combout => \inst|Mux25~3_combout\);

-- Location: LABCELL_X27_Y71_N42
\inst|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = ( !\inst|Add2~13_sumout\ & ( (\inst|Add2~17_sumout\ & (!\inst|Add2~5_sumout\ & (!\inst|Add2~1_sumout\ & !\inst|Mux0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~17_sumout\,
	datab => \inst|ALT_INV_Add2~5_sumout\,
	datac => \inst|ALT_INV_Add2~1_sumout\,
	datad => \inst|ALT_INV_Mux0~3_combout\,
	dataf => \inst|ALT_INV_Add2~13_sumout\,
	combout => \inst|Mux9~0_combout\);

-- Location: LABCELL_X27_Y71_N12
\inst|Mux25~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~11_combout\ = ( \inst|Mux25~3_combout\ & ( \inst|Mux9~0_combout\ & ( (\inst|Mux25~10_combout\ & ((!\inst|Mux25~12_combout\) # (\inst3|pixel_row\(3)))) ) ) ) # ( !\inst|Mux25~3_combout\ & ( \inst|Mux9~0_combout\ & ( (\inst|Mux25~10_combout\ & 
-- ((!\inst|Mux25~12_combout\) # (\inst3|pixel_row\(3)))) ) ) ) # ( \inst|Mux25~3_combout\ & ( !\inst|Mux9~0_combout\ & ( (\inst|Mux25~10_combout\ & \inst3|pixel_row\(3)) ) ) ) # ( !\inst|Mux25~3_combout\ & ( !\inst|Mux9~0_combout\ & ( 
-- (\inst|Mux25~10_combout\ & (((!\inst|Mux25~12_combout\ & !\inst|Mux25~13_combout\)) # (\inst3|pixel_row\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010101000000000101010101000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux25~10_combout\,
	datab => \inst|ALT_INV_Mux25~12_combout\,
	datac => \inst|ALT_INV_Mux25~13_combout\,
	datad => \inst3|ALT_INV_pixel_row\(3),
	datae => \inst|ALT_INV_Mux25~3_combout\,
	dataf => \inst|ALT_INV_Mux9~0_combout\,
	combout => \inst|Mux25~11_combout\);

-- Location: IOIBUF_X40_Y0_N18
\button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: MLABCELL_X25_Y75_N12
\inst3|b[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|b[7]~1_combout\ = ( \inst|Mux25~11_combout\ & ( \button~input_o\ & ( (\inst3|b[7]~0_combout\ & ((!\inst|digit_on~2_combout\) # ((!\inst|Mux25~0_combout\) # (!\inst|Mux25~1_combout\)))) ) ) ) # ( !\inst|Mux25~11_combout\ & ( \button~input_o\ & ( 
-- (!\inst|digit_on~2_combout\ & \inst3|b[7]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit_on~2_combout\,
	datab => \inst3|ALT_INV_b[7]~0_combout\,
	datac => \inst|ALT_INV_Mux25~0_combout\,
	datad => \inst|ALT_INV_Mux25~1_combout\,
	datae => \inst|ALT_INV_Mux25~11_combout\,
	dataf => \ALT_INV_button~input_o\,
	combout => \inst3|b[7]~1_combout\);

-- Location: LABCELL_X9_Y2_N39
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( !\switch[6]~input_o\ & ( (!\switch[7]~input_o\ & (\switch[9]~input_o\ & !\switch[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[7]~input_o\,
	datac => \ALT_INV_switch[9]~input_o\,
	datad => \ALT_INV_switch[8]~input_o\,
	dataf => \ALT_INV_switch[6]~input_o\,
	combout => \inst|Equal0~0_combout\);

-- Location: LABCELL_X9_Y2_N18
\inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = ( !\switch[2]~input_o\ & ( (!\switch[3]~input_o\ & (\switch[0]~input_o\ & !\switch[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000100000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[3]~input_o\,
	datab => \ALT_INV_switch[0]~input_o\,
	datac => \ALT_INV_switch[1]~input_o\,
	datae => \ALT_INV_switch[2]~input_o\,
	combout => \inst|Equal0~1_combout\);

-- Location: LABCELL_X9_Y2_N36
\inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = ( !\switch[4]~input_o\ & ( (\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & !\switch[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Equal0~0_combout\,
	datac => \inst|ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_switch[5]~input_o\,
	dataf => \ALT_INV_switch[4]~input_o\,
	combout => \inst|Equal0~2_combout\);

-- Location: MLABCELL_X25_Y75_N9
\inst3|g[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|g[7]~0_combout\ = ( !\button~input_o\ & ( !\inst|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_button~input_o\,
	combout => \inst3|g[7]~0_combout\);

-- Location: MLABCELL_X25_Y75_N51
\inst3|g[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|g[7]~1_combout\ = ( \inst|Mux25~11_combout\ & ( \inst|Mux25~1_combout\ & ( (\inst3|b[7]~0_combout\ & (!\inst3|g[7]~0_combout\ & ((!\inst|digit_on~2_combout\) # (!\inst|Mux25~0_combout\)))) ) ) ) # ( !\inst|Mux25~11_combout\ & ( 
-- \inst|Mux25~1_combout\ & ( (!\inst|digit_on~2_combout\ & (\inst3|b[7]~0_combout\ & !\inst3|g[7]~0_combout\)) ) ) ) # ( \inst|Mux25~11_combout\ & ( !\inst|Mux25~1_combout\ & ( (\inst3|b[7]~0_combout\ & !\inst3|g[7]~0_combout\) ) ) ) # ( 
-- !\inst|Mux25~11_combout\ & ( !\inst|Mux25~1_combout\ & ( (!\inst|digit_on~2_combout\ & (\inst3|b[7]~0_combout\ & !\inst3|g[7]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001100000011000000100000001000000011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_digit_on~2_combout\,
	datab => \inst3|ALT_INV_b[7]~0_combout\,
	datac => \inst3|ALT_INV_g[7]~0_combout\,
	datad => \inst|ALT_INV_Mux25~0_combout\,
	datae => \inst|ALT_INV_Mux25~11_combout\,
	dataf => \inst|ALT_INV_Mux25~1_combout\,
	combout => \inst3|g[7]~1_combout\);

-- Location: LABCELL_X24_Y75_N15
\inst3|r[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|r[7]~0_combout\ = ( \inst|Equal0~2_combout\ & ( !\button~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_button~input_o\,
	combout => \inst3|r[7]~0_combout\);

-- Location: MLABCELL_X25_Y75_N18
\inst3|r[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|r[7]~1_combout\ = ( \inst3|b[7]~0_combout\ & ( \inst|Mux25~0_combout\ & ( (!\inst3|r[7]~0_combout\ & ((!\inst|digit_on~2_combout\) # ((\inst|Mux25~11_combout\ & !\inst|Mux25~1_combout\)))) ) ) ) # ( \inst3|b[7]~0_combout\ & ( 
-- !\inst|Mux25~0_combout\ & ( (!\inst3|r[7]~0_combout\ & ((!\inst|digit_on~2_combout\) # (\inst|Mux25~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001001100010000000000000000001100010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux25~11_combout\,
	datab => \inst3|ALT_INV_r[7]~0_combout\,
	datac => \inst|ALT_INV_digit_on~2_combout\,
	datad => \inst|ALT_INV_Mux25~1_combout\,
	datae => \inst3|ALT_INV_b[7]~0_combout\,
	dataf => \inst|ALT_INV_Mux25~0_combout\,
	combout => \inst3|r[7]~1_combout\);

-- Location: MLABCELL_X21_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


