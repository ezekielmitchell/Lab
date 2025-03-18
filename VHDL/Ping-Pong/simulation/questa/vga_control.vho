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

-- DATE "03/18/2025 11:25:18"

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
	hsync : OUT std_logic;
	vsync : OUT std_logic;
	nblank : OUT std_logic;
	nsync : OUT std_logic;
	b : OUT std_logic_vector(7 DOWNTO 0);
	g : OUT std_logic_vector(7 DOWNTO 0);
	r : OUT std_logic_vector(7 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- pixel_clk	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nblank	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nsync	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_nblank : std_logic;
SIGNAL ww_nsync : std_logic;
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_g : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock50MHz~input_o\ : std_logic;
SIGNAL \inst2|pixel_clk~0_combout\ : std_logic;
SIGNAL \inst2|pixel_clk~q\ : std_logic;
SIGNAL \inst2|hcount[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|Add0~2\ : std_logic;
SIGNAL \inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst2|Add0~6\ : std_logic;
SIGNAL \inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst2|Add0~14\ : std_logic;
SIGNAL \inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst2|Add0~26\ : std_logic;
SIGNAL \inst2|Add0~30\ : std_logic;
SIGNAL \inst2|Add0~33_sumout\ : std_logic;
SIGNAL \inst2|Add0~34\ : std_logic;
SIGNAL \inst2|Add0~37_sumout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|hcount~1_combout\ : std_logic;
SIGNAL \inst2|Add0~38\ : std_logic;
SIGNAL \inst2|Add0~18\ : std_logic;
SIGNAL \inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst2|hcount~0_combout\ : std_logic;
SIGNAL \inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|hsync~2_combout\ : std_logic;
SIGNAL \inst2|hcount~2_combout\ : std_logic;
SIGNAL \inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|hsync~0_combout\ : std_logic;
SIGNAL \inst2|process_1~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|hsync~1_combout\ : std_logic;
SIGNAL \inst2|hsync~q\ : std_logic;
SIGNAL \inst2|vcount[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add2~38\ : std_logic;
SIGNAL \inst2|Add2~9_sumout\ : std_logic;
SIGNAL \inst2|Add2~10\ : std_logic;
SIGNAL \inst2|Add2~13_sumout\ : std_logic;
SIGNAL \inst2|Add2~14\ : std_logic;
SIGNAL \inst2|Add2~17_sumout\ : std_logic;
SIGNAL \inst2|process_2~2_combout\ : std_logic;
SIGNAL \inst2|Add2~34\ : std_logic;
SIGNAL \inst2|Add2~5_sumout\ : std_logic;
SIGNAL \inst2|Add2~6\ : std_logic;
SIGNAL \inst2|Add2~25_sumout\ : std_logic;
SIGNAL \inst2|vcount~1_combout\ : std_logic;
SIGNAL \inst2|Add2~26\ : std_logic;
SIGNAL \inst2|Add2~29_sumout\ : std_logic;
SIGNAL \inst2|vsync~0_combout\ : std_logic;
SIGNAL \inst2|vcount~2_combout\ : std_logic;
SIGNAL \inst2|Add2~30\ : std_logic;
SIGNAL \inst2|Add2~21_sumout\ : std_logic;
SIGNAL \inst2|Add2~22\ : std_logic;
SIGNAL \inst2|Add2~37_sumout\ : std_logic;
SIGNAL \inst2|vsync~3_combout\ : std_logic;
SIGNAL \inst2|vcount~0_combout\ : std_logic;
SIGNAL \inst2|Add2~18\ : std_logic;
SIGNAL \inst2|Add2~1_sumout\ : std_logic;
SIGNAL \inst2|vcount~3_combout\ : std_logic;
SIGNAL \inst2|Add2~33_sumout\ : std_logic;
SIGNAL \inst2|Equal4~1_combout\ : std_logic;
SIGNAL \inst2|vsync~1_combout\ : std_logic;
SIGNAL \inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|Equal4~0_combout\ : std_logic;
SIGNAL \inst2|vsync~2_combout\ : std_logic;
SIGNAL \inst2|vsync~q\ : std_logic;
SIGNAL \inst|ball_y_motion[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Add5~34\ : std_logic;
SIGNAL \inst|Add5~29_sumout\ : std_logic;
SIGNAL \inst|ball_y_pos[1]~2_combout\ : std_logic;
SIGNAL \inst|Add5~30\ : std_logic;
SIGNAL \inst|Add5~25_sumout\ : std_logic;
SIGNAL \inst|ball_y_pos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~10\ : std_logic;
SIGNAL \inst|Add1~5_sumout\ : std_logic;
SIGNAL \inst|Add1~9_sumout\ : std_logic;
SIGNAL \inst|ball_y_pos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add5~26\ : std_logic;
SIGNAL \inst|Add5~22\ : std_logic;
SIGNAL \inst|Add5~5_sumout\ : std_logic;
SIGNAL \inst|ball_y_pos[4]~0_combout\ : std_logic;
SIGNAL \inst|Add5~6\ : std_logic;
SIGNAL \inst|Add5~17_sumout\ : std_logic;
SIGNAL \inst|ball_y_pos[5]~1_combout\ : std_logic;
SIGNAL \inst|ball_y_pos[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ball_y_pos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~6\ : std_logic;
SIGNAL \inst|Add1~2\ : std_logic;
SIGNAL \inst|Add1~21_sumout\ : std_logic;
SIGNAL \inst|Add1~1_sumout\ : std_logic;
SIGNAL \inst|Add5~18\ : std_logic;
SIGNAL \inst|Add5~13_sumout\ : std_logic;
SIGNAL \inst|ball_y_pos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~22\ : std_logic;
SIGNAL \inst|Add1~17_sumout\ : std_logic;
SIGNAL \inst|y_motion~4_combout\ : std_logic;
SIGNAL \inst|pad_y_motion[4]~feeder_combout\ : std_logic;
SIGNAL \inst|Add7~33_sumout\ : std_logic;
SIGNAL \inst|pady[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add7~34\ : std_logic;
SIGNAL \inst|Add7~29_sumout\ : std_logic;
SIGNAL \inst|pady[2]~1_combout\ : std_logic;
SIGNAL \inst|pady[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add7~30\ : std_logic;
SIGNAL \inst|Add7~21_sumout\ : std_logic;
SIGNAL \inst|pady[3]~0_combout\ : std_logic;
SIGNAL \inst|pady[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add7~22\ : std_logic;
SIGNAL \inst|Add7~13_sumout\ : std_logic;
SIGNAL \inst|Add7~14\ : std_logic;
SIGNAL \inst|Add7~17_sumout\ : std_logic;
SIGNAL \inst|y_motion~7_combout\ : std_logic;
SIGNAL \inst|Add5~14\ : std_logic;
SIGNAL \inst|Add5~9_sumout\ : std_logic;
SIGNAL \inst|ball_y_pos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~18\ : std_logic;
SIGNAL \inst|Add1~13_sumout\ : std_logic;
SIGNAL \inst|Add1~14\ : std_logic;
SIGNAL \inst|Add1~26\ : std_logic;
SIGNAL \inst|Add1~29_sumout\ : std_logic;
SIGNAL \inst|y_motion~5_combout\ : std_logic;
SIGNAL \inst|Add7~18\ : std_logic;
SIGNAL \inst|Add7~9_sumout\ : std_logic;
SIGNAL \inst|pady[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add7~10\ : std_logic;
SIGNAL \inst|Add7~5_sumout\ : std_logic;
SIGNAL \inst|Add7~6\ : std_logic;
SIGNAL \inst|Add7~1_sumout\ : std_logic;
SIGNAL \inst|Add7~2\ : std_logic;
SIGNAL \inst|Add7~25_sumout\ : std_logic;
SIGNAL \inst|ball_x_motion[0]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan14~2_combout\ : std_logic;
SIGNAL \inst|LessThan14~3_combout\ : std_logic;
SIGNAL \inst|pady[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add4~10\ : std_logic;
SIGNAL \inst|Add4~6\ : std_logic;
SIGNAL \inst|Add4~18\ : std_logic;
SIGNAL \inst|Add4~14\ : std_logic;
SIGNAL \inst|Add4~30\ : std_logic;
SIGNAL \inst|Add4~26\ : std_logic;
SIGNAL \inst|Add4~22\ : std_logic;
SIGNAL \inst|Add4~2\ : std_logic;
SIGNAL \inst|Add4~33_sumout\ : std_logic;
SIGNAL \inst|Add4~34\ : std_logic;
SIGNAL \inst|Add4~37_sumout\ : std_logic;
SIGNAL \inst|Add4~25_sumout\ : std_logic;
SIGNAL \inst|Add4~21_sumout\ : std_logic;
SIGNAL \inst|Add4~1_sumout\ : std_logic;
SIGNAL \inst|x_motion~10_combout\ : std_logic;
SIGNAL \inst|Add6~2\ : std_logic;
SIGNAL \inst|Add6~5_sumout\ : std_logic;
SIGNAL \inst|ball_x_pos[1]~0_combout\ : std_logic;
SIGNAL \inst|ball_x_pos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|x_motion~0_combout\ : std_logic;
SIGNAL \inst|x_motion~1_combout\ : std_logic;
SIGNAL \inst|LessThan14~0_combout\ : std_logic;
SIGNAL \inst|LessThan14~1_combout\ : std_logic;
SIGNAL \inst|x_motion~3_combout\ : std_logic;
SIGNAL \inst|ball_x_pos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add6~10\ : std_logic;
SIGNAL \inst|Add6~21_sumout\ : std_logic;
SIGNAL \inst|ball_x_pos[5]~2_combout\ : std_logic;
SIGNAL \inst|Add6~22\ : std_logic;
SIGNAL \inst|Add6~17_sumout\ : std_logic;
SIGNAL \inst|Add6~18\ : std_logic;
SIGNAL \inst|Add6~13_sumout\ : std_logic;
SIGNAL \inst|ball_x_pos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add6~6\ : std_logic;
SIGNAL \inst|Add6~25_sumout\ : std_logic;
SIGNAL \inst|ball_x_pos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~2\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|Add6~14\ : std_logic;
SIGNAL \inst|Add6~38\ : std_logic;
SIGNAL \inst|Add6~33_sumout\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|x_motion~4_combout\ : std_logic;
SIGNAL \inst|x_motion~5_combout\ : std_logic;
SIGNAL \inst|Add4~9_sumout\ : std_logic;
SIGNAL \inst|Add4~5_sumout\ : std_logic;
SIGNAL \inst|LessThan15~3_combout\ : std_logic;
SIGNAL \inst|Add4~29_sumout\ : std_logic;
SIGNAL \inst|Add4~17_sumout\ : std_logic;
SIGNAL \inst|Add4~13_sumout\ : std_logic;
SIGNAL \inst|LessThan15~4_combout\ : std_logic;
SIGNAL \inst|y_motion~16_combout\ : std_logic;
SIGNAL \inst|y_motion~15_combout\ : std_logic;
SIGNAL \inst|LessThan15~5_combout\ : std_logic;
SIGNAL \inst|Equal4~1_combout\ : std_logic;
SIGNAL \inst|Equal4~2_combout\ : std_logic;
SIGNAL \inst|x_motion~9_combout\ : std_logic;
SIGNAL \inst|Add6~26\ : std_logic;
SIGNAL \inst|Add6~29_sumout\ : std_logic;
SIGNAL \inst|Add6~30\ : std_logic;
SIGNAL \inst|Add6~9_sumout\ : std_logic;
SIGNAL \inst|ball_x_pos[4]~1_combout\ : std_logic;
SIGNAL \inst|Equal6~1_combout\ : std_logic;
SIGNAL \inst|ball_x_motion[0]~0_combout\ : std_logic;
SIGNAL \inst|Add6~1_sumout\ : std_logic;
SIGNAL \inst|x_motion~6_combout\ : std_logic;
SIGNAL \inst|x_motion~7_combout\ : std_logic;
SIGNAL \inst|x_motion~2_combout\ : std_logic;
SIGNAL \inst|LessThan15~6_combout\ : std_logic;
SIGNAL \inst|x_motion~8_combout\ : std_logic;
SIGNAL \inst|ball_x_motion~1_combout\ : std_logic;
SIGNAL \inst|Add6~37_sumout\ : std_logic;
SIGNAL \inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst|y_motion~1_combout\ : std_logic;
SIGNAL \inst|y_motion~8_combout\ : std_logic;
SIGNAL \inst|y_motion~10_combout\ : std_logic;
SIGNAL \inst|y_motion~6_combout\ : std_logic;
SIGNAL \inst|y_motion~11_combout\ : std_logic;
SIGNAL \inst|Add5~21_sumout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|y_motion~17_combout\ : std_logic;
SIGNAL \inst|y_motion~0_combout\ : std_logic;
SIGNAL \inst|y_motion~2_combout\ : std_logic;
SIGNAL \inst|LessThan15~2_combout\ : std_logic;
SIGNAL \inst|LessThan15~0_combout\ : std_logic;
SIGNAL \inst|LessThan15~1_combout\ : std_logic;
SIGNAL \inst|y_motion~3_combout\ : std_logic;
SIGNAL \inst|y_motion~12_combout\ : std_logic;
SIGNAL \inst|y_motion~13_combout\ : std_logic;
SIGNAL \inst|y_motion~14_combout\ : std_logic;
SIGNAL \inst|ball_y_motion[0]~1_combout\ : std_logic;
SIGNAL \inst|Add5~33_sumout\ : std_logic;
SIGNAL \inst|ball_y_motion[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|y_motion~9_combout\ : std_logic;
SIGNAL \inst|ball_y_motion~0_combout\ : std_logic;
SIGNAL \inst|Add5~10\ : std_logic;
SIGNAL \inst|Add5~1_sumout\ : std_logic;
SIGNAL \inst|Add1~25_sumout\ : std_logic;
SIGNAL \inst2|Add3~13_sumout\ : std_logic;
SIGNAL \inst2|LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|LessThan2~2_combout\ : std_logic;
SIGNAL \inst2|process_2~0_combout\ : std_logic;
SIGNAL \inst2|vsync~4_combout\ : std_logic;
SIGNAL \inst2|process_2~1_combout\ : std_logic;
SIGNAL \inst2|Add3~14\ : std_logic;
SIGNAL \inst2|Add3~9_sumout\ : std_logic;
SIGNAL \inst2|Add3~10\ : std_logic;
SIGNAL \inst2|Add3~5_sumout\ : std_logic;
SIGNAL \inst2|Add3~6\ : std_logic;
SIGNAL \inst2|Add3~1_sumout\ : std_logic;
SIGNAL \inst2|Add3~2\ : std_logic;
SIGNAL \inst2|Add3~21_sumout\ : std_logic;
SIGNAL \inst2|pixel_row[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add3~22\ : std_logic;
SIGNAL \inst2|Add3~17_sumout\ : std_logic;
SIGNAL \inst2|Add3~18\ : std_logic;
SIGNAL \inst2|Add3~33_sumout\ : std_logic;
SIGNAL \inst2|Add3~34\ : std_logic;
SIGNAL \inst2|Add3~29_sumout\ : std_logic;
SIGNAL \inst2|Add3~30\ : std_logic;
SIGNAL \inst2|Add3~25_sumout\ : std_logic;
SIGNAL \inst|LessThan3~8_combout\ : std_logic;
SIGNAL \inst2|Add1~37_sumout\ : std_logic;
SIGNAL \inst2|pixel_column[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|process_1~1_combout\ : std_logic;
SIGNAL \inst2|pixel_column[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~38\ : std_logic;
SIGNAL \inst2|Add1~25_sumout\ : std_logic;
SIGNAL \inst2|pixel_column[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add1~26\ : std_logic;
SIGNAL \inst2|Add1~21_sumout\ : std_logic;
SIGNAL \inst2|pixel_column[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~22\ : std_logic;
SIGNAL \inst2|Add1~17_sumout\ : std_logic;
SIGNAL \inst2|Add1~18\ : std_logic;
SIGNAL \inst2|Add1~13_sumout\ : std_logic;
SIGNAL \inst2|Add1~14\ : std_logic;
SIGNAL \inst2|Add1~29_sumout\ : std_logic;
SIGNAL \inst2|pixel_column[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~30\ : std_logic;
SIGNAL \inst2|Add1~33_sumout\ : std_logic;
SIGNAL \inst2|pixel_column[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add1~34\ : std_logic;
SIGNAL \inst2|Add1~5_sumout\ : std_logic;
SIGNAL \inst2|Add1~6\ : std_logic;
SIGNAL \inst2|Add1~9_sumout\ : std_logic;
SIGNAL \inst2|pixel_column[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|LessThan1~8_combout\ : std_logic;
SIGNAL \inst2|Add1~10\ : std_logic;
SIGNAL \inst2|Add1~1_sumout\ : std_logic;
SIGNAL \inst2|pixel_column[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ball_on~0_combout\ : std_logic;
SIGNAL \inst|ball_on~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~6_combout\ : std_logic;
SIGNAL \inst|LessThan1~7_combout\ : std_logic;
SIGNAL \inst|LessThan2~4_combout\ : std_logic;
SIGNAL \inst|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|LessThan2~5_combout\ : std_logic;
SIGNAL \inst|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~5_combout\ : std_logic;
SIGNAL \inst|LessThan3~6_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~7_combout\ : std_logic;
SIGNAL \inst|ball_on~2_combout\ : std_logic;
SIGNAL \inst|LessThan10~1_combout\ : std_logic;
SIGNAL \inst|LessThan10~0_combout\ : std_logic;
SIGNAL \inst|pad_on~4_combout\ : std_logic;
SIGNAL \inst|pad_on~2_combout\ : std_logic;
SIGNAL \inst|LessThan10~3_combout\ : std_logic;
SIGNAL \inst|pad_on~6_combout\ : std_logic;
SIGNAL \inst2|pixel_column[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|pad_on~0_combout\ : std_logic;
SIGNAL \inst|pad_on~5_combout\ : std_logic;
SIGNAL \inst|LessThan10~2_combout\ : std_logic;
SIGNAL \inst|pad_on~7_combout\ : std_logic;
SIGNAL \inst|LessThan11~2_combout\ : std_logic;
SIGNAL \inst|LessThan11~1_combout\ : std_logic;
SIGNAL \inst|LessThan11~4_combout\ : std_logic;
SIGNAL \inst|LessThan11~5_combout\ : std_logic;
SIGNAL \inst|LessThan11~3_combout\ : std_logic;
SIGNAL \inst|LessThan11~0_combout\ : std_logic;
SIGNAL \inst|pad_on~1_combout\ : std_logic;
SIGNAL \inst|LessThan10~5_combout\ : std_logic;
SIGNAL \inst|LessThan10~7_combout\ : std_logic;
SIGNAL \inst|LessThan10~4_combout\ : std_logic;
SIGNAL \inst|LessThan10~6_combout\ : std_logic;
SIGNAL \inst|pad_on~8_combout\ : std_logic;
SIGNAL \inst|pad_on~3_combout\ : std_logic;
SIGNAL \inst|pad_on~9_combout\ : std_logic;
SIGNAL \inst2|Equal4~2_combout\ : std_logic;
SIGNAL \inst2|vactive~0_combout\ : std_logic;
SIGNAL \inst2|vactive~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|hactive~0_combout\ : std_logic;
SIGNAL \inst2|hactive~1_combout\ : std_logic;
SIGNAL \inst2|hactive~2_combout\ : std_logic;
SIGNAL \inst2|hactive~q\ : std_logic;
SIGNAL \inst|Add2~6\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~1_sumout\ : std_logic;
SIGNAL \inst|Add2~2\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~18\ : std_logic;
SIGNAL \inst|Add2~19\ : std_logic;
SIGNAL \inst|Add2~9_sumout\ : std_logic;
SIGNAL \inst|Add2~5_sumout\ : std_logic;
SIGNAL \inst|Add2~17_sumout\ : std_logic;
SIGNAL \inst|Add3~2\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~6\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~9_sumout\ : std_logic;
SIGNAL \inst|Add3~10\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~13_sumout\ : std_logic;
SIGNAL \inst|Add3~5_sumout\ : std_logic;
SIGNAL \inst|Add3~1_sumout\ : std_logic;
SIGNAL \inst|Add3~14\ : std_logic;
SIGNAL \inst|Add3~15\ : std_logic;
SIGNAL \inst|Add3~17_sumout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Add2~10\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~13_sumout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|wall_on~0_combout\ : std_logic;
SIGNAL \inst|wall_on~1_combout\ : std_logic;
SIGNAL \inst|LessThan6~1_combout\ : std_logic;
SIGNAL \inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|wall_on~2_combout\ : std_logic;
SIGNAL \inst2|b[7]~0_combout\ : std_logic;
SIGNAL \inst2|g[7]~0_combout\ : std_logic;
SIGNAL \inst2|vactive~q\ : std_logic;
SIGNAL \inst2|r[7]~0_combout\ : std_logic;
SIGNAL \inst|ball_y_pos\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|pixel_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ball_y_motion\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ball_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|pady\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ball_x_motion\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|pad_y_motion\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ALT_INV_ball_y_motion[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_vactive~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_pady[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_pady[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_pady[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_pady[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_pady[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_x_pos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_x_pos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_x_pos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_x_pos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_y_pos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_y_pos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_y_pos[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_y_pos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_ball_y_pos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~17_combout\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan15~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_x_motion~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan14~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan14~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan14~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan14~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan15~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan15~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan15~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~16_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~15_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~14_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~12_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan15~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan15~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan15~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_y_motion~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_2~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_hsync~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_y_motion\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \inst|ALT_INV_ball_x_motion\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ALT_INV_ball_y_motion\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|ALT_INV_vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_hactive~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_hactive~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_vsync~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_vsync~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_vsync~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_vsync~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_hsync~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_hactive~q\ : std_logic;
SIGNAL \inst2|ALT_INV_vactive~q\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan10~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pady\ : std_logic_vector(9 DOWNTO 1);
SIGNAL \inst|ALT_INV_LessThan10~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan10~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan10~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan10~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan10~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan11~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan11~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan11~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan11~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_x_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_y_pos\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_wall_on~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_pad_on~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_wall_on~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_wall_on~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_vsync~q\ : std_logic;
SIGNAL \inst2|ALT_INV_hsync~q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_clk~q\ : std_logic;
SIGNAL \inst|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_pixel_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~1_sumout\ : std_logic;

BEGIN

pixel_clk <= ww_pixel_clk;
ww_clock50MHz <= clock50MHz;
hsync <= ww_hsync;
vsync <= ww_vsync;
nblank <= ww_nblank;
nsync <= ww_nsync;
b <= ww_b;
g <= ww_g;
r <= ww_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_ball_y_motion[4]~DUPLICATE_q\ <= NOT \inst|ball_y_motion[4]~DUPLICATE_q\;
\inst2|ALT_INV_vactive~DUPLICATE_q\ <= NOT \inst2|vactive~DUPLICATE_q\;
\inst|ALT_INV_pady[1]~DUPLICATE_q\ <= NOT \inst|pady[1]~DUPLICATE_q\;
\inst|ALT_INV_pady[2]~DUPLICATE_q\ <= NOT \inst|pady[2]~DUPLICATE_q\;
\inst|ALT_INV_pady[3]~DUPLICATE_q\ <= NOT \inst|pady[3]~DUPLICATE_q\;
\inst|ALT_INV_pady[4]~DUPLICATE_q\ <= NOT \inst|pady[4]~DUPLICATE_q\;
\inst|ALT_INV_pady[6]~DUPLICATE_q\ <= NOT \inst|pady[6]~DUPLICATE_q\;
\inst|ALT_INV_ball_x_pos[2]~DUPLICATE_q\ <= NOT \inst|ball_x_pos[2]~DUPLICATE_q\;
\inst|ALT_INV_ball_x_pos[6]~DUPLICATE_q\ <= NOT \inst|ball_x_pos[6]~DUPLICATE_q\;
\inst|ALT_INV_ball_x_pos[4]~DUPLICATE_q\ <= NOT \inst|ball_x_pos[4]~DUPLICATE_q\;
\inst|ALT_INV_ball_x_pos[1]~DUPLICATE_q\ <= NOT \inst|ball_x_pos[1]~DUPLICATE_q\;
\inst|ALT_INV_ball_y_pos[1]~DUPLICATE_q\ <= NOT \inst|ball_y_pos[1]~DUPLICATE_q\;
\inst|ALT_INV_ball_y_pos[2]~DUPLICATE_q\ <= NOT \inst|ball_y_pos[2]~DUPLICATE_q\;
\inst|ALT_INV_ball_y_pos[5]~DUPLICATE_q\ <= NOT \inst|ball_y_pos[5]~DUPLICATE_q\;
\inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\ <= NOT \inst|ball_y_pos[6]~DUPLICATE_q\;
\inst|ALT_INV_ball_y_pos[7]~DUPLICATE_q\ <= NOT \inst|ball_y_pos[7]~DUPLICATE_q\;
\inst|ALT_INV_ball_y_pos[4]~DUPLICATE_q\ <= NOT \inst|ball_y_pos[4]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\ <= NOT \inst2|pixel_column[0]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[6]~DUPLICATE_q\ <= NOT \inst2|pixel_column[6]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[5]~DUPLICATE_q\ <= NOT \inst2|pixel_column[5]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\ <= NOT \inst2|pixel_column[2]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[8]~DUPLICATE_q\ <= NOT \inst2|pixel_column[8]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\ <= NOT \inst2|pixel_column[9]~DUPLICATE_q\;
\inst|ALT_INV_x_motion~10_combout\ <= NOT \inst|x_motion~10_combout\;
\inst|ALT_INV_y_motion~17_combout\ <= NOT \inst|y_motion~17_combout\;
\inst|ALT_INV_x_motion~8_combout\ <= NOT \inst|x_motion~8_combout\;
\inst|ALT_INV_x_motion~7_combout\ <= NOT \inst|x_motion~7_combout\;
\inst|ALT_INV_LessThan15~6_combout\ <= NOT \inst|LessThan15~6_combout\;
\inst|ALT_INV_Equal6~1_combout\ <= NOT \inst|Equal6~1_combout\;
\inst|ALT_INV_x_motion~6_combout\ <= NOT \inst|x_motion~6_combout\;
\inst|ALT_INV_Equal4~2_combout\ <= NOT \inst|Equal4~2_combout\;
\inst|ALT_INV_Equal4~1_combout\ <= NOT \inst|Equal4~1_combout\;
\inst|ALT_INV_x_motion~5_combout\ <= NOT \inst|x_motion~5_combout\;
\inst|ALT_INV_x_motion~4_combout\ <= NOT \inst|x_motion~4_combout\;
\inst|ALT_INV_Equal4~0_combout\ <= NOT \inst|Equal4~0_combout\;
\inst|ALT_INV_x_motion~3_combout\ <= NOT \inst|x_motion~3_combout\;
\inst|ALT_INV_x_motion~2_combout\ <= NOT \inst|x_motion~2_combout\;
\inst|ALT_INV_x_motion~1_combout\ <= NOT \inst|x_motion~1_combout\;
\inst|ALT_INV_x_motion~0_combout\ <= NOT \inst|x_motion~0_combout\;
\inst|ALT_INV_LessThan14~3_combout\ <= NOT \inst|LessThan14~3_combout\;
\inst|ALT_INV_LessThan14~2_combout\ <= NOT \inst|LessThan14~2_combout\;
\inst|ALT_INV_LessThan14~1_combout\ <= NOT \inst|LessThan14~1_combout\;
\inst|ALT_INV_LessThan14~0_combout\ <= NOT \inst|LessThan14~0_combout\;
\inst|ALT_INV_LessThan15~5_combout\ <= NOT \inst|LessThan15~5_combout\;
\inst|ALT_INV_LessThan15~4_combout\ <= NOT \inst|LessThan15~4_combout\;
\inst|ALT_INV_LessThan15~3_combout\ <= NOT \inst|LessThan15~3_combout\;
\inst|ALT_INV_y_motion~16_combout\ <= NOT \inst|y_motion~16_combout\;
\inst|ALT_INV_y_motion~15_combout\ <= NOT \inst|y_motion~15_combout\;
\inst|ALT_INV_y_motion~14_combout\ <= NOT \inst|y_motion~14_combout\;
\inst|ALT_INV_y_motion~13_combout\ <= NOT \inst|y_motion~13_combout\;
\inst|ALT_INV_y_motion~12_combout\ <= NOT \inst|y_motion~12_combout\;
\inst|ALT_INV_y_motion~10_combout\ <= NOT \inst|y_motion~10_combout\;
\inst|ALT_INV_y_motion~9_combout\ <= NOT \inst|y_motion~9_combout\;
\inst|ALT_INV_y_motion~8_combout\ <= NOT \inst|y_motion~8_combout\;
\inst|ALT_INV_y_motion~7_combout\ <= NOT \inst|y_motion~7_combout\;
\inst|ALT_INV_y_motion~6_combout\ <= NOT \inst|y_motion~6_combout\;
\inst|ALT_INV_y_motion~5_combout\ <= NOT \inst|y_motion~5_combout\;
\inst|ALT_INV_y_motion~4_combout\ <= NOT \inst|y_motion~4_combout\;
\inst|ALT_INV_Equal1~0_combout\ <= NOT \inst|Equal1~0_combout\;
\inst|ALT_INV_y_motion~3_combout\ <= NOT \inst|y_motion~3_combout\;
\inst|ALT_INV_y_motion~2_combout\ <= NOT \inst|y_motion~2_combout\;
\inst|ALT_INV_y_motion~1_combout\ <= NOT \inst|y_motion~1_combout\;
\inst|ALT_INV_Equal6~0_combout\ <= NOT \inst|Equal6~0_combout\;
\inst|ALT_INV_LessThan15~2_combout\ <= NOT \inst|LessThan15~2_combout\;
\inst|ALT_INV_LessThan15~1_combout\ <= NOT \inst|LessThan15~1_combout\;
\inst|ALT_INV_LessThan15~0_combout\ <= NOT \inst|LessThan15~0_combout\;
\inst|ALT_INV_Equal2~1_combout\ <= NOT \inst|Equal2~1_combout\;
\inst|ALT_INV_Equal2~0_combout\ <= NOT \inst|Equal2~0_combout\;
\inst|ALT_INV_y_motion~0_combout\ <= NOT \inst|y_motion~0_combout\;
\inst2|ALT_INV_process_2~2_combout\ <= NOT \inst2|process_2~2_combout\;
\inst2|ALT_INV_hsync~2_combout\ <= NOT \inst2|hsync~2_combout\;
\inst2|ALT_INV_Equal0~3_combout\ <= NOT \inst2|Equal0~3_combout\;
\inst|ALT_INV_pad_y_motion\(4) <= NOT \inst|pad_y_motion\(4);
\inst|ALT_INV_ball_x_motion\(3) <= NOT \inst|ball_x_motion\(3);
\inst|ALT_INV_ball_x_motion\(4) <= NOT \inst|ball_x_motion\(4);
\inst|ALT_INV_ball_x_motion\(0) <= NOT \inst|ball_x_motion\(0);
\inst|ALT_INV_ball_y_motion\(0) <= NOT \inst|ball_y_motion\(0);
\inst|ALT_INV_ball_y_motion\(3) <= NOT \inst|ball_y_motion\(3);
\inst|ALT_INV_ball_y_motion\(4) <= NOT \inst|ball_y_motion\(4);
\inst2|ALT_INV_vcount\(5) <= NOT \inst2|vcount\(5);
\inst2|ALT_INV_vcount\(0) <= NOT \inst2|vcount\(0);
\inst2|ALT_INV_vcount\(3) <= NOT \inst2|vcount\(3);
\inst2|ALT_INV_vcount\(2) <= NOT \inst2|vcount\(2);
\inst2|ALT_INV_vcount\(4) <= NOT \inst2|vcount\(4);
\inst2|ALT_INV_vcount\(8) <= NOT \inst2|vcount\(8);
\inst2|ALT_INV_vcount\(7) <= NOT \inst2|vcount\(7);
\inst2|ALT_INV_vcount\(6) <= NOT \inst2|vcount\(6);
\inst2|ALT_INV_vcount\(1) <= NOT \inst2|vcount\(1);
\inst2|ALT_INV_vcount\(9) <= NOT \inst2|vcount\(9);
\inst2|ALT_INV_hcount\(7) <= NOT \inst2|hcount\(7);
\inst2|ALT_INV_hcount\(6) <= NOT \inst2|hcount\(6);
\inst2|ALT_INV_hcount\(5) <= NOT \inst2|hcount\(5);
\inst2|ALT_INV_hcount\(4) <= NOT \inst2|hcount\(4);
\inst2|ALT_INV_hcount\(9) <= NOT \inst2|hcount\(9);
\inst2|ALT_INV_hcount\(8) <= NOT \inst2|hcount\(8);
\inst2|ALT_INV_hcount\(3) <= NOT \inst2|hcount\(3);
\inst2|ALT_INV_hcount\(2) <= NOT \inst2|hcount\(2);
\inst2|ALT_INV_hcount\(1) <= NOT \inst2|hcount\(1);
\inst2|ALT_INV_hcount\(0) <= NOT \inst2|hcount\(0);
\inst2|ALT_INV_hactive~1_combout\ <= NOT \inst2|hactive~1_combout\;
\inst2|ALT_INV_hactive~0_combout\ <= NOT \inst2|hactive~0_combout\;
\inst2|ALT_INV_Equal4~2_combout\ <= NOT \inst2|Equal4~2_combout\;
\inst2|ALT_INV_LessThan2~2_combout\ <= NOT \inst2|LessThan2~2_combout\;
\inst2|ALT_INV_vsync~4_combout\ <= NOT \inst2|vsync~4_combout\;
\inst2|ALT_INV_vsync~3_combout\ <= NOT \inst2|vsync~3_combout\;
\inst2|ALT_INV_LessThan2~1_combout\ <= NOT \inst2|LessThan2~1_combout\;
\inst2|ALT_INV_process_2~0_combout\ <= NOT \inst2|process_2~0_combout\;
\inst2|ALT_INV_Equal4~1_combout\ <= NOT \inst2|Equal4~1_combout\;
\inst2|ALT_INV_vsync~1_combout\ <= NOT \inst2|vsync~1_combout\;
\inst2|ALT_INV_vsync~0_combout\ <= NOT \inst2|vsync~0_combout\;
\inst2|ALT_INV_Equal4~0_combout\ <= NOT \inst2|Equal4~0_combout\;
\inst2|ALT_INV_LessThan2~0_combout\ <= NOT \inst2|LessThan2~0_combout\;
\inst2|ALT_INV_Equal0~2_combout\ <= NOT \inst2|Equal0~2_combout\;
\inst2|ALT_INV_hsync~0_combout\ <= NOT \inst2|hsync~0_combout\;
\inst2|ALT_INV_process_1~0_combout\ <= NOT \inst2|process_1~0_combout\;
\inst2|ALT_INV_Equal0~1_combout\ <= NOT \inst2|Equal0~1_combout\;
\inst2|ALT_INV_Equal0~0_combout\ <= NOT \inst2|Equal0~0_combout\;
\inst2|ALT_INV_hactive~q\ <= NOT \inst2|hactive~q\;
\inst2|ALT_INV_vactive~q\ <= NOT \inst2|vactive~q\;
\inst|ALT_INV_pad_on~9_combout\ <= NOT \inst|pad_on~9_combout\;
\inst|ALT_INV_pad_on~8_combout\ <= NOT \inst|pad_on~8_combout\;
\inst|ALT_INV_LessThan10~7_combout\ <= NOT \inst|LessThan10~7_combout\;
\inst|ALT_INV_pady\(1) <= NOT \inst|pady\(1);
\inst|ALT_INV_LessThan10~6_combout\ <= NOT \inst|LessThan10~6_combout\;
\inst|ALT_INV_pady\(2) <= NOT \inst|pady\(2);
\inst|ALT_INV_LessThan10~5_combout\ <= NOT \inst|LessThan10~5_combout\;
\inst|ALT_INV_LessThan10~4_combout\ <= NOT \inst|LessThan10~4_combout\;
\inst|ALT_INV_pad_on~7_combout\ <= NOT \inst|pad_on~7_combout\;
\inst|ALT_INV_pad_on~6_combout\ <= NOT \inst|pad_on~6_combout\;
\inst|ALT_INV_pady\(9) <= NOT \inst|pady\(9);
\inst|ALT_INV_LessThan10~3_combout\ <= NOT \inst|LessThan10~3_combout\;
\inst|ALT_INV_LessThan10~2_combout\ <= NOT \inst|LessThan10~2_combout\;
\inst|ALT_INV_pad_on~5_combout\ <= NOT \inst|pad_on~5_combout\;
\inst|ALT_INV_pad_on~4_combout\ <= NOT \inst|pad_on~4_combout\;
\inst|ALT_INV_pady\(3) <= NOT \inst|pady\(3);
\inst|ALT_INV_LessThan10~1_combout\ <= NOT \inst|LessThan10~1_combout\;
\inst|ALT_INV_pady\(5) <= NOT \inst|pady\(5);
\inst|ALT_INV_pady\(4) <= NOT \inst|pady\(4);
\inst|ALT_INV_LessThan10~0_combout\ <= NOT \inst|LessThan10~0_combout\;
\inst|ALT_INV_pady\(6) <= NOT \inst|pady\(6);
\inst|ALT_INV_pady\(7) <= NOT \inst|pady\(7);
\inst|ALT_INV_pady\(8) <= NOT \inst|pady\(8);
\inst|ALT_INV_pad_on~3_combout\ <= NOT \inst|pad_on~3_combout\;
\inst|ALT_INV_pad_on~2_combout\ <= NOT \inst|pad_on~2_combout\;
\inst|ALT_INV_pad_on~1_combout\ <= NOT \inst|pad_on~1_combout\;
\inst|ALT_INV_LessThan11~5_combout\ <= NOT \inst|LessThan11~5_combout\;
\inst|ALT_INV_LessThan11~4_combout\ <= NOT \inst|LessThan11~4_combout\;
\inst|ALT_INV_LessThan11~3_combout\ <= NOT \inst|LessThan11~3_combout\;
\inst|ALT_INV_LessThan11~2_combout\ <= NOT \inst|LessThan11~2_combout\;
\inst|ALT_INV_LessThan11~1_combout\ <= NOT \inst|LessThan11~1_combout\;
\inst|ALT_INV_LessThan11~0_combout\ <= NOT \inst|LessThan11~0_combout\;
\inst|ALT_INV_ball_on~2_combout\ <= NOT \inst|ball_on~2_combout\;
\inst|ALT_INV_ball_on~1_combout\ <= NOT \inst|ball_on~1_combout\;
\inst|ALT_INV_LessThan1~8_combout\ <= NOT \inst|LessThan1~8_combout\;
\inst|ALT_INV_ball_on~0_combout\ <= NOT \inst|ball_on~0_combout\;
\inst|ALT_INV_LessThan3~8_combout\ <= NOT \inst|LessThan3~8_combout\;
\inst|ALT_INV_LessThan0~5_combout\ <= NOT \inst|LessThan0~5_combout\;
\inst|ALT_INV_LessThan0~4_combout\ <= NOT \inst|LessThan0~4_combout\;
\inst|ALT_INV_ball_x_pos\(8) <= NOT \inst|ball_x_pos\(8);
\inst|ALT_INV_ball_x_pos\(9) <= NOT \inst|ball_x_pos\(9);
\inst|ALT_INV_LessThan0~3_combout\ <= NOT \inst|LessThan0~3_combout\;
\inst|ALT_INV_LessThan0~2_combout\ <= NOT \inst|LessThan0~2_combout\;
\inst|ALT_INV_LessThan0~1_combout\ <= NOT \inst|LessThan0~1_combout\;
\inst|ALT_INV_ball_x_pos\(3) <= NOT \inst|ball_x_pos\(3);
\inst|ALT_INV_ball_x_pos\(2) <= NOT \inst|ball_x_pos\(2);
\inst|ALT_INV_LessThan0~0_combout\ <= NOT \inst|LessThan0~0_combout\;
\inst|ALT_INV_ball_x_pos\(5) <= NOT \inst|ball_x_pos\(5);
\inst|ALT_INV_ball_x_pos\(6) <= NOT \inst|ball_x_pos\(6);
\inst|ALT_INV_ball_x_pos\(7) <= NOT \inst|ball_x_pos\(7);
\inst|ALT_INV_ball_x_pos\(4) <= NOT \inst|ball_x_pos\(4);
\inst|ALT_INV_LessThan1~7_combout\ <= NOT \inst|LessThan1~7_combout\;
\inst|ALT_INV_LessThan1~6_combout\ <= NOT \inst|LessThan1~6_combout\;
\inst|ALT_INV_LessThan1~5_combout\ <= NOT \inst|LessThan1~5_combout\;
\inst|ALT_INV_LessThan1~4_combout\ <= NOT \inst|LessThan1~4_combout\;
\inst|ALT_INV_LessThan1~3_combout\ <= NOT \inst|LessThan1~3_combout\;
\inst|ALT_INV_LessThan1~2_combout\ <= NOT \inst|LessThan1~2_combout\;
\inst|ALT_INV_ball_x_pos\(1) <= NOT \inst|ball_x_pos\(1);
\inst|ALT_INV_ball_x_pos\(0) <= NOT \inst|ball_x_pos\(0);
\inst|ALT_INV_LessThan1~1_combout\ <= NOT \inst|LessThan1~1_combout\;
\inst|ALT_INV_LessThan1~0_combout\ <= NOT \inst|LessThan1~0_combout\;
\inst|ALT_INV_LessThan3~7_combout\ <= NOT \inst|LessThan3~7_combout\;
\inst|ALT_INV_LessThan3~6_combout\ <= NOT \inst|LessThan3~6_combout\;
\inst|ALT_INV_LessThan3~5_combout\ <= NOT \inst|LessThan3~5_combout\;
\inst|ALT_INV_LessThan3~4_combout\ <= NOT \inst|LessThan3~4_combout\;
\inst|ALT_INV_LessThan3~3_combout\ <= NOT \inst|LessThan3~3_combout\;
\inst|ALT_INV_LessThan3~2_combout\ <= NOT \inst|LessThan3~2_combout\;
\inst|ALT_INV_LessThan3~1_combout\ <= NOT \inst|LessThan3~1_combout\;
\inst|ALT_INV_LessThan3~0_combout\ <= NOT \inst|LessThan3~0_combout\;
\inst|ALT_INV_LessThan2~5_combout\ <= NOT \inst|LessThan2~5_combout\;
\inst|ALT_INV_LessThan2~4_combout\ <= NOT \inst|LessThan2~4_combout\;
\inst|ALT_INV_LessThan2~3_combout\ <= NOT \inst|LessThan2~3_combout\;
\inst|ALT_INV_LessThan2~2_combout\ <= NOT \inst|LessThan2~2_combout\;
\inst|ALT_INV_ball_y_pos\(0) <= NOT \inst|ball_y_pos\(0);
\inst|ALT_INV_ball_y_pos\(1) <= NOT \inst|ball_y_pos\(1);
\inst|ALT_INV_ball_y_pos\(2) <= NOT \inst|ball_y_pos\(2);
\inst|ALT_INV_ball_y_pos\(3) <= NOT \inst|ball_y_pos\(3);
\inst|ALT_INV_LessThan2~1_combout\ <= NOT \inst|LessThan2~1_combout\;
\inst|ALT_INV_ball_y_pos\(5) <= NOT \inst|ball_y_pos\(5);
\inst|ALT_INV_ball_y_pos\(6) <= NOT \inst|ball_y_pos\(6);
\inst|ALT_INV_ball_y_pos\(7) <= NOT \inst|ball_y_pos\(7);
\inst|ALT_INV_ball_y_pos\(4) <= NOT \inst|ball_y_pos\(4);
\inst|ALT_INV_LessThan2~0_combout\ <= NOT \inst|LessThan2~0_combout\;
\inst|ALT_INV_ball_y_pos\(8) <= NOT \inst|ball_y_pos\(8);
\inst|ALT_INV_wall_on~2_combout\ <= NOT \inst|wall_on~2_combout\;
\inst|ALT_INV_LessThan6~1_combout\ <= NOT \inst|LessThan6~1_combout\;
\inst|ALT_INV_LessThan4~0_combout\ <= NOT \inst|LessThan4~0_combout\;
\inst|ALT_INV_pad_on~0_combout\ <= NOT \inst|pad_on~0_combout\;
\inst|ALT_INV_LessThan7~1_combout\ <= NOT \inst|LessThan7~1_combout\;
\inst|ALT_INV_LessThan7~0_combout\ <= NOT \inst|LessThan7~0_combout\;
\inst|ALT_INV_wall_on~1_combout\ <= NOT \inst|wall_on~1_combout\;
\inst|ALT_INV_wall_on~0_combout\ <= NOT \inst|wall_on~0_combout\;
\inst|ALT_INV_LessThan6~0_combout\ <= NOT \inst|LessThan6~0_combout\;
\inst|ALT_INV_Mux1~0_combout\ <= NOT \inst|Mux1~0_combout\;
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;
\inst2|ALT_INV_vsync~q\ <= NOT \inst2|vsync~q\;
\inst2|ALT_INV_hsync~q\ <= NOT \inst2|hsync~q\;
\inst2|ALT_INV_pixel_clk~q\ <= NOT \inst2|pixel_clk~q\;
\inst|ALT_INV_Add7~29_sumout\ <= NOT \inst|Add7~29_sumout\;
\inst|ALT_INV_Add7~21_sumout\ <= NOT \inst|Add7~21_sumout\;
\inst|ALT_INV_Add6~21_sumout\ <= NOT \inst|Add6~21_sumout\;
\inst|ALT_INV_Add6~9_sumout\ <= NOT \inst|Add6~9_sumout\;
\inst|ALT_INV_Add6~5_sumout\ <= NOT \inst|Add6~5_sumout\;
\inst|ALT_INV_Add5~29_sumout\ <= NOT \inst|Add5~29_sumout\;
\inst|ALT_INV_Add5~17_sumout\ <= NOT \inst|Add5~17_sumout\;
\inst|ALT_INV_Add5~5_sumout\ <= NOT \inst|Add5~5_sumout\;
\inst2|ALT_INV_Add1~37_sumout\ <= NOT \inst2|Add1~37_sumout\;
\inst2|ALT_INV_Add3~21_sumout\ <= NOT \inst2|Add3~21_sumout\;
\inst2|ALT_INV_Add1~33_sumout\ <= NOT \inst2|Add1~33_sumout\;
\inst2|ALT_INV_Add1~25_sumout\ <= NOT \inst2|Add1~25_sumout\;
\inst2|ALT_INV_Add2~37_sumout\ <= NOT \inst2|Add2~37_sumout\;
\inst2|ALT_INV_Add2~33_sumout\ <= NOT \inst2|Add2~33_sumout\;
\inst2|ALT_INV_Add2~29_sumout\ <= NOT \inst2|Add2~29_sumout\;
\inst2|ALT_INV_Add2~25_sumout\ <= NOT \inst2|Add2~25_sumout\;
\inst2|ALT_INV_Add2~21_sumout\ <= NOT \inst2|Add2~21_sumout\;
\inst2|ALT_INV_Add2~17_sumout\ <= NOT \inst2|Add2~17_sumout\;
\inst2|ALT_INV_Add2~13_sumout\ <= NOT \inst2|Add2~13_sumout\;
\inst2|ALT_INV_Add2~9_sumout\ <= NOT \inst2|Add2~9_sumout\;
\inst2|ALT_INV_Add2~5_sumout\ <= NOT \inst2|Add2~5_sumout\;
\inst2|ALT_INV_Add2~1_sumout\ <= NOT \inst2|Add2~1_sumout\;
\inst2|ALT_INV_Add0~37_sumout\ <= NOT \inst2|Add0~37_sumout\;
\inst2|ALT_INV_Add0~33_sumout\ <= NOT \inst2|Add0~33_sumout\;
\inst2|ALT_INV_Add0~29_sumout\ <= NOT \inst2|Add0~29_sumout\;
\inst2|ALT_INV_Add0~25_sumout\ <= NOT \inst2|Add0~25_sumout\;
\inst2|ALT_INV_Add0~21_sumout\ <= NOT \inst2|Add0~21_sumout\;
\inst2|ALT_INV_Add0~17_sumout\ <= NOT \inst2|Add0~17_sumout\;
\inst2|ALT_INV_Add0~13_sumout\ <= NOT \inst2|Add0~13_sumout\;
\inst2|ALT_INV_Add0~9_sumout\ <= NOT \inst2|Add0~9_sumout\;
\inst2|ALT_INV_Add0~5_sumout\ <= NOT \inst2|Add0~5_sumout\;
\inst2|ALT_INV_Add0~1_sumout\ <= NOT \inst2|Add0~1_sumout\;
\inst|ALT_INV_Add4~37_sumout\ <= NOT \inst|Add4~37_sumout\;
\inst|ALT_INV_Add4~33_sumout\ <= NOT \inst|Add4~33_sumout\;
\inst|ALT_INV_Add4~29_sumout\ <= NOT \inst|Add4~29_sumout\;
\inst|ALT_INV_Add4~25_sumout\ <= NOT \inst|Add4~25_sumout\;
\inst|ALT_INV_Add4~21_sumout\ <= NOT \inst|Add4~21_sumout\;
\inst|ALT_INV_Add4~17_sumout\ <= NOT \inst|Add4~17_sumout\;
\inst|ALT_INV_Add4~13_sumout\ <= NOT \inst|Add4~13_sumout\;
\inst|ALT_INV_Add4~9_sumout\ <= NOT \inst|Add4~9_sumout\;
\inst|ALT_INV_Add4~5_sumout\ <= NOT \inst|Add4~5_sumout\;
\inst|ALT_INV_Add4~1_sumout\ <= NOT \inst|Add4~1_sumout\;
\inst|ALT_INV_Add0~33_sumout\ <= NOT \inst|Add0~33_sumout\;
\inst|ALT_INV_Add0~29_sumout\ <= NOT \inst|Add0~29_sumout\;
\inst|ALT_INV_Add0~25_sumout\ <= NOT \inst|Add0~25_sumout\;
\inst|ALT_INV_Add0~21_sumout\ <= NOT \inst|Add0~21_sumout\;
\inst|ALT_INV_Add0~17_sumout\ <= NOT \inst|Add0~17_sumout\;
\inst|ALT_INV_Add0~13_sumout\ <= NOT \inst|Add0~13_sumout\;
\inst|ALT_INV_Add0~9_sumout\ <= NOT \inst|Add0~9_sumout\;
\inst|ALT_INV_Add0~5_sumout\ <= NOT \inst|Add0~5_sumout\;
\inst|ALT_INV_Add0~1_sumout\ <= NOT \inst|Add0~1_sumout\;
\inst|ALT_INV_Add1~29_sumout\ <= NOT \inst|Add1~29_sumout\;
\inst|ALT_INV_Add1~25_sumout\ <= NOT \inst|Add1~25_sumout\;
\inst|ALT_INV_Add1~21_sumout\ <= NOT \inst|Add1~21_sumout\;
\inst|ALT_INV_Add1~17_sumout\ <= NOT \inst|Add1~17_sumout\;
\inst|ALT_INV_Add1~13_sumout\ <= NOT \inst|Add1~13_sumout\;
\inst|ALT_INV_Add1~9_sumout\ <= NOT \inst|Add1~9_sumout\;
\inst|ALT_INV_Add1~5_sumout\ <= NOT \inst|Add1~5_sumout\;
\inst|ALT_INV_Add1~1_sumout\ <= NOT \inst|Add1~1_sumout\;
\inst2|ALT_INV_pixel_column\(0) <= NOT \inst2|pixel_column\(0);
\inst2|ALT_INV_pixel_row\(6) <= NOT \inst2|pixel_row\(6);
\inst2|ALT_INV_pixel_row\(7) <= NOT \inst2|pixel_row\(7);
\inst2|ALT_INV_pixel_row\(8) <= NOT \inst2|pixel_row\(8);
\inst2|ALT_INV_pixel_row\(4) <= NOT \inst2|pixel_row\(4);
\inst2|ALT_INV_pixel_row\(5) <= NOT \inst2|pixel_row\(5);
\inst2|ALT_INV_pixel_column\(6) <= NOT \inst2|pixel_column\(6);
\inst2|ALT_INV_pixel_column\(5) <= NOT \inst2|pixel_column\(5);
\inst2|ALT_INV_pixel_column\(1) <= NOT \inst2|pixel_column\(1);
\inst2|ALT_INV_pixel_column\(2) <= NOT \inst2|pixel_column\(2);
\inst2|ALT_INV_pixel_column\(3) <= NOT \inst2|pixel_column\(3);
\inst2|ALT_INV_pixel_column\(4) <= NOT \inst2|pixel_column\(4);
\inst2|ALT_INV_pixel_column\(8) <= NOT \inst2|pixel_column\(8);
\inst2|ALT_INV_pixel_column\(7) <= NOT \inst2|pixel_column\(7);
\inst2|ALT_INV_pixel_column\(9) <= NOT \inst2|pixel_column\(9);
\inst2|ALT_INV_pixel_row\(0) <= NOT \inst2|pixel_row\(0);
\inst2|ALT_INV_pixel_row\(1) <= NOT \inst2|pixel_row\(1);
\inst2|ALT_INV_pixel_row\(2) <= NOT \inst2|pixel_row\(2);
\inst2|ALT_INV_pixel_row\(3) <= NOT \inst2|pixel_row\(3);
\inst|ALT_INV_Add3~17_sumout\ <= NOT \inst|Add3~17_sumout\;
\inst|ALT_INV_Add3~13_sumout\ <= NOT \inst|Add3~13_sumout\;
\inst|ALT_INV_Add3~9_sumout\ <= NOT \inst|Add3~9_sumout\;
\inst|ALT_INV_Add3~5_sumout\ <= NOT \inst|Add3~5_sumout\;
\inst|ALT_INV_Add3~1_sumout\ <= NOT \inst|Add3~1_sumout\;
\inst|ALT_INV_Add2~17_sumout\ <= NOT \inst|Add2~17_sumout\;
\inst|ALT_INV_Add2~13_sumout\ <= NOT \inst|Add2~13_sumout\;
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
	i => \inst2|pixel_clk~q\,
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
	i => \inst2|hsync~q\,
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
	i => \inst2|vsync~q\,
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
\b[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_b(7));

-- Location: IOOBUF_X40_Y81_N19
\b[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_b(6));

-- Location: IOOBUF_X36_Y81_N2
\b[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_b(5));

-- Location: IOOBUF_X28_Y81_N2
\b[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_b(4));

-- Location: IOOBUF_X36_Y81_N19
\b[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_b(3));

-- Location: IOOBUF_X20_Y81_N2
\b[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_b(2));

-- Location: IOOBUF_X28_Y81_N19
\b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_b(1));

-- Location: IOOBUF_X40_Y81_N36
\b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_b(0));

-- Location: IOOBUF_X18_Y81_N59
\g[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|g[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_g(7));

-- Location: IOOBUF_X18_Y81_N42
\g[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|g[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_g(6));

-- Location: IOOBUF_X10_Y81_N42
\g[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|g[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_g(5));

-- Location: IOOBUF_X10_Y81_N59
\g[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|g[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_g(4));

-- Location: IOOBUF_X6_Y81_N2
\g[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|g[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_g(3));

-- Location: IOOBUF_X20_Y81_N19
\g[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|g[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_g(2));

-- Location: IOOBUF_X4_Y81_N2
\g[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|g[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_g(1));

-- Location: IOOBUF_X4_Y81_N19
\g[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|g[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_g(0));

-- Location: IOOBUF_X26_Y81_N42
\r[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|r[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(7));

-- Location: IOOBUF_X22_Y81_N2
\r[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|r[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(6));

-- Location: IOOBUF_X22_Y81_N19
\r[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|r[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(5));

-- Location: IOOBUF_X36_Y81_N36
\r[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|r[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(4));

-- Location: IOOBUF_X38_Y81_N19
\r[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|r[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(3));

-- Location: IOOBUF_X26_Y81_N59
\r[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|r[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(2));

-- Location: IOOBUF_X38_Y81_N2
\r[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|r[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(1));

-- Location: IOOBUF_X40_Y81_N53
\r[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|r[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(0));

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

-- Location: LABCELL_X27_Y72_N39
\inst2|pixel_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_clk~0_combout\ = ( !\inst2|pixel_clk~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_pixel_clk~q\,
	combout => \inst2|pixel_clk~0_combout\);

-- Location: FF_X29_Y72_N59
\inst2|pixel_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock50MHz~input_o\,
	asdata => \inst2|pixel_clk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_clk~q\);

-- Location: LABCELL_X29_Y72_N3
\inst2|hcount[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hcount[4]~feeder_combout\ = ( \inst2|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Add0~25_sumout\,
	combout => \inst2|hcount[4]~feeder_combout\);

-- Location: FF_X29_Y72_N5
\inst2|hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	d => \inst2|hcount[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(4));

-- Location: MLABCELL_X28_Y72_N0
\inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_sumout\ = SUM(( \inst2|hcount\(0) ) + ( VCC ) + ( !VCC ))
-- \inst2|Add0~2\ = CARRY(( \inst2|hcount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_hcount\(0),
	cin => GND,
	sumout => \inst2|Add0~1_sumout\,
	cout => \inst2|Add0~2\);

-- Location: FF_X28_Y72_N56
\inst2|hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(0));

-- Location: MLABCELL_X28_Y72_N3
\inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_sumout\ = SUM(( \inst2|hcount\(1) ) + ( GND ) + ( \inst2|Add0~2\ ))
-- \inst2|Add0~6\ = CARRY(( \inst2|hcount\(1) ) + ( GND ) + ( \inst2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_hcount\(1),
	cin => \inst2|Add0~2\,
	sumout => \inst2|Add0~5_sumout\,
	cout => \inst2|Add0~6\);

-- Location: FF_X28_Y72_N47
\inst2|hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(1));

-- Location: MLABCELL_X28_Y72_N6
\inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_sumout\ = SUM(( \inst2|hcount\(2) ) + ( GND ) + ( \inst2|Add0~6\ ))
-- \inst2|Add0~10\ = CARRY(( \inst2|hcount\(2) ) + ( GND ) + ( \inst2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_hcount\(2),
	cin => \inst2|Add0~6\,
	sumout => \inst2|Add0~9_sumout\,
	cout => \inst2|Add0~10\);

-- Location: FF_X28_Y72_N35
\inst2|hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(2));

-- Location: MLABCELL_X28_Y72_N9
\inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~13_sumout\ = SUM(( \inst2|hcount\(3) ) + ( GND ) + ( \inst2|Add0~10\ ))
-- \inst2|Add0~14\ = CARRY(( \inst2|hcount\(3) ) + ( GND ) + ( \inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_hcount\(3),
	cin => \inst2|Add0~10\,
	sumout => \inst2|Add0~13_sumout\,
	cout => \inst2|Add0~14\);

-- Location: FF_X28_Y72_N44
\inst2|hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(3));

-- Location: MLABCELL_X28_Y72_N12
\inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~25_sumout\ = SUM(( \inst2|hcount\(4) ) + ( GND ) + ( \inst2|Add0~14\ ))
-- \inst2|Add0~26\ = CARRY(( \inst2|hcount\(4) ) + ( GND ) + ( \inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_hcount\(4),
	cin => \inst2|Add0~14\,
	sumout => \inst2|Add0~25_sumout\,
	cout => \inst2|Add0~26\);

-- Location: FF_X29_Y72_N23
\inst2|hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add0~37_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(7));

-- Location: MLABCELL_X28_Y72_N15
\inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~29_sumout\ = SUM(( \inst2|hcount\(5) ) + ( GND ) + ( \inst2|Add0~26\ ))
-- \inst2|Add0~30\ = CARRY(( \inst2|hcount\(5) ) + ( GND ) + ( \inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_hcount\(5),
	cin => \inst2|Add0~26\,
	sumout => \inst2|Add0~29_sumout\,
	cout => \inst2|Add0~30\);

-- Location: MLABCELL_X28_Y72_N18
\inst2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~33_sumout\ = SUM(( \inst2|hcount\(6) ) + ( GND ) + ( \inst2|Add0~30\ ))
-- \inst2|Add0~34\ = CARRY(( \inst2|hcount\(6) ) + ( GND ) + ( \inst2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_hcount\(6),
	cin => \inst2|Add0~30\,
	sumout => \inst2|Add0~33_sumout\,
	cout => \inst2|Add0~34\);

-- Location: FF_X28_Y72_N52
\inst2|hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add0~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(6));

-- Location: MLABCELL_X28_Y72_N21
\inst2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~37_sumout\ = SUM(( \inst2|hcount\(7) ) + ( GND ) + ( \inst2|Add0~34\ ))
-- \inst2|Add0~38\ = CARRY(( \inst2|hcount\(7) ) + ( GND ) + ( \inst2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_hcount\(7),
	cin => \inst2|Add0~34\,
	sumout => \inst2|Add0~37_sumout\,
	cout => \inst2|Add0~38\);

-- Location: MLABCELL_X28_Y72_N57
\inst2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = ( \inst2|Add0~29_sumout\ & ( !\inst2|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add0~25_sumout\,
	dataf => \inst2|ALT_INV_Add0~29_sumout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LABCELL_X27_Y72_N21
\inst2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = ( !\inst2|Add0~13_sumout\ & ( (!\inst2|Add0~1_sumout\ & (!\inst2|Add0~5_sumout\ & !\inst2|Add0~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~1_sumout\,
	datac => \inst2|ALT_INV_Add0~5_sumout\,
	datad => \inst2|ALT_INV_Add0~9_sumout\,
	dataf => \inst2|ALT_INV_Add0~13_sumout\,
	combout => \inst2|Equal0~3_combout\);

-- Location: LABCELL_X27_Y72_N45
\inst2|hcount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hcount~1_combout\ = ( \inst2|Add0~21_sumout\ & ( \inst2|Add0~17_sumout\ & ( (((!\inst2|Equal0~3_combout\) # (!\inst2|Equal0~1_combout\)) # (\inst2|Add0~33_sumout\)) # (\inst2|Add0~37_sumout\) ) ) ) # ( \inst2|Add0~21_sumout\ & ( 
-- !\inst2|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~37_sumout\,
	datab => \inst2|ALT_INV_Add0~33_sumout\,
	datac => \inst2|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_Equal0~1_combout\,
	datae => \inst2|ALT_INV_Add0~21_sumout\,
	dataf => \inst2|ALT_INV_Add0~17_sumout\,
	combout => \inst2|hcount~1_combout\);

-- Location: FF_X27_Y72_N46
\inst2|hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	d => \inst2|hcount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(9));

-- Location: MLABCELL_X28_Y72_N24
\inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_sumout\ = SUM(( \inst2|hcount\(8) ) + ( GND ) + ( \inst2|Add0~38\ ))
-- \inst2|Add0~18\ = CARRY(( \inst2|hcount\(8) ) + ( GND ) + ( \inst2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_hcount\(8),
	cin => \inst2|Add0~38\,
	sumout => \inst2|Add0~17_sumout\,
	cout => \inst2|Add0~18\);

-- Location: MLABCELL_X28_Y72_N27
\inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_sumout\ = SUM(( \inst2|hcount\(9) ) + ( GND ) + ( \inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_hcount\(9),
	cin => \inst2|Add0~18\,
	sumout => \inst2|Add0~21_sumout\);

-- Location: LABCELL_X27_Y72_N42
\inst2|hcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hcount~0_combout\ = ( \inst2|Add0~17_sumout\ & ( \inst2|Add0~21_sumout\ & ( (((!\inst2|Equal0~1_combout\) # (!\inst2|Equal0~3_combout\)) # (\inst2|Add0~33_sumout\)) # (\inst2|Add0~37_sumout\) ) ) ) # ( \inst2|Add0~17_sumout\ & ( 
-- !\inst2|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~37_sumout\,
	datab => \inst2|ALT_INV_Add0~33_sumout\,
	datac => \inst2|ALT_INV_Equal0~1_combout\,
	datad => \inst2|ALT_INV_Equal0~3_combout\,
	datae => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_Add0~21_sumout\,
	combout => \inst2|hcount~0_combout\);

-- Location: FF_X27_Y72_N43
\inst2|hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	d => \inst2|hcount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(8));

-- Location: LABCELL_X27_Y72_N33
\inst2|hsync~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hsync~2_combout\ = ( !\inst2|Add0~33_sumout\ & ( (!\inst2|Add0~1_sumout\ & (!\inst2|Add0~13_sumout\ & (!\inst2|Add0~5_sumout\ & !\inst2|Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~1_sumout\,
	datab => \inst2|ALT_INV_Add0~13_sumout\,
	datac => \inst2|ALT_INV_Add0~5_sumout\,
	datad => \inst2|ALT_INV_Add0~9_sumout\,
	dataf => \inst2|ALT_INV_Add0~33_sumout\,
	combout => \inst2|hsync~2_combout\);

-- Location: MLABCELL_X28_Y72_N30
\inst2|hcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hcount~2_combout\ = ( \inst2|Add0~21_sumout\ & ( \inst2|Add0~25_sumout\ & ( \inst2|Add0~29_sumout\ ) ) ) # ( !\inst2|Add0~21_sumout\ & ( \inst2|Add0~25_sumout\ & ( \inst2|Add0~29_sumout\ ) ) ) # ( \inst2|Add0~21_sumout\ & ( !\inst2|Add0~25_sumout\ 
-- & ( (\inst2|Add0~29_sumout\ & (((!\inst2|Add0~17_sumout\) # (!\inst2|hsync~2_combout\)) # (\inst2|Add0~37_sumout\))) ) ) ) # ( !\inst2|Add0~21_sumout\ & ( !\inst2|Add0~25_sumout\ & ( \inst2|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011000100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~37_sumout\,
	datab => \inst2|ALT_INV_Add0~29_sumout\,
	datac => \inst2|ALT_INV_Add0~17_sumout\,
	datad => \inst2|ALT_INV_hsync~2_combout\,
	datae => \inst2|ALT_INV_Add0~21_sumout\,
	dataf => \inst2|ALT_INV_Add0~25_sumout\,
	combout => \inst2|hcount~2_combout\);

-- Location: FF_X28_Y72_N32
\inst2|hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	d => \inst2|hcount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hcount\(5));

-- Location: MLABCELL_X28_Y72_N54
\inst2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = ( !\inst2|Add0~37_sumout\ & ( (!\inst2|Add0~25_sumout\ & (\inst2|Add0~29_sumout\ & \inst2|Add0~33_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~25_sumout\,
	datab => \inst2|ALT_INV_Add0~29_sumout\,
	datac => \inst2|ALT_INV_Add0~33_sumout\,
	dataf => \inst2|ALT_INV_Add0~37_sumout\,
	combout => \inst2|Equal0~2_combout\);

-- Location: MLABCELL_X28_Y72_N39
\inst2|hsync~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hsync~0_combout\ = ( !\inst2|Add0~37_sumout\ & ( !\inst2|Add0~33_sumout\ & ( (!\inst2|Add0~5_sumout\ & (!\inst2|Add0~13_sumout\ & (!\inst2|Add0~9_sumout\ & !\inst2|Add0~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~5_sumout\,
	datab => \inst2|ALT_INV_Add0~13_sumout\,
	datac => \inst2|ALT_INV_Add0~9_sumout\,
	datad => \inst2|ALT_INV_Add0~1_sumout\,
	datae => \inst2|ALT_INV_Add0~37_sumout\,
	dataf => \inst2|ALT_INV_Add0~33_sumout\,
	combout => \inst2|hsync~0_combout\);

-- Location: LABCELL_X29_Y72_N45
\inst2|process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_1~0_combout\ = ( \inst2|Add0~21_sumout\ & ( \inst2|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_Add0~21_sumout\,
	combout => \inst2|process_1~0_combout\);

-- Location: MLABCELL_X28_Y72_N36
\inst2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = ( !\inst2|Add0~17_sumout\ & ( !\inst2|Add0~21_sumout\ & ( (!\inst2|Add0~5_sumout\ & (!\inst2|Add0~13_sumout\ & (!\inst2|Add0~1_sumout\ & !\inst2|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~5_sumout\,
	datab => \inst2|ALT_INV_Add0~13_sumout\,
	datac => \inst2|ALT_INV_Add0~1_sumout\,
	datad => \inst2|ALT_INV_Add0~9_sumout\,
	datae => \inst2|ALT_INV_Add0~17_sumout\,
	dataf => \inst2|ALT_INV_Add0~21_sumout\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LABCELL_X29_Y72_N30
\inst2|hsync~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hsync~1_combout\ = ( \inst2|process_1~0_combout\ & ( \inst2|Equal0~0_combout\ & ( ((\inst2|hsync~q\ & ((!\inst2|hsync~0_combout\) # (!\inst2|Equal0~1_combout\)))) # (\inst2|Equal0~2_combout\) ) ) ) # ( !\inst2|process_1~0_combout\ & ( 
-- \inst2|Equal0~0_combout\ & ( (\inst2|hsync~q\) # (\inst2|Equal0~2_combout\) ) ) ) # ( \inst2|process_1~0_combout\ & ( !\inst2|Equal0~0_combout\ & ( (\inst2|hsync~q\ & ((!\inst2|hsync~0_combout\) # (!\inst2|Equal0~1_combout\))) ) ) ) # ( 
-- !\inst2|process_1~0_combout\ & ( !\inst2|Equal0~0_combout\ & ( \inst2|hsync~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011000001110111011101110111011101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Equal0~2_combout\,
	datab => \inst2|ALT_INV_hsync~q\,
	datac => \inst2|ALT_INV_hsync~0_combout\,
	datad => \inst2|ALT_INV_Equal0~1_combout\,
	datae => \inst2|ALT_INV_process_1~0_combout\,
	dataf => \inst2|ALT_INV_Equal0~0_combout\,
	combout => \inst2|hsync~1_combout\);

-- Location: FF_X29_Y72_N17
\inst2|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|hsync~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hsync~q\);

-- Location: FF_X29_Y74_N16
\inst2|vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add2~37_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(5));

-- Location: MLABCELL_X28_Y74_N42
\inst2|vcount[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vcount[8]~feeder_combout\ = ( \inst2|Add2~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Add2~17_sumout\,
	combout => \inst2|vcount[8]~feeder_combout\);

-- Location: FF_X28_Y74_N43
\inst2|vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	d => \inst2|vcount[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(8));

-- Location: LABCELL_X29_Y74_N45
\inst2|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~37_sumout\ = SUM(( \inst2|vcount\(5) ) + ( GND ) + ( \inst2|Add2~22\ ))
-- \inst2|Add2~38\ = CARRY(( \inst2|vcount\(5) ) + ( GND ) + ( \inst2|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_vcount\(5),
	cin => \inst2|Add2~22\,
	sumout => \inst2|Add2~37_sumout\,
	cout => \inst2|Add2~38\);

-- Location: LABCELL_X29_Y74_N48
\inst2|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~9_sumout\ = SUM(( \inst2|vcount\(6) ) + ( GND ) + ( \inst2|Add2~38\ ))
-- \inst2|Add2~10\ = CARRY(( \inst2|vcount\(6) ) + ( GND ) + ( \inst2|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_vcount\(6),
	cin => \inst2|Add2~38\,
	sumout => \inst2|Add2~9_sumout\,
	cout => \inst2|Add2~10\);

-- Location: FF_X29_Y74_N5
\inst2|vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add2~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(6));

-- Location: LABCELL_X29_Y74_N51
\inst2|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~13_sumout\ = SUM(( \inst2|vcount\(7) ) + ( GND ) + ( \inst2|Add2~10\ ))
-- \inst2|Add2~14\ = CARRY(( \inst2|vcount\(7) ) + ( GND ) + ( \inst2|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_vcount\(7),
	cin => \inst2|Add2~10\,
	sumout => \inst2|Add2~13_sumout\,
	cout => \inst2|Add2~14\);

-- Location: FF_X29_Y74_N10
\inst2|vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add2~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(7));

-- Location: LABCELL_X29_Y74_N54
\inst2|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~17_sumout\ = SUM(( \inst2|vcount\(8) ) + ( GND ) + ( \inst2|Add2~14\ ))
-- \inst2|Add2~18\ = CARRY(( \inst2|vcount\(8) ) + ( GND ) + ( \inst2|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_vcount\(8),
	cin => \inst2|Add2~14\,
	sumout => \inst2|Add2~17_sumout\,
	cout => \inst2|Add2~18\);

-- Location: MLABCELL_X28_Y74_N48
\inst2|process_2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_2~2_combout\ = ( !\inst2|Add2~9_sumout\ & ( !\inst2|Add2~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst2|ALT_INV_Add2~9_sumout\,
	dataf => \inst2|ALT_INV_Add2~13_sumout\,
	combout => \inst2|process_2~2_combout\);

-- Location: LABCELL_X29_Y74_N30
\inst2|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~33_sumout\ = SUM(( \inst2|vcount\(0) ) + ( VCC ) + ( !VCC ))
-- \inst2|Add2~34\ = CARRY(( \inst2|vcount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_vcount\(0),
	cin => GND,
	sumout => \inst2|Add2~33_sumout\,
	cout => \inst2|Add2~34\);

-- Location: LABCELL_X29_Y74_N33
\inst2|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~5_sumout\ = SUM(( \inst2|vcount\(1) ) + ( GND ) + ( \inst2|Add2~34\ ))
-- \inst2|Add2~6\ = CARRY(( \inst2|vcount\(1) ) + ( GND ) + ( \inst2|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_vcount\(1),
	cin => \inst2|Add2~34\,
	sumout => \inst2|Add2~5_sumout\,
	cout => \inst2|Add2~6\);

-- Location: FF_X29_Y74_N23
\inst2|vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add2~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(1));

-- Location: LABCELL_X29_Y74_N36
\inst2|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~25_sumout\ = SUM(( \inst2|vcount\(2) ) + ( GND ) + ( \inst2|Add2~6\ ))
-- \inst2|Add2~26\ = CARRY(( \inst2|vcount\(2) ) + ( GND ) + ( \inst2|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_vcount\(2),
	cin => \inst2|Add2~6\,
	sumout => \inst2|Add2~25_sumout\,
	cout => \inst2|Add2~26\);

-- Location: LABCELL_X29_Y74_N27
\inst2|vcount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vcount~1_combout\ = ( \inst2|vsync~3_combout\ & ( \inst2|Add2~25_sumout\ & ( ((!\inst2|Add2~1_sumout\) # ((!\inst2|process_2~2_combout\) # (!\inst2|vsync~0_combout\))) # (\inst2|Add2~17_sumout\) ) ) ) # ( !\inst2|vsync~3_combout\ & ( 
-- \inst2|Add2~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~17_sumout\,
	datab => \inst2|ALT_INV_Add2~1_sumout\,
	datac => \inst2|ALT_INV_process_2~2_combout\,
	datad => \inst2|ALT_INV_vsync~0_combout\,
	datae => \inst2|ALT_INV_vsync~3_combout\,
	dataf => \inst2|ALT_INV_Add2~25_sumout\,
	combout => \inst2|vcount~1_combout\);

-- Location: FF_X29_Y74_N29
\inst2|vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	d => \inst2|vcount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(2));

-- Location: LABCELL_X29_Y74_N39
\inst2|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~29_sumout\ = SUM(( \inst2|vcount\(3) ) + ( GND ) + ( \inst2|Add2~26\ ))
-- \inst2|Add2~30\ = CARRY(( \inst2|vcount\(3) ) + ( GND ) + ( \inst2|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_vcount\(3),
	cin => \inst2|Add2~26\,
	sumout => \inst2|Add2~29_sumout\,
	cout => \inst2|Add2~30\);

-- Location: LABCELL_X29_Y74_N6
\inst2|vsync~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vsync~0_combout\ = ( !\inst2|Add2~21_sumout\ & ( (\inst2|Add2~29_sumout\ & (!\inst2|Add2~5_sumout\ & \inst2|Add2~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add2~29_sumout\,
	datac => \inst2|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_Add2~25_sumout\,
	dataf => \inst2|ALT_INV_Add2~21_sumout\,
	combout => \inst2|vsync~0_combout\);

-- Location: LABCELL_X29_Y74_N24
\inst2|vcount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vcount~2_combout\ = ( \inst2|vsync~3_combout\ & ( \inst2|Add2~29_sumout\ & ( ((!\inst2|Add2~1_sumout\) # ((!\inst2|vsync~0_combout\) # (!\inst2|process_2~2_combout\))) # (\inst2|Add2~17_sumout\) ) ) ) # ( !\inst2|vsync~3_combout\ & ( 
-- \inst2|Add2~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~17_sumout\,
	datab => \inst2|ALT_INV_Add2~1_sumout\,
	datac => \inst2|ALT_INV_vsync~0_combout\,
	datad => \inst2|ALT_INV_process_2~2_combout\,
	datae => \inst2|ALT_INV_vsync~3_combout\,
	dataf => \inst2|ALT_INV_Add2~29_sumout\,
	combout => \inst2|vcount~2_combout\);

-- Location: FF_X29_Y74_N26
\inst2|vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	d => \inst2|vcount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(3));

-- Location: LABCELL_X29_Y74_N42
\inst2|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~21_sumout\ = SUM(( \inst2|vcount\(4) ) + ( GND ) + ( \inst2|Add2~30\ ))
-- \inst2|Add2~22\ = CARRY(( \inst2|vcount\(4) ) + ( GND ) + ( \inst2|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_vcount\(4),
	cin => \inst2|Add2~30\,
	sumout => \inst2|Add2~21_sumout\,
	cout => \inst2|Add2~22\);

-- Location: FF_X29_Y74_N8
\inst2|vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add2~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(4));

-- Location: LABCELL_X30_Y74_N18
\inst2|vsync~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vsync~3_combout\ = ( !\inst2|Add2~37_sumout\ & ( \inst2|Add2~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add2~33_sumout\,
	dataf => \inst2|ALT_INV_Add2~37_sumout\,
	combout => \inst2|vsync~3_combout\);

-- Location: LABCELL_X30_Y74_N0
\inst2|vcount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vcount~0_combout\ = ( \inst2|Add2~9_sumout\ & ( \inst2|Add2~17_sumout\ & ( \inst2|Add2~1_sumout\ ) ) ) # ( !\inst2|Add2~9_sumout\ & ( \inst2|Add2~17_sumout\ & ( \inst2|Add2~1_sumout\ ) ) ) # ( \inst2|Add2~9_sumout\ & ( !\inst2|Add2~17_sumout\ & ( 
-- \inst2|Add2~1_sumout\ ) ) ) # ( !\inst2|Add2~9_sumout\ & ( !\inst2|Add2~17_sumout\ & ( (\inst2|Add2~1_sumout\ & ((!\inst2|vsync~3_combout\) # ((!\inst2|vsync~0_combout\) # (\inst2|Add2~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_vsync~3_combout\,
	datab => \inst2|ALT_INV_Add2~13_sumout\,
	datac => \inst2|ALT_INV_vsync~0_combout\,
	datad => \inst2|ALT_INV_Add2~1_sumout\,
	datae => \inst2|ALT_INV_Add2~9_sumout\,
	dataf => \inst2|ALT_INV_Add2~17_sumout\,
	combout => \inst2|vcount~0_combout\);

-- Location: FF_X30_Y74_N2
\inst2|vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	d => \inst2|vcount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(9));

-- Location: LABCELL_X29_Y74_N57
\inst2|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~1_sumout\ = SUM(( \inst2|vcount\(9) ) + ( GND ) + ( \inst2|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_vcount\(9),
	cin => \inst2|Add2~18\,
	sumout => \inst2|Add2~1_sumout\);

-- Location: LABCELL_X29_Y74_N0
\inst2|vcount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vcount~3_combout\ = ( \inst2|process_2~2_combout\ & ( \inst2|Add2~17_sumout\ & ( \inst2|Add2~33_sumout\ ) ) ) # ( !\inst2|process_2~2_combout\ & ( \inst2|Add2~17_sumout\ & ( \inst2|Add2~33_sumout\ ) ) ) # ( \inst2|process_2~2_combout\ & ( 
-- !\inst2|Add2~17_sumout\ & ( (\inst2|Add2~33_sumout\ & ((!\inst2|Add2~1_sumout\) # ((!\inst2|vsync~0_combout\) # (\inst2|Add2~37_sumout\)))) ) ) ) # ( !\inst2|process_2~2_combout\ & ( !\inst2|Add2~17_sumout\ & ( \inst2|Add2~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100100011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~1_sumout\,
	datab => \inst2|ALT_INV_Add2~33_sumout\,
	datac => \inst2|ALT_INV_vsync~0_combout\,
	datad => \inst2|ALT_INV_Add2~37_sumout\,
	datae => \inst2|ALT_INV_process_2~2_combout\,
	dataf => \inst2|ALT_INV_Add2~17_sumout\,
	combout => \inst2|vcount~3_combout\);

-- Location: FF_X29_Y74_N2
\inst2|vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	d => \inst2|vcount~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vcount\(0));

-- Location: LABCELL_X30_Y74_N33
\inst2|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal4~1_combout\ = ( !\inst2|Add2~37_sumout\ & ( !\inst2|Add2~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~33_sumout\,
	dataf => \inst2|ALT_INV_Add2~37_sumout\,
	combout => \inst2|Equal4~1_combout\);

-- Location: LABCELL_X30_Y74_N54
\inst2|vsync~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vsync~1_combout\ = ( \inst2|Add2~1_sumout\ & ( !\inst2|Add2~17_sumout\ & ( (!\inst2|Add2~37_sumout\ & (\inst2|Add2~33_sumout\ & (!\inst2|Add2~13_sumout\ & !\inst2|Add2~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~37_sumout\,
	datab => \inst2|ALT_INV_Add2~33_sumout\,
	datac => \inst2|ALT_INV_Add2~13_sumout\,
	datad => \inst2|ALT_INV_Add2~9_sumout\,
	datae => \inst2|ALT_INV_Add2~1_sumout\,
	dataf => \inst2|ALT_INV_Add2~17_sumout\,
	combout => \inst2|vsync~1_combout\);

-- Location: LABCELL_X30_Y74_N30
\inst2|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~0_combout\ = ( !\inst2|Add2~25_sumout\ & ( !\inst2|Add2~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add2~29_sumout\,
	dataf => \inst2|ALT_INV_Add2~25_sumout\,
	combout => \inst2|LessThan2~0_combout\);

-- Location: LABCELL_X30_Y74_N48
\inst2|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal4~0_combout\ = ( !\inst2|Add2~21_sumout\ & ( \inst2|LessThan2~0_combout\ & ( (!\inst2|Add2~17_sumout\ & (!\inst2|Add2~9_sumout\ & (!\inst2|Add2~13_sumout\ & \inst2|Add2~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~17_sumout\,
	datab => \inst2|ALT_INV_Add2~9_sumout\,
	datac => \inst2|ALT_INV_Add2~13_sumout\,
	datad => \inst2|ALT_INV_Add2~5_sumout\,
	datae => \inst2|ALT_INV_Add2~21_sumout\,
	dataf => \inst2|ALT_INV_LessThan2~0_combout\,
	combout => \inst2|Equal4~0_combout\);

-- Location: LABCELL_X30_Y74_N36
\inst2|vsync~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vsync~2_combout\ = ( \inst2|vsync~1_combout\ & ( \inst2|Equal4~0_combout\ & ( (!\inst2|Equal4~1_combout\ & (\inst2|vsync~q\ & (!\inst2|vsync~0_combout\))) # (\inst2|Equal4~1_combout\ & ((!\inst2|Add2~1_sumout\) # ((\inst2|vsync~q\ & 
-- !\inst2|vsync~0_combout\)))) ) ) ) # ( !\inst2|vsync~1_combout\ & ( \inst2|Equal4~0_combout\ & ( ((\inst2|Equal4~1_combout\ & !\inst2|Add2~1_sumout\)) # (\inst2|vsync~q\) ) ) ) # ( \inst2|vsync~1_combout\ & ( !\inst2|Equal4~0_combout\ & ( (\inst2|vsync~q\ 
-- & !\inst2|vsync~0_combout\) ) ) ) # ( !\inst2|vsync~1_combout\ & ( !\inst2|Equal4~0_combout\ & ( \inst2|vsync~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100000011000001110111001100110111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Equal4~1_combout\,
	datab => \inst2|ALT_INV_vsync~q\,
	datac => \inst2|ALT_INV_vsync~0_combout\,
	datad => \inst2|ALT_INV_Add2~1_sumout\,
	datae => \inst2|ALT_INV_vsync~1_combout\,
	dataf => \inst2|ALT_INV_Equal4~0_combout\,
	combout => \inst2|vsync~2_combout\);

-- Location: FF_X29_Y75_N14
\inst2|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|vsync~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vsync~q\);

-- Location: LABCELL_X31_Y73_N15
\inst|ball_y_motion[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_y_motion[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst|ball_y_motion[0]~feeder_combout\);

-- Location: LABCELL_X30_Y73_N0
\inst|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~33_sumout\ = SUM(( \inst|ball_y_motion\(0) ) + ( \inst|ball_y_pos\(0) ) + ( !VCC ))
-- \inst|Add5~34\ = CARRY(( \inst|ball_y_motion\(0) ) + ( \inst|ball_y_pos\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos\(0),
	datad => \inst|ALT_INV_ball_y_motion\(0),
	cin => GND,
	sumout => \inst|Add5~33_sumout\,
	cout => \inst|Add5~34\);

-- Location: LABCELL_X30_Y73_N3
\inst|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~29_sumout\ = SUM(( !\inst|ball_y_motion\(4) ) + ( !\inst|ball_y_pos\(1) ) + ( \inst|Add5~34\ ))
-- \inst|Add5~30\ = CARRY(( !\inst|ball_y_motion\(4) ) + ( !\inst|ball_y_pos\(1) ) + ( \inst|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(1),
	datad => \inst|ALT_INV_ball_y_motion\(4),
	cin => \inst|Add5~34\,
	sumout => \inst|Add5~29_sumout\,
	cout => \inst|Add5~30\);

-- Location: MLABCELL_X28_Y75_N36
\inst|ball_y_pos[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[1]~2_combout\ = ( !\inst|Add5~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add5~29_sumout\,
	combout => \inst|ball_y_pos[1]~2_combout\);

-- Location: FF_X28_Y75_N37
\inst|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_y_pos[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(1));

-- Location: LABCELL_X30_Y73_N6
\inst|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~25_sumout\ = SUM(( !\inst|ball_y_motion\(4) ) + ( \inst|ball_y_pos\(2) ) + ( \inst|Add5~30\ ))
-- \inst|Add5~26\ = CARRY(( !\inst|ball_y_motion\(4) ) + ( \inst|ball_y_pos\(2) ) + ( \inst|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos\(2),
	datad => \inst|ALT_INV_ball_y_motion\(4),
	cin => \inst|Add5~30\,
	sumout => \inst|Add5~25_sumout\,
	cout => \inst|Add5~26\);

-- Location: FF_X30_Y75_N19
\inst|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add5~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(2));

-- Location: FF_X30_Y75_N20
\inst|ball_y_pos[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add5~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos[2]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y75_N30
\inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~9_sumout\ = SUM(( \inst|ball_y_pos[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst|Add1~10\ = CARRY(( \inst|ball_y_pos[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos[2]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst|Add1~9_sumout\,
	cout => \inst|Add1~10\);

-- Location: LABCELL_X30_Y75_N33
\inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~5_sumout\ = SUM(( \inst|ball_y_pos\(3) ) + ( GND ) + ( \inst|Add1~10\ ))
-- \inst|Add1~6\ = CARRY(( \inst|ball_y_pos\(3) ) + ( GND ) + ( \inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_ball_y_pos\(3),
	cin => \inst|Add1~10\,
	sumout => \inst|Add1~5_sumout\,
	cout => \inst|Add1~6\);

-- Location: FF_X28_Y75_N38
\inst|ball_y_pos[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_y_pos[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos[1]~DUPLICATE_q\);

-- Location: FF_X29_Y73_N11
\inst|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_y_pos[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(5));

-- Location: LABCELL_X30_Y73_N9
\inst|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~21_sumout\ = SUM(( \inst|ball_y_pos\(3) ) + ( \inst|ball_y_motion\(3) ) + ( \inst|Add5~26\ ))
-- \inst|Add5~22\ = CARRY(( \inst|ball_y_pos\(3) ) + ( \inst|ball_y_motion\(3) ) + ( \inst|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_motion\(3),
	datad => \inst|ALT_INV_ball_y_pos\(3),
	cin => \inst|Add5~26\,
	sumout => \inst|Add5~21_sumout\,
	cout => \inst|Add5~22\);

-- Location: LABCELL_X30_Y73_N12
\inst|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~5_sumout\ = SUM(( !\inst|ball_y_motion\(4) ) + ( !\inst|ball_y_pos\(4) ) + ( \inst|Add5~22\ ))
-- \inst|Add5~6\ = CARRY(( !\inst|ball_y_motion\(4) ) + ( !\inst|ball_y_pos\(4) ) + ( \inst|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos\(4),
	datad => \inst|ALT_INV_ball_y_motion\(4),
	cin => \inst|Add5~22\,
	sumout => \inst|Add5~5_sumout\,
	cout => \inst|Add5~6\);

-- Location: LABCELL_X29_Y75_N3
\inst|ball_y_pos[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[4]~0_combout\ = ( !\inst|Add5~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add5~5_sumout\,
	combout => \inst|ball_y_pos[4]~0_combout\);

-- Location: FF_X29_Y75_N5
\inst|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_y_pos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(4));

-- Location: LABCELL_X30_Y73_N15
\inst|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~17_sumout\ = SUM(( !\inst|ball_y_motion\(4) ) + ( !\inst|ball_y_pos\(5) ) + ( \inst|Add5~6\ ))
-- \inst|Add5~18\ = CARRY(( !\inst|ball_y_motion\(4) ) + ( !\inst|ball_y_pos\(5) ) + ( \inst|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos\(5),
	datad => \inst|ALT_INV_ball_y_motion\(4),
	cin => \inst|Add5~6\,
	sumout => \inst|Add5~17_sumout\,
	cout => \inst|Add5~18\);

-- Location: LABCELL_X29_Y73_N9
\inst|ball_y_pos[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[5]~1_combout\ = ( !\inst|Add5~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add5~17_sumout\,
	combout => \inst|ball_y_pos[5]~1_combout\);

-- Location: FF_X29_Y73_N10
\inst|ball_y_pos[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_y_pos[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos[5]~DUPLICATE_q\);

-- Location: FF_X29_Y75_N4
\inst|ball_y_pos[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_y_pos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos[4]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y75_N36
\inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~1_sumout\ = SUM(( !\inst|ball_y_pos[4]~DUPLICATE_q\ ) + ( VCC ) + ( \inst|Add1~6\ ))
-- \inst|Add1~2\ = CARRY(( !\inst|ball_y_pos[4]~DUPLICATE_q\ ) + ( VCC ) + ( \inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ball_y_pos[4]~DUPLICATE_q\,
	cin => \inst|Add1~6\,
	sumout => \inst|Add1~1_sumout\,
	cout => \inst|Add1~2\);

-- Location: LABCELL_X30_Y75_N39
\inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~21_sumout\ = SUM(( !\inst|ball_y_pos[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~2\ ))
-- \inst|Add1~22\ = CARRY(( !\inst|ball_y_pos[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_ball_y_pos[5]~DUPLICATE_q\,
	cin => \inst|Add1~2\,
	sumout => \inst|Add1~21_sumout\,
	cout => \inst|Add1~22\);

-- Location: LABCELL_X30_Y73_N18
\inst|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~13_sumout\ = SUM(( !\inst|ball_y_motion\(4) ) + ( \inst|ball_y_pos[6]~DUPLICATE_q\ ) + ( \inst|Add5~18\ ))
-- \inst|Add5~14\ = CARRY(( !\inst|ball_y_motion\(4) ) + ( \inst|ball_y_pos[6]~DUPLICATE_q\ ) + ( \inst|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	datad => \inst|ALT_INV_ball_y_motion\(4),
	cin => \inst|Add5~18\,
	sumout => \inst|Add5~13_sumout\,
	cout => \inst|Add5~14\);

-- Location: FF_X30_Y75_N58
\inst|ball_y_pos[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add5~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos[6]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y75_N42
\inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~17_sumout\ = SUM(( \inst|ball_y_pos[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~22\ ))
-- \inst|Add1~18\ = CARRY(( \inst|ball_y_pos[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	cin => \inst|Add1~22\,
	sumout => \inst|Add1~17_sumout\,
	cout => \inst|Add1~18\);

-- Location: LABCELL_X30_Y75_N6
\inst|y_motion~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~4_combout\ = ( \inst|Add1~1_sumout\ & ( \inst|Add1~17_sumout\ & ( (!\inst|Add1~5_sumout\ & (\inst|Add1~9_sumout\ & (!\inst|ball_y_pos[1]~DUPLICATE_q\ & !\inst|Add1~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~5_sumout\,
	datab => \inst|ALT_INV_Add1~9_sumout\,
	datac => \inst|ALT_INV_ball_y_pos[1]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Add1~21_sumout\,
	datae => \inst|ALT_INV_Add1~1_sumout\,
	dataf => \inst|ALT_INV_Add1~17_sumout\,
	combout => \inst|y_motion~4_combout\);

-- Location: LABCELL_X29_Y76_N57
\inst|pad_y_motion[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_y_motion[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst|pad_y_motion[4]~feeder_combout\);

-- Location: FF_X29_Y76_N59
\inst|pad_y_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|pad_y_motion[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pad_y_motion\(4));

-- Location: LABCELL_X29_Y76_N0
\inst|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add7~33_sumout\ = SUM(( !\inst|pad_y_motion\(4) ) + ( \inst|pady[1]~DUPLICATE_q\ ) + ( !VCC ))
-- \inst|Add7~34\ = CARRY(( !\inst|pad_y_motion\(4) ) + ( \inst|pady[1]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pady[1]~DUPLICATE_q\,
	datad => \inst|ALT_INV_pad_y_motion\(4),
	cin => GND,
	sumout => \inst|Add7~33_sumout\,
	cout => \inst|Add7~34\);

-- Location: FF_X29_Y75_N28
\inst|pady[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady[1]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y76_N3
\inst|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add7~29_sumout\ = SUM(( !\inst|pady[2]~DUPLICATE_q\ ) + ( !\inst|pad_y_motion\(4) ) + ( \inst|Add7~34\ ))
-- \inst|Add7~30\ = CARRY(( !\inst|pady[2]~DUPLICATE_q\ ) + ( !\inst|pad_y_motion\(4) ) + ( \inst|Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pad_y_motion\(4),
	datad => \inst|ALT_INV_pady[2]~DUPLICATE_q\,
	cin => \inst|Add7~34\,
	sumout => \inst|Add7~29_sumout\,
	cout => \inst|Add7~30\);

-- Location: MLABCELL_X28_Y75_N57
\inst|pady[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pady[2]~1_combout\ = !\inst|Add7~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add7~29_sumout\,
	combout => \inst|pady[2]~1_combout\);

-- Location: FF_X28_Y75_N59
\inst|pady[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|pady[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady[2]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y76_N6
\inst|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add7~21_sumout\ = SUM(( !\inst|pady[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add7~30\ ))
-- \inst|Add7~22\ = CARRY(( !\inst|pady[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pady[3]~DUPLICATE_q\,
	cin => \inst|Add7~30\,
	sumout => \inst|Add7~21_sumout\,
	cout => \inst|Add7~22\);

-- Location: LABCELL_X29_Y75_N0
\inst|pady[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pady[3]~0_combout\ = ( !\inst|Add7~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add7~21_sumout\,
	combout => \inst|pady[3]~0_combout\);

-- Location: FF_X29_Y75_N1
\inst|pady[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|pady[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady[3]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y76_N9
\inst|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add7~13_sumout\ = SUM(( \inst|pady\(4) ) + ( !\inst|pad_y_motion\(4) ) + ( \inst|Add7~22\ ))
-- \inst|Add7~14\ = CARRY(( \inst|pady\(4) ) + ( !\inst|pad_y_motion\(4) ) + ( \inst|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pad_y_motion\(4),
	datad => \inst|ALT_INV_pady\(4),
	cin => \inst|Add7~22\,
	sumout => \inst|Add7~13_sumout\,
	cout => \inst|Add7~14\);

-- Location: FF_X29_Y75_N19
\inst|pady[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady\(4));

-- Location: LABCELL_X29_Y76_N12
\inst|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add7~17_sumout\ = SUM(( !\inst|pad_y_motion\(4) ) + ( \inst|pady\(5) ) + ( \inst|Add7~14\ ))
-- \inst|Add7~18\ = CARRY(( !\inst|pad_y_motion\(4) ) + ( \inst|pady\(5) ) + ( \inst|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pady\(5),
	datad => \inst|ALT_INV_pad_y_motion\(4),
	cin => \inst|Add7~14\,
	sumout => \inst|Add7~17_sumout\,
	cout => \inst|Add7~18\);

-- Location: FF_X29_Y75_N26
\inst|pady[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady\(5));

-- Location: LABCELL_X30_Y75_N54
\inst|y_motion~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~7_combout\ = ( \inst|pady[3]~DUPLICATE_q\ & ( \inst|Add1~21_sumout\ & ( (!\inst|Add1~5_sumout\ & (\inst|pady\(5) & (!\inst|Add1~1_sumout\ $ (\inst|pady\(4))))) ) ) ) # ( !\inst|pady[3]~DUPLICATE_q\ & ( \inst|Add1~21_sumout\ & ( 
-- (\inst|Add1~5_sumout\ & (\inst|pady\(5) & (!\inst|Add1~1_sumout\ $ (\inst|pady\(4))))) ) ) ) # ( \inst|pady[3]~DUPLICATE_q\ & ( !\inst|Add1~21_sumout\ & ( (!\inst|Add1~5_sumout\ & (!\inst|pady\(5) & (!\inst|Add1~1_sumout\ $ (\inst|pady\(4))))) ) ) ) # ( 
-- !\inst|pady[3]~DUPLICATE_q\ & ( !\inst|Add1~21_sumout\ & ( (\inst|Add1~5_sumout\ & (!\inst|pady\(5) & (!\inst|Add1~1_sumout\ $ (\inst|pady\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000100100000000000000000000000010010000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~1_sumout\,
	datab => \inst|ALT_INV_pady\(4),
	datac => \inst|ALT_INV_Add1~5_sumout\,
	datad => \inst|ALT_INV_pady\(5),
	datae => \inst|ALT_INV_pady[3]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Add1~21_sumout\,
	combout => \inst|y_motion~7_combout\);

-- Location: FF_X30_Y75_N10
\inst|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add5~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(7));

-- Location: LABCELL_X30_Y73_N21
\inst|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~9_sumout\ = SUM(( !\inst|ball_y_motion\(4) ) + ( \inst|ball_y_pos\(7) ) + ( \inst|Add5~14\ ))
-- \inst|Add5~10\ = CARRY(( !\inst|ball_y_motion\(4) ) + ( \inst|ball_y_pos\(7) ) + ( \inst|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(7),
	datad => \inst|ALT_INV_ball_y_motion\(4),
	cin => \inst|Add5~14\,
	sumout => \inst|Add5~9_sumout\,
	cout => \inst|Add5~10\);

-- Location: FF_X30_Y75_N11
\inst|ball_y_pos[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add5~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos[7]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y75_N45
\inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~13_sumout\ = SUM(( \inst|ball_y_pos[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~18\ ))
-- \inst|Add1~14\ = CARRY(( \inst|ball_y_pos[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos[7]~DUPLICATE_q\,
	cin => \inst|Add1~18\,
	sumout => \inst|Add1~13_sumout\,
	cout => \inst|Add1~14\);

-- Location: LABCELL_X30_Y75_N48
\inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~25_sumout\ = SUM(( \inst|ball_y_pos\(8) ) + ( GND ) + ( \inst|Add1~14\ ))
-- \inst|Add1~26\ = CARRY(( \inst|ball_y_pos\(8) ) + ( GND ) + ( \inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos\(8),
	cin => \inst|Add1~14\,
	sumout => \inst|Add1~25_sumout\,
	cout => \inst|Add1~26\);

-- Location: LABCELL_X30_Y75_N51
\inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~29_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add1~26\,
	sumout => \inst|Add1~29_sumout\);

-- Location: LABCELL_X30_Y75_N3
\inst|y_motion~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~5_combout\ = ( !\inst|Add1~29_sumout\ & ( (\inst|Add1~25_sumout\ & \inst|Add1~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~25_sumout\,
	datad => \inst|ALT_INV_Add1~13_sumout\,
	dataf => \inst|ALT_INV_Add1~29_sumout\,
	combout => \inst|y_motion~5_combout\);

-- Location: LABCELL_X29_Y76_N15
\inst|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add7~9_sumout\ = SUM(( \inst|pady[6]~DUPLICATE_q\ ) + ( !\inst|pad_y_motion\(4) ) + ( \inst|Add7~18\ ))
-- \inst|Add7~10\ = CARRY(( \inst|pady[6]~DUPLICATE_q\ ) + ( !\inst|pad_y_motion\(4) ) + ( \inst|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pad_y_motion\(4),
	datad => \inst|ALT_INV_pady[6]~DUPLICATE_q\,
	cin => \inst|Add7~18\,
	sumout => \inst|Add7~9_sumout\,
	cout => \inst|Add7~10\);

-- Location: FF_X29_Y75_N8
\inst|pady[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady[6]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y76_N18
\inst|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add7~5_sumout\ = SUM(( !\inst|pad_y_motion\(4) ) + ( \inst|pady\(7) ) + ( \inst|Add7~10\ ))
-- \inst|Add7~6\ = CARRY(( !\inst|pad_y_motion\(4) ) + ( \inst|pady\(7) ) + ( \inst|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pady\(7),
	datad => \inst|ALT_INV_pad_y_motion\(4),
	cin => \inst|Add7~10\,
	sumout => \inst|Add7~5_sumout\,
	cout => \inst|Add7~6\);

-- Location: FF_X29_Y75_N23
\inst|pady[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady\(7));

-- Location: LABCELL_X29_Y76_N21
\inst|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add7~1_sumout\ = SUM(( \inst|pady\(8) ) + ( !\inst|pad_y_motion\(4) ) + ( \inst|Add7~6\ ))
-- \inst|Add7~2\ = CARRY(( \inst|pady\(8) ) + ( !\inst|pad_y_motion\(4) ) + ( \inst|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pad_y_motion\(4),
	datad => \inst|ALT_INV_pady\(8),
	cin => \inst|Add7~6\,
	sumout => \inst|Add7~1_sumout\,
	cout => \inst|Add7~2\);

-- Location: FF_X29_Y75_N11
\inst|pady[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady\(8));

-- Location: LABCELL_X29_Y76_N24
\inst|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add7~25_sumout\ = SUM(( !\inst|pad_y_motion\(4) ) + ( \inst|pady\(9) ) + ( \inst|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pady\(9),
	datad => \inst|ALT_INV_pad_y_motion\(4),
	cin => \inst|Add7~2\,
	sumout => \inst|Add7~25_sumout\);

-- Location: FF_X29_Y75_N41
\inst|pady[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady\(9));

-- Location: LABCELL_X29_Y73_N54
\inst|ball_x_motion[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_x_motion[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst|ball_x_motion[0]~feeder_combout\);

-- Location: LABCELL_X30_Y73_N51
\inst|LessThan14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan14~2_combout\ = ( \inst|ball_y_pos\(8) & ( (\inst|pady\(8) & (!\inst|pady\(7) $ (\inst|ball_y_pos\(7)))) ) ) # ( !\inst|ball_y_pos\(8) & ( (!\inst|pady\(8) & (!\inst|pady\(7) $ (\inst|ball_y_pos\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_pady\(8),
	datac => \inst|ALT_INV_pady\(7),
	datad => \inst|ALT_INV_ball_y_pos\(7),
	dataf => \inst|ALT_INV_ball_y_pos\(8),
	combout => \inst|LessThan14~2_combout\);

-- Location: LABCELL_X29_Y73_N24
\inst|LessThan14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan14~3_combout\ = ( !\inst|pady\(5) & ( \inst|ball_y_pos\(5) & ( (\inst|LessThan14~2_combout\ & (!\inst|ball_y_pos[6]~DUPLICATE_q\ $ (\inst|pady[6]~DUPLICATE_q\))) ) ) ) # ( \inst|pady\(5) & ( !\inst|ball_y_pos\(5) & ( 
-- (\inst|LessThan14~2_combout\ & (!\inst|ball_y_pos[6]~DUPLICATE_q\ $ (\inst|pady[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000010100001010000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	datac => \inst|ALT_INV_LessThan14~2_combout\,
	datad => \inst|ALT_INV_pady[6]~DUPLICATE_q\,
	datae => \inst|ALT_INV_pady\(5),
	dataf => \inst|ALT_INV_ball_y_pos\(5),
	combout => \inst|LessThan14~3_combout\);

-- Location: FF_X29_Y75_N7
\inst|pady[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady\(6));

-- Location: FF_X29_Y75_N20
\inst|pady[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady[4]~DUPLICATE_q\);

-- Location: FF_X29_Y75_N2
\inst|pady[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|pady[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady\(3));

-- Location: FF_X28_Y75_N58
\inst|pady[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|pady[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady\(2));

-- Location: FF_X29_Y75_N29
\inst|pady[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add7~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pady\(1));

-- Location: LABCELL_X29_Y75_N30
\inst|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~9_sumout\ = SUM(( \inst|pady\(1) ) + ( VCC ) + ( !VCC ))
-- \inst|Add4~10\ = CARRY(( \inst|pady\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pady\(1),
	cin => GND,
	sumout => \inst|Add4~9_sumout\,
	cout => \inst|Add4~10\);

-- Location: LABCELL_X29_Y75_N33
\inst|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~5_sumout\ = SUM(( !\inst|pady\(2) ) + ( GND ) + ( \inst|Add4~10\ ))
-- \inst|Add4~6\ = CARRY(( !\inst|pady\(2) ) + ( GND ) + ( \inst|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pady\(2),
	cin => \inst|Add4~10\,
	sumout => \inst|Add4~5_sumout\,
	cout => \inst|Add4~6\);

-- Location: LABCELL_X29_Y75_N36
\inst|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~17_sumout\ = SUM(( !\inst|pady\(3) ) + ( VCC ) + ( \inst|Add4~6\ ))
-- \inst|Add4~18\ = CARRY(( !\inst|pady\(3) ) + ( VCC ) + ( \inst|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pady\(3),
	cin => \inst|Add4~6\,
	sumout => \inst|Add4~17_sumout\,
	cout => \inst|Add4~18\);

-- Location: LABCELL_X29_Y75_N39
\inst|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~13_sumout\ = SUM(( \inst|pady[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add4~18\ ))
-- \inst|Add4~14\ = CARRY(( \inst|pady[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_pady[4]~DUPLICATE_q\,
	cin => \inst|Add4~18\,
	sumout => \inst|Add4~13_sumout\,
	cout => \inst|Add4~14\);

-- Location: LABCELL_X29_Y75_N42
\inst|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~29_sumout\ = SUM(( \inst|pady\(5) ) + ( GND ) + ( \inst|Add4~14\ ))
-- \inst|Add4~30\ = CARRY(( \inst|pady\(5) ) + ( GND ) + ( \inst|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pady\(5),
	cin => \inst|Add4~14\,
	sumout => \inst|Add4~29_sumout\,
	cout => \inst|Add4~30\);

-- Location: LABCELL_X29_Y75_N45
\inst|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~25_sumout\ = SUM(( \inst|pady\(6) ) + ( GND ) + ( \inst|Add4~30\ ))
-- \inst|Add4~26\ = CARRY(( \inst|pady\(6) ) + ( GND ) + ( \inst|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pady\(6),
	cin => \inst|Add4~30\,
	sumout => \inst|Add4~25_sumout\,
	cout => \inst|Add4~26\);

-- Location: LABCELL_X29_Y75_N48
\inst|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~21_sumout\ = SUM(( \inst|pady\(7) ) + ( GND ) + ( \inst|Add4~26\ ))
-- \inst|Add4~22\ = CARRY(( \inst|pady\(7) ) + ( GND ) + ( \inst|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pady\(7),
	cin => \inst|Add4~26\,
	sumout => \inst|Add4~21_sumout\,
	cout => \inst|Add4~22\);

-- Location: LABCELL_X29_Y75_N51
\inst|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~1_sumout\ = SUM(( \inst|pady\(8) ) + ( GND ) + ( \inst|Add4~22\ ))
-- \inst|Add4~2\ = CARRY(( \inst|pady\(8) ) + ( GND ) + ( \inst|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_pady\(8),
	cin => \inst|Add4~22\,
	sumout => \inst|Add4~1_sumout\,
	cout => \inst|Add4~2\);

-- Location: LABCELL_X29_Y75_N54
\inst|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~33_sumout\ = SUM(( \inst|pady\(9) ) + ( GND ) + ( \inst|Add4~2\ ))
-- \inst|Add4~34\ = CARRY(( \inst|pady\(9) ) + ( GND ) + ( \inst|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pady\(9),
	cin => \inst|Add4~2\,
	sumout => \inst|Add4~33_sumout\,
	cout => \inst|Add4~34\);

-- Location: LABCELL_X29_Y75_N57
\inst|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~37_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add4~34\,
	sumout => \inst|Add4~37_sumout\);

-- Location: LABCELL_X29_Y73_N0
\inst|x_motion~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~10_combout\ = ( \inst|Add4~21_sumout\ & ( \inst|Add4~1_sumout\ & ( (\inst|ball_y_pos\(7) & (\inst|ball_y_pos\(8) & (\inst|ball_y_pos[6]~DUPLICATE_q\ & !\inst|Add4~25_sumout\))) ) ) ) # ( !\inst|Add4~21_sumout\ & ( \inst|Add4~1_sumout\ & ( 
-- (\inst|ball_y_pos\(8) & (((\inst|ball_y_pos[6]~DUPLICATE_q\ & !\inst|Add4~25_sumout\)) # (\inst|ball_y_pos\(7)))) ) ) ) # ( \inst|Add4~21_sumout\ & ( !\inst|Add4~1_sumout\ & ( ((\inst|ball_y_pos\(7) & (\inst|ball_y_pos[6]~DUPLICATE_q\ & 
-- !\inst|Add4~25_sumout\))) # (\inst|ball_y_pos\(8)) ) ) ) # ( !\inst|Add4~21_sumout\ & ( !\inst|Add4~1_sumout\ & ( (((\inst|ball_y_pos[6]~DUPLICATE_q\ & !\inst|Add4~25_sumout\)) # (\inst|ball_y_pos\(8))) # (\inst|ball_y_pos\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111001101110011001100010011000100010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(7),
	datab => \inst|ALT_INV_ball_y_pos\(8),
	datac => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Add4~25_sumout\,
	datae => \inst|ALT_INV_Add4~21_sumout\,
	dataf => \inst|ALT_INV_Add4~1_sumout\,
	combout => \inst|x_motion~10_combout\);

-- Location: LABCELL_X31_Y72_N0
\inst|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~1_sumout\ = SUM(( \inst|ball_x_pos\(0) ) + ( \inst|ball_x_motion\(0) ) + ( !VCC ))
-- \inst|Add6~2\ = CARRY(( \inst|ball_x_pos\(0) ) + ( \inst|ball_x_motion\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ball_x_pos\(0),
	datac => \inst|ALT_INV_ball_x_motion\(0),
	cin => GND,
	sumout => \inst|Add6~1_sumout\,
	cout => \inst|Add6~2\);

-- Location: LABCELL_X31_Y72_N3
\inst|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~5_sumout\ = SUM(( !\inst|ball_x_motion\(4) ) + ( !\inst|ball_x_pos[1]~DUPLICATE_q\ ) + ( \inst|Add6~2\ ))
-- \inst|Add6~6\ = CARRY(( !\inst|ball_x_motion\(4) ) + ( !\inst|ball_x_pos[1]~DUPLICATE_q\ ) + ( \inst|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos[1]~DUPLICATE_q\,
	datad => \inst|ALT_INV_ball_x_motion\(4),
	cin => \inst|Add6~2\,
	sumout => \inst|Add6~5_sumout\,
	cout => \inst|Add6~6\);

-- Location: LABCELL_X31_Y72_N33
\inst|ball_x_pos[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_x_pos[1]~0_combout\ = !\inst|Add6~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add6~5_sumout\,
	combout => \inst|ball_x_pos[1]~0_combout\);

-- Location: FF_X31_Y72_N35
\inst|ball_x_pos[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_x_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos[1]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y75_N18
\inst|x_motion~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~0_combout\ = ( \inst|pady\(7) & ( \inst|ball_x_pos[1]~DUPLICATE_q\ & ( (!\inst|pady\(9) & ((!\inst|pady\(8) & ((\inst|ball_y_pos\(7)) # (\inst|ball_y_pos\(8)))) # (\inst|pady\(8) & (\inst|ball_y_pos\(8) & \inst|ball_y_pos\(7))))) ) ) ) # ( 
-- !\inst|pady\(7) & ( \inst|ball_x_pos[1]~DUPLICATE_q\ & ( (!\inst|pady\(9) & ((!\inst|pady\(8)) # (\inst|ball_y_pos\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001010100010100000100010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_pady\(9),
	datab => \inst|ALT_INV_pady\(8),
	datac => \inst|ALT_INV_ball_y_pos\(8),
	datad => \inst|ALT_INV_ball_y_pos\(7),
	datae => \inst|ALT_INV_pady\(7),
	dataf => \inst|ALT_INV_ball_x_pos[1]~DUPLICATE_q\,
	combout => \inst|x_motion~0_combout\);

-- Location: LABCELL_X30_Y73_N54
\inst|x_motion~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~1_combout\ = ( \inst|LessThan14~2_combout\ & ( \inst|x_motion~0_combout\ & ( (!\inst|pady\(6) & ((!\inst|pady\(5)) # ((!\inst|ball_y_pos\(5)) # (\inst|ball_y_pos[6]~DUPLICATE_q\)))) # (\inst|pady\(6) & (\inst|ball_y_pos[6]~DUPLICATE_q\ & 
-- ((!\inst|pady\(5)) # (!\inst|ball_y_pos\(5))))) ) ) ) # ( !\inst|LessThan14~2_combout\ & ( \inst|x_motion~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111100111110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_pady\(5),
	datab => \inst|ALT_INV_pady\(6),
	datac => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	datad => \inst|ALT_INV_ball_y_pos\(5),
	datae => \inst|ALT_INV_LessThan14~2_combout\,
	dataf => \inst|ALT_INV_x_motion~0_combout\,
	combout => \inst|x_motion~1_combout\);

-- Location: MLABCELL_X28_Y75_N21
\inst|LessThan14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan14~0_combout\ = ( \inst|pady[1]~DUPLICATE_q\ & ( (!\inst|ball_y_pos[1]~DUPLICATE_q\ & (!\inst|ball_y_pos[2]~DUPLICATE_q\ & !\inst|pady[2]~DUPLICATE_q\)) # (\inst|ball_y_pos[1]~DUPLICATE_q\ & ((!\inst|ball_y_pos[2]~DUPLICATE_q\) # 
-- (!\inst|pady[2]~DUPLICATE_q\))) ) ) # ( !\inst|pady[1]~DUPLICATE_q\ & ( (!\inst|ball_y_pos[2]~DUPLICATE_q\ & !\inst|pady[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos[1]~DUPLICATE_q\,
	datac => \inst|ALT_INV_ball_y_pos[2]~DUPLICATE_q\,
	datad => \inst|ALT_INV_pady[2]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_pady[1]~DUPLICATE_q\,
	combout => \inst|LessThan14~0_combout\);

-- Location: LABCELL_X29_Y73_N57
\inst|LessThan14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan14~1_combout\ = ( \inst|pady\(4) & ( ((!\inst|pady[3]~DUPLICATE_q\ & ((!\inst|ball_y_pos\(3)) # (\inst|LessThan14~0_combout\))) # (\inst|pady[3]~DUPLICATE_q\ & (\inst|LessThan14~0_combout\ & !\inst|ball_y_pos\(3)))) # (\inst|ball_y_pos\(4)) 
-- ) ) # ( !\inst|pady\(4) & ( (\inst|ball_y_pos\(4) & ((!\inst|pady[3]~DUPLICATE_q\ & ((!\inst|ball_y_pos\(3)) # (\inst|LessThan14~0_combout\))) # (\inst|pady[3]~DUPLICATE_q\ & (\inst|LessThan14~0_combout\ & !\inst|ball_y_pos\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100000010001000110000001010111111001110111011111100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_pady[3]~DUPLICATE_q\,
	datab => \inst|ALT_INV_ball_y_pos\(4),
	datac => \inst|ALT_INV_LessThan14~0_combout\,
	datad => \inst|ALT_INV_ball_y_pos\(3),
	dataf => \inst|ALT_INV_pady\(4),
	combout => \inst|LessThan14~1_combout\);

-- Location: LABCELL_X29_Y73_N21
\inst|x_motion~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~3_combout\ = ( \inst|x_motion~1_combout\ & ( \inst|LessThan14~1_combout\ & ( (!\inst|LessThan14~3_combout\ & (((!\inst|x_motion~10_combout\) # (\inst|Add4~37_sumout\)) # (\inst|Add4~33_sumout\))) ) ) ) # ( \inst|x_motion~1_combout\ & ( 
-- !\inst|LessThan14~1_combout\ & ( ((!\inst|x_motion~10_combout\) # (\inst|Add4~37_sumout\)) # (\inst|Add4~33_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011111100000000000000001010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan14~3_combout\,
	datab => \inst|ALT_INV_Add4~33_sumout\,
	datac => \inst|ALT_INV_Add4~37_sumout\,
	datad => \inst|ALT_INV_x_motion~10_combout\,
	datae => \inst|ALT_INV_x_motion~1_combout\,
	dataf => \inst|ALT_INV_LessThan14~1_combout\,
	combout => \inst|x_motion~3_combout\);

-- Location: FF_X30_Y72_N47
\inst|ball_x_pos[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_x_pos[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos[4]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y72_N12
\inst|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~9_sumout\ = SUM(( !\inst|ball_x_motion\(4) ) + ( !\inst|ball_x_pos[4]~DUPLICATE_q\ ) + ( \inst|Add6~30\ ))
-- \inst|Add6~10\ = CARRY(( !\inst|ball_x_motion\(4) ) + ( !\inst|ball_x_pos[4]~DUPLICATE_q\ ) + ( \inst|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos[4]~DUPLICATE_q\,
	datad => \inst|ALT_INV_ball_x_motion\(4),
	cin => \inst|Add6~30\,
	sumout => \inst|Add6~9_sumout\,
	cout => \inst|Add6~10\);

-- Location: LABCELL_X31_Y72_N15
\inst|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~21_sumout\ = SUM(( !\inst|ball_x_motion\(4) ) + ( !\inst|ball_x_pos\(5) ) + ( \inst|Add6~10\ ))
-- \inst|Add6~22\ = CARRY(( !\inst|ball_x_motion\(4) ) + ( !\inst|ball_x_pos\(5) ) + ( \inst|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos\(5),
	datad => \inst|ALT_INV_ball_x_motion\(4),
	cin => \inst|Add6~10\,
	sumout => \inst|Add6~21_sumout\,
	cout => \inst|Add6~22\);

-- Location: LABCELL_X31_Y72_N57
\inst|ball_x_pos[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_x_pos[5]~2_combout\ = ( !\inst|Add6~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add6~21_sumout\,
	combout => \inst|ball_x_pos[5]~2_combout\);

-- Location: FF_X30_Y72_N50
\inst|ball_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|ball_x_pos[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(5));

-- Location: LABCELL_X31_Y72_N18
\inst|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~17_sumout\ = SUM(( !\inst|ball_x_motion\(4) ) + ( \inst|ball_x_pos\(6) ) + ( \inst|Add6~22\ ))
-- \inst|Add6~18\ = CARRY(( !\inst|ball_x_motion\(4) ) + ( \inst|ball_x_pos\(6) ) + ( \inst|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos\(6),
	datad => \inst|ALT_INV_ball_x_motion\(4),
	cin => \inst|Add6~22\,
	sumout => \inst|Add6~17_sumout\,
	cout => \inst|Add6~18\);

-- Location: FF_X30_Y72_N37
\inst|ball_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add6~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(6));

-- Location: LABCELL_X31_Y72_N21
\inst|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~13_sumout\ = SUM(( !\inst|ball_x_motion\(4) ) + ( \inst|ball_x_pos\(7) ) + ( \inst|Add6~18\ ))
-- \inst|Add6~14\ = CARRY(( !\inst|ball_x_motion\(4) ) + ( \inst|ball_x_pos\(7) ) + ( \inst|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos\(7),
	datad => \inst|ALT_INV_ball_x_motion\(4),
	cin => \inst|Add6~18\,
	sumout => \inst|Add6~13_sumout\,
	cout => \inst|Add6~14\);

-- Location: FF_X30_Y72_N59
\inst|ball_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add6~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(7));

-- Location: FF_X30_Y72_N38
\inst|ball_x_pos[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add6~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos[6]~DUPLICATE_q\);

-- Location: FF_X30_Y72_N55
\inst|ball_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add6~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(2));

-- Location: LABCELL_X31_Y72_N6
\inst|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~25_sumout\ = SUM(( !\inst|ball_x_motion\(4) ) + ( \inst|ball_x_pos\(2) ) + ( \inst|Add6~6\ ))
-- \inst|Add6~26\ = CARRY(( !\inst|ball_x_motion\(4) ) + ( \inst|ball_x_pos\(2) ) + ( \inst|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos\(2),
	datad => \inst|ALT_INV_ball_x_motion\(4),
	cin => \inst|Add6~6\,
	sumout => \inst|Add6~25_sumout\,
	cout => \inst|Add6~26\);

-- Location: FF_X30_Y72_N56
\inst|ball_x_pos[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add6~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos[2]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y72_N0
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|ball_x_pos[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~10\ = CARRY(( \inst|ball_x_pos[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_ball_x_pos[2]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: LABCELL_X30_Y72_N3
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst|ball_x_pos\(3) ) + ( GND ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( \inst|ball_x_pos\(3) ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos\(3),
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: LABCELL_X30_Y72_N6
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( !\inst|ball_x_pos[4]~DUPLICATE_q\ ) + ( VCC ) + ( \inst|Add0~6\ ))
-- \inst|Add0~2\ = CARRY(( !\inst|ball_x_pos[4]~DUPLICATE_q\ ) + ( VCC ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_ball_x_pos[4]~DUPLICATE_q\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~1_sumout\,
	cout => \inst|Add0~2\);

-- Location: LABCELL_X30_Y72_N9
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( !\inst|ball_x_pos\(5) ) + ( GND ) + ( \inst|Add0~2\ ))
-- \inst|Add0~22\ = CARRY(( !\inst|ball_x_pos\(5) ) + ( GND ) + ( \inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos\(5),
	cin => \inst|Add0~2\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: LABCELL_X30_Y72_N12
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|ball_x_pos[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst|ball_x_pos[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_ball_x_pos[6]~DUPLICATE_q\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: LABCELL_X30_Y72_N15
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst|ball_x_pos\(7) ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \inst|ball_x_pos\(7) ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_ball_x_pos\(7),
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: LABCELL_X30_Y72_N18
\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( \inst|ball_x_pos\(8) ) + ( GND ) + ( \inst|Add0~14\ ))
-- \inst|Add0~34\ = CARRY(( \inst|ball_x_pos\(8) ) + ( GND ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos\(8),
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~33_sumout\,
	cout => \inst|Add0~34\);

-- Location: LABCELL_X30_Y72_N48
\inst|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = ( !\inst|ball_x_pos\(0) & ( \inst|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add0~9_sumout\,
	dataf => \inst|ALT_INV_ball_x_pos\(0),
	combout => \inst|Equal4~0_combout\);

-- Location: LABCELL_X31_Y72_N24
\inst|Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~37_sumout\ = SUM(( !\inst|ball_x_motion\(4) ) + ( \inst|ball_x_pos\(8) ) + ( \inst|Add6~14\ ))
-- \inst|Add6~38\ = CARRY(( !\inst|ball_x_motion\(4) ) + ( \inst|ball_x_pos\(8) ) + ( \inst|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos\(8),
	datad => \inst|ALT_INV_ball_x_motion\(4),
	cin => \inst|Add6~14\,
	sumout => \inst|Add6~37_sumout\,
	cout => \inst|Add6~38\);

-- Location: LABCELL_X31_Y72_N27
\inst|Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~33_sumout\ = SUM(( !\inst|ball_x_motion\(4) ) + ( \inst|ball_x_pos\(9) ) + ( \inst|Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos\(9),
	datad => \inst|ALT_INV_ball_x_motion\(4),
	cin => \inst|Add6~38\,
	sumout => \inst|Add6~33_sumout\);

-- Location: FF_X30_Y72_N41
\inst|ball_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add6~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(9));

-- Location: LABCELL_X30_Y72_N21
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst|ball_x_pos\(9) ) + ( GND ) + ( \inst|Add0~34\ ))
-- \inst|Add0~26\ = CARRY(( \inst|ball_x_pos\(9) ) + ( GND ) + ( \inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos\(9),
	cin => \inst|Add0~34\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: LABCELL_X30_Y72_N24
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~29_sumout\);

-- Location: LABCELL_X30_Y72_N30
\inst|x_motion~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~4_combout\ = ( !\inst|Add0~17_sumout\ & ( (!\inst|Add0~1_sumout\ & (\inst|Add0~5_sumout\ & !\inst|Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Add0~1_sumout\,
	datac => \inst|ALT_INV_Add0~5_sumout\,
	datad => \inst|ALT_INV_Add0~21_sumout\,
	dataf => \inst|ALT_INV_Add0~17_sumout\,
	combout => \inst|x_motion~4_combout\);

-- Location: LABCELL_X29_Y72_N36
\inst|x_motion~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~5_combout\ = ( !\inst|Add0~25_sumout\ & ( \inst|x_motion~4_combout\ & ( (!\inst|Add0~13_sumout\ & (!\inst|Add0~33_sumout\ & (\inst|Equal4~0_combout\ & !\inst|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~13_sumout\,
	datab => \inst|ALT_INV_Add0~33_sumout\,
	datac => \inst|ALT_INV_Equal4~0_combout\,
	datad => \inst|ALT_INV_Add0~29_sumout\,
	datae => \inst|ALT_INV_Add0~25_sumout\,
	dataf => \inst|ALT_INV_x_motion~4_combout\,
	combout => \inst|x_motion~5_combout\);

-- Location: MLABCELL_X28_Y75_N42
\inst|LessThan15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan15~3_combout\ = ( \inst|ball_y_pos\(1) & ( \inst|Add4~5_sumout\ & ( (\inst|ball_y_pos\(0) & (\inst|ball_y_pos[2]~DUPLICATE_q\ & !\inst|Add4~9_sumout\)) ) ) ) # ( !\inst|ball_y_pos\(1) & ( \inst|Add4~5_sumout\ & ( 
-- (\inst|ball_y_pos[2]~DUPLICATE_q\ & ((!\inst|Add4~9_sumout\) # (\inst|ball_y_pos\(0)))) ) ) ) # ( \inst|ball_y_pos\(1) & ( !\inst|Add4~5_sumout\ & ( ((\inst|ball_y_pos\(0) & !\inst|Add4~9_sumout\)) # (\inst|ball_y_pos[2]~DUPLICATE_q\) ) ) ) # ( 
-- !\inst|ball_y_pos\(1) & ( !\inst|Add4~5_sumout\ & ( ((!\inst|Add4~9_sumout\) # (\inst|ball_y_pos[2]~DUPLICATE_q\)) # (\inst|ball_y_pos\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111011100110111001100110001001100010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(0),
	datab => \inst|ALT_INV_ball_y_pos[2]~DUPLICATE_q\,
	datac => \inst|ALT_INV_Add4~9_sumout\,
	datae => \inst|ALT_INV_ball_y_pos\(1),
	dataf => \inst|ALT_INV_Add4~5_sumout\,
	combout => \inst|LessThan15~3_combout\);

-- Location: FF_X30_Y75_N59
\inst|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add5~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(6));

-- Location: LABCELL_X29_Y75_N24
\inst|LessThan15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan15~4_combout\ = ( \inst|Add4~17_sumout\ & ( \inst|Add4~13_sumout\ & ( (!\inst|ball_y_pos\(5) & !\inst|Add4~29_sumout\) ) ) ) # ( !\inst|Add4~17_sumout\ & ( \inst|Add4~13_sumout\ & ( (!\inst|ball_y_pos\(5) & ((!\inst|Add4~29_sumout\) # 
-- ((!\inst|ball_y_pos\(4) & \inst|ball_y_pos\(3))))) # (\inst|ball_y_pos\(5) & (!\inst|ball_y_pos\(4) & (\inst|ball_y_pos\(3) & !\inst|Add4~29_sumout\))) ) ) ) # ( \inst|Add4~17_sumout\ & ( !\inst|Add4~13_sumout\ & ( (!\inst|ball_y_pos\(4) & 
-- ((!\inst|ball_y_pos\(5)) # (!\inst|Add4~29_sumout\))) # (\inst|ball_y_pos\(4) & (!\inst|ball_y_pos\(5) & !\inst|Add4~29_sumout\)) ) ) ) # ( !\inst|Add4~17_sumout\ & ( !\inst|Add4~13_sumout\ & ( (!\inst|ball_y_pos\(5) & ((!\inst|ball_y_pos\(4)) # 
-- ((!\inst|Add4~29_sumout\) # (\inst|ball_y_pos\(3))))) # (\inst|ball_y_pos\(5) & (!\inst|Add4~29_sumout\ & ((!\inst|ball_y_pos\(4)) # (\inst|ball_y_pos\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111110001100111011101000100011001110000010001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(4),
	datab => \inst|ALT_INV_ball_y_pos\(5),
	datac => \inst|ALT_INV_ball_y_pos\(3),
	datad => \inst|ALT_INV_Add4~29_sumout\,
	datae => \inst|ALT_INV_Add4~17_sumout\,
	dataf => \inst|ALT_INV_Add4~13_sumout\,
	combout => \inst|LessThan15~4_combout\);

-- Location: LABCELL_X29_Y75_N21
\inst|y_motion~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~16_combout\ = ( !\inst|Add4~37_sumout\ & ( \inst|Add4~1_sumout\ & ( (!\inst|Add4~33_sumout\ & (\inst|ball_y_pos\(8) & (!\inst|ball_y_pos[7]~DUPLICATE_q\ $ (\inst|Add4~21_sumout\)))) ) ) ) # ( !\inst|Add4~37_sumout\ & ( !\inst|Add4~1_sumout\ 
-- & ( (!\inst|Add4~33_sumout\ & (!\inst|ball_y_pos\(8) & (!\inst|ball_y_pos[7]~DUPLICATE_q\ $ (\inst|Add4~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000000000000000000001000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add4~33_sumout\,
	datab => \inst|ALT_INV_ball_y_pos[7]~DUPLICATE_q\,
	datac => \inst|ALT_INV_ball_y_pos\(8),
	datad => \inst|ALT_INV_Add4~21_sumout\,
	datae => \inst|ALT_INV_Add4~37_sumout\,
	dataf => \inst|ALT_INV_Add4~1_sumout\,
	combout => \inst|y_motion~16_combout\);

-- Location: LABCELL_X29_Y75_N15
\inst|y_motion~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~15_combout\ = ( \inst|Add4~13_sumout\ & ( \inst|Add4~29_sumout\ & ( (!\inst|ball_y_pos[4]~DUPLICATE_q\ & (!\inst|ball_y_pos\(5) & (!\inst|Add4~17_sumout\ $ (\inst|ball_y_pos\(3))))) ) ) ) # ( !\inst|Add4~13_sumout\ & ( \inst|Add4~29_sumout\ 
-- & ( (\inst|ball_y_pos[4]~DUPLICATE_q\ & (!\inst|ball_y_pos\(5) & (!\inst|Add4~17_sumout\ $ (\inst|ball_y_pos\(3))))) ) ) ) # ( \inst|Add4~13_sumout\ & ( !\inst|Add4~29_sumout\ & ( (!\inst|ball_y_pos[4]~DUPLICATE_q\ & (\inst|ball_y_pos\(5) & 
-- (!\inst|Add4~17_sumout\ $ (\inst|ball_y_pos\(3))))) ) ) ) # ( !\inst|Add4~13_sumout\ & ( !\inst|Add4~29_sumout\ & ( (\inst|ball_y_pos[4]~DUPLICATE_q\ & (\inst|ball_y_pos\(5) & (!\inst|Add4~17_sumout\ $ (\inst|ball_y_pos\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000001000010000000010000100000000100001000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add4~17_sumout\,
	datab => \inst|ALT_INV_ball_y_pos[4]~DUPLICATE_q\,
	datac => \inst|ALT_INV_ball_y_pos\(5),
	datad => \inst|ALT_INV_ball_y_pos\(3),
	datae => \inst|ALT_INV_Add4~13_sumout\,
	dataf => \inst|ALT_INV_Add4~29_sumout\,
	combout => \inst|y_motion~15_combout\);

-- Location: LABCELL_X29_Y75_N9
\inst|LessThan15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan15~5_combout\ = ( \inst|y_motion~16_combout\ & ( \inst|y_motion~15_combout\ & ( (!\inst|LessThan15~3_combout\ & (\inst|LessThan15~4_combout\ & (!\inst|ball_y_pos\(6) $ (\inst|Add4~25_sumout\)))) # (\inst|LessThan15~3_combout\ & 
-- (!\inst|ball_y_pos\(6) $ ((\inst|Add4~25_sumout\)))) ) ) ) # ( \inst|y_motion~16_combout\ & ( !\inst|y_motion~15_combout\ & ( (\inst|LessThan15~4_combout\ & (!\inst|ball_y_pos\(6) $ (\inst|Add4~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100001100000000000000000100000111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan15~3_combout\,
	datab => \inst|ALT_INV_ball_y_pos\(6),
	datac => \inst|ALT_INV_Add4~25_sumout\,
	datad => \inst|ALT_INV_LessThan15~4_combout\,
	datae => \inst|ALT_INV_y_motion~16_combout\,
	dataf => \inst|ALT_INV_y_motion~15_combout\,
	combout => \inst|LessThan15~5_combout\);

-- Location: LABCELL_X30_Y72_N51
\inst|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal4~1_combout\ = ( \inst|Add0~17_sumout\ & ( (!\inst|ball_x_pos[1]~DUPLICATE_q\ & (\inst|Add0~21_sumout\ & (\inst|Add0~1_sumout\ & !\inst|Add0~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos[1]~DUPLICATE_q\,
	datab => \inst|ALT_INV_Add0~21_sumout\,
	datac => \inst|ALT_INV_Add0~1_sumout\,
	datad => \inst|ALT_INV_Add0~5_sumout\,
	dataf => \inst|ALT_INV_Add0~17_sumout\,
	combout => \inst|Equal4~1_combout\);

-- Location: LABCELL_X30_Y72_N39
\inst|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal4~2_combout\ = ( \inst|Equal4~0_combout\ & ( \inst|Equal4~1_combout\ & ( (\inst|Add0~25_sumout\ & (!\inst|Add0~13_sumout\ & (!\inst|Add0~33_sumout\ & !\inst|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~25_sumout\,
	datab => \inst|ALT_INV_Add0~13_sumout\,
	datac => \inst|ALT_INV_Add0~33_sumout\,
	datad => \inst|ALT_INV_Add0~29_sumout\,
	datae => \inst|ALT_INV_Equal4~0_combout\,
	dataf => \inst|ALT_INV_Equal4~1_combout\,
	combout => \inst|Equal4~2_combout\);

-- Location: LABCELL_X29_Y73_N48
\inst|x_motion~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~9_combout\ = ( \inst|x_motion~3_combout\ & ( ((\inst|x_motion~5_combout\ & !\inst|LessThan15~5_combout\)) # (\inst|Equal4~2_combout\) ) ) # ( !\inst|x_motion~3_combout\ & ( \inst|Equal4~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_x_motion~5_combout\,
	datac => \inst|ALT_INV_LessThan15~5_combout\,
	datad => \inst|ALT_INV_Equal4~2_combout\,
	dataf => \inst|ALT_INV_x_motion~3_combout\,
	combout => \inst|x_motion~9_combout\);

-- Location: FF_X29_Y73_N49
\inst|ball_x_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|x_motion~9_combout\,
	ena => \inst|ball_x_motion[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_motion\(3));

-- Location: LABCELL_X31_Y72_N9
\inst|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~29_sumout\ = SUM(( \inst|ball_x_motion\(3) ) + ( \inst|ball_x_pos\(3) ) + ( \inst|Add6~26\ ))
-- \inst|Add6~30\ = CARRY(( \inst|ball_x_motion\(3) ) + ( \inst|ball_x_pos\(3) ) + ( \inst|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos\(3),
	datad => \inst|ALT_INV_ball_x_motion\(3),
	cin => \inst|Add6~26\,
	sumout => \inst|Add6~29_sumout\,
	cout => \inst|Add6~30\);

-- Location: FF_X30_Y72_N44
\inst|ball_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add6~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(3));

-- Location: LABCELL_X30_Y72_N45
\inst|ball_x_pos[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_x_pos[4]~1_combout\ = !\inst|Add6~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add6~9_sumout\,
	combout => \inst|ball_x_pos[4]~1_combout\);

-- Location: FF_X30_Y72_N46
\inst|ball_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_x_pos[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(4));

-- Location: LABCELL_X30_Y72_N57
\inst|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal6~1_combout\ = ( !\inst|ball_x_pos[2]~DUPLICATE_q\ & ( \inst|ball_x_pos\(3) & ( (\inst|ball_x_pos\(4) & (\inst|ball_x_pos\(0) & (\inst|Equal6~0_combout\ & !\inst|ball_x_pos[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos\(4),
	datab => \inst|ALT_INV_ball_x_pos\(0),
	datac => \inst|ALT_INV_Equal6~0_combout\,
	datad => \inst|ALT_INV_ball_x_pos[1]~DUPLICATE_q\,
	datae => \inst|ALT_INV_ball_x_pos[2]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_ball_x_pos\(3),
	combout => \inst|Equal6~1_combout\);

-- Location: LABCELL_X29_Y73_N12
\inst|ball_x_motion[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_x_motion[0]~0_combout\ = ( \inst|Equal4~2_combout\ & ( \inst|x_motion~5_combout\ ) ) # ( !\inst|Equal4~2_combout\ & ( \inst|x_motion~5_combout\ & ( ((\inst|x_motion~3_combout\ & !\inst|LessThan15~5_combout\)) # (\inst|Equal6~1_combout\) ) ) ) # 
-- ( \inst|Equal4~2_combout\ & ( !\inst|x_motion~5_combout\ ) ) # ( !\inst|Equal4~2_combout\ & ( !\inst|x_motion~5_combout\ & ( ((\inst|x_motion~3_combout\ & (!\inst|LessThan15~5_combout\ & \inst|x_motion~6_combout\))) # (\inst|Equal6~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011111111111111111101110011011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_x_motion~3_combout\,
	datab => \inst|ALT_INV_Equal6~1_combout\,
	datac => \inst|ALT_INV_LessThan15~5_combout\,
	datad => \inst|ALT_INV_x_motion~6_combout\,
	datae => \inst|ALT_INV_Equal4~2_combout\,
	dataf => \inst|ALT_INV_x_motion~5_combout\,
	combout => \inst|ball_x_motion[0]~0_combout\);

-- Location: FF_X29_Y73_N56
\inst|ball_x_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_x_motion[0]~feeder_combout\,
	ena => \inst|ball_x_motion[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_motion\(0));

-- Location: FF_X30_Y72_N11
\inst|ball_x_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add6~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(0));

-- Location: LABCELL_X29_Y72_N6
\inst|x_motion~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~6_combout\ = ( !\inst|ball_x_pos\(3) & ( \inst|Equal6~0_combout\ & ( (\inst|ball_x_pos\(0) & (!\inst|ball_x_pos[4]~DUPLICATE_q\ & !\inst|ball_x_pos\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos\(0),
	datab => \inst|ALT_INV_ball_x_pos[4]~DUPLICATE_q\,
	datac => \inst|ALT_INV_ball_x_pos\(2),
	datae => \inst|ALT_INV_ball_x_pos\(3),
	dataf => \inst|ALT_INV_Equal6~0_combout\,
	combout => \inst|x_motion~6_combout\);

-- Location: LABCELL_X29_Y73_N30
\inst|x_motion~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~7_combout\ = ( \inst|LessThan14~1_combout\ & ( (!\inst|LessThan14~3_combout\ & \inst|x_motion~1_combout\) ) ) # ( !\inst|LessThan14~1_combout\ & ( \inst|x_motion~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_LessThan14~3_combout\,
	datad => \inst|ALT_INV_x_motion~1_combout\,
	dataf => \inst|ALT_INV_LessThan14~1_combout\,
	combout => \inst|x_motion~7_combout\);

-- Location: LABCELL_X30_Y73_N36
\inst|x_motion~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~2_combout\ = ( !\inst|Add4~37_sumout\ & ( !\inst|Add4~33_sumout\ & ( (!\inst|ball_y_pos\(8) & (!\inst|Add4~21_sumout\ & (\inst|ball_y_pos\(7) & !\inst|Add4~1_sumout\))) # (\inst|ball_y_pos\(8) & ((!\inst|Add4~1_sumout\) # 
-- ((!\inst|Add4~21_sumout\ & \inst|ball_y_pos\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(8),
	datab => \inst|ALT_INV_Add4~21_sumout\,
	datac => \inst|ALT_INV_ball_y_pos\(7),
	datad => \inst|ALT_INV_Add4~1_sumout\,
	datae => \inst|ALT_INV_Add4~37_sumout\,
	dataf => \inst|ALT_INV_Add4~33_sumout\,
	combout => \inst|x_motion~2_combout\);

-- Location: LABCELL_X30_Y73_N48
\inst|LessThan15~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan15~6_combout\ = ( !\inst|LessThan15~4_combout\ & ( (!\inst|LessThan15~3_combout\) # (!\inst|y_motion~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_LessThan15~3_combout\,
	datad => \inst|ALT_INV_y_motion~15_combout\,
	dataf => \inst|ALT_INV_LessThan15~4_combout\,
	combout => \inst|LessThan15~6_combout\);

-- Location: LABCELL_X30_Y73_N30
\inst|x_motion~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|x_motion~8_combout\ = ( !\inst|x_motion~2_combout\ & ( \inst|LessThan15~6_combout\ & ( (\inst|x_motion~7_combout\ & ((!\inst|ball_y_pos[6]~DUPLICATE_q\) # ((!\inst|y_motion~16_combout\) # (\inst|Add4~25_sumout\)))) ) ) ) # ( 
-- !\inst|x_motion~2_combout\ & ( !\inst|LessThan15~6_combout\ & ( (\inst|x_motion~7_combout\ & ((!\inst|y_motion~16_combout\) # ((!\inst|ball_y_pos[6]~DUPLICATE_q\ & \inst|Add4~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000010000000000000000000001111000010110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	datab => \inst|ALT_INV_Add4~25_sumout\,
	datac => \inst|ALT_INV_x_motion~7_combout\,
	datad => \inst|ALT_INV_y_motion~16_combout\,
	datae => \inst|ALT_INV_x_motion~2_combout\,
	dataf => \inst|ALT_INV_LessThan15~6_combout\,
	combout => \inst|x_motion~8_combout\);

-- Location: LABCELL_X30_Y73_N45
\inst|ball_x_motion~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_x_motion~1_combout\ = ( !\inst|x_motion~5_combout\ & ( \inst|x_motion~8_combout\ & ( (!\inst|Equal4~2_combout\ & (((\inst|ball_x_motion\(4)) # (\inst|Equal6~1_combout\)) # (\inst|x_motion~6_combout\))) ) ) ) # ( \inst|x_motion~5_combout\ & ( 
-- !\inst|x_motion~8_combout\ & ( (!\inst|Equal4~2_combout\ & ((\inst|ball_x_motion\(4)) # (\inst|Equal6~1_combout\))) ) ) ) # ( !\inst|x_motion~5_combout\ & ( !\inst|x_motion~8_combout\ & ( (!\inst|Equal4~2_combout\ & ((\inst|ball_x_motion\(4)) # 
-- (\inst|Equal6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000001110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_x_motion~6_combout\,
	datab => \inst|ALT_INV_Equal6~1_combout\,
	datac => \inst|ALT_INV_Equal4~2_combout\,
	datad => \inst|ALT_INV_ball_x_motion\(4),
	datae => \inst|ALT_INV_x_motion~5_combout\,
	dataf => \inst|ALT_INV_x_motion~8_combout\,
	combout => \inst|ball_x_motion~1_combout\);

-- Location: FF_X30_Y73_N40
\inst|ball_x_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|ball_x_motion~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_motion\(4));

-- Location: FF_X30_Y72_N35
\inst|ball_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add6~37_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(8));

-- Location: LABCELL_X30_Y72_N42
\inst|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal6~0_combout\ = ( !\inst|ball_x_pos\(6) & ( (!\inst|ball_x_pos\(8) & (!\inst|ball_x_pos\(9) & (\inst|ball_x_pos\(5) & !\inst|ball_x_pos\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos\(8),
	datab => \inst|ALT_INV_ball_x_pos\(9),
	datac => \inst|ALT_INV_ball_x_pos\(5),
	datad => \inst|ALT_INV_ball_x_pos\(7),
	dataf => \inst|ALT_INV_ball_x_pos\(6),
	combout => \inst|Equal6~0_combout\);

-- Location: LABCELL_X31_Y71_N30
\inst|y_motion~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~1_combout\ = ( \inst|ball_x_pos\(2) & ( \inst|ball_x_pos\(3) & ( \inst|ball_x_pos\(4) ) ) ) # ( !\inst|ball_x_pos\(2) & ( !\inst|ball_x_pos\(3) & ( (\inst|ball_x_pos[1]~DUPLICATE_q\ & !\inst|ball_x_pos\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_x_pos[1]~DUPLICATE_q\,
	datad => \inst|ALT_INV_ball_x_pos\(4),
	datae => \inst|ALT_INV_ball_x_pos\(2),
	dataf => \inst|ALT_INV_ball_x_pos\(3),
	combout => \inst|y_motion~1_combout\);

-- Location: LABCELL_X31_Y75_N12
\inst|y_motion~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~8_combout\ = ( \inst|pady[2]~DUPLICATE_q\ & ( \inst|y_motion~1_combout\ & ( (!\inst|Add1~9_sumout\ & (\inst|Equal6~0_combout\ & (!\inst|ball_y_pos\(1) $ (!\inst|pady[1]~DUPLICATE_q\)))) ) ) ) # ( !\inst|pady[2]~DUPLICATE_q\ & ( 
-- \inst|y_motion~1_combout\ & ( (\inst|Add1~9_sumout\ & (\inst|Equal6~0_combout\ & (!\inst|ball_y_pos\(1) $ (!\inst|pady[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001100000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(1),
	datab => \inst|ALT_INV_pady[1]~DUPLICATE_q\,
	datac => \inst|ALT_INV_Add1~9_sumout\,
	datad => \inst|ALT_INV_Equal6~0_combout\,
	datae => \inst|ALT_INV_pady[2]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_y_motion~1_combout\,
	combout => \inst|y_motion~8_combout\);

-- Location: LABCELL_X31_Y74_N24
\inst|y_motion~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~10_combout\ = ( \inst|Add1~29_sumout\ & ( \inst|y_motion~8_combout\ & ( \inst|pady\(9) ) ) ) # ( !\inst|Add1~29_sumout\ & ( \inst|y_motion~8_combout\ & ( !\inst|pady\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pady\(9),
	datae => \inst|ALT_INV_Add1~29_sumout\,
	dataf => \inst|ALT_INV_y_motion~8_combout\,
	combout => \inst|y_motion~10_combout\);

-- Location: LABCELL_X30_Y75_N21
\inst|y_motion~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~6_combout\ = ( \inst|Add1~13_sumout\ & ( \inst|Add1~17_sumout\ & ( (\inst|pady\(6) & (\inst|pady\(7) & (!\inst|pady\(8) $ (\inst|Add1~25_sumout\)))) ) ) ) # ( !\inst|Add1~13_sumout\ & ( \inst|Add1~17_sumout\ & ( (\inst|pady\(6) & 
-- (!\inst|pady\(7) & (!\inst|pady\(8) $ (\inst|Add1~25_sumout\)))) ) ) ) # ( \inst|Add1~13_sumout\ & ( !\inst|Add1~17_sumout\ & ( (!\inst|pady\(6) & (\inst|pady\(7) & (!\inst|pady\(8) $ (\inst|Add1~25_sumout\)))) ) ) ) # ( !\inst|Add1~13_sumout\ & ( 
-- !\inst|Add1~17_sumout\ & ( (!\inst|pady\(6) & (!\inst|pady\(7) & (!\inst|pady\(8) $ (\inst|Add1~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_pady\(6),
	datab => \inst|ALT_INV_pady\(8),
	datac => \inst|ALT_INV_pady\(7),
	datad => \inst|ALT_INV_Add1~25_sumout\,
	datae => \inst|ALT_INV_Add1~13_sumout\,
	dataf => \inst|ALT_INV_Add1~17_sumout\,
	combout => \inst|y_motion~6_combout\);

-- Location: LABCELL_X31_Y73_N24
\inst|y_motion~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~11_combout\ = ( \inst|y_motion~10_combout\ & ( \inst|y_motion~6_combout\ & ( (!\inst|ball_y_pos\(0) & (((\inst|y_motion~4_combout\ & \inst|y_motion~5_combout\)) # (\inst|y_motion~7_combout\))) ) ) ) # ( !\inst|y_motion~10_combout\ & ( 
-- \inst|y_motion~6_combout\ & ( (\inst|y_motion~4_combout\ & (!\inst|ball_y_pos\(0) & \inst|y_motion~5_combout\)) ) ) ) # ( \inst|y_motion~10_combout\ & ( !\inst|y_motion~6_combout\ & ( (\inst|y_motion~4_combout\ & (!\inst|ball_y_pos\(0) & 
-- \inst|y_motion~5_combout\)) ) ) ) # ( !\inst|y_motion~10_combout\ & ( !\inst|y_motion~6_combout\ & ( (\inst|y_motion~4_combout\ & (!\inst|ball_y_pos\(0) & \inst|y_motion~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_y_motion~4_combout\,
	datab => \inst|ALT_INV_ball_y_pos\(0),
	datac => \inst|ALT_INV_y_motion~7_combout\,
	datad => \inst|ALT_INV_y_motion~5_combout\,
	datae => \inst|ALT_INV_y_motion~10_combout\,
	dataf => \inst|ALT_INV_y_motion~6_combout\,
	combout => \inst|y_motion~11_combout\);

-- Location: FF_X31_Y73_N26
\inst|ball_y_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|y_motion~11_combout\,
	ena => \inst|ball_y_motion[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_motion\(3));

-- Location: FF_X30_Y75_N56
\inst|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add5~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(3));

-- Location: LABCELL_X29_Y73_N33
\inst|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = ( !\inst|ball_y_pos\(8) & ( (!\inst|ball_y_pos\(7) & (\inst|ball_y_pos\(5) & (\inst|ball_y_pos\(4) & !\inst|ball_y_pos[6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(7),
	datab => \inst|ALT_INV_ball_y_pos\(5),
	datac => \inst|ALT_INV_ball_y_pos\(4),
	datad => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_ball_y_pos\(8),
	combout => \inst|Equal2~0_combout\);

-- Location: LABCELL_X29_Y73_N6
\inst|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = ( \inst|Equal2~0_combout\ & ( (\inst|ball_y_pos\(0) & (!\inst|ball_y_pos\(2) & (!\inst|ball_y_pos\(1) & \inst|ball_y_pos\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(0),
	datab => \inst|ALT_INV_ball_y_pos\(2),
	datac => \inst|ALT_INV_ball_y_pos\(1),
	datad => \inst|ALT_INV_ball_y_pos\(3),
	dataf => \inst|ALT_INV_Equal2~0_combout\,
	combout => \inst|Equal2~1_combout\);

-- Location: LABCELL_X29_Y73_N51
\inst|y_motion~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~17_combout\ = ( \inst|Add4~21_sumout\ & ( (\inst|ball_y_pos\(7) & (!\inst|ball_y_pos[6]~DUPLICATE_q\ $ (\inst|Add4~25_sumout\))) ) ) # ( !\inst|Add4~21_sumout\ & ( (!\inst|ball_y_pos\(7) & (!\inst|ball_y_pos[6]~DUPLICATE_q\ $ 
-- (\inst|Add4~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	datac => \inst|ALT_INV_ball_y_pos\(7),
	datad => \inst|ALT_INV_Add4~25_sumout\,
	dataf => \inst|ALT_INV_Add4~21_sumout\,
	combout => \inst|y_motion~17_combout\);

-- Location: LABCELL_X29_Y73_N45
\inst|y_motion~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~0_combout\ = ( !\inst|Add4~37_sumout\ & ( \inst|y_motion~17_combout\ & ( (!\inst|Add4~33_sumout\ & (!\inst|ball_y_pos\(8) $ (\inst|Add4~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ball_y_pos\(8),
	datac => \inst|ALT_INV_Add4~33_sumout\,
	datad => \inst|ALT_INV_Add4~1_sumout\,
	datae => \inst|ALT_INV_Add4~37_sumout\,
	dataf => \inst|ALT_INV_y_motion~17_combout\,
	combout => \inst|y_motion~0_combout\);

-- Location: LABCELL_X31_Y73_N30
\inst|y_motion~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~2_combout\ = ( \inst|Equal6~0_combout\ & ( \inst|y_motion~1_combout\ & ( (!\inst|ball_y_pos\(0) & (!\inst|ball_y_pos\(1) $ (!\inst|Add4~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(1),
	datab => \inst|ALT_INV_ball_y_pos\(0),
	datac => \inst|ALT_INV_Add4~9_sumout\,
	datae => \inst|ALT_INV_Equal6~0_combout\,
	dataf => \inst|ALT_INV_y_motion~1_combout\,
	combout => \inst|y_motion~2_combout\);

-- Location: LABCELL_X30_Y75_N24
\inst|LessThan15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan15~2_combout\ = ( \inst|Add4~13_sumout\ & ( \inst|ball_y_pos\(4) ) ) # ( !\inst|Add4~13_sumout\ & ( !\inst|ball_y_pos\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos\(4),
	dataf => \inst|ALT_INV_Add4~13_sumout\,
	combout => \inst|LessThan15~2_combout\);

-- Location: LABCELL_X31_Y75_N45
\inst|LessThan15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan15~0_combout\ = ( !\inst|Add4~5_sumout\ & ( \inst|ball_y_pos\(2) ) ) # ( \inst|Add4~5_sumout\ & ( !\inst|ball_y_pos\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_Add4~5_sumout\,
	dataf => \inst|ALT_INV_ball_y_pos\(2),
	combout => \inst|LessThan15~0_combout\);

-- Location: MLABCELL_X28_Y75_N24
\inst|LessThan15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan15~1_combout\ = ( !\inst|ball_y_pos\(3) & ( \inst|Add4~17_sumout\ ) ) # ( \inst|ball_y_pos\(3) & ( !\inst|Add4~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_ball_y_pos\(3),
	dataf => \inst|ALT_INV_Add4~17_sumout\,
	combout => \inst|LessThan15~1_combout\);

-- Location: LABCELL_X31_Y73_N36
\inst|y_motion~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~3_combout\ = ( !\inst|LessThan15~0_combout\ & ( !\inst|LessThan15~1_combout\ & ( (\inst|y_motion~2_combout\ & (!\inst|LessThan15~2_combout\ & (!\inst|Add4~29_sumout\ $ (!\inst|ball_y_pos\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add4~29_sumout\,
	datab => \inst|ALT_INV_y_motion~2_combout\,
	datac => \inst|ALT_INV_LessThan15~2_combout\,
	datad => \inst|ALT_INV_ball_y_pos\(5),
	datae => \inst|ALT_INV_LessThan15~0_combout\,
	dataf => \inst|ALT_INV_LessThan15~1_combout\,
	combout => \inst|y_motion~3_combout\);

-- Location: LABCELL_X31_Y75_N39
\inst|y_motion~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~12_combout\ = ( !\inst|Add1~5_sumout\ & ( \inst|Add1~1_sumout\ & ( (!\inst|ball_y_pos\(1) & \inst|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(1),
	datad => \inst|ALT_INV_Add1~9_sumout\,
	datae => \inst|ALT_INV_Add1~5_sumout\,
	dataf => \inst|ALT_INV_Add1~1_sumout\,
	combout => \inst|y_motion~12_combout\);

-- Location: LABCELL_X31_Y73_N54
\inst|y_motion~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~13_combout\ = ( !\inst|Add1~29_sumout\ & ( \inst|y_motion~12_combout\ & ( (\inst|Add1~13_sumout\ & (!\inst|Add1~21_sumout\ & (\inst|Add1~25_sumout\ & \inst|Add1~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~13_sumout\,
	datab => \inst|ALT_INV_Add1~21_sumout\,
	datac => \inst|ALT_INV_Add1~25_sumout\,
	datad => \inst|ALT_INV_Add1~17_sumout\,
	datae => \inst|ALT_INV_Add1~29_sumout\,
	dataf => \inst|ALT_INV_y_motion~12_combout\,
	combout => \inst|y_motion~13_combout\);

-- Location: LABCELL_X30_Y75_N27
\inst|y_motion~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~14_combout\ = ( \inst|y_motion~8_combout\ & ( (\inst|y_motion~7_combout\ & (\inst|y_motion~6_combout\ & (!\inst|Add1~29_sumout\ $ (\inst|pady\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~29_sumout\,
	datab => \inst|ALT_INV_pady\(9),
	datac => \inst|ALT_INV_y_motion~7_combout\,
	datad => \inst|ALT_INV_y_motion~6_combout\,
	dataf => \inst|ALT_INV_y_motion~8_combout\,
	combout => \inst|y_motion~14_combout\);

-- Location: LABCELL_X31_Y73_N51
\inst|ball_y_motion[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_y_motion[0]~1_combout\ = ( \inst|y_motion~13_combout\ & ( \inst|y_motion~14_combout\ & ( ((!\inst|ball_y_pos\(0)) # ((\inst|y_motion~0_combout\ & \inst|y_motion~3_combout\))) # (\inst|Equal2~1_combout\) ) ) ) # ( !\inst|y_motion~13_combout\ & ( 
-- \inst|y_motion~14_combout\ & ( ((!\inst|ball_y_pos\(0)) # ((\inst|y_motion~0_combout\ & \inst|y_motion~3_combout\))) # (\inst|Equal2~1_combout\) ) ) ) # ( \inst|y_motion~13_combout\ & ( !\inst|y_motion~14_combout\ & ( ((!\inst|ball_y_pos\(0)) # 
-- ((\inst|y_motion~0_combout\ & \inst|y_motion~3_combout\))) # (\inst|Equal2~1_combout\) ) ) ) # ( !\inst|y_motion~13_combout\ & ( !\inst|y_motion~14_combout\ & ( ((\inst|y_motion~0_combout\ & \inst|y_motion~3_combout\)) # (\inst|Equal2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111110111011101111111011101110111111101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal2~1_combout\,
	datab => \inst|ALT_INV_ball_y_pos\(0),
	datac => \inst|ALT_INV_y_motion~0_combout\,
	datad => \inst|ALT_INV_y_motion~3_combout\,
	datae => \inst|ALT_INV_y_motion~13_combout\,
	dataf => \inst|ALT_INV_y_motion~14_combout\,
	combout => \inst|ball_y_motion[0]~1_combout\);

-- Location: FF_X31_Y73_N17
\inst|ball_y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_y_motion[0]~feeder_combout\,
	ena => \inst|ball_y_motion[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_motion\(0));

-- Location: FF_X30_Y75_N16
\inst|ball_y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add5~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(0));

-- Location: FF_X29_Y73_N29
\inst|ball_y_motion[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|ball_y_motion~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_motion[4]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y75_N0
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( \inst|Add1~29_sumout\ & ( !\inst|pady\(9) ) ) # ( !\inst|Add1~29_sumout\ & ( \inst|pady\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_pady\(9),
	dataf => \inst|ALT_INV_Add1~29_sumout\,
	combout => \inst|Equal1~0_combout\);

-- Location: LABCELL_X30_Y75_N12
\inst|y_motion~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|y_motion~9_combout\ = ( \inst|y_motion~5_combout\ & ( \inst|y_motion~8_combout\ & ( ((!\inst|Equal1~0_combout\ & (\inst|y_motion~6_combout\ & \inst|y_motion~7_combout\))) # (\inst|y_motion~4_combout\) ) ) ) # ( !\inst|y_motion~5_combout\ & ( 
-- \inst|y_motion~8_combout\ & ( (!\inst|Equal1~0_combout\ & (\inst|y_motion~6_combout\ & \inst|y_motion~7_combout\)) ) ) ) # ( \inst|y_motion~5_combout\ & ( !\inst|y_motion~8_combout\ & ( \inst|y_motion~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000010100011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_y_motion~4_combout\,
	datac => \inst|ALT_INV_y_motion~6_combout\,
	datad => \inst|ALT_INV_y_motion~7_combout\,
	datae => \inst|ALT_INV_y_motion~5_combout\,
	dataf => \inst|ALT_INV_y_motion~8_combout\,
	combout => \inst|y_motion~9_combout\);

-- Location: LABCELL_X29_Y73_N36
\inst|ball_y_motion~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_y_motion~0_combout\ = ( \inst|y_motion~3_combout\ & ( \inst|y_motion~9_combout\ & ( (\inst|ball_y_pos\(0) & (((\inst|Equal2~1_combout\) # (\inst|ball_y_motion[4]~DUPLICATE_q\)) # (\inst|y_motion~0_combout\))) ) ) ) # ( 
-- !\inst|y_motion~3_combout\ & ( \inst|y_motion~9_combout\ & ( (\inst|ball_y_pos\(0) & ((\inst|Equal2~1_combout\) # (\inst|ball_y_motion[4]~DUPLICATE_q\))) ) ) ) # ( \inst|y_motion~3_combout\ & ( !\inst|y_motion~9_combout\ & ( ((\inst|Equal2~1_combout\) # 
-- (\inst|ball_y_motion[4]~DUPLICATE_q\)) # (\inst|y_motion~0_combout\) ) ) ) # ( !\inst|y_motion~3_combout\ & ( !\inst|y_motion~9_combout\ & ( (\inst|Equal2~1_combout\) # (\inst|ball_y_motion[4]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111001111111111111100000101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(0),
	datab => \inst|ALT_INV_y_motion~0_combout\,
	datac => \inst|ALT_INV_ball_y_motion[4]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Equal2~1_combout\,
	datae => \inst|ALT_INV_y_motion~3_combout\,
	dataf => \inst|ALT_INV_y_motion~9_combout\,
	combout => \inst|ball_y_motion~0_combout\);

-- Location: FF_X29_Y73_N28
\inst|ball_y_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|ball_y_motion~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_motion\(4));

-- Location: LABCELL_X30_Y73_N24
\inst|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~1_sumout\ = SUM(( \inst|ball_y_pos\(8) ) + ( !\inst|ball_y_motion\(4) ) + ( \inst|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ball_y_pos\(8),
	datac => \inst|ALT_INV_ball_y_motion\(4),
	cin => \inst|Add5~10\,
	sumout => \inst|Add5~1_sumout\);

-- Location: FF_X31_Y75_N29
\inst|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	asdata => \inst|Add5~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(8));

-- Location: LABCELL_X27_Y74_N0
\inst2|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add3~13_sumout\ = SUM(( \inst2|pixel_row\(0) ) + ( VCC ) + ( !VCC ))
-- \inst2|Add3~14\ = CARRY(( \inst2|pixel_row\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(0),
	cin => GND,
	sumout => \inst2|Add3~13_sumout\,
	cout => \inst2|Add3~14\);

-- Location: LABCELL_X29_Y74_N9
\inst2|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_combout\ = ( !\inst2|Add2~21_sumout\ & ( (!\inst2|Add2~25_sumout\ & !\inst2|Add2~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~25_sumout\,
	datac => \inst2|ALT_INV_Add2~29_sumout\,
	dataf => \inst2|ALT_INV_Add2~21_sumout\,
	combout => \inst2|LessThan2~1_combout\);

-- Location: LABCELL_X30_Y74_N21
\inst2|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~2_combout\ = ( \inst2|Add2~33_sumout\ & ( \inst2|Add2~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_Add2~5_sumout\,
	dataf => \inst2|ALT_INV_Add2~33_sumout\,
	combout => \inst2|LessThan2~2_combout\);

-- Location: LABCELL_X30_Y74_N24
\inst2|process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_2~0_combout\ = ( !\inst2|Add2~17_sumout\ & ( (!\inst2|Add2~13_sumout\ & !\inst2|Add2~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add2~13_sumout\,
	datad => \inst2|ALT_INV_Add2~9_sumout\,
	dataf => \inst2|ALT_INV_Add2~17_sumout\,
	combout => \inst2|process_2~0_combout\);

-- Location: LABCELL_X29_Y74_N12
\inst2|vsync~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vsync~4_combout\ = ( \inst2|Add2~1_sumout\ & ( \inst2|vsync~3_combout\ & ( (!\inst2|Add2~13_sumout\ & (!\inst2|Add2~17_sumout\ & (!\inst2|Add2~9_sumout\ & \inst2|vsync~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~13_sumout\,
	datab => \inst2|ALT_INV_Add2~17_sumout\,
	datac => \inst2|ALT_INV_Add2~9_sumout\,
	datad => \inst2|ALT_INV_vsync~0_combout\,
	datae => \inst2|ALT_INV_Add2~1_sumout\,
	dataf => \inst2|ALT_INV_vsync~3_combout\,
	combout => \inst2|vsync~4_combout\);

-- Location: LABCELL_X29_Y74_N18
\inst2|process_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_2~1_combout\ = ( \inst2|process_2~0_combout\ & ( \inst2|vsync~4_combout\ & ( (!\inst2|Add2~37_sumout\) # (!\inst2|LessThan2~2_combout\) ) ) ) # ( \inst2|process_2~0_combout\ & ( !\inst2|vsync~4_combout\ & ( (!\inst2|Add2~37_sumout\ & 
-- ((!\inst2|LessThan2~1_combout\) # ((!\inst2|Add2~1_sumout\) # (\inst2|LessThan2~2_combout\)))) # (\inst2|Add2~37_sumout\ & (((\inst2|LessThan2~1_combout\ & !\inst2|LessThan2~2_combout\)) # (\inst2|Add2~1_sumout\))) ) ) ) # ( !\inst2|process_2~0_combout\ & 
-- ( !\inst2|vsync~4_combout\ & ( \inst2|Add2~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101110101101111100000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~37_sumout\,
	datab => \inst2|ALT_INV_LessThan2~1_combout\,
	datac => \inst2|ALT_INV_LessThan2~2_combout\,
	datad => \inst2|ALT_INV_Add2~1_sumout\,
	datae => \inst2|ALT_INV_process_2~0_combout\,
	dataf => \inst2|ALT_INV_vsync~4_combout\,
	combout => \inst2|process_2~1_combout\);

-- Location: FF_X29_Y74_N20
\inst2|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add3~13_sumout\,
	sclr => \inst2|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(0));

-- Location: LABCELL_X27_Y74_N3
\inst2|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add3~9_sumout\ = SUM(( \inst2|pixel_row\(1) ) + ( GND ) + ( \inst2|Add3~14\ ))
-- \inst2|Add3~10\ = CARRY(( \inst2|pixel_row\(1) ) + ( GND ) + ( \inst2|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(1),
	cin => \inst2|Add3~14\,
	sumout => \inst2|Add3~9_sumout\,
	cout => \inst2|Add3~10\);

-- Location: FF_X29_Y74_N50
\inst2|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add3~9_sumout\,
	sclr => \inst2|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(1));

-- Location: LABCELL_X27_Y74_N6
\inst2|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add3~5_sumout\ = SUM(( \inst2|pixel_row\(2) ) + ( GND ) + ( \inst2|Add3~10\ ))
-- \inst2|Add3~6\ = CARRY(( \inst2|pixel_row\(2) ) + ( GND ) + ( \inst2|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(2),
	cin => \inst2|Add3~10\,
	sumout => \inst2|Add3~5_sumout\,
	cout => \inst2|Add3~6\);

-- Location: FF_X29_Y74_N14
\inst2|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add3~5_sumout\,
	sclr => \inst2|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(2));

-- Location: LABCELL_X27_Y74_N9
\inst2|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add3~1_sumout\ = SUM(( \inst2|pixel_row\(3) ) + ( GND ) + ( \inst2|Add3~6\ ))
-- \inst2|Add3~2\ = CARRY(( \inst2|pixel_row\(3) ) + ( GND ) + ( \inst2|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(3),
	cin => \inst2|Add3~6\,
	sumout => \inst2|Add3~1_sumout\,
	cout => \inst2|Add3~2\);

-- Location: FF_X29_Y74_N47
\inst2|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add3~1_sumout\,
	sclr => \inst2|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(3));

-- Location: LABCELL_X27_Y74_N12
\inst2|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add3~21_sumout\ = SUM(( \inst2|pixel_row\(4) ) + ( GND ) + ( \inst2|Add3~2\ ))
-- \inst2|Add3~22\ = CARRY(( \inst2|pixel_row\(4) ) + ( GND ) + ( \inst2|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(4),
	cin => \inst2|Add3~2\,
	sumout => \inst2|Add3~21_sumout\,
	cout => \inst2|Add3~22\);

-- Location: MLABCELL_X28_Y74_N36
\inst2|pixel_row[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_row[4]~feeder_combout\ = ( \inst2|Add3~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Add3~21_sumout\,
	combout => \inst2|pixel_row[4]~feeder_combout\);

-- Location: FF_X28_Y74_N38
\inst2|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	d => \inst2|pixel_row[4]~feeder_combout\,
	sclr => \inst2|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(4));

-- Location: LABCELL_X27_Y74_N15
\inst2|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add3~17_sumout\ = SUM(( \inst2|pixel_row\(5) ) + ( GND ) + ( \inst2|Add3~22\ ))
-- \inst2|Add3~18\ = CARRY(( \inst2|pixel_row\(5) ) + ( GND ) + ( \inst2|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(5),
	cin => \inst2|Add3~22\,
	sumout => \inst2|Add3~17_sumout\,
	cout => \inst2|Add3~18\);

-- Location: FF_X29_Y74_N35
\inst2|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add3~17_sumout\,
	sclr => \inst2|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(5));

-- Location: LABCELL_X27_Y74_N18
\inst2|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add3~33_sumout\ = SUM(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst2|Add3~18\ ))
-- \inst2|Add3~34\ = CARRY(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst2|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(6),
	cin => \inst2|Add3~18\,
	sumout => \inst2|Add3~33_sumout\,
	cout => \inst2|Add3~34\);

-- Location: FF_X29_Y74_N59
\inst2|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add3~33_sumout\,
	sclr => \inst2|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(6));

-- Location: LABCELL_X27_Y74_N21
\inst2|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add3~29_sumout\ = SUM(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst2|Add3~34\ ))
-- \inst2|Add3~30\ = CARRY(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst2|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(7),
	cin => \inst2|Add3~34\,
	sumout => \inst2|Add3~29_sumout\,
	cout => \inst2|Add3~30\);

-- Location: FF_X29_Y74_N38
\inst2|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add3~29_sumout\,
	sclr => \inst2|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(7));

-- Location: LABCELL_X27_Y74_N24
\inst2|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add3~25_sumout\ = SUM(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst2|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(8),
	cin => \inst2|Add3~30\,
	sumout => \inst2|Add3~25_sumout\);

-- Location: FF_X29_Y74_N32
\inst2|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|Add3~25_sumout\,
	sclr => \inst2|process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(8));

-- Location: LABCELL_X29_Y72_N54
\inst|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~8_combout\ = ( !\inst|Add1~29_sumout\ & ( (!\inst|Add1~25_sumout\ & \inst2|pixel_row\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Add1~25_sumout\,
	datad => \inst2|ALT_INV_pixel_row\(8),
	datae => \inst|ALT_INV_Add1~29_sumout\,
	combout => \inst|LessThan3~8_combout\);

-- Location: LABCELL_X30_Y71_N30
\inst2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~37_sumout\ = SUM(( \inst2|pixel_column[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst2|Add1~38\ = CARRY(( \inst2|pixel_column[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst2|Add1~37_sumout\,
	cout => \inst2|Add1~38\);

-- Location: LABCELL_X30_Y71_N3
\inst2|pixel_column[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[0]~feeder_combout\ = ( \inst2|Add1~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Add1~37_sumout\,
	combout => \inst2|pixel_column[0]~feeder_combout\);

-- Location: MLABCELL_X28_Y72_N42
\inst2|process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_1~1_combout\ = ( \inst2|Add0~21_sumout\ & ( \inst2|Add0~17_sumout\ & ( (((\inst2|Add0~29_sumout\) # (\inst2|Add0~37_sumout\)) # (\inst2|Add0~25_sumout\)) # (\inst2|Add0~33_sumout\) ) ) ) # ( !\inst2|Add0~21_sumout\ & ( 
-- !\inst2|Add0~17_sumout\ & ( (!\inst2|Add0~37_sumout\) # ((!\inst2|Add0~33_sumout\ & (!\inst2|Add0~25_sumout\ & !\inst2|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000000000000000000000000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~33_sumout\,
	datab => \inst2|ALT_INV_Add0~25_sumout\,
	datac => \inst2|ALT_INV_Add0~37_sumout\,
	datad => \inst2|ALT_INV_Add0~29_sumout\,
	datae => \inst2|ALT_INV_Add0~21_sumout\,
	dataf => \inst2|ALT_INV_Add0~17_sumout\,
	combout => \inst2|process_1~1_combout\);

-- Location: FF_X30_Y71_N5
\inst2|pixel_column[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	d => \inst2|pixel_column[0]~feeder_combout\,
	sclr => \inst2|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column[0]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y71_N33
\inst2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~25_sumout\ = SUM(( \inst2|pixel_column\(1) ) + ( GND ) + ( \inst2|Add1~38\ ))
-- \inst2|Add1~26\ = CARRY(( \inst2|pixel_column\(1) ) + ( GND ) + ( \inst2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(1),
	cin => \inst2|Add1~38\,
	sumout => \inst2|Add1~25_sumout\,
	cout => \inst2|Add1~26\);

-- Location: LABCELL_X29_Y71_N27
\inst2|pixel_column[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[1]~feeder_combout\ = ( \inst2|Add1~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Add1~25_sumout\,
	combout => \inst2|pixel_column[1]~feeder_combout\);

-- Location: FF_X29_Y71_N28
\inst2|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	d => \inst2|pixel_column[1]~feeder_combout\,
	sclr => \inst2|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(1));

-- Location: LABCELL_X30_Y71_N36
\inst2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~21_sumout\ = SUM(( \inst2|pixel_column[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add1~26\ ))
-- \inst2|Add1~22\ = CARRY(( \inst2|pixel_column[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	cin => \inst2|Add1~26\,
	sumout => \inst2|Add1~21_sumout\,
	cout => \inst2|Add1~22\);

-- Location: FF_X30_Y71_N17
\inst2|pixel_column[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~21_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column[2]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y71_N39
\inst2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~17_sumout\ = SUM(( \inst2|pixel_column\(3) ) + ( GND ) + ( \inst2|Add1~22\ ))
-- \inst2|Add1~18\ = CARRY(( \inst2|pixel_column\(3) ) + ( GND ) + ( \inst2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(3),
	cin => \inst2|Add1~22\,
	sumout => \inst2|Add1~17_sumout\,
	cout => \inst2|Add1~18\);

-- Location: FF_X30_Y71_N14
\inst2|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~17_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(3));

-- Location: LABCELL_X30_Y71_N42
\inst2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~13_sumout\ = SUM(( \inst2|pixel_column\(4) ) + ( GND ) + ( \inst2|Add1~18\ ))
-- \inst2|Add1~14\ = CARRY(( \inst2|pixel_column\(4) ) + ( GND ) + ( \inst2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(4),
	cin => \inst2|Add1~18\,
	sumout => \inst2|Add1~13_sumout\,
	cout => \inst2|Add1~14\);

-- Location: FF_X28_Y72_N59
\inst2|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~13_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(4));

-- Location: LABCELL_X30_Y71_N45
\inst2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~29_sumout\ = SUM(( \inst2|pixel_column[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add1~14\ ))
-- \inst2|Add1~30\ = CARRY(( \inst2|pixel_column[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column[5]~DUPLICATE_q\,
	cin => \inst2|Add1~14\,
	sumout => \inst2|Add1~29_sumout\,
	cout => \inst2|Add1~30\);

-- Location: FF_X30_Y71_N2
\inst2|pixel_column[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~29_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column[5]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y71_N48
\inst2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~33_sumout\ = SUM(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst2|Add1~30\ ))
-- \inst2|Add1~34\ = CARRY(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst2|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(6),
	cin => \inst2|Add1~30\,
	sumout => \inst2|Add1~33_sumout\,
	cout => \inst2|Add1~34\);

-- Location: LABCELL_X29_Y72_N0
\inst2|pixel_column[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[6]~feeder_combout\ = ( \inst2|Add1~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Add1~33_sumout\,
	combout => \inst2|pixel_column[6]~feeder_combout\);

-- Location: FF_X29_Y72_N1
\inst2|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	d => \inst2|pixel_column[6]~feeder_combout\,
	sclr => \inst2|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(6));

-- Location: LABCELL_X30_Y71_N51
\inst2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~5_sumout\ = SUM(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst2|Add1~34\ ))
-- \inst2|Add1~6\ = CARRY(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst2|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(7),
	cin => \inst2|Add1~34\,
	sumout => \inst2|Add1~5_sumout\,
	cout => \inst2|Add1~6\);

-- Location: FF_X29_Y72_N10
\inst2|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~5_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(7));

-- Location: LABCELL_X30_Y71_N54
\inst2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~9_sumout\ = SUM(( \inst2|pixel_column[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add1~6\ ))
-- \inst2|Add1~10\ = CARRY(( \inst2|pixel_column[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column[8]~DUPLICATE_q\,
	cin => \inst2|Add1~6\,
	sumout => \inst2|Add1~9_sumout\,
	cout => \inst2|Add1~10\);

-- Location: FF_X29_Y72_N13
\inst2|pixel_column[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~9_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column[8]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y72_N12
\inst|LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~8_combout\ = ( \inst2|pixel_column[8]~DUPLICATE_q\ & ( !\inst|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add0~33_sumout\,
	dataf => \inst2|ALT_INV_pixel_column[8]~DUPLICATE_q\,
	combout => \inst|LessThan1~8_combout\);

-- Location: LABCELL_X30_Y71_N57
\inst2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~1_sumout\ = SUM(( \inst2|pixel_column[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	cin => \inst2|Add1~10\,
	sumout => \inst2|Add1~1_sumout\);

-- Location: FF_X29_Y72_N35
\inst2|pixel_column[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~1_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column[9]~DUPLICATE_q\);

-- Location: FF_X29_Y72_N14
\inst2|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~9_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(8));

-- Location: LABCELL_X29_Y72_N18
\inst|ball_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~0_combout\ = ( \inst|ball_y_pos\(8) & ( \inst2|pixel_row\(8) & ( (!\inst2|pixel_column[9]~DUPLICATE_q\ & (!\inst|ball_x_pos\(9) & ((!\inst|ball_x_pos\(8)) # (\inst2|pixel_column\(8))))) # (\inst2|pixel_column[9]~DUPLICATE_q\ & 
-- ((!\inst|ball_x_pos\(9)) # ((!\inst|ball_x_pos\(8)) # (\inst2|pixel_column\(8))))) ) ) ) # ( !\inst|ball_y_pos\(8) & ( \inst2|pixel_row\(8) & ( (!\inst2|pixel_column[9]~DUPLICATE_q\ & (!\inst|ball_x_pos\(9) & ((!\inst|ball_x_pos\(8)) # 
-- (\inst2|pixel_column\(8))))) # (\inst2|pixel_column[9]~DUPLICATE_q\ & ((!\inst|ball_x_pos\(9)) # ((!\inst|ball_x_pos\(8)) # (\inst2|pixel_column\(8))))) ) ) ) # ( !\inst|ball_y_pos\(8) & ( !\inst2|pixel_row\(8) & ( (!\inst2|pixel_column[9]~DUPLICATE_q\ & 
-- (!\inst|ball_x_pos\(9) & ((!\inst|ball_x_pos\(8)) # (\inst2|pixel_column\(8))))) # (\inst2|pixel_column[9]~DUPLICATE_q\ & ((!\inst|ball_x_pos\(9)) # ((!\inst|ball_x_pos\(8)) # (\inst2|pixel_column\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011011101000000000000000011010100110111011101010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	datab => \inst|ALT_INV_ball_x_pos\(9),
	datac => \inst|ALT_INV_ball_x_pos\(8),
	datad => \inst2|ALT_INV_pixel_column\(8),
	datae => \inst|ALT_INV_ball_y_pos\(8),
	dataf => \inst2|ALT_INV_pixel_row\(8),
	combout => \inst|ball_on~0_combout\);

-- Location: LABCELL_X29_Y72_N48
\inst|ball_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~1_combout\ = ( \inst|Add0~25_sumout\ & ( \inst2|pixel_column[9]~DUPLICATE_q\ & ( (!\inst|LessThan3~8_combout\ & (\inst|ball_on~0_combout\ & ((!\inst|LessThan1~8_combout\) # (\inst|Add0~29_sumout\)))) ) ) ) # ( !\inst|Add0~25_sumout\ & ( 
-- \inst2|pixel_column[9]~DUPLICATE_q\ & ( (!\inst|LessThan3~8_combout\ & (\inst|ball_on~0_combout\ & \inst|Add0~29_sumout\)) ) ) ) # ( \inst|Add0~25_sumout\ & ( !\inst2|pixel_column[9]~DUPLICATE_q\ & ( (!\inst|LessThan3~8_combout\ & 
-- \inst|ball_on~0_combout\) ) ) ) # ( !\inst|Add0~25_sumout\ & ( !\inst2|pixel_column[9]~DUPLICATE_q\ & ( (!\inst|LessThan3~8_combout\ & (\inst|ball_on~0_combout\ & ((!\inst|LessThan1~8_combout\) # (\inst|Add0~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010000010100000101000000000000010100000100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan3~8_combout\,
	datab => \inst|ALT_INV_LessThan1~8_combout\,
	datac => \inst|ALT_INV_ball_on~0_combout\,
	datad => \inst|ALT_INV_Add0~29_sumout\,
	datae => \inst|ALT_INV_Add0~25_sumout\,
	dataf => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	combout => \inst|ball_on~1_combout\);

-- Location: FF_X29_Y72_N34
\inst2|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~1_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(9));

-- Location: LABCELL_X30_Y72_N33
\inst|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = ( \inst|ball_x_pos\(9) & ( (\inst2|pixel_column\(9) & (!\inst2|pixel_column[8]~DUPLICATE_q\ $ (\inst|ball_x_pos\(8)))) ) ) # ( !\inst|ball_x_pos\(9) & ( (!\inst2|pixel_column\(9) & (!\inst2|pixel_column[8]~DUPLICATE_q\ $ 
-- (\inst|ball_x_pos\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column[8]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_column\(9),
	datad => \inst|ALT_INV_ball_x_pos\(8),
	dataf => \inst|ALT_INV_ball_x_pos\(9),
	combout => \inst|LessThan0~4_combout\);

-- Location: FF_X30_Y71_N1
\inst2|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~29_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(5));

-- Location: LABCELL_X29_Y71_N51
\inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ( \inst|ball_x_pos\(7) & ( \inst|ball_x_pos[6]~DUPLICATE_q\ & ( (\inst2|pixel_column\(6) & (\inst2|pixel_column\(7) & (!\inst|ball_x_pos\(5) $ (!\inst2|pixel_column\(5))))) ) ) ) # ( !\inst|ball_x_pos\(7) & ( 
-- \inst|ball_x_pos[6]~DUPLICATE_q\ & ( (\inst2|pixel_column\(6) & (!\inst2|pixel_column\(7) & (!\inst|ball_x_pos\(5) $ (!\inst2|pixel_column\(5))))) ) ) ) # ( \inst|ball_x_pos\(7) & ( !\inst|ball_x_pos[6]~DUPLICATE_q\ & ( (!\inst2|pixel_column\(6) & 
-- (\inst2|pixel_column\(7) & (!\inst|ball_x_pos\(5) $ (!\inst2|pixel_column\(5))))) ) ) ) # ( !\inst|ball_x_pos\(7) & ( !\inst|ball_x_pos[6]~DUPLICATE_q\ & ( (!\inst2|pixel_column\(6) & (!\inst2|pixel_column\(7) & (!\inst|ball_x_pos\(5) $ 
-- (!\inst2|pixel_column\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000000000000010100000010100000000000000000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(6),
	datab => \inst|ALT_INV_ball_x_pos\(5),
	datac => \inst2|ALT_INV_pixel_column\(5),
	datad => \inst2|ALT_INV_pixel_column\(7),
	datae => \inst|ALT_INV_ball_x_pos\(7),
	dataf => \inst|ALT_INV_ball_x_pos[6]~DUPLICATE_q\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LABCELL_X29_Y71_N3
\inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = ( \inst|ball_x_pos\(7) & ( \inst2|pixel_column\(5) & ( (!\inst2|pixel_column\(7)) # ((!\inst2|pixel_column\(6) & \inst|ball_x_pos[6]~DUPLICATE_q\)) ) ) ) # ( !\inst|ball_x_pos\(7) & ( \inst2|pixel_column\(5) & ( 
-- (!\inst2|pixel_column\(6) & (\inst|ball_x_pos[6]~DUPLICATE_q\ & !\inst2|pixel_column\(7))) ) ) ) # ( \inst|ball_x_pos\(7) & ( !\inst2|pixel_column\(5) & ( (!\inst2|pixel_column\(7)) # ((!\inst2|pixel_column\(6) & ((!\inst|ball_x_pos\(5)) # 
-- (\inst|ball_x_pos[6]~DUPLICATE_q\))) # (\inst2|pixel_column\(6) & (\inst|ball_x_pos[6]~DUPLICATE_q\ & !\inst|ball_x_pos\(5)))) ) ) ) # ( !\inst|ball_x_pos\(7) & ( !\inst2|pixel_column\(5) & ( (!\inst2|pixel_column\(7) & ((!\inst2|pixel_column\(6) & 
-- ((!\inst|ball_x_pos\(5)) # (\inst|ball_x_pos[6]~DUPLICATE_q\))) # (\inst2|pixel_column\(6) & (\inst|ball_x_pos[6]~DUPLICATE_q\ & !\inst|ball_x_pos\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000000000111111111011001000100010000000001111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(6),
	datab => \inst|ALT_INV_ball_x_pos[6]~DUPLICATE_q\,
	datac => \inst|ALT_INV_ball_x_pos\(5),
	datad => \inst2|ALT_INV_pixel_column\(7),
	datae => \inst|ALT_INV_ball_x_pos\(7),
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst|LessThan0~3_combout\);

-- Location: FF_X31_Y72_N34
\inst|ball_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vsync~q\,
	d => \inst|ball_x_pos[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_x_pos\(1));

-- Location: LABCELL_X30_Y71_N9
\inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ( \inst2|pixel_column\(1) & ( \inst|ball_x_pos\(0) & ( (!\inst|ball_x_pos\(1) & !\inst2|pixel_column[0]~DUPLICATE_q\) ) ) ) # ( !\inst2|pixel_column\(1) & ( \inst|ball_x_pos\(0) & ( (!\inst|ball_x_pos\(1)) # 
-- (!\inst2|pixel_column[0]~DUPLICATE_q\) ) ) ) # ( !\inst2|pixel_column\(1) & ( !\inst|ball_x_pos\(0) & ( !\inst|ball_x_pos\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000011111010111110101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos\(1),
	datac => \inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_pixel_column\(1),
	dataf => \inst|ALT_INV_ball_x_pos\(0),
	combout => \inst|LessThan0~1_combout\);

-- Location: LABCELL_X29_Y71_N33
\inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = ( \inst2|pixel_column\(3) & ( \inst|ball_x_pos\(3) & ( (!\inst2|pixel_column[2]~DUPLICATE_q\ & ((\inst|ball_x_pos\(2)) # (\inst|LessThan0~1_combout\))) # (\inst2|pixel_column[2]~DUPLICATE_q\ & (\inst|LessThan0~1_combout\ & 
-- \inst|ball_x_pos\(2))) ) ) ) # ( !\inst2|pixel_column\(3) & ( \inst|ball_x_pos\(3) ) ) # ( !\inst2|pixel_column\(3) & ( !\inst|ball_x_pos\(3) & ( (!\inst2|pixel_column[2]~DUPLICATE_q\ & ((\inst|ball_x_pos\(2)) # (\inst|LessThan0~1_combout\))) # 
-- (\inst2|pixel_column[2]~DUPLICATE_q\ & (\inst|LessThan0~1_combout\ & \inst|ball_x_pos\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000000000000000011111111111111110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	datac => \inst|ALT_INV_LessThan0~1_combout\,
	datad => \inst|ALT_INV_ball_x_pos\(2),
	datae => \inst2|ALT_INV_pixel_column\(3),
	dataf => \inst|ALT_INV_ball_x_pos\(3),
	combout => \inst|LessThan0~2_combout\);

-- Location: LABCELL_X29_Y71_N42
\inst|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = ( \inst|LessThan0~3_combout\ & ( \inst|LessThan0~2_combout\ & ( \inst|LessThan0~4_combout\ ) ) ) # ( !\inst|LessThan0~3_combout\ & ( \inst|LessThan0~2_combout\ & ( (\inst|LessThan0~4_combout\ & (\inst|LessThan0~0_combout\ & 
-- ((!\inst|ball_x_pos\(4)) # (!\inst2|pixel_column\(4))))) ) ) ) # ( \inst|LessThan0~3_combout\ & ( !\inst|LessThan0~2_combout\ & ( \inst|LessThan0~4_combout\ ) ) ) # ( !\inst|LessThan0~3_combout\ & ( !\inst|LessThan0~2_combout\ & ( (!\inst|ball_x_pos\(4) & 
-- (\inst|LessThan0~4_combout\ & (\inst|LessThan0~0_combout\ & !\inst2|pixel_column\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000001100110011001100000011000000100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos\(4),
	datab => \inst|ALT_INV_LessThan0~4_combout\,
	datac => \inst|ALT_INV_LessThan0~0_combout\,
	datad => \inst2|ALT_INV_pixel_column\(4),
	datae => \inst|ALT_INV_LessThan0~3_combout\,
	dataf => \inst|ALT_INV_LessThan0~2_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LABCELL_X29_Y71_N57
\inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = ( \inst|Add0~1_sumout\ & ( !\inst2|pixel_column\(4) ) ) # ( !\inst|Add0~1_sumout\ & ( \inst2|pixel_column\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(4),
	datae => \inst|ALT_INV_Add0~1_sumout\,
	combout => \inst|LessThan1~0_combout\);

-- Location: LABCELL_X29_Y71_N36
\inst|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = ( \inst2|pixel_column\(6) & ( \inst2|pixel_column\(5) & ( (\inst|Add0~21_sumout\ & (\inst|Add0~17_sumout\ & (!\inst|Add0~13_sumout\ $ (\inst2|pixel_column\(7))))) ) ) ) # ( !\inst2|pixel_column\(6) & ( \inst2|pixel_column\(5) 
-- & ( (\inst|Add0~21_sumout\ & (!\inst|Add0~17_sumout\ & (!\inst|Add0~13_sumout\ $ (\inst2|pixel_column\(7))))) ) ) ) # ( \inst2|pixel_column\(6) & ( !\inst2|pixel_column\(5) & ( (!\inst|Add0~21_sumout\ & (\inst|Add0~17_sumout\ & (!\inst|Add0~13_sumout\ $ 
-- (\inst2|pixel_column\(7))))) ) ) ) # ( !\inst2|pixel_column\(6) & ( !\inst2|pixel_column\(5) & ( (!\inst|Add0~21_sumout\ & (!\inst|Add0~17_sumout\ & (!\inst|Add0~13_sumout\ $ (\inst2|pixel_column\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~21_sumout\,
	datab => \inst|ALT_INV_Add0~17_sumout\,
	datac => \inst|ALT_INV_Add0~13_sumout\,
	datad => \inst2|ALT_INV_pixel_column\(7),
	datae => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst|LessThan1~4_combout\);

-- Location: LABCELL_X29_Y71_N18
\inst|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_combout\ = ( \inst2|pixel_column\(6) & ( \inst2|pixel_column\(5) & ( (!\inst|Add0~13_sumout\ & ((!\inst|Add0~21_sumout\) # ((!\inst|Add0~17_sumout\) # (\inst2|pixel_column\(7))))) # (\inst|Add0~13_sumout\ & (\inst2|pixel_column\(7) & 
-- ((!\inst|Add0~21_sumout\) # (!\inst|Add0~17_sumout\)))) ) ) ) # ( !\inst2|pixel_column\(6) & ( \inst2|pixel_column\(5) & ( (!\inst|Add0~13_sumout\ & (((!\inst|Add0~21_sumout\ & !\inst|Add0~17_sumout\)) # (\inst2|pixel_column\(7)))) # 
-- (\inst|Add0~13_sumout\ & (!\inst|Add0~21_sumout\ & (!\inst|Add0~17_sumout\ & \inst2|pixel_column\(7)))) ) ) ) # ( \inst2|pixel_column\(6) & ( !\inst2|pixel_column\(5) & ( (!\inst|Add0~17_sumout\ & ((!\inst|Add0~13_sumout\) # (\inst2|pixel_column\(7)))) # 
-- (\inst|Add0~17_sumout\ & (!\inst|Add0~13_sumout\ & \inst2|pixel_column\(7))) ) ) ) # ( !\inst2|pixel_column\(6) & ( !\inst2|pixel_column\(5) & ( (!\inst|Add0~13_sumout\ & \inst2|pixel_column\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000110000001111110010000000111110001110000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~21_sumout\,
	datab => \inst|ALT_INV_Add0~17_sumout\,
	datac => \inst|ALT_INV_Add0~13_sumout\,
	datad => \inst2|ALT_INV_pixel_column\(7),
	datae => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst|LessThan1~5_combout\);

-- Location: LABCELL_X27_Y72_N30
\inst|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = !\inst|Add0~5_sumout\ $ (!\inst2|pixel_column\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add0~5_sumout\,
	datad => \inst2|ALT_INV_pixel_column\(3),
	combout => \inst|LessThan1~1_combout\);

-- Location: FF_X30_Y71_N4
\inst2|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	d => \inst2|pixel_column[0]~feeder_combout\,
	sclr => \inst2|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(0));

-- Location: LABCELL_X30_Y71_N24
\inst|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = ( \inst2|pixel_column\(1) & ( \inst|ball_x_pos\(0) & ( (!\inst|ball_x_pos\(1) & (\inst2|pixel_column[2]~DUPLICATE_q\ & !\inst|Add0~9_sumout\)) # (\inst|ball_x_pos\(1) & ((!\inst|Add0~9_sumout\) # 
-- (\inst2|pixel_column[2]~DUPLICATE_q\))) ) ) ) # ( !\inst2|pixel_column\(1) & ( \inst|ball_x_pos\(0) & ( (\inst2|pixel_column[2]~DUPLICATE_q\ & !\inst|Add0~9_sumout\) ) ) ) # ( \inst2|pixel_column\(1) & ( !\inst|ball_x_pos\(0) & ( 
-- (!\inst2|pixel_column[2]~DUPLICATE_q\ & (!\inst|Add0~9_sumout\ & ((\inst2|pixel_column\(0)) # (\inst|ball_x_pos\(1))))) # (\inst2|pixel_column[2]~DUPLICATE_q\ & (((!\inst|Add0~9_sumout\) # (\inst2|pixel_column\(0))) # (\inst|ball_x_pos\(1)))) ) ) ) # ( 
-- !\inst2|pixel_column\(1) & ( !\inst|ball_x_pos\(0) & ( (!\inst2|pixel_column[2]~DUPLICATE_q\ & (\inst|ball_x_pos\(1) & (\inst2|pixel_column\(0) & !\inst|Add0~9_sumout\))) # (\inst2|pixel_column[2]~DUPLICATE_q\ & ((!\inst|Add0~9_sumout\) # 
-- ((\inst|ball_x_pos\(1) & \inst2|pixel_column\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000001011111110001001100110011000000000111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_x_pos\(1),
	datab => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_column\(0),
	datad => \inst|ALT_INV_Add0~9_sumout\,
	datae => \inst2|ALT_INV_pixel_column\(1),
	dataf => \inst|ALT_INV_ball_x_pos\(0),
	combout => \inst|LessThan1~2_combout\);

-- Location: LABCELL_X27_Y72_N18
\inst|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = ( \inst2|pixel_column\(4) & ( (!\inst|Add0~1_sumout\) # ((\inst2|pixel_column\(3) & !\inst|Add0~5_sumout\)) ) ) # ( !\inst2|pixel_column\(4) & ( (\inst2|pixel_column\(3) & (!\inst|Add0~5_sumout\ & !\inst|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(3),
	datac => \inst|ALT_INV_Add0~5_sumout\,
	datad => \inst|ALT_INV_Add0~1_sumout\,
	dataf => \inst2|ALT_INV_pixel_column\(4),
	combout => \inst|LessThan1~3_combout\);

-- Location: LABCELL_X27_Y72_N6
\inst|LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~6_combout\ = ( \inst|LessThan1~2_combout\ & ( \inst|LessThan1~3_combout\ & ( (!\inst|LessThan1~4_combout\ & !\inst|LessThan1~5_combout\) ) ) ) # ( !\inst|LessThan1~2_combout\ & ( \inst|LessThan1~3_combout\ & ( (!\inst|LessThan1~4_combout\ 
-- & !\inst|LessThan1~5_combout\) ) ) ) # ( \inst|LessThan1~2_combout\ & ( !\inst|LessThan1~3_combout\ & ( (!\inst|LessThan1~5_combout\ & (((!\inst|LessThan1~4_combout\) # (\inst|LessThan1~1_combout\)) # (\inst|LessThan1~0_combout\))) ) ) ) # ( 
-- !\inst|LessThan1~2_combout\ & ( !\inst|LessThan1~3_combout\ & ( !\inst|LessThan1~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110100001111000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan1~0_combout\,
	datab => \inst|ALT_INV_LessThan1~4_combout\,
	datac => \inst|ALT_INV_LessThan1~5_combout\,
	datad => \inst|ALT_INV_LessThan1~1_combout\,
	datae => \inst|ALT_INV_LessThan1~2_combout\,
	dataf => \inst|ALT_INV_LessThan1~3_combout\,
	combout => \inst|LessThan1~6_combout\);

-- Location: LABCELL_X29_Y72_N42
\inst|LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_combout\ = ( !\inst|Add0~29_sumout\ & ( (!\inst|Add0~33_sumout\ & (!\inst2|pixel_column\(8) & (!\inst2|pixel_column[9]~DUPLICATE_q\ $ (\inst|Add0~25_sumout\)))) # (\inst|Add0~33_sumout\ & (\inst2|pixel_column\(8) & 
-- (!\inst2|pixel_column[9]~DUPLICATE_q\ $ (\inst|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001100100000000100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~33_sumout\,
	datab => \inst2|ALT_INV_pixel_column\(8),
	datac => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Add0~25_sumout\,
	dataf => \inst|ALT_INV_Add0~29_sumout\,
	combout => \inst|LessThan1~7_combout\);

-- Location: LABCELL_X27_Y72_N54
\inst|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~4_combout\ = ( \inst|ball_y_pos\(7) & ( \inst|ball_y_pos[6]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(7)) # ((!\inst2|pixel_row\(6)) # ((!\inst2|pixel_row\(5) & !\inst|ball_y_pos\(5)))) ) ) ) # ( !\inst|ball_y_pos\(7) & ( 
-- \inst|ball_y_pos[6]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(7) & ((!\inst2|pixel_row\(6)) # ((!\inst2|pixel_row\(5) & !\inst|ball_y_pos\(5))))) ) ) ) # ( \inst|ball_y_pos\(7) & ( !\inst|ball_y_pos[6]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(7)) # 
-- ((!\inst2|pixel_row\(5) & (!\inst2|pixel_row\(6) & !\inst|ball_y_pos\(5)))) ) ) ) # ( !\inst|ball_y_pos\(7) & ( !\inst|ball_y_pos[6]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(5) & (!\inst2|pixel_row\(7) & (!\inst2|pixel_row\(6) & !\inst|ball_y_pos\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000111011001100110011001000110000001111111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(5),
	datab => \inst2|ALT_INV_pixel_row\(7),
	datac => \inst2|ALT_INV_pixel_row\(6),
	datad => \inst|ALT_INV_ball_y_pos\(5),
	datae => \inst|ALT_INV_ball_y_pos\(7),
	dataf => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	combout => \inst|LessThan2~4_combout\);

-- Location: MLABCELL_X28_Y75_N30
\inst|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~2_combout\ = ( \inst|ball_y_pos[1]~DUPLICATE_q\ & ( (\inst|ball_y_pos\(0) & (!\inst2|pixel_row\(0) & !\inst2|pixel_row\(1))) ) ) # ( !\inst|ball_y_pos[1]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(1)) # ((\inst|ball_y_pos\(0) & 
-- !\inst2|pixel_row\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110100111101001111010001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(0),
	datab => \inst2|ALT_INV_pixel_row\(0),
	datac => \inst2|ALT_INV_pixel_row\(1),
	dataf => \inst|ALT_INV_ball_y_pos[1]~DUPLICATE_q\,
	combout => \inst|LessThan2~2_combout\);

-- Location: MLABCELL_X28_Y75_N39
\inst|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_combout\ = ( \inst2|pixel_row\(2) & ( (!\inst2|pixel_row\(3) & (((\inst|LessThan2~2_combout\ & \inst|ball_y_pos[2]~DUPLICATE_q\)) # (\inst|ball_y_pos\(3)))) # (\inst2|pixel_row\(3) & (\inst|LessThan2~2_combout\ & (\inst|ball_y_pos\(3) & 
-- \inst|ball_y_pos[2]~DUPLICATE_q\))) ) ) # ( !\inst2|pixel_row\(2) & ( (!\inst2|pixel_row\(3) & (((\inst|ball_y_pos[2]~DUPLICATE_q\) # (\inst|ball_y_pos\(3))) # (\inst|LessThan2~2_combout\))) # (\inst2|pixel_row\(3) & (\inst|ball_y_pos\(3) & 
-- ((\inst|ball_y_pos[2]~DUPLICATE_q\) # (\inst|LessThan2~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101110101111001010111010111100001010001010110000101000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datab => \inst|ALT_INV_LessThan2~2_combout\,
	datac => \inst|ALT_INV_ball_y_pos\(3),
	datad => \inst|ALT_INV_ball_y_pos[2]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_pixel_row\(2),
	combout => \inst|LessThan2~3_combout\);

-- Location: MLABCELL_X28_Y75_N18
\inst|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = ( \inst2|pixel_row\(8) & ( !\inst|ball_y_pos\(8) ) ) # ( !\inst2|pixel_row\(8) & ( \inst|ball_y_pos\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ball_y_pos\(8),
	dataf => \inst2|ALT_INV_pixel_row\(8),
	combout => \inst|LessThan2~0_combout\);

-- Location: LABCELL_X27_Y72_N24
\inst|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = ( \inst|ball_y_pos\(7) & ( \inst|ball_y_pos[6]~DUPLICATE_q\ & ( (\inst2|pixel_row\(7) & (\inst2|pixel_row\(6) & (!\inst2|pixel_row\(5) $ (!\inst|ball_y_pos\(5))))) ) ) ) # ( !\inst|ball_y_pos\(7) & ( 
-- \inst|ball_y_pos[6]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(7) & (\inst2|pixel_row\(6) & (!\inst2|pixel_row\(5) $ (!\inst|ball_y_pos\(5))))) ) ) ) # ( \inst|ball_y_pos\(7) & ( !\inst|ball_y_pos[6]~DUPLICATE_q\ & ( (\inst2|pixel_row\(7) & 
-- (!\inst2|pixel_row\(6) & (!\inst2|pixel_row\(5) $ (!\inst|ball_y_pos\(5))))) ) ) ) # ( !\inst|ball_y_pos\(7) & ( !\inst|ball_y_pos[6]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(7) & (!\inst2|pixel_row\(6) & (!\inst2|pixel_row\(5) $ (!\inst|ball_y_pos\(5))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000000000100000010000000000100000010000000000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(5),
	datab => \inst2|ALT_INV_pixel_row\(7),
	datac => \inst2|ALT_INV_pixel_row\(6),
	datad => \inst|ALT_INV_ball_y_pos\(5),
	datae => \inst|ALT_INV_ball_y_pos\(7),
	dataf => \inst|ALT_INV_ball_y_pos[6]~DUPLICATE_q\,
	combout => \inst|LessThan2~1_combout\);

-- Location: LABCELL_X27_Y72_N48
\inst|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~5_combout\ = ( \inst|ball_y_pos\(4) & ( \inst|LessThan2~1_combout\ & ( (!\inst|LessThan2~0_combout\ & (((\inst|LessThan2~3_combout\ & !\inst2|pixel_row\(4))) # (\inst|LessThan2~4_combout\))) ) ) ) # ( !\inst|ball_y_pos\(4) & ( 
-- \inst|LessThan2~1_combout\ & ( (!\inst|LessThan2~0_combout\ & (((!\inst2|pixel_row\(4)) # (\inst|LessThan2~3_combout\)) # (\inst|LessThan2~4_combout\))) ) ) ) # ( \inst|ball_y_pos\(4) & ( !\inst|LessThan2~1_combout\ & ( (\inst|LessThan2~4_combout\ & 
-- !\inst|LessThan2~0_combout\) ) ) ) # ( !\inst|ball_y_pos\(4) & ( !\inst|LessThan2~1_combout\ & ( (\inst|LessThan2~4_combout\ & !\inst|LessThan2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011110111000000000111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan2~4_combout\,
	datab => \inst|ALT_INV_LessThan2~3_combout\,
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst|ALT_INV_LessThan2~0_combout\,
	datae => \inst|ALT_INV_ball_y_pos\(4),
	dataf => \inst|ALT_INV_LessThan2~1_combout\,
	combout => \inst|LessThan2~5_combout\);

-- Location: LABCELL_X31_Y75_N54
\inst|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_combout\ = ( \inst|Add1~1_sumout\ & ( (!\inst|Add1~5_sumout\ & (\inst2|pixel_row\(3) & \inst2|pixel_row\(4))) ) ) # ( !\inst|Add1~1_sumout\ & ( ((!\inst|Add1~5_sumout\ & \inst2|pixel_row\(3))) # (\inst2|pixel_row\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Add1~5_sumout\,
	datac => \inst2|ALT_INV_pixel_row\(3),
	datad => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst|ALT_INV_Add1~1_sumout\,
	combout => \inst|LessThan3~3_combout\);

-- Location: LABCELL_X31_Y75_N27
\inst|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~4_combout\ = ( \inst2|pixel_row\(6) & ( \inst2|pixel_row\(7) & ( (\inst|Add1~17_sumout\ & (\inst|Add1~13_sumout\ & (!\inst|Add1~21_sumout\ $ (\inst2|pixel_row\(5))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( \inst2|pixel_row\(7) & ( 
-- (!\inst|Add1~17_sumout\ & (\inst|Add1~13_sumout\ & (!\inst|Add1~21_sumout\ $ (\inst2|pixel_row\(5))))) ) ) ) # ( \inst2|pixel_row\(6) & ( !\inst2|pixel_row\(7) & ( (\inst|Add1~17_sumout\ & (!\inst|Add1~13_sumout\ & (!\inst|Add1~21_sumout\ $ 
-- (\inst2|pixel_row\(5))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( !\inst2|pixel_row\(7) & ( (!\inst|Add1~17_sumout\ & (!\inst|Add1~13_sumout\ & (!\inst|Add1~21_sumout\ $ (\inst2|pixel_row\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~21_sumout\,
	datab => \inst2|ALT_INV_pixel_row\(5),
	datac => \inst|ALT_INV_Add1~17_sumout\,
	datad => \inst|ALT_INV_Add1~13_sumout\,
	datae => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst2|ALT_INV_pixel_row\(7),
	combout => \inst|LessThan3~4_combout\);

-- Location: MLABCELL_X28_Y75_N33
\inst|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_combout\ = ( \inst|ball_y_pos[1]~DUPLICATE_q\ & ( ((!\inst|ball_y_pos\(0) & \inst2|pixel_row\(0))) # (\inst2|pixel_row\(1)) ) ) # ( !\inst|ball_y_pos[1]~DUPLICATE_q\ & ( (!\inst|ball_y_pos\(0) & (\inst2|pixel_row\(0) & 
-- \inst2|pixel_row\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos\(0),
	datac => \inst2|ALT_INV_pixel_row\(0),
	datad => \inst2|ALT_INV_pixel_row\(1),
	dataf => \inst|ALT_INV_ball_y_pos[1]~DUPLICATE_q\,
	combout => \inst|LessThan3~1_combout\);

-- Location: LABCELL_X31_Y75_N48
\inst|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~2_combout\ = ( \inst|Add1~9_sumout\ & ( (\inst2|pixel_row\(2) & (\inst|LessThan3~1_combout\ & (!\inst2|pixel_row\(3) $ (\inst|Add1~5_sumout\)))) ) ) # ( !\inst|Add1~9_sumout\ & ( (!\inst2|pixel_row\(2) & (\inst|LessThan3~1_combout\ & 
-- (!\inst2|pixel_row\(3) $ (\inst|Add1~5_sumout\)))) # (\inst2|pixel_row\(2) & ((!\inst2|pixel_row\(3) $ (\inst|Add1~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111011100000000011100010000000000010001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(2),
	datab => \inst|ALT_INV_LessThan3~1_combout\,
	datac => \inst2|ALT_INV_pixel_row\(3),
	datad => \inst|ALT_INV_Add1~5_sumout\,
	dataf => \inst|ALT_INV_Add1~9_sumout\,
	combout => \inst|LessThan3~2_combout\);

-- Location: LABCELL_X31_Y75_N30
\inst|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_combout\ = ( \inst2|pixel_row\(6) & ( \inst2|pixel_row\(7) & ( (!\inst|Add1~17_sumout\) # ((!\inst|Add1~13_sumout\) # ((!\inst|Add1~21_sumout\ & \inst2|pixel_row\(5)))) ) ) ) # ( !\inst2|pixel_row\(6) & ( \inst2|pixel_row\(7) & ( 
-- (!\inst|Add1~13_sumout\) # ((!\inst|Add1~21_sumout\ & (!\inst|Add1~17_sumout\ & \inst2|pixel_row\(5)))) ) ) ) # ( \inst2|pixel_row\(6) & ( !\inst2|pixel_row\(7) & ( (!\inst|Add1~13_sumout\ & ((!\inst|Add1~17_sumout\) # ((!\inst|Add1~21_sumout\ & 
-- \inst2|pixel_row\(5))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( !\inst2|pixel_row\(7) & ( (!\inst|Add1~21_sumout\ & (!\inst|Add1~17_sumout\ & (!\inst|Add1~13_sumout\ & \inst2|pixel_row\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000110000001110000011110000111110001111110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~21_sumout\,
	datab => \inst|ALT_INV_Add1~17_sumout\,
	datac => \inst|ALT_INV_Add1~13_sumout\,
	datad => \inst2|ALT_INV_pixel_row\(5),
	datae => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst2|ALT_INV_pixel_row\(7),
	combout => \inst|LessThan3~5_combout\);

-- Location: LABCELL_X31_Y75_N57
\inst|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~6_combout\ = ( !\inst|Add1~29_sumout\ & ( !\inst2|pixel_row\(8) $ (\inst|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(8),
	datac => \inst|ALT_INV_Add1~25_sumout\,
	dataf => \inst|ALT_INV_Add1~29_sumout\,
	combout => \inst|LessThan3~6_combout\);

-- Location: LABCELL_X31_Y75_N51
\inst|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = ( \inst|Add1~1_sumout\ & ( !\inst2|pixel_row\(4) ) ) # ( !\inst|Add1~1_sumout\ & ( \inst2|pixel_row\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst|ALT_INV_Add1~1_sumout\,
	combout => \inst|LessThan3~0_combout\);

-- Location: LABCELL_X31_Y75_N6
\inst|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_combout\ = ( \inst|LessThan3~6_combout\ & ( \inst|LessThan3~0_combout\ & ( ((\inst|LessThan3~3_combout\ & \inst|LessThan3~4_combout\)) # (\inst|LessThan3~5_combout\) ) ) ) # ( \inst|LessThan3~6_combout\ & ( !\inst|LessThan3~0_combout\ & 
-- ( ((\inst|LessThan3~4_combout\ & ((\inst|LessThan3~2_combout\) # (\inst|LessThan3~3_combout\)))) # (\inst|LessThan3~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100111111111100000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan3~3_combout\,
	datab => \inst|ALT_INV_LessThan3~4_combout\,
	datac => \inst|ALT_INV_LessThan3~2_combout\,
	datad => \inst|ALT_INV_LessThan3~5_combout\,
	datae => \inst|ALT_INV_LessThan3~6_combout\,
	dataf => \inst|ALT_INV_LessThan3~0_combout\,
	combout => \inst|LessThan3~7_combout\);

-- Location: LABCELL_X31_Y74_N51
\inst|ball_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~2_combout\ = ( !\inst|LessThan2~5_combout\ & ( !\inst|LessThan3~7_combout\ & ( (\inst|ball_on~1_combout\ & (!\inst|LessThan0~5_combout\ & ((!\inst|LessThan1~7_combout\) # (\inst|LessThan1~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_on~1_combout\,
	datab => \inst|ALT_INV_LessThan0~5_combout\,
	datac => \inst|ALT_INV_LessThan1~6_combout\,
	datad => \inst|ALT_INV_LessThan1~7_combout\,
	datae => \inst|ALT_INV_LessThan2~5_combout\,
	dataf => \inst|ALT_INV_LessThan3~7_combout\,
	combout => \inst|ball_on~2_combout\);

-- Location: MLABCELL_X28_Y73_N33
\inst|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan10~1_combout\ = !\inst2|pixel_row\(5) $ (!\inst|pady\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(5),
	datad => \inst|ALT_INV_pady\(5),
	combout => \inst|LessThan10~1_combout\);

-- Location: LABCELL_X27_Y72_N0
\inst|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan10~0_combout\ = ( \inst|pady\(8) & ( \inst2|pixel_row\(8) & ( (!\inst2|pixel_row\(6) & (!\inst|pady\(6) & (!\inst2|pixel_row\(7) $ (\inst|pady\(7))))) # (\inst2|pixel_row\(6) & (\inst|pady\(6) & (!\inst2|pixel_row\(7) $ (\inst|pady\(7))))) ) 
-- ) ) # ( !\inst|pady\(8) & ( !\inst2|pixel_row\(8) & ( (!\inst2|pixel_row\(6) & (!\inst|pady\(6) & (!\inst2|pixel_row\(7) $ (\inst|pady\(7))))) # (\inst2|pixel_row\(6) & (\inst|pady\(6) & (!\inst2|pixel_row\(7) $ (\inst|pady\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	datab => \inst2|ALT_INV_pixel_row\(7),
	datac => \inst|ALT_INV_pady\(7),
	datad => \inst|ALT_INV_pady\(6),
	datae => \inst|ALT_INV_pady\(8),
	dataf => \inst2|ALT_INV_pixel_row\(8),
	combout => \inst|LessThan10~0_combout\);

-- Location: MLABCELL_X28_Y74_N30
\inst|pad_on~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~4_combout\ = ( \inst2|pixel_row\(4) & ( \inst|LessThan10~0_combout\ & ( (!\inst2|pixel_row\(3) & (\inst|pady\(4) & (!\inst|pady[3]~DUPLICATE_q\ & !\inst|LessThan10~1_combout\))) ) ) ) # ( !\inst2|pixel_row\(4) & ( \inst|LessThan10~0_combout\ 
-- & ( (!\inst|LessThan10~1_combout\ & (((!\inst2|pixel_row\(3) & !\inst|pady[3]~DUPLICATE_q\)) # (\inst|pady\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110011000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datab => \inst|ALT_INV_pady\(4),
	datac => \inst|ALT_INV_pady[3]~DUPLICATE_q\,
	datad => \inst|ALT_INV_LessThan10~1_combout\,
	datae => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst|ALT_INV_LessThan10~0_combout\,
	combout => \inst|pad_on~4_combout\);

-- Location: LABCELL_X31_Y74_N6
\inst|pad_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~2_combout\ = ( \inst2|pixel_row\(8) & ( !\inst|Add4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add4~1_sumout\,
	dataf => \inst2|ALT_INV_pixel_row\(8),
	combout => \inst|pad_on~2_combout\);

-- Location: MLABCELL_X28_Y74_N18
\inst|LessThan10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan10~3_combout\ = ( \inst|pady\(8) & ( \inst|pady\(7) & ( (\inst2|pixel_row\(8) & (\inst2|pixel_row\(7) & (\inst|pady\(6) & !\inst2|pixel_row\(6)))) ) ) ) # ( !\inst|pady\(8) & ( \inst|pady\(7) & ( (!\inst2|pixel_row\(8) & 
-- (\inst2|pixel_row\(7) & (\inst|pady\(6) & !\inst2|pixel_row\(6)))) ) ) ) # ( \inst|pady\(8) & ( !\inst|pady\(7) & ( (\inst2|pixel_row\(8) & (!\inst2|pixel_row\(7) & (\inst|pady\(6) & !\inst2|pixel_row\(6)))) ) ) ) # ( !\inst|pady\(8) & ( !\inst|pady\(7) & 
-- ( (!\inst2|pixel_row\(8) & (!\inst2|pixel_row\(7) & (\inst|pady\(6) & !\inst2|pixel_row\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000001000000000000000010000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(8),
	datab => \inst2|ALT_INV_pixel_row\(7),
	datac => \inst|ALT_INV_pady\(6),
	datad => \inst2|ALT_INV_pixel_row\(6),
	datae => \inst|ALT_INV_pady\(8),
	dataf => \inst|ALT_INV_pady\(7),
	combout => \inst|LessThan10~3_combout\);

-- Location: MLABCELL_X28_Y74_N12
\inst|pad_on~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~6_combout\ = ( \inst|pady\(7) & ( (!\inst|pady\(9) & ((!\inst2|pixel_row\(8) & (\inst2|pixel_row\(7) & !\inst|pady\(8))) # (\inst2|pixel_row\(8) & ((!\inst|pady\(8)) # (\inst2|pixel_row\(7)))))) ) ) # ( !\inst|pady\(7) & ( (!\inst|pady\(9) & 
-- ((!\inst|pady\(8)) # (\inst2|pixel_row\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000001110001000000000111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(8),
	datab => \inst2|ALT_INV_pixel_row\(7),
	datac => \inst|ALT_INV_pady\(8),
	datad => \inst|ALT_INV_pady\(9),
	dataf => \inst|ALT_INV_pady\(7),
	combout => \inst|pad_on~6_combout\);

-- Location: FF_X29_Y72_N2
\inst2|pixel_column[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	d => \inst2|pixel_column[6]~feeder_combout\,
	sclr => \inst2|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column[6]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y72_N24
\inst|pad_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~0_combout\ = ( !\inst2|pixel_column\(5) & ( (!\inst2|pixel_column[9]~DUPLICATE_q\ & (!\inst2|pixel_column\(8) & (!\inst2|pixel_column[6]~DUPLICATE_q\ & !\inst2|pixel_column\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_pixel_column\(8),
	datac => \inst2|ALT_INV_pixel_column[6]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_column\(7),
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst|pad_on~0_combout\);

-- Location: LABCELL_X30_Y71_N21
\inst|pad_on~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~5_combout\ = ( \inst2|pixel_column\(3) & ( (\inst2|pixel_column[2]~DUPLICATE_q\ & !\inst2|pixel_column\(4)) ) ) # ( !\inst2|pixel_column\(3) & ( (!\inst2|pixel_column[2]~DUPLICATE_q\ & (\inst2|pixel_column\(4) & !\inst2|pixel_column\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst2|ALT_INV_pixel_column\(1),
	dataf => \inst2|ALT_INV_pixel_column\(3),
	combout => \inst|pad_on~5_combout\);

-- Location: MLABCELL_X28_Y74_N15
\inst|LessThan10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan10~2_combout\ = ( !\inst2|pixel_row\(5) & ( \inst|pady\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_pady\(5),
	dataf => \inst2|ALT_INV_pixel_row\(5),
	combout => \inst|LessThan10~2_combout\);

-- Location: MLABCELL_X28_Y74_N24
\inst|pad_on~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~7_combout\ = ( \inst|pad_on~5_combout\ & ( \inst|LessThan10~2_combout\ & ( (!\inst|LessThan10~3_combout\ & (\inst|pad_on~6_combout\ & (\inst|pad_on~0_combout\ & !\inst|LessThan10~0_combout\))) ) ) ) # ( \inst|pad_on~5_combout\ & ( 
-- !\inst|LessThan10~2_combout\ & ( (!\inst|LessThan10~3_combout\ & (\inst|pad_on~6_combout\ & \inst|pad_on~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan10~3_combout\,
	datab => \inst|ALT_INV_pad_on~6_combout\,
	datac => \inst|ALT_INV_pad_on~0_combout\,
	datad => \inst|ALT_INV_LessThan10~0_combout\,
	datae => \inst|ALT_INV_pad_on~5_combout\,
	dataf => \inst|ALT_INV_LessThan10~2_combout\,
	combout => \inst|pad_on~7_combout\);

-- Location: MLABCELL_X28_Y73_N54
\inst|LessThan11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan11~2_combout\ = ( \inst|Add4~17_sumout\ & ( (\inst2|pixel_row\(3) & (!\inst2|pixel_row\(4) $ (\inst|Add4~13_sumout\))) ) ) # ( !\inst|Add4~17_sumout\ & ( (!\inst2|pixel_row\(3) & (!\inst2|pixel_row\(4) $ (\inst|Add4~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst|ALT_INV_Add4~13_sumout\,
	dataf => \inst|ALT_INV_Add4~17_sumout\,
	combout => \inst|LessThan11~2_combout\);

-- Location: LABCELL_X27_Y74_N48
\inst|LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan11~1_combout\ = ( \inst2|pixel_row\(2) & ( \inst|Add4~9_sumout\ & ( (!\inst|Add4~5_sumout\) # ((\inst2|pixel_row\(1) & \inst2|pixel_row\(0))) ) ) ) # ( !\inst2|pixel_row\(2) & ( \inst|Add4~9_sumout\ & ( (!\inst|Add4~5_sumout\ & 
-- (\inst2|pixel_row\(1) & \inst2|pixel_row\(0))) ) ) ) # ( \inst2|pixel_row\(2) & ( !\inst|Add4~9_sumout\ & ( (!\inst|Add4~5_sumout\) # ((\inst2|pixel_row\(0)) # (\inst2|pixel_row\(1))) ) ) ) # ( !\inst2|pixel_row\(2) & ( !\inst|Add4~9_sumout\ & ( 
-- (!\inst|Add4~5_sumout\ & ((\inst2|pixel_row\(0)) # (\inst2|pixel_row\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010101111111011111100000010000000101010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add4~5_sumout\,
	datab => \inst2|ALT_INV_pixel_row\(1),
	datac => \inst2|ALT_INV_pixel_row\(0),
	datae => \inst2|ALT_INV_pixel_row\(2),
	dataf => \inst|ALT_INV_Add4~9_sumout\,
	combout => \inst|LessThan11~1_combout\);

-- Location: MLABCELL_X28_Y73_N36
\inst|LessThan11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan11~4_combout\ = ( \inst2|pixel_row\(5) & ( \inst|Add4~21_sumout\ & ( (\inst|Add4~29_sumout\ & (\inst2|pixel_row\(7) & (!\inst2|pixel_row\(6) $ (\inst|Add4~25_sumout\)))) ) ) ) # ( !\inst2|pixel_row\(5) & ( \inst|Add4~21_sumout\ & ( 
-- (!\inst|Add4~29_sumout\ & (\inst2|pixel_row\(7) & (!\inst2|pixel_row\(6) $ (\inst|Add4~25_sumout\)))) ) ) ) # ( \inst2|pixel_row\(5) & ( !\inst|Add4~21_sumout\ & ( (\inst|Add4~29_sumout\ & (!\inst2|pixel_row\(7) & (!\inst2|pixel_row\(6) $ 
-- (\inst|Add4~25_sumout\)))) ) ) ) # ( !\inst2|pixel_row\(5) & ( !\inst|Add4~21_sumout\ & ( (!\inst|Add4~29_sumout\ & (!\inst2|pixel_row\(7) & (!\inst2|pixel_row\(6) $ (\inst|Add4~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add4~29_sumout\,
	datab => \inst2|ALT_INV_pixel_row\(6),
	datac => \inst|ALT_INV_Add4~25_sumout\,
	datad => \inst2|ALT_INV_pixel_row\(7),
	datae => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst|ALT_INV_Add4~21_sumout\,
	combout => \inst|LessThan11~4_combout\);

-- Location: MLABCELL_X28_Y73_N18
\inst|LessThan11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan11~5_combout\ = ( \inst2|pixel_row\(5) & ( \inst|Add4~21_sumout\ & ( (\inst2|pixel_row\(7) & ((!\inst|Add4~29_sumout\ & ((!\inst|Add4~25_sumout\) # (\inst2|pixel_row\(6)))) # (\inst|Add4~29_sumout\ & (\inst2|pixel_row\(6) & 
-- !\inst|Add4~25_sumout\)))) ) ) ) # ( !\inst2|pixel_row\(5) & ( \inst|Add4~21_sumout\ & ( (\inst2|pixel_row\(6) & (!\inst|Add4~25_sumout\ & \inst2|pixel_row\(7))) ) ) ) # ( \inst2|pixel_row\(5) & ( !\inst|Add4~21_sumout\ & ( ((!\inst|Add4~29_sumout\ & 
-- ((!\inst|Add4~25_sumout\) # (\inst2|pixel_row\(6)))) # (\inst|Add4~29_sumout\ & (\inst2|pixel_row\(6) & !\inst|Add4~25_sumout\))) # (\inst2|pixel_row\(7)) ) ) ) # ( !\inst2|pixel_row\(5) & ( !\inst|Add4~21_sumout\ & ( ((\inst2|pixel_row\(6) & 
-- !\inst|Add4~25_sumout\)) # (\inst2|pixel_row\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111111101100101111111100000000001100000000000010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add4~29_sumout\,
	datab => \inst2|ALT_INV_pixel_row\(6),
	datac => \inst|ALT_INV_Add4~25_sumout\,
	datad => \inst2|ALT_INV_pixel_row\(7),
	datae => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst|ALT_INV_Add4~21_sumout\,
	combout => \inst|LessThan11~5_combout\);

-- Location: MLABCELL_X28_Y73_N57
\inst|LessThan11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan11~3_combout\ = ( \inst|Add4~17_sumout\ & ( (\inst2|pixel_row\(4) & !\inst|Add4~13_sumout\) ) ) # ( !\inst|Add4~17_sumout\ & ( (!\inst2|pixel_row\(3) & (\inst2|pixel_row\(4) & !\inst|Add4~13_sumout\)) # (\inst2|pixel_row\(3) & 
-- ((!\inst|Add4~13_sumout\) # (\inst2|pixel_row\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datab => \inst2|ALT_INV_pixel_row\(4),
	datac => \inst|ALT_INV_Add4~13_sumout\,
	dataf => \inst|ALT_INV_Add4~17_sumout\,
	combout => \inst|LessThan11~3_combout\);

-- Location: MLABCELL_X28_Y73_N24
\inst|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan11~0_combout\ = ( \inst|Add4~1_sumout\ & ( !\inst2|pixel_row\(8) ) ) # ( !\inst|Add4~1_sumout\ & ( \inst2|pixel_row\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(8),
	datae => \inst|ALT_INV_Add4~1_sumout\,
	combout => \inst|LessThan11~0_combout\);

-- Location: MLABCELL_X28_Y73_N48
\inst|pad_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~1_combout\ = ( \inst|LessThan11~3_combout\ & ( !\inst|LessThan11~0_combout\ & ( (\inst|LessThan11~5_combout\) # (\inst|LessThan11~4_combout\) ) ) ) # ( !\inst|LessThan11~3_combout\ & ( !\inst|LessThan11~0_combout\ & ( 
-- ((\inst|LessThan11~2_combout\ & (\inst|LessThan11~1_combout\ & \inst|LessThan11~4_combout\))) # (\inst|LessThan11~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan11~2_combout\,
	datab => \inst|ALT_INV_LessThan11~1_combout\,
	datac => \inst|ALT_INV_LessThan11~4_combout\,
	datad => \inst|ALT_INV_LessThan11~5_combout\,
	datae => \inst|ALT_INV_LessThan11~3_combout\,
	dataf => \inst|ALT_INV_LessThan11~0_combout\,
	combout => \inst|pad_on~1_combout\);

-- Location: MLABCELL_X28_Y73_N30
\inst|LessThan10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan10~5_combout\ = !\inst|pady[3]~DUPLICATE_q\ $ (\inst2|pixel_row\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_pady[3]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_row\(3),
	combout => \inst|LessThan10~5_combout\);

-- Location: LABCELL_X27_Y74_N54
\inst|LessThan10~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan10~7_combout\ = ( !\inst2|pixel_row\(1) & ( (\inst|pady[1]~DUPLICATE_q\ & (!\inst2|pixel_row\(2) $ (!\inst|pady[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(2),
	datab => \inst|ALT_INV_pady[2]~DUPLICATE_q\,
	datac => \inst|ALT_INV_pady[1]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_pixel_row\(1),
	combout => \inst|LessThan10~7_combout\);

-- Location: MLABCELL_X28_Y75_N54
\inst|LessThan10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan10~4_combout\ = ( \inst2|pixel_row\(4) & ( !\inst|pady[4]~DUPLICATE_q\ ) ) # ( !\inst2|pixel_row\(4) & ( \inst|pady[4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_pady[4]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_pixel_row\(4),
	combout => \inst|LessThan10~4_combout\);

-- Location: LABCELL_X27_Y74_N57
\inst|LessThan10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan10~6_combout\ = (!\inst2|pixel_row\(2) & !\inst|pady[2]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(2),
	datab => \inst|ALT_INV_pady[2]~DUPLICATE_q\,
	combout => \inst|LessThan10~6_combout\);

-- Location: MLABCELL_X28_Y73_N0
\inst|pad_on~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~8_combout\ = ( !\inst|LessThan10~4_combout\ & ( \inst|LessThan10~6_combout\ & ( (!\inst|LessThan10~1_combout\ & (!\inst|LessThan10~5_combout\ & \inst|LessThan10~0_combout\)) ) ) ) # ( !\inst|LessThan10~4_combout\ & ( 
-- !\inst|LessThan10~6_combout\ & ( (!\inst|LessThan10~1_combout\ & (!\inst|LessThan10~5_combout\ & (\inst|LessThan10~7_combout\ & \inst|LessThan10~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan10~1_combout\,
	datab => \inst|ALT_INV_LessThan10~5_combout\,
	datac => \inst|ALT_INV_LessThan10~7_combout\,
	datad => \inst|ALT_INV_LessThan10~0_combout\,
	datae => \inst|ALT_INV_LessThan10~4_combout\,
	dataf => \inst|ALT_INV_LessThan10~6_combout\,
	combout => \inst|pad_on~8_combout\);

-- Location: LABCELL_X31_Y74_N9
\inst|pad_on~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~3_combout\ = ( !\inst|Add4~33_sumout\ & ( !\inst|Add4~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add4~37_sumout\,
	dataf => \inst|ALT_INV_Add4~33_sumout\,
	combout => \inst|pad_on~3_combout\);

-- Location: LABCELL_X31_Y74_N36
\inst|pad_on~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|pad_on~9_combout\ = ( !\inst|pad_on~8_combout\ & ( \inst|pad_on~3_combout\ & ( (!\inst|pad_on~4_combout\ & (!\inst|pad_on~2_combout\ & (\inst|pad_on~7_combout\ & !\inst|pad_on~1_combout\))) ) ) ) # ( !\inst|pad_on~8_combout\ & ( 
-- !\inst|pad_on~3_combout\ & ( (!\inst|pad_on~4_combout\ & \inst|pad_on~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_pad_on~4_combout\,
	datab => \inst|ALT_INV_pad_on~2_combout\,
	datac => \inst|ALT_INV_pad_on~7_combout\,
	datad => \inst|ALT_INV_pad_on~1_combout\,
	datae => \inst|ALT_INV_pad_on~8_combout\,
	dataf => \inst|ALT_INV_pad_on~3_combout\,
	combout => \inst|pad_on~9_combout\);

-- Location: LABCELL_X30_Y74_N27
\inst2|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal4~2_combout\ = ( !\inst2|Add2~25_sumout\ & ( (!\inst2|Add2~29_sumout\ & (\inst2|Add2~5_sumout\ & !\inst2|Add2~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add2~29_sumout\,
	datac => \inst2|ALT_INV_Add2~5_sumout\,
	datad => \inst2|ALT_INV_Add2~21_sumout\,
	dataf => \inst2|ALT_INV_Add2~25_sumout\,
	combout => \inst2|Equal4~2_combout\);

-- Location: LABCELL_X30_Y74_N6
\inst2|vactive~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vactive~0_combout\ = ( \inst2|Equal4~2_combout\ & ( \inst2|Add2~37_sumout\ & ( ((\inst2|process_2~0_combout\ & (!\inst2|Add2~1_sumout\ & \inst2|Add2~33_sumout\))) # (\inst2|vactive~DUPLICATE_q\) ) ) ) # ( !\inst2|Equal4~2_combout\ & ( 
-- \inst2|Add2~37_sumout\ & ( \inst2|vactive~DUPLICATE_q\ ) ) ) # ( \inst2|Equal4~2_combout\ & ( !\inst2|Add2~37_sumout\ & ( (\inst2|vactive~DUPLICATE_q\ & ((!\inst2|process_2~0_combout\) # ((!\inst2|Add2~1_sumout\) # (!\inst2|Add2~33_sumout\)))) ) ) ) # ( 
-- !\inst2|Equal4~2_combout\ & ( !\inst2|Add2~37_sumout\ & ( \inst2|vactive~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111000000000111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_process_2~0_combout\,
	datab => \inst2|ALT_INV_Add2~1_sumout\,
	datac => \inst2|ALT_INV_Add2~33_sumout\,
	datad => \inst2|ALT_INV_vactive~DUPLICATE_q\,
	datae => \inst2|ALT_INV_Equal4~2_combout\,
	dataf => \inst2|ALT_INV_Add2~37_sumout\,
	combout => \inst2|vactive~0_combout\);

-- Location: FF_X30_Y74_N11
\inst2|vactive~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|vactive~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vactive~DUPLICATE_q\);

-- Location: LABCELL_X27_Y72_N36
\inst2|hactive~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hactive~0_combout\ = ( \inst2|Add0~25_sumout\ & ( !\inst2|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_Add0~29_sumout\,
	dataf => \inst2|ALT_INV_Add0~25_sumout\,
	combout => \inst2|hactive~0_combout\);

-- Location: LABCELL_X27_Y72_N15
\inst2|hactive~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hactive~1_combout\ = ( \inst2|Add0~37_sumout\ & ( (\inst2|Add0~25_sumout\ & (!\inst2|Add0~33_sumout\ & !\inst2|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add0~25_sumout\,
	datac => \inst2|ALT_INV_Add0~33_sumout\,
	datad => \inst2|ALT_INV_Add0~29_sumout\,
	dataf => \inst2|ALT_INV_Add0~37_sumout\,
	combout => \inst2|hactive~1_combout\);

-- Location: MLABCELL_X28_Y72_N48
\inst2|hactive~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|hactive~2_combout\ = ( \inst2|Equal0~0_combout\ & ( \inst2|hactive~1_combout\ ) ) # ( !\inst2|Equal0~0_combout\ & ( \inst2|hactive~1_combout\ & ( (\inst2|hactive~q\ & ((!\inst2|hactive~0_combout\) # ((!\inst2|process_1~0_combout\) # 
-- (!\inst2|hsync~0_combout\)))) ) ) ) # ( \inst2|Equal0~0_combout\ & ( !\inst2|hactive~1_combout\ & ( (\inst2|hactive~q\ & ((!\inst2|hactive~0_combout\) # ((!\inst2|process_1~0_combout\) # (!\inst2|hsync~0_combout\)))) ) ) ) # ( !\inst2|Equal0~0_combout\ & 
-- ( !\inst2|hactive~1_combout\ & ( (\inst2|hactive~q\ & ((!\inst2|hactive~0_combout\) # ((!\inst2|process_1~0_combout\) # (!\inst2|hsync~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110010001100110011001000110011001100101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_hactive~0_combout\,
	datab => \inst2|ALT_INV_hactive~q\,
	datac => \inst2|ALT_INV_process_1~0_combout\,
	datad => \inst2|ALT_INV_hsync~0_combout\,
	datae => \inst2|ALT_INV_Equal0~0_combout\,
	dataf => \inst2|ALT_INV_hactive~1_combout\,
	combout => \inst2|hactive~2_combout\);

-- Location: FF_X29_Y72_N32
\inst2|hactive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|hactive~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|hactive~q\);

-- Location: MLABCELL_X28_Y75_N0
\inst|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~5_sumout\ = SUM(( !\inst2|pixel_row\(0) $ (!\inst|ball_y_pos\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst|Add2~6\ = CARRY(( !\inst2|pixel_row\(0) $ (!\inst|ball_y_pos\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst|Add2~7\ = SHARE((!\inst|ball_y_pos\(0)) # (\inst2|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(0),
	datac => \inst|ALT_INV_ball_y_pos\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst|Add2~5_sumout\,
	cout => \inst|Add2~6\,
	shareout => \inst|Add2~7\);

-- Location: MLABCELL_X28_Y75_N3
\inst|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~1_sumout\ = SUM(( !\inst|ball_y_pos[1]~DUPLICATE_q\ $ (!\inst2|pixel_row\(1)) ) + ( \inst|Add2~7\ ) + ( \inst|Add2~6\ ))
-- \inst|Add2~2\ = CARRY(( !\inst|ball_y_pos[1]~DUPLICATE_q\ $ (!\inst2|pixel_row\(1)) ) + ( \inst|Add2~7\ ) + ( \inst|Add2~6\ ))
-- \inst|Add2~3\ = SHARE((\inst|ball_y_pos[1]~DUPLICATE_q\ & \inst2|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_y_pos[1]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_row\(1),
	cin => \inst|Add2~6\,
	sharein => \inst|Add2~7\,
	sumout => \inst|Add2~1_sumout\,
	cout => \inst|Add2~2\,
	shareout => \inst|Add2~3\);

-- Location: MLABCELL_X28_Y75_N6
\inst|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~17_sumout\ = SUM(( !\inst|ball_y_pos[2]~DUPLICATE_q\ $ (\inst2|pixel_row\(2)) ) + ( \inst|Add2~3\ ) + ( \inst|Add2~2\ ))
-- \inst|Add2~18\ = CARRY(( !\inst|ball_y_pos[2]~DUPLICATE_q\ $ (\inst2|pixel_row\(2)) ) + ( \inst|Add2~3\ ) + ( \inst|Add2~2\ ))
-- \inst|Add2~19\ = SHARE((!\inst|ball_y_pos[2]~DUPLICATE_q\ & \inst2|pixel_row\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ball_y_pos[2]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_row\(2),
	cin => \inst|Add2~2\,
	sharein => \inst|Add2~3\,
	sumout => \inst|Add2~17_sumout\,
	cout => \inst|Add2~18\,
	shareout => \inst|Add2~19\);

-- Location: MLABCELL_X28_Y75_N9
\inst|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~9_sumout\ = SUM(( !\inst2|pixel_row\(3) $ (\inst|ball_y_pos\(3)) ) + ( \inst|Add2~19\ ) + ( \inst|Add2~18\ ))
-- \inst|Add2~10\ = CARRY(( !\inst2|pixel_row\(3) $ (\inst|ball_y_pos\(3)) ) + ( \inst|Add2~19\ ) + ( \inst|Add2~18\ ))
-- \inst|Add2~11\ = SHARE((\inst2|pixel_row\(3) & !\inst|ball_y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datac => \inst|ALT_INV_ball_y_pos\(3),
	cin => \inst|Add2~18\,
	sharein => \inst|Add2~19\,
	sumout => \inst|Add2~9_sumout\,
	cout => \inst|Add2~10\,
	shareout => \inst|Add2~11\);

-- Location: FF_X30_Y71_N16
\inst2|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pixel_clk~q\,
	asdata => \inst2|Add1~21_sumout\,
	sclr => \inst2|process_1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(2));

-- Location: LABCELL_X31_Y71_N0
\inst|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~1_sumout\ = SUM(( !\inst2|pixel_column\(0) $ (!\inst|ball_x_pos\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst|Add3~2\ = CARRY(( !\inst2|pixel_column\(0) $ (!\inst|ball_x_pos\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst|Add3~3\ = SHARE((!\inst|ball_x_pos\(0)) # (\inst2|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(0),
	datac => \inst|ALT_INV_ball_x_pos\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst|Add3~1_sumout\,
	cout => \inst|Add3~2\,
	shareout => \inst|Add3~3\);

-- Location: LABCELL_X31_Y71_N3
\inst|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~5_sumout\ = SUM(( !\inst2|pixel_column\(1) $ (!\inst|ball_x_pos[1]~DUPLICATE_q\) ) + ( \inst|Add3~3\ ) + ( \inst|Add3~2\ ))
-- \inst|Add3~6\ = CARRY(( !\inst2|pixel_column\(1) $ (!\inst|ball_x_pos[1]~DUPLICATE_q\) ) + ( \inst|Add3~3\ ) + ( \inst|Add3~2\ ))
-- \inst|Add3~7\ = SHARE((\inst2|pixel_column\(1) & \inst|ball_x_pos[1]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(1),
	datad => \inst|ALT_INV_ball_x_pos[1]~DUPLICATE_q\,
	cin => \inst|Add3~2\,
	sharein => \inst|Add3~3\,
	sumout => \inst|Add3~5_sumout\,
	cout => \inst|Add3~6\,
	shareout => \inst|Add3~7\);

-- Location: LABCELL_X31_Y71_N6
\inst|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~9_sumout\ = SUM(( !\inst2|pixel_column\(2) $ (\inst|ball_x_pos[2]~DUPLICATE_q\) ) + ( \inst|Add3~7\ ) + ( \inst|Add3~6\ ))
-- \inst|Add3~10\ = CARRY(( !\inst2|pixel_column\(2) $ (\inst|ball_x_pos[2]~DUPLICATE_q\) ) + ( \inst|Add3~7\ ) + ( \inst|Add3~6\ ))
-- \inst|Add3~11\ = SHARE((\inst2|pixel_column\(2) & !\inst|ball_x_pos[2]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(2),
	datac => \inst|ALT_INV_ball_x_pos[2]~DUPLICATE_q\,
	cin => \inst|Add3~6\,
	sharein => \inst|Add3~7\,
	sumout => \inst|Add3~9_sumout\,
	cout => \inst|Add3~10\,
	shareout => \inst|Add3~11\);

-- Location: LABCELL_X31_Y71_N9
\inst|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~13_sumout\ = SUM(( !\inst2|pixel_column\(3) $ (\inst|ball_x_pos\(3)) ) + ( \inst|Add3~11\ ) + ( \inst|Add3~10\ ))
-- \inst|Add3~14\ = CARRY(( !\inst2|pixel_column\(3) $ (\inst|ball_x_pos\(3)) ) + ( \inst|Add3~11\ ) + ( \inst|Add3~10\ ))
-- \inst|Add3~15\ = SHARE((\inst2|pixel_column\(3) & !\inst|ball_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(3),
	datac => \inst|ALT_INV_ball_x_pos\(3),
	cin => \inst|Add3~10\,
	sharein => \inst|Add3~11\,
	sumout => \inst|Add3~13_sumout\,
	cout => \inst|Add3~14\,
	shareout => \inst|Add3~15\);

-- Location: LABCELL_X31_Y71_N12
\inst|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~17_sumout\ = SUM(( !\inst2|pixel_column\(4) $ (!\inst|ball_x_pos[4]~DUPLICATE_q\) ) + ( \inst|Add3~15\ ) + ( \inst|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst|ALT_INV_ball_x_pos[4]~DUPLICATE_q\,
	cin => \inst|Add3~14\,
	sharein => \inst|Add3~15\,
	sumout => \inst|Add3~17_sumout\);

-- Location: LABCELL_X30_Y71_N12
\inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = ( \inst|Add3~1_sumout\ & ( !\inst|Add3~17_sumout\ & ( (!\inst|Add3~13_sumout\ & ((!\inst|Add3~9_sumout\) # (!\inst|Add3~5_sumout\))) ) ) ) # ( !\inst|Add3~1_sumout\ & ( !\inst|Add3~17_sumout\ & ( !\inst|Add3~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110010001100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add3~9_sumout\,
	datab => \inst|ALT_INV_Add3~13_sumout\,
	datac => \inst|ALT_INV_Add3~5_sumout\,
	datae => \inst|ALT_INV_Add3~1_sumout\,
	dataf => \inst|ALT_INV_Add3~17_sumout\,
	combout => \inst|Mux0~0_combout\);

-- Location: MLABCELL_X28_Y75_N12
\inst|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~13_sumout\ = SUM(( !\inst2|pixel_row\(4) $ (!\inst|ball_y_pos\(4)) ) + ( \inst|Add2~11\ ) + ( \inst|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(4),
	datac => \inst|ALT_INV_ball_y_pos\(4),
	cin => \inst|Add2~10\,
	sharein => \inst|Add2~11\,
	sumout => \inst|Add2~13_sumout\);

-- Location: MLABCELL_X28_Y75_N48
\inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = ( \inst|Mux0~0_combout\ & ( \inst|Add2~13_sumout\ & ( (!\inst|Add2~9_sumout\ & ((!\inst|Add2~17_sumout\) # ((!\inst|Add2~1_sumout\ & !\inst|Add2~5_sumout\)))) ) ) ) # ( !\inst|Mux0~0_combout\ & ( \inst|Add2~13_sumout\ & ( 
-- (!\inst|Add2~9_sumout\ & ((!\inst|Add2~1_sumout\ & (!\inst|Add2~5_sumout\ & \inst|Add2~17_sumout\)) # (\inst|Add2~1_sumout\ & ((!\inst|Add2~17_sumout\))))) ) ) ) # ( \inst|Mux0~0_combout\ & ( !\inst|Add2~13_sumout\ ) ) # ( !\inst|Mux0~0_combout\ & ( 
-- !\inst|Add2~13_sumout\ & ( (!\inst|Add2~17_sumout\ & ((!\inst|Add2~1_sumout\ & ((!\inst|Add2~9_sumout\) # (\inst|Add2~5_sumout\))) # (\inst|Add2~1_sumout\ & ((!\inst|Add2~5_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101000000000111111111111111101000100100000001100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~1_sumout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	datac => \inst|ALT_INV_Add2~5_sumout\,
	datad => \inst|ALT_INV_Add2~17_sumout\,
	datae => \inst|ALT_INV_Mux0~0_combout\,
	dataf => \inst|ALT_INV_Add2~13_sumout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LABCELL_X29_Y71_N6
\inst|wall_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|wall_on~0_combout\ = ( \inst2|pixel_column\(4) & ( \inst2|pixel_column\(5) & ( (\inst2|pixel_column\(6) & (((\inst2|pixel_column[2]~DUPLICATE_q\ & \inst2|pixel_column\(1))) # (\inst2|pixel_column\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(6),
	datab => \inst2|ALT_INV_pixel_column\(3),
	datac => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_column\(1),
	datae => \inst2|ALT_INV_pixel_column\(4),
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst|wall_on~0_combout\);

-- Location: LABCELL_X29_Y72_N27
\inst|wall_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|wall_on~1_combout\ = (\inst2|pixel_column[9]~DUPLICATE_q\ & (((\inst2|pixel_column\(7)) # (\inst|wall_on~0_combout\)) # (\inst2|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_pixel_column\(8),
	datac => \inst|ALT_INV_wall_on~0_combout\,
	datad => \inst2|ALT_INV_pixel_column\(7),
	combout => \inst|wall_on~1_combout\);

-- Location: LABCELL_X27_Y74_N39
\inst|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan6~1_combout\ = ( !\inst2|pixel_row\(8) & ( (!\inst2|pixel_row\(5) & (!\inst2|pixel_row\(4) & (!\inst2|pixel_row\(7) & !\inst2|pixel_row\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(5),
	datab => \inst2|ALT_INV_pixel_row\(4),
	datac => \inst2|ALT_INV_pixel_row\(7),
	datad => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst2|ALT_INV_pixel_row\(8),
	combout => \inst|LessThan6~1_combout\);

-- Location: LABCELL_X27_Y74_N36
\inst|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan7~0_combout\ = ( \inst2|pixel_row\(1) & ( (!\inst2|pixel_row\(5) & ((!\inst2|pixel_row\(4)) # ((!\inst2|pixel_row\(2) & !\inst2|pixel_row\(3))))) ) ) # ( !\inst2|pixel_row\(1) & ( (!\inst2|pixel_row\(5) & ((!\inst2|pixel_row\(4)) # 
-- (!\inst2|pixel_row\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010101000100010001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(5),
	datab => \inst2|ALT_INV_pixel_row\(4),
	datac => \inst2|ALT_INV_pixel_row\(2),
	datad => \inst2|ALT_INV_pixel_row\(3),
	dataf => \inst2|ALT_INV_pixel_row\(1),
	combout => \inst|LessThan7~0_combout\);

-- Location: LABCELL_X27_Y74_N45
\inst|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan7~1_combout\ = ( \inst2|pixel_row\(8) & ( (\inst2|pixel_row\(6) & \inst2|pixel_row\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	datac => \inst2|ALT_INV_pixel_row\(7),
	dataf => \inst2|ALT_INV_pixel_row\(8),
	combout => \inst|LessThan7~1_combout\);

-- Location: LABCELL_X29_Y71_N12
\inst|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan4~0_combout\ = ( \inst2|pixel_column\(3) & ( \inst2|pixel_column\(0) & ( (!\inst2|pixel_column[2]~DUPLICATE_q\ & (!\inst2|pixel_column\(4) & (\inst|pad_on~0_combout\ & !\inst2|pixel_column\(1)))) ) ) ) # ( !\inst2|pixel_column\(3) & ( 
-- \inst2|pixel_column\(0) & ( (!\inst2|pixel_column\(4) & \inst|pad_on~0_combout\) ) ) ) # ( \inst2|pixel_column\(3) & ( !\inst2|pixel_column\(0) & ( (!\inst2|pixel_column[2]~DUPLICATE_q\ & (!\inst2|pixel_column\(4) & \inst|pad_on~0_combout\)) ) ) ) # ( 
-- !\inst2|pixel_column\(3) & ( !\inst2|pixel_column\(0) & ( (!\inst2|pixel_column\(4) & \inst|pad_on~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000010000000100000001100000011000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_pixel_column\(4),
	datac => \inst|ALT_INV_pad_on~0_combout\,
	datad => \inst2|ALT_INV_pixel_column\(1),
	datae => \inst2|ALT_INV_pixel_column\(3),
	dataf => \inst2|ALT_INV_pixel_column\(0),
	combout => \inst|LessThan4~0_combout\);

-- Location: LABCELL_X27_Y74_N42
\inst|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = ( \inst2|pixel_row\(1) & ( (\inst2|pixel_row\(3) & ((\inst2|pixel_row\(0)) # (\inst2|pixel_row\(2)))) ) ) # ( !\inst2|pixel_row\(1) & ( (\inst2|pixel_row\(2) & \inst2|pixel_row\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(2),
	datac => \inst2|ALT_INV_pixel_row\(0),
	datad => \inst2|ALT_INV_pixel_row\(3),
	dataf => \inst2|ALT_INV_pixel_row\(1),
	combout => \inst|LessThan6~0_combout\);

-- Location: LABCELL_X27_Y74_N30
\inst|wall_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|wall_on~2_combout\ = ( !\inst|LessThan4~0_combout\ & ( \inst|LessThan6~0_combout\ & ( (!\inst|wall_on~1_combout\ & ((!\inst|LessThan7~1_combout\) # (\inst|LessThan7~0_combout\))) ) ) ) # ( !\inst|LessThan4~0_combout\ & ( !\inst|LessThan6~0_combout\ 
-- & ( (!\inst|wall_on~1_combout\ & (!\inst|LessThan6~1_combout\ & ((!\inst|LessThan7~1_combout\) # (\inst|LessThan7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001000000000000000000010101010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_wall_on~1_combout\,
	datab => \inst|ALT_INV_LessThan6~1_combout\,
	datac => \inst|ALT_INV_LessThan7~0_combout\,
	datad => \inst|ALT_INV_LessThan7~1_combout\,
	datae => \inst|ALT_INV_LessThan4~0_combout\,
	dataf => \inst|ALT_INV_LessThan6~0_combout\,
	combout => \inst|wall_on~2_combout\);

-- Location: LABCELL_X30_Y74_N15
\inst2|b[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|b[7]~0_combout\ = ( \inst|Mux1~0_combout\ & ( \inst|wall_on~2_combout\ & ( (\inst2|vactive~DUPLICATE_q\ & (\inst2|hactive~q\ & ((!\inst|ball_on~2_combout\) # (\inst|pad_on~9_combout\)))) ) ) ) # ( !\inst|Mux1~0_combout\ & ( \inst|wall_on~2_combout\ 
-- & ( (\inst2|vactive~DUPLICATE_q\ & \inst2|hactive~q\) ) ) ) # ( \inst|Mux1~0_combout\ & ( !\inst|wall_on~2_combout\ & ( (\inst2|vactive~DUPLICATE_q\ & (\inst2|hactive~q\ & ((\inst|pad_on~9_combout\) # (\inst|ball_on~2_combout\)))) ) ) ) # ( 
-- !\inst|Mux1~0_combout\ & ( !\inst|wall_on~2_combout\ & ( (\inst|pad_on~9_combout\ & (\inst2|vactive~DUPLICATE_q\ & \inst2|hactive~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000011100000000000011110000000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_on~2_combout\,
	datab => \inst|ALT_INV_pad_on~9_combout\,
	datac => \inst2|ALT_INV_vactive~DUPLICATE_q\,
	datad => \inst2|ALT_INV_hactive~q\,
	datae => \inst|ALT_INV_Mux1~0_combout\,
	dataf => \inst|ALT_INV_wall_on~2_combout\,
	combout => \inst2|b[7]~0_combout\);

-- Location: LABCELL_X30_Y74_N42
\inst2|g[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|g[7]~0_combout\ = ( \inst|Mux1~0_combout\ & ( \inst|wall_on~2_combout\ & ( (\inst2|vactive~DUPLICATE_q\ & (\inst2|hactive~q\ & (!\inst|ball_on~2_combout\ $ (\inst|pad_on~9_combout\)))) ) ) ) # ( !\inst|Mux1~0_combout\ & ( \inst|wall_on~2_combout\ & 
-- ( (\inst2|vactive~DUPLICATE_q\ & (\inst2|hactive~q\ & !\inst|pad_on~9_combout\)) ) ) ) # ( \inst|Mux1~0_combout\ & ( !\inst|wall_on~2_combout\ & ( (\inst2|vactive~DUPLICATE_q\ & \inst2|hactive~q\) ) ) ) # ( !\inst|Mux1~0_combout\ & ( 
-- !\inst|wall_on~2_combout\ & ( (\inst2|vactive~DUPLICATE_q\ & \inst2|hactive~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_on~2_combout\,
	datab => \inst2|ALT_INV_vactive~DUPLICATE_q\,
	datac => \inst2|ALT_INV_hactive~q\,
	datad => \inst|ALT_INV_pad_on~9_combout\,
	datae => \inst|ALT_INV_Mux1~0_combout\,
	dataf => \inst|ALT_INV_wall_on~2_combout\,
	combout => \inst2|g[7]~0_combout\);

-- Location: FF_X30_Y74_N10
\inst2|vactive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|hsync~q\,
	asdata => \inst2|vactive~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vactive~q\);

-- Location: LABCELL_X31_Y74_N30
\inst2|r[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|r[7]~0_combout\ = ( \inst|pad_on~9_combout\ & ( \inst|ball_on~2_combout\ & ( (\inst2|vactive~q\ & (\inst2|hactive~q\ & ((!\inst|wall_on~2_combout\) # (\inst|Mux1~0_combout\)))) ) ) ) # ( !\inst|pad_on~9_combout\ & ( \inst|ball_on~2_combout\ & ( 
-- (\inst2|vactive~q\ & (\inst2|hactive~q\ & ((\inst|Mux1~0_combout\) # (\inst|wall_on~2_combout\)))) ) ) ) # ( \inst|pad_on~9_combout\ & ( !\inst|ball_on~2_combout\ & ( (!\inst|wall_on~2_combout\ & (\inst2|vactive~q\ & \inst2|hactive~q\)) ) ) ) # ( 
-- !\inst|pad_on~9_combout\ & ( !\inst|ball_on~2_combout\ & ( (\inst|wall_on~2_combout\ & (\inst2|vactive~q\ & \inst2|hactive~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000010001000000000000100110000000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_wall_on~2_combout\,
	datab => \inst2|ALT_INV_vactive~q\,
	datac => \inst|ALT_INV_Mux1~0_combout\,
	datad => \inst2|ALT_INV_hactive~q\,
	datae => \inst|ALT_INV_pad_on~9_combout\,
	dataf => \inst|ALT_INV_ball_on~2_combout\,
	combout => \inst2|r[7]~0_combout\);

-- Location: LABCELL_X46_Y47_N3
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


