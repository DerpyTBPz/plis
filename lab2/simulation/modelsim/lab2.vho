-- Copyright (C) 1991-2009 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "10/23/2024 13:43:17"

-- 
-- Device: Altera EP1K30TC144-3 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, flex10ke;
USE IEEE.std_logic_1164.all;
USE flex10ke.flex10ke_components.all;

ENTITY 	lab2 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	\out\ : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab2;

ARCHITECTURE structure OF lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \ww_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~21_combout\ : std_logic;
SIGNAL \Equal0~34\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~36\ : std_logic;
SIGNAL \Equal0~22_combout\ : std_logic;
SIGNAL \tick~5_combout\ : std_logic;
SIGNAL \counter[27]~63_combout\ : std_logic;
SIGNAL \rst~dataout\ : std_logic;
SIGNAL \clk~dataout\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[0]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[1]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[2]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[3]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[4]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[5]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[6]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[7]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[8]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[9]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[10]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[11]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[12]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[13]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[14]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[15]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[16]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[17]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[18]~COUT\ : std_logic;
SIGNAL \Equal0~30\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[19]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[20]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[21]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[22]~COUT\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[23]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[24]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[25]~COUT\ : std_logic;
SIGNAL \Add1|adder|result_node|cs_buffer[26]~COUT\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \tick~regout\ : std_logic;
SIGNAL \out_rtl_0|wysi_counter|counter_cell[0]~COUT\ : std_logic;
SIGNAL \out_rtl_0|wysi_counter|counter_cell[1]~COUT\ : std_logic;
SIGNAL \out_rtl_0|wysi_counter|counter_cell[2]~COUT\ : std_logic;
SIGNAL \out_rtl_0|wysi_counter|counter_cell[3]~COUT\ : std_logic;
SIGNAL \out_rtl_0|wysi_counter|counter_cell[4]~COUT\ : std_logic;
SIGNAL \out_rtl_0|wysi_counter|counter_cell[5]~COUT\ : std_logic;
SIGNAL \out_rtl_0|wysi_counter|counter_cell[6]~COUT\ : std_logic;
SIGNAL counter : std_logic_vector(27 DOWNTO 0);
SIGNAL \Add1|adder|result_node|cs_buffer\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \Add1|adder|unreg_res_node\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \out_rtl_0|wysi_counter|counter_cell\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~21\ : flex10ke_lcell
-- Equation(s):
-- \Equal0~21_combout\ = (\Add1|adder|result_node|cs_buffer\(8) & \Add1|adder|result_node|cs_buffer\(9) & \Add1|adder|result_node|cs_buffer\(10) & \Add1|adder|result_node|cs_buffer\(11)) & CASCADE(\Equal0~36\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|adder|result_node|cs_buffer\(8),
	datab => \Add1|adder|result_node|cs_buffer\(9),
	datac => \Add1|adder|result_node|cs_buffer\(10),
	datad => \Add1|adder|result_node|cs_buffer\(11),
	cascin => \Equal0~36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~21_combout\);

\Equal0~18\ : flex10ke_lcell
-- Equation(s):
-- \Equal0~34\ = !\Add1|adder|result_node|cs_buffer\(1) & !\Add1|adder|result_node|cs_buffer\(2) & !\Add1|adder|result_node|cs_buffer\(3) & counter(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|adder|result_node|cs_buffer\(1),
	datab => \Add1|adder|result_node|cs_buffer\(2),
	datac => \Add1|adder|result_node|cs_buffer\(3),
	datad => counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~18_combout\,
	cascout => \Equal0~34\);

\Equal0~22\ : flex10ke_lcell
-- Equation(s):
-- \Equal0~36\ = (!\Add1|adder|result_node|cs_buffer\(4) & !\Add1|adder|result_node|cs_buffer\(5) & !\Add1|adder|result_node|cs_buffer\(7) & \Add1|adder|result_node|cs_buffer\(6)) & CASCADE(\Equal0~34\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|adder|result_node|cs_buffer\(4),
	datab => \Add1|adder|result_node|cs_buffer\(5),
	datac => \Add1|adder|result_node|cs_buffer\(7),
	datad => \Add1|adder|result_node|cs_buffer\(6),
	cascin => \Equal0~34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~22_combout\,
	cascout => \Equal0~36\);

\tick~5\ : flex10ke_lcell
-- Equation(s):
-- \tick~5_combout\ = !\rst~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \rst~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tick~5_combout\);

\counter[27]~63\ : flex10ke_lcell
-- Equation(s):
-- \counter[27]~63_combout\ = !\tick~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \tick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counter[27]~63_combout\);

\rst~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_rst,
	dataout => \rst~dataout\);

\clk~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_clk,
	dataout => \clk~dataout\);

\counter[17]\ : flex10ke_lcell
-- Equation(s):
-- counter(17) = DFFEA(\Add1|adder|result_node|cs_buffer\(17), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(17),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

\counter[0]\ : flex10ke_lcell
-- Equation(s):
-- counter(0) = DFFEA(!counter(0), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )
-- \Add1|adder|result_node|cs_buffer[0]~COUT\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datab => counter(0),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0),
	cout => \Add1|adder|result_node|cs_buffer[0]~COUT\);

\Add1|adder|result_node|cs_buffer[1]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(1) = counter(1) $ \Add1|adder|result_node|cs_buffer[0]~COUT\
-- \Add1|adder|result_node|cs_buffer[1]~COUT\ = CARRY(counter(1) & \Add1|adder|result_node|cs_buffer[0]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	cin => \Add1|adder|result_node|cs_buffer[0]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(1),
	cout => \Add1|adder|result_node|cs_buffer[1]~COUT\);

\counter[1]\ : flex10ke_lcell
-- Equation(s):
-- counter(1) = DFFEA(\Add1|adder|result_node|cs_buffer\(1), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(1),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

\Add1|adder|result_node|cs_buffer[2]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(2) = counter(2) $ \Add1|adder|result_node|cs_buffer[1]~COUT\
-- \Add1|adder|result_node|cs_buffer[2]~COUT\ = CARRY(counter(2) & \Add1|adder|result_node|cs_buffer[1]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	cin => \Add1|adder|result_node|cs_buffer[1]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(2),
	cout => \Add1|adder|result_node|cs_buffer[2]~COUT\);

\counter[2]\ : flex10ke_lcell
-- Equation(s):
-- counter(2) = DFFEA(\Add1|adder|result_node|cs_buffer\(2), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(2),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

\Add1|adder|result_node|cs_buffer[3]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(3) = counter(3) $ \Add1|adder|result_node|cs_buffer[2]~COUT\
-- \Add1|adder|result_node|cs_buffer[3]~COUT\ = CARRY(counter(3) & \Add1|adder|result_node|cs_buffer[2]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	cin => \Add1|adder|result_node|cs_buffer[2]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(3),
	cout => \Add1|adder|result_node|cs_buffer[3]~COUT\);

\counter[3]\ : flex10ke_lcell
-- Equation(s):
-- counter(3) = DFFEA(\Add1|adder|result_node|cs_buffer\(3), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(3),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

\Add1|adder|result_node|cs_buffer[4]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(4) = counter(4) $ \Add1|adder|result_node|cs_buffer[3]~COUT\
-- \Add1|adder|result_node|cs_buffer[4]~COUT\ = CARRY(counter(4) & \Add1|adder|result_node|cs_buffer[3]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	cin => \Add1|adder|result_node|cs_buffer[3]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(4),
	cout => \Add1|adder|result_node|cs_buffer[4]~COUT\);

\counter[4]\ : flex10ke_lcell
-- Equation(s):
-- counter(4) = DFFEA(\Add1|adder|result_node|cs_buffer\(4), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(4),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

\Add1|adder|result_node|cs_buffer[5]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(5) = counter(5) $ \Add1|adder|result_node|cs_buffer[4]~COUT\
-- \Add1|adder|result_node|cs_buffer[5]~COUT\ = CARRY(counter(5) & \Add1|adder|result_node|cs_buffer[4]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	cin => \Add1|adder|result_node|cs_buffer[4]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(5),
	cout => \Add1|adder|result_node|cs_buffer[5]~COUT\);

\counter[5]\ : flex10ke_lcell
-- Equation(s):
-- counter(5) = DFFEA(\Add1|adder|result_node|cs_buffer\(5), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(5),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

\Add1|adder|result_node|cs_buffer[6]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(6) = counter(6) $ \Add1|adder|result_node|cs_buffer[5]~COUT\
-- \Add1|adder|result_node|cs_buffer[6]~COUT\ = CARRY(counter(6) & \Add1|adder|result_node|cs_buffer[5]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	cin => \Add1|adder|result_node|cs_buffer[5]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(6),
	cout => \Add1|adder|result_node|cs_buffer[6]~COUT\);

\counter[6]\ : flex10ke_lcell
-- Equation(s):
-- counter(6) = DFFEA(!\Equal0~4_combout\ & \Add1|adder|result_node|cs_buffer\(6), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(6),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

\Add1|adder|result_node|cs_buffer[7]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(7) = counter(7) $ \Add1|adder|result_node|cs_buffer[6]~COUT\
-- \Add1|adder|result_node|cs_buffer[7]~COUT\ = CARRY(counter(7) & \Add1|adder|result_node|cs_buffer[6]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	cin => \Add1|adder|result_node|cs_buffer[6]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(7),
	cout => \Add1|adder|result_node|cs_buffer[7]~COUT\);

\counter[7]\ : flex10ke_lcell
-- Equation(s):
-- counter(7) = DFFEA(\Add1|adder|result_node|cs_buffer\(7), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(7),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

\Add1|adder|result_node|cs_buffer[8]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(8) = counter(8) $ \Add1|adder|result_node|cs_buffer[7]~COUT\
-- \Add1|adder|result_node|cs_buffer[8]~COUT\ = CARRY(counter(8) & \Add1|adder|result_node|cs_buffer[7]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	cin => \Add1|adder|result_node|cs_buffer[7]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(8),
	cout => \Add1|adder|result_node|cs_buffer[8]~COUT\);

\counter[8]\ : flex10ke_lcell
-- Equation(s):
-- counter(8) = DFFEA(!\Equal0~4_combout\ & \Add1|adder|result_node|cs_buffer\(8), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(8),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

\Add1|adder|result_node|cs_buffer[9]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(9) = counter(9) $ \Add1|adder|result_node|cs_buffer[8]~COUT\
-- \Add1|adder|result_node|cs_buffer[9]~COUT\ = CARRY(counter(9) & \Add1|adder|result_node|cs_buffer[8]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	cin => \Add1|adder|result_node|cs_buffer[8]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(9),
	cout => \Add1|adder|result_node|cs_buffer[9]~COUT\);

\counter[9]\ : flex10ke_lcell
-- Equation(s):
-- counter(9) = DFFEA(!\Equal0~4_combout\ & \Add1|adder|result_node|cs_buffer\(9), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(9),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

\Add1|adder|result_node|cs_buffer[10]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(10) = counter(10) $ \Add1|adder|result_node|cs_buffer[9]~COUT\
-- \Add1|adder|result_node|cs_buffer[10]~COUT\ = CARRY(counter(10) & \Add1|adder|result_node|cs_buffer[9]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	cin => \Add1|adder|result_node|cs_buffer[9]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(10),
	cout => \Add1|adder|result_node|cs_buffer[10]~COUT\);

\counter[10]\ : flex10ke_lcell
-- Equation(s):
-- counter(10) = DFFEA(!\Equal0~4_combout\ & \Add1|adder|result_node|cs_buffer\(10), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(10),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

\Add1|adder|result_node|cs_buffer[11]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(11) = counter(11) $ \Add1|adder|result_node|cs_buffer[10]~COUT\
-- \Add1|adder|result_node|cs_buffer[11]~COUT\ = CARRY(counter(11) & \Add1|adder|result_node|cs_buffer[10]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	cin => \Add1|adder|result_node|cs_buffer[10]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(11),
	cout => \Add1|adder|result_node|cs_buffer[11]~COUT\);

\counter[11]\ : flex10ke_lcell
-- Equation(s):
-- counter(11) = DFFEA(!\Equal0~4_combout\ & \Add1|adder|result_node|cs_buffer\(11), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(11),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

\Add1|adder|result_node|cs_buffer[12]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(12) = counter(12) $ \Add1|adder|result_node|cs_buffer[11]~COUT\
-- \Add1|adder|result_node|cs_buffer[12]~COUT\ = CARRY(counter(12) & \Add1|adder|result_node|cs_buffer[11]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	cin => \Add1|adder|result_node|cs_buffer[11]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(12),
	cout => \Add1|adder|result_node|cs_buffer[12]~COUT\);

\counter[12]\ : flex10ke_lcell
-- Equation(s):
-- counter(12) = DFFEA(!\Equal0~4_combout\ & \Add1|adder|result_node|cs_buffer\(12), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(12),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

\Add1|adder|result_node|cs_buffer[13]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(13) = counter(13) $ \Add1|adder|result_node|cs_buffer[12]~COUT\
-- \Add1|adder|result_node|cs_buffer[13]~COUT\ = CARRY(counter(13) & \Add1|adder|result_node|cs_buffer[12]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	cin => \Add1|adder|result_node|cs_buffer[12]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(13),
	cout => \Add1|adder|result_node|cs_buffer[13]~COUT\);

\counter[13]\ : flex10ke_lcell
-- Equation(s):
-- counter(13) = DFFEA(\Add1|adder|result_node|cs_buffer\(13), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(13),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

\Add1|adder|result_node|cs_buffer[14]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(14) = counter(14) $ \Add1|adder|result_node|cs_buffer[13]~COUT\
-- \Add1|adder|result_node|cs_buffer[14]~COUT\ = CARRY(counter(14) & \Add1|adder|result_node|cs_buffer[13]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	cin => \Add1|adder|result_node|cs_buffer[13]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(14),
	cout => \Add1|adder|result_node|cs_buffer[14]~COUT\);

\counter[14]\ : flex10ke_lcell
-- Equation(s):
-- counter(14) = DFFEA(\Add1|adder|result_node|cs_buffer\(14), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(14),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

\Add1|adder|result_node|cs_buffer[15]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(15) = counter(15) $ \Add1|adder|result_node|cs_buffer[14]~COUT\
-- \Add1|adder|result_node|cs_buffer[15]~COUT\ = CARRY(counter(15) & \Add1|adder|result_node|cs_buffer[14]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	cin => \Add1|adder|result_node|cs_buffer[14]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(15),
	cout => \Add1|adder|result_node|cs_buffer[15]~COUT\);

\counter[15]\ : flex10ke_lcell
-- Equation(s):
-- counter(15) = DFFEA(\Add1|adder|result_node|cs_buffer\(15), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(15),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

\Add1|adder|result_node|cs_buffer[16]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(16) = counter(16) $ \Add1|adder|result_node|cs_buffer[15]~COUT\
-- \Add1|adder|result_node|cs_buffer[16]~COUT\ = CARRY(counter(16) & \Add1|adder|result_node|cs_buffer[15]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	cin => \Add1|adder|result_node|cs_buffer[15]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(16),
	cout => \Add1|adder|result_node|cs_buffer[16]~COUT\);

\counter[16]\ : flex10ke_lcell
-- Equation(s):
-- counter(16) = DFFEA(\Add1|adder|result_node|cs_buffer\(16), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(16),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

\Add1|adder|result_node|cs_buffer[17]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(17) = counter(17) $ \Add1|adder|result_node|cs_buffer[16]~COUT\
-- \Add1|adder|result_node|cs_buffer[17]~COUT\ = CARRY(counter(17) & \Add1|adder|result_node|cs_buffer[16]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	cin => \Add1|adder|result_node|cs_buffer[16]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(17),
	cout => \Add1|adder|result_node|cs_buffer[17]~COUT\);

\counter[18]\ : flex10ke_lcell
-- Equation(s):
-- counter(18) = DFFEA(\Add1|adder|result_node|cs_buffer\(18), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(18),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

\Add1|adder|result_node|cs_buffer[18]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(18) = counter(18) $ \Add1|adder|result_node|cs_buffer[17]~COUT\
-- \Add1|adder|result_node|cs_buffer[18]~COUT\ = CARRY(counter(18) & \Add1|adder|result_node|cs_buffer[17]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	cin => \Add1|adder|result_node|cs_buffer[17]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(18),
	cout => \Add1|adder|result_node|cs_buffer[18]~COUT\);

\counter[19]\ : flex10ke_lcell
-- Equation(s):
-- counter(19) = DFFEA(\Add1|adder|result_node|cs_buffer\(19), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(19),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

\Add1|adder|result_node|cs_buffer[19]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(19) = counter(19) $ \Add1|adder|result_node|cs_buffer[18]~COUT\
-- \Add1|adder|result_node|cs_buffer[19]~COUT\ = CARRY(counter(19) & \Add1|adder|result_node|cs_buffer[18]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	cin => \Add1|adder|result_node|cs_buffer[18]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(19),
	cout => \Add1|adder|result_node|cs_buffer[19]~COUT\);

\Equal0~11\ : flex10ke_lcell
-- Equation(s):
-- \Equal0~30\ = !\Add1|adder|result_node|cs_buffer\(13) & !\Add1|adder|result_node|cs_buffer\(14) & !\Add1|adder|result_node|cs_buffer\(15) & \Add1|adder|result_node|cs_buffer\(12)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|adder|result_node|cs_buffer\(13),
	datab => \Add1|adder|result_node|cs_buffer\(14),
	datac => \Add1|adder|result_node|cs_buffer\(15),
	datad => \Add1|adder|result_node|cs_buffer\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~11_combout\,
	cascout => \Equal0~30\);

\Equal0~20\ : flex10ke_lcell
-- Equation(s):
-- \Equal0~20_combout\ = (!\Add1|adder|result_node|cs_buffer\(16) & !\Add1|adder|result_node|cs_buffer\(17) & !\Add1|adder|result_node|cs_buffer\(18) & !\Add1|adder|result_node|cs_buffer\(19)) & CASCADE(\Equal0~30\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|adder|result_node|cs_buffer\(16),
	datab => \Add1|adder|result_node|cs_buffer\(17),
	datac => \Add1|adder|result_node|cs_buffer\(18),
	datad => \Add1|adder|result_node|cs_buffer\(19),
	cascin => \Equal0~30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~20_combout\);

\counter[21]\ : flex10ke_lcell
-- Equation(s):
-- counter(21) = DFFEA(\Add1|adder|result_node|cs_buffer\(21), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(21),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

\Add1|adder|result_node|cs_buffer[20]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(20) = counter(20) $ \Add1|adder|result_node|cs_buffer[19]~COUT\
-- \Add1|adder|result_node|cs_buffer[20]~COUT\ = CARRY(counter(20) & \Add1|adder|result_node|cs_buffer[19]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	cin => \Add1|adder|result_node|cs_buffer[19]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(20),
	cout => \Add1|adder|result_node|cs_buffer[20]~COUT\);

\counter[20]\ : flex10ke_lcell
-- Equation(s):
-- counter(20) = DFFEA(\Add1|adder|result_node|cs_buffer\(20), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(20),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

\Add1|adder|result_node|cs_buffer[21]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(21) = counter(21) $ \Add1|adder|result_node|cs_buffer[20]~COUT\
-- \Add1|adder|result_node|cs_buffer[21]~COUT\ = CARRY(counter(21) & \Add1|adder|result_node|cs_buffer[20]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	cin => \Add1|adder|result_node|cs_buffer[20]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(21),
	cout => \Add1|adder|result_node|cs_buffer[21]~COUT\);

\counter[22]\ : flex10ke_lcell
-- Equation(s):
-- counter(22) = DFFEA(\Add1|adder|result_node|cs_buffer\(22), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(22),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

\Add1|adder|result_node|cs_buffer[22]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(22) = counter(22) $ \Add1|adder|result_node|cs_buffer[21]~COUT\
-- \Add1|adder|result_node|cs_buffer[22]~COUT\ = CARRY(counter(22) & \Add1|adder|result_node|cs_buffer[21]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	cin => \Add1|adder|result_node|cs_buffer[21]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(22),
	cout => \Add1|adder|result_node|cs_buffer[22]~COUT\);

\counter[23]\ : flex10ke_lcell
-- Equation(s):
-- counter(23) = DFFEA(\Add1|adder|result_node|cs_buffer\(23), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(23),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

\Add1|adder|result_node|cs_buffer[23]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(23) = counter(23) $ \Add1|adder|result_node|cs_buffer[22]~COUT\
-- \Add1|adder|result_node|cs_buffer[23]~COUT\ = CARRY(counter(23) & \Add1|adder|result_node|cs_buffer[22]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	cin => \Add1|adder|result_node|cs_buffer[22]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(23),
	cout => \Add1|adder|result_node|cs_buffer[23]~COUT\);

\Equal0~1\ : flex10ke_lcell
-- Equation(s):
-- \Equal0~1_combout\ = !\Add1|adder|result_node|cs_buffer\(20) & !\Add1|adder|result_node|cs_buffer\(21) & !\Add1|adder|result_node|cs_buffer\(22) & !\Add1|adder|result_node|cs_buffer\(23)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|adder|result_node|cs_buffer\(20),
	datab => \Add1|adder|result_node|cs_buffer\(21),
	datac => \Add1|adder|result_node|cs_buffer\(22),
	datad => \Add1|adder|result_node|cs_buffer\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

\counter[25]\ : flex10ke_lcell
-- Equation(s):
-- counter(25) = DFFEA(\Add1|adder|result_node|cs_buffer\(25), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(25),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

\Add1|adder|result_node|cs_buffer[24]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(24) = counter(24) $ \Add1|adder|result_node|cs_buffer[23]~COUT\
-- \Add1|adder|result_node|cs_buffer[24]~COUT\ = CARRY(counter(24) & \Add1|adder|result_node|cs_buffer[23]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	cin => \Add1|adder|result_node|cs_buffer[23]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(24),
	cout => \Add1|adder|result_node|cs_buffer[24]~COUT\);

\counter[24]\ : flex10ke_lcell
-- Equation(s):
-- counter(24) = DFFEA(\Add1|adder|result_node|cs_buffer\(24), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(24),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

\Add1|adder|result_node|cs_buffer[25]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(25) = counter(25) $ \Add1|adder|result_node|cs_buffer[24]~COUT\
-- \Add1|adder|result_node|cs_buffer[25]~COUT\ = CARRY(counter(25) & \Add1|adder|result_node|cs_buffer[24]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	cin => \Add1|adder|result_node|cs_buffer[24]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(25),
	cout => \Add1|adder|result_node|cs_buffer[25]~COUT\);

\counter[26]\ : flex10ke_lcell
-- Equation(s):
-- counter(26) = DFFEA(\Add1|adder|result_node|cs_buffer\(26), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|result_node|cs_buffer\(26),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(26));

\Add1|adder|result_node|cs_buffer[26]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|result_node|cs_buffer\(26) = counter(26) $ \Add1|adder|result_node|cs_buffer[25]~COUT\
-- \Add1|adder|result_node|cs_buffer[26]~COUT\ = CARRY(counter(26) & \Add1|adder|result_node|cs_buffer[25]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	cin => \Add1|adder|result_node|cs_buffer[25]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|result_node|cs_buffer\(26),
	cout => \Add1|adder|result_node|cs_buffer[26]~COUT\);

\counter[27]\ : flex10ke_lcell
-- Equation(s):
-- counter(27) = DFFEA(\Add1|adder|unreg_res_node\(27), GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \counter[27]~63_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \counter[27]~63_combout\,
	datad => \Add1|adder|unreg_res_node\(27),
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(27));

\Add1|adder|unreg_res_node[27]\ : flex10ke_lcell
-- Equation(s):
-- \Add1|adder|unreg_res_node\(27) = \Add1|adder|result_node|cs_buffer[26]~COUT\ $ counter(27)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => counter(27),
	cin => \Add1|adder|result_node|cs_buffer[26]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1|adder|unreg_res_node\(27));

\Equal0~0\ : flex10ke_lcell
-- Equation(s):
-- \Equal0~0_combout\ = !\Add1|adder|result_node|cs_buffer\(24) & !\Add1|adder|result_node|cs_buffer\(25) & !\Add1|adder|result_node|cs_buffer\(26) & !\Add1|adder|unreg_res_node\(27)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|adder|result_node|cs_buffer\(24),
	datab => \Add1|adder|result_node|cs_buffer\(25),
	datac => \Add1|adder|result_node|cs_buffer\(26),
	datad => \Add1|adder|unreg_res_node\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

\Equal0~4\ : flex10ke_lcell
-- Equation(s):
-- \Equal0~4_combout\ = \Equal0~21_combout\ & \Equal0~20_combout\ & \Equal0~1_combout\ & \Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~21_combout\,
	datab => \Equal0~20_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

tick : flex10ke_lcell
-- Equation(s):
-- \tick~regout\ = DFFEA(!\tick~regout\ & \Equal0~4_combout\, GLOBAL(\clk~dataout\), , , \tick~5_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \tick~5_combout\,
	datac => \tick~regout\,
	datad => \Equal0~4_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tick~regout\);

\out_rtl_0|wysi_counter|counter_cell[0]\ : flex10ke_lcell
-- Equation(s):
-- \out_rtl_0|wysi_counter|counter_cell\(0) = DFFEA((\tick~regout\ $ \out_rtl_0|wysi_counter|counter_cell\(0)) & VCC, GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \tick~regout\, , )
-- \out_rtl_0|wysi_counter|counter_cell[0]~COUT\ = CARRY(\out_rtl_0|wysi_counter|counter_cell\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "66aa",
	operation_mode => "clrb_cntr",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \tick~regout\,
	datab => VCC,
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_rtl_0|wysi_counter|counter_cell\(0),
	cout => \out_rtl_0|wysi_counter|counter_cell[0]~COUT\);

\out_rtl_0|wysi_counter|counter_cell[1]\ : flex10ke_lcell
-- Equation(s):
-- \out_rtl_0|wysi_counter|counter_cell\(1) = DFFEA((\out_rtl_0|wysi_counter|counter_cell\(1) $ (\tick~regout\ & \out_rtl_0|wysi_counter|counter_cell[0]~COUT\)) & VCC, GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \tick~regout\, , )
-- \out_rtl_0|wysi_counter|counter_cell[1]~COUT\ = CARRY(\out_rtl_0|wysi_counter|counter_cell\(1) & (\out_rtl_0|wysi_counter|counter_cell[0]~COUT\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "true",
	lut_mask => "6ca0",
	operation_mode => "clrb_cntr",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \tick~regout\,
	datab => VCC,
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	cin => \out_rtl_0|wysi_counter|counter_cell[0]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_rtl_0|wysi_counter|counter_cell\(1),
	cout => \out_rtl_0|wysi_counter|counter_cell[1]~COUT\);

\out_rtl_0|wysi_counter|counter_cell[2]\ : flex10ke_lcell
-- Equation(s):
-- \out_rtl_0|wysi_counter|counter_cell\(2) = DFFEA((\out_rtl_0|wysi_counter|counter_cell\(2) $ (\tick~regout\ & \out_rtl_0|wysi_counter|counter_cell[1]~COUT\)) & VCC, GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \tick~regout\, , )
-- \out_rtl_0|wysi_counter|counter_cell[2]~COUT\ = CARRY(\out_rtl_0|wysi_counter|counter_cell\(2) & (\out_rtl_0|wysi_counter|counter_cell[1]~COUT\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "true",
	lut_mask => "6ca0",
	operation_mode => "clrb_cntr",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \tick~regout\,
	datab => VCC,
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	cin => \out_rtl_0|wysi_counter|counter_cell[1]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_rtl_0|wysi_counter|counter_cell\(2),
	cout => \out_rtl_0|wysi_counter|counter_cell[2]~COUT\);

\out_rtl_0|wysi_counter|counter_cell[3]\ : flex10ke_lcell
-- Equation(s):
-- \out_rtl_0|wysi_counter|counter_cell\(3) = DFFEA((\out_rtl_0|wysi_counter|counter_cell\(3) $ (\tick~regout\ & \out_rtl_0|wysi_counter|counter_cell[2]~COUT\)) & VCC, GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \tick~regout\, , )
-- \out_rtl_0|wysi_counter|counter_cell[3]~COUT\ = CARRY(\out_rtl_0|wysi_counter|counter_cell\(3) & (\out_rtl_0|wysi_counter|counter_cell[2]~COUT\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "true",
	lut_mask => "6ca0",
	operation_mode => "clrb_cntr",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \tick~regout\,
	datab => VCC,
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	cin => \out_rtl_0|wysi_counter|counter_cell[2]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_rtl_0|wysi_counter|counter_cell\(3),
	cout => \out_rtl_0|wysi_counter|counter_cell[3]~COUT\);

\out_rtl_0|wysi_counter|counter_cell[4]\ : flex10ke_lcell
-- Equation(s):
-- \out_rtl_0|wysi_counter|counter_cell\(4) = DFFEA((\out_rtl_0|wysi_counter|counter_cell\(4) $ (\tick~regout\ & \out_rtl_0|wysi_counter|counter_cell[3]~COUT\)) & VCC, GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \tick~regout\, , )
-- \out_rtl_0|wysi_counter|counter_cell[4]~COUT\ = CARRY(\out_rtl_0|wysi_counter|counter_cell\(4) & (\out_rtl_0|wysi_counter|counter_cell[3]~COUT\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "true",
	lut_mask => "6ca0",
	operation_mode => "clrb_cntr",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \tick~regout\,
	datab => VCC,
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	cin => \out_rtl_0|wysi_counter|counter_cell[3]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_rtl_0|wysi_counter|counter_cell\(4),
	cout => \out_rtl_0|wysi_counter|counter_cell[4]~COUT\);

\out_rtl_0|wysi_counter|counter_cell[5]\ : flex10ke_lcell
-- Equation(s):
-- \out_rtl_0|wysi_counter|counter_cell\(5) = DFFEA((\out_rtl_0|wysi_counter|counter_cell\(5) $ (\tick~regout\ & \out_rtl_0|wysi_counter|counter_cell[4]~COUT\)) & VCC, GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \tick~regout\, , )
-- \out_rtl_0|wysi_counter|counter_cell[5]~COUT\ = CARRY(\out_rtl_0|wysi_counter|counter_cell\(5) & (\out_rtl_0|wysi_counter|counter_cell[4]~COUT\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "true",
	lut_mask => "6ca0",
	operation_mode => "clrb_cntr",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \tick~regout\,
	datab => VCC,
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	cin => \out_rtl_0|wysi_counter|counter_cell[4]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_rtl_0|wysi_counter|counter_cell\(5),
	cout => \out_rtl_0|wysi_counter|counter_cell[5]~COUT\);

\out_rtl_0|wysi_counter|counter_cell[6]\ : flex10ke_lcell
-- Equation(s):
-- \out_rtl_0|wysi_counter|counter_cell\(6) = DFFEA((\out_rtl_0|wysi_counter|counter_cell\(6) $ (\tick~regout\ & \out_rtl_0|wysi_counter|counter_cell[5]~COUT\)) & VCC, GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \tick~regout\, , )
-- \out_rtl_0|wysi_counter|counter_cell[6]~COUT\ = CARRY(\out_rtl_0|wysi_counter|counter_cell\(6) & (\out_rtl_0|wysi_counter|counter_cell[5]~COUT\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "true",
	lut_mask => "6ca0",
	operation_mode => "clrb_cntr",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \tick~regout\,
	datab => VCC,
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	cin => \out_rtl_0|wysi_counter|counter_cell[5]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_rtl_0|wysi_counter|counter_cell\(6),
	cout => \out_rtl_0|wysi_counter|counter_cell[6]~COUT\);

\out_rtl_0|wysi_counter|counter_cell[7]\ : flex10ke_lcell
-- Equation(s):
-- \out_rtl_0|wysi_counter|counter_cell\(7) = DFFEA((\out_rtl_0|wysi_counter|counter_cell\(7) $ (\tick~regout\ & \out_rtl_0|wysi_counter|counter_cell[6]~COUT\)) & VCC, GLOBAL(\clk~dataout\), !GLOBAL(\rst~dataout\), , \tick~regout\, , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "true",
	lut_mask => "6c6c",
	operation_mode => "clrb_cntr",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \tick~regout\,
	datab => VCC,
	aclr => \rst~dataout\,
	clk => \clk~dataout\,
	cin => \out_rtl_0|wysi_counter|counter_cell[6]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_rtl_0|wysi_counter|counter_cell\(7));

\out[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_rtl_0|wysi_counter|counter_cell\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_out\(0));

\out[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_rtl_0|wysi_counter|counter_cell\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_out\(1));

\out[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_rtl_0|wysi_counter|counter_cell\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_out\(2));

\out[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_rtl_0|wysi_counter|counter_cell\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_out\(3));

\out[4]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_rtl_0|wysi_counter|counter_cell\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_out\(4));

\out[5]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_rtl_0|wysi_counter|counter_cell\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_out\(5));

\out[6]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_rtl_0|wysi_counter|counter_cell\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_out\(6));

\out[7]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \out_rtl_0|wysi_counter|counter_cell\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_out\(7));
END structure;


