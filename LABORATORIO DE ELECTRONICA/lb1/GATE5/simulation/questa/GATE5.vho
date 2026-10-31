-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "10/04/2026 12:16:58"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GATE5 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : IN std_logic;
	f : IN std_logic;
	s : BUFFER std_logic
	);
END GATE5;

-- Design Ports Information
-- s	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GATE5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \f~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \U6|U5|p~0_combout\ : std_logic;
SIGNAL \U6|U5|ALT_INV_p~0_combout\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_e~input_o\ : std_logic;
SIGNAL \ALT_INV_f~input_o\ : std_logic;
SIGNAL \ALT_INV_d~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_e <= e;
ww_f <= f;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U6|U5|ALT_INV_p~0_combout\ <= NOT \U6|U5|p~0_combout\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_e~input_o\ <= NOT \e~input_o\;
\ALT_INV_f~input_o\ <= NOT \f~input_o\;
\ALT_INV_d~input_o\ <= NOT \d~input_o\;

-- Location: IOOBUF_X89_Y37_N39
\s~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|U5|ALT_INV_p~0_combout\,
	devoe => ww_devoe,
	o => ww_s);

-- Location: IOIBUF_X89_Y35_N61
\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\e~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\f~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f,
	o => \f~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LABCELL_X88_Y35_N0
\U6|U5|p~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U5|p~0_combout\ = ( \a~input_o\ & ( \b~input_o\ & ( (!\e~input_o\ & (!\d~input_o\ $ ((!\c~input_o\)))) # (\e~input_o\ & (!\f~input_o\ & (!\d~input_o\ $ (!\c~input_o\)))) ) ) ) # ( !\a~input_o\ & ( \b~input_o\ & ( (!\e~input_o\ & (!\d~input_o\ $ 
-- ((!\c~input_o\)))) # (\e~input_o\ & (!\f~input_o\ & (!\d~input_o\ $ (!\c~input_o\)))) ) ) ) # ( \a~input_o\ & ( !\b~input_o\ & ( (!\e~input_o\ & (!\d~input_o\ $ ((!\c~input_o\)))) # (\e~input_o\ & (!\f~input_o\ & (!\d~input_o\ $ (!\c~input_o\)))) ) ) ) # 
-- ( !\a~input_o\ & ( !\b~input_o\ & ( (!\e~input_o\) # ((!\f~input_o\) # (!\d~input_o\ $ (\c~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111001011001100110000001100110011000000110011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d~input_o\,
	datab => \ALT_INV_c~input_o\,
	datac => \ALT_INV_e~input_o\,
	datad => \ALT_INV_f~input_o\,
	datae => \ALT_INV_a~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \U6|U5|p~0_combout\);

-- Location: MLABCELL_X28_Y4_N0
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


