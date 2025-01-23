-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/25/2024 23:39:45"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Smart_Parking IS
    PORT (
	clk : IN std_logic;
	a : IN std_logic;
	digitOut : BUFFER std_logic_vector(6 DOWNTO 0);
	pwm : BUFFER std_logic
	);
END Smart_Parking;

-- Design Ports Information
-- digitOut[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitOut[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitOut[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitOut[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitOut[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitOut[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitOut[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Smart_Parking IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_digitOut : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_pwm : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \digitOut[0]~output_o\ : std_logic;
SIGNAL \digitOut[1]~output_o\ : std_logic;
SIGNAL \digitOut[2]~output_o\ : std_logic;
SIGNAL \digitOut[3]~output_o\ : std_logic;
SIGNAL \digitOut[4]~output_o\ : std_logic;
SIGNAL \digitOut[5]~output_o\ : std_logic;
SIGNAL \digitOut[6]~output_o\ : std_logic;
SIGNAL \pwm~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \carCountSignal~0_combout\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \a_sync1~feeder_combout\ : std_logic;
SIGNAL \a_sync1~q\ : std_logic;
SIGNAL \a_sync2~feeder_combout\ : std_logic;
SIGNAL \a_sync2~q\ : std_logic;
SIGNAL \a_prev~feeder_combout\ : std_logic;
SIGNAL \a_prev~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \carCountSignal~1_combout\ : std_logic;
SIGNAL \carCountSignal~3_combout\ : std_logic;
SIGNAL \carCountSignal~2_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux6~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux5~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux4~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux3~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux2~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux1~0_combout\ : std_logic;
SIGNAL \seven_segment_inst|Mux0~0_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[0]~32_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[18]~69\ : std_logic;
SIGNAL \motor_driver_inst|cnt[19]~70_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[19]~71\ : std_logic;
SIGNAL \motor_driver_inst|cnt[20]~72_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[20]~73\ : std_logic;
SIGNAL \motor_driver_inst|cnt[21]~74_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[21]~75\ : std_logic;
SIGNAL \motor_driver_inst|cnt[22]~76_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[22]~77\ : std_logic;
SIGNAL \motor_driver_inst|cnt[23]~78_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[23]~79\ : std_logic;
SIGNAL \motor_driver_inst|cnt[24]~80_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[24]~81\ : std_logic;
SIGNAL \motor_driver_inst|cnt[25]~82_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[25]~83\ : std_logic;
SIGNAL \motor_driver_inst|cnt[26]~84_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[26]~85\ : std_logic;
SIGNAL \motor_driver_inst|cnt[27]~86_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[27]~87\ : std_logic;
SIGNAL \motor_driver_inst|cnt[28]~88_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[28]~89\ : std_logic;
SIGNAL \motor_driver_inst|cnt[29]~90_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[29]~91\ : std_logic;
SIGNAL \motor_driver_inst|cnt[30]~92_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[30]~93\ : std_logic;
SIGNAL \motor_driver_inst|cnt[31]~94_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[0]~33\ : std_logic;
SIGNAL \motor_driver_inst|cnt[1]~34_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[1]~35\ : std_logic;
SIGNAL \motor_driver_inst|cnt[2]~36_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[2]~37\ : std_logic;
SIGNAL \motor_driver_inst|cnt[3]~38_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[3]~39\ : std_logic;
SIGNAL \motor_driver_inst|cnt[4]~40_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[4]~41\ : std_logic;
SIGNAL \motor_driver_inst|cnt[5]~42_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[5]~43\ : std_logic;
SIGNAL \motor_driver_inst|cnt[6]~44_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[6]~45\ : std_logic;
SIGNAL \motor_driver_inst|cnt[7]~46_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[7]~47\ : std_logic;
SIGNAL \motor_driver_inst|cnt[8]~48_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[8]~49\ : std_logic;
SIGNAL \motor_driver_inst|cnt[9]~50_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[9]~51\ : std_logic;
SIGNAL \motor_driver_inst|cnt[10]~52_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[10]~53\ : std_logic;
SIGNAL \motor_driver_inst|cnt[11]~54_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[11]~55\ : std_logic;
SIGNAL \motor_driver_inst|cnt[12]~56_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[12]~57\ : std_logic;
SIGNAL \motor_driver_inst|cnt[13]~58_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[13]~59\ : std_logic;
SIGNAL \motor_driver_inst|cnt[14]~60_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[14]~61\ : std_logic;
SIGNAL \motor_driver_inst|cnt[15]~62_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[15]~63\ : std_logic;
SIGNAL \motor_driver_inst|cnt[16]~64_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[16]~65\ : std_logic;
SIGNAL \motor_driver_inst|cnt[17]~66_combout\ : std_logic;
SIGNAL \motor_driver_inst|cnt[17]~67\ : std_logic;
SIGNAL \motor_driver_inst|cnt[18]~68_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \motorctrl~feeder_combout\ : std_logic;
SIGNAL \motorctrl~q\ : std_logic;
SIGNAL \motor_driver_inst|Add1~0_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~90_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~1\ : std_logic;
SIGNAL \motor_driver_inst|Add1~2_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~89_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~3\ : std_logic;
SIGNAL \motor_driver_inst|Add1~4_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~88_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~5\ : std_logic;
SIGNAL \motor_driver_inst|Add1~6_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~87_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~7\ : std_logic;
SIGNAL \motor_driver_inst|Add1~8_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~86_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~9\ : std_logic;
SIGNAL \motor_driver_inst|Add1~10_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~85_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~11\ : std_logic;
SIGNAL \motor_driver_inst|Add1~12_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~84_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~13\ : std_logic;
SIGNAL \motor_driver_inst|Add1~14_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~83_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~15\ : std_logic;
SIGNAL \motor_driver_inst|Add1~16_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~67_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~17\ : std_logic;
SIGNAL \motor_driver_inst|Add1~18_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~68_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~19\ : std_logic;
SIGNAL \motor_driver_inst|Add1~20_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~69_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~21\ : std_logic;
SIGNAL \motor_driver_inst|Add1~22_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~70_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~23\ : std_logic;
SIGNAL \motor_driver_inst|Add1~24_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~71_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~25\ : std_logic;
SIGNAL \motor_driver_inst|Add1~26_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~63_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~27\ : std_logic;
SIGNAL \motor_driver_inst|Add1~28_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~64_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~29\ : std_logic;
SIGNAL \motor_driver_inst|Add1~30_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~65_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~31\ : std_logic;
SIGNAL \motor_driver_inst|Add1~32_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~66_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~2_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~3_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~4_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~33\ : std_logic;
SIGNAL \motor_driver_inst|Add1~34_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~72_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~35\ : std_logic;
SIGNAL \motor_driver_inst|Add1~36_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~77_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~37\ : std_logic;
SIGNAL \motor_driver_inst|Add1~38_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~73_combout\ : std_logic;
SIGNAL \motor_driver_inst|delay_cnt~0_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~39\ : std_logic;
SIGNAL \motor_driver_inst|Add1~40_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~78_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~41\ : std_logic;
SIGNAL \motor_driver_inst|Add1~42_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~79_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~43\ : std_logic;
SIGNAL \motor_driver_inst|Add1~44_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~80_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~45\ : std_logic;
SIGNAL \motor_driver_inst|Add1~46_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~81_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~47\ : std_logic;
SIGNAL \motor_driver_inst|Add1~48_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~82_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~49\ : std_logic;
SIGNAL \motor_driver_inst|Add1~51\ : std_logic;
SIGNAL \motor_driver_inst|Add1~52_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~76_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~53\ : std_logic;
SIGNAL \motor_driver_inst|Add1~54_combout\ : std_logic;
SIGNAL \motor_driver_inst|delay_cnt[27]~1_combout\ : std_logic;
SIGNAL \motor_driver_inst|duty_cycle~2_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~55\ : std_logic;
SIGNAL \motor_driver_inst|Add1~56_combout\ : std_logic;
SIGNAL \motor_driver_inst|delay_cnt[28]~2_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~57\ : std_logic;
SIGNAL \motor_driver_inst|Add1~58_combout\ : std_logic;
SIGNAL \motor_driver_inst|delay_cnt[29]~3_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~59\ : std_logic;
SIGNAL \motor_driver_inst|Add1~60_combout\ : std_logic;
SIGNAL \motor_driver_inst|delay_cnt[30]~4_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~5_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~50_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~62_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~7_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~8_combout\ : std_logic;
SIGNAL \motor_driver_inst|Add1~61\ : std_logic;
SIGNAL \motor_driver_inst|Add1~74_combout\ : std_logic;
SIGNAL \motor_driver_inst|delay_cnt[31]~5_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~6_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~9_combout\ : std_logic;
SIGNAL \motor_driver_inst|duty_cycle~0_combout\ : std_logic;
SIGNAL \motor_driver_inst|motor_active~q\ : std_logic;
SIGNAL \motor_driver_inst|LessThan2~10_combout\ : std_logic;
SIGNAL \motor_driver_inst|duty_cycle[4]~1_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~7_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~8_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~10_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~11_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \motor_driver_inst|LessThan1~9_combout\ : std_logic;
SIGNAL \motor_driver_inst|pwm~q\ : std_logic;
SIGNAL \motor_driver_inst|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \motor_driver_inst|delay_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL carCountSignal : std_logic_vector(3 DOWNTO 0);
SIGNAL \motor_driver_inst|duty_cycle\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \seven_segment_inst|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_a <= a;
digitOut <= ww_digitOut;
pwm <= ww_pwm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\seven_segment_inst|ALT_INV_Mux0~0_combout\ <= NOT \seven_segment_inst|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y35_N23
\digitOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \digitOut[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\digitOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \digitOut[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\digitOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \digitOut[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\digitOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \digitOut[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\digitOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \digitOut[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\digitOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \digitOut[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\digitOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_segment_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \digitOut[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\pwm~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_driver_inst|pwm~q\,
	devoe => ww_devoe,
	o => \pwm~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X77_Y37_N28
\carCountSignal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \carCountSignal~0_combout\ = (!carCountSignal(0) & (((!carCountSignal(2) & !carCountSignal(1))) # (!carCountSignal(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(2),
	datab => carCountSignal(1),
	datac => carCountSignal(0),
	datad => carCountSignal(3),
	combout => \carCountSignal~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\a~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X77_Y37_N0
\a_sync1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_sync1~feeder_combout\ = \a~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~input_o\,
	combout => \a_sync1~feeder_combout\);

-- Location: FF_X77_Y37_N1
a_sync1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_sync1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_sync1~q\);

-- Location: LCCOMB_X77_Y37_N22
\a_sync2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_sync2~feeder_combout\ = \a_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_sync1~q\,
	combout => \a_sync2~feeder_combout\);

-- Location: FF_X77_Y37_N23
a_sync2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_sync2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_sync2~q\);

-- Location: LCCOMB_X77_Y37_N20
\a_prev~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_prev~feeder_combout\ = \a_sync2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_sync2~q\,
	combout => \a_prev~feeder_combout\);

-- Location: FF_X77_Y37_N21
a_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_prev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_prev~q\);

-- Location: LCCOMB_X77_Y37_N2
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\a_sync2~q\ & !\a_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_sync2~q\,
	datad => \a_prev~q\,
	combout => \process_1~0_combout\);

-- Location: FF_X77_Y37_N29
\carCountSignal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carCountSignal~0_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carCountSignal(0));

-- Location: LCCOMB_X77_Y37_N14
\carCountSignal~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \carCountSignal~1_combout\ = (!carCountSignal(3) & (carCountSignal(1) $ (carCountSignal(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(3),
	datac => carCountSignal(1),
	datad => carCountSignal(0),
	combout => \carCountSignal~1_combout\);

-- Location: FF_X77_Y37_N15
\carCountSignal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carCountSignal~1_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carCountSignal(1));

-- Location: LCCOMB_X77_Y37_N10
\carCountSignal~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \carCountSignal~3_combout\ = (carCountSignal(2) & (carCountSignal(1) & (!carCountSignal(3) & carCountSignal(0)))) # (!carCountSignal(2) & (!carCountSignal(1) & (carCountSignal(3) & !carCountSignal(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(2),
	datab => carCountSignal(1),
	datac => carCountSignal(3),
	datad => carCountSignal(0),
	combout => \carCountSignal~3_combout\);

-- Location: FF_X77_Y37_N11
\carCountSignal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carCountSignal~3_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carCountSignal(3));

-- Location: LCCOMB_X77_Y37_N12
\carCountSignal~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \carCountSignal~2_combout\ = (!carCountSignal(3) & (carCountSignal(2) $ (((carCountSignal(1) & carCountSignal(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(3),
	datab => carCountSignal(1),
	datac => carCountSignal(2),
	datad => carCountSignal(0),
	combout => \carCountSignal~2_combout\);

-- Location: FF_X77_Y37_N13
\carCountSignal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carCountSignal~2_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => carCountSignal(2));

-- Location: LCCOMB_X77_Y37_N8
\seven_segment_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux6~0_combout\ = (carCountSignal(1) & (((carCountSignal(3))))) # (!carCountSignal(1) & (carCountSignal(2) $ (((carCountSignal(0) & !carCountSignal(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(2),
	datab => carCountSignal(0),
	datac => carCountSignal(1),
	datad => carCountSignal(3),
	combout => \seven_segment_inst|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y37_N18
\seven_segment_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux5~0_combout\ = (carCountSignal(2) & ((carCountSignal(3)) # (carCountSignal(0) $ (carCountSignal(1))))) # (!carCountSignal(2) & (((carCountSignal(1) & carCountSignal(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(2),
	datab => carCountSignal(0),
	datac => carCountSignal(1),
	datad => carCountSignal(3),
	combout => \seven_segment_inst|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y37_N16
\seven_segment_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux4~0_combout\ = (carCountSignal(2) & (((carCountSignal(3))))) # (!carCountSignal(2) & (carCountSignal(1) & ((carCountSignal(3)) # (!carCountSignal(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(2),
	datab => carCountSignal(0),
	datac => carCountSignal(1),
	datad => carCountSignal(3),
	combout => \seven_segment_inst|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y37_N30
\seven_segment_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux3~0_combout\ = (carCountSignal(1) & ((carCountSignal(3)) # ((carCountSignal(2) & carCountSignal(0))))) # (!carCountSignal(1) & (carCountSignal(2) $ (((carCountSignal(0) & !carCountSignal(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(2),
	datab => carCountSignal(0),
	datac => carCountSignal(1),
	datad => carCountSignal(3),
	combout => \seven_segment_inst|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y37_N4
\seven_segment_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux2~0_combout\ = (carCountSignal(0)) # ((carCountSignal(1) & ((carCountSignal(3)))) # (!carCountSignal(1) & (carCountSignal(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(2),
	datab => carCountSignal(0),
	datac => carCountSignal(1),
	datad => carCountSignal(3),
	combout => \seven_segment_inst|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y37_N26
\seven_segment_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux1~0_combout\ = (carCountSignal(2) & ((carCountSignal(3)) # ((carCountSignal(0) & carCountSignal(1))))) # (!carCountSignal(2) & ((carCountSignal(1)) # ((carCountSignal(0) & !carCountSignal(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(2),
	datab => carCountSignal(0),
	datac => carCountSignal(1),
	datad => carCountSignal(3),
	combout => \seven_segment_inst|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y37_N24
\seven_segment_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seven_segment_inst|Mux0~0_combout\ = (carCountSignal(2) & (!carCountSignal(3) & ((!carCountSignal(1)) # (!carCountSignal(0))))) # (!carCountSignal(2) & ((carCountSignal(1) $ (carCountSignal(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => carCountSignal(2),
	datab => carCountSignal(0),
	datac => carCountSignal(1),
	datad => carCountSignal(3),
	combout => \seven_segment_inst|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y29_N0
\motor_driver_inst|cnt[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[0]~32_combout\ = \motor_driver_inst|cnt\(0) $ (VCC)
-- \motor_driver_inst|cnt[0]~33\ = CARRY(\motor_driver_inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(0),
	datad => VCC,
	combout => \motor_driver_inst|cnt[0]~32_combout\,
	cout => \motor_driver_inst|cnt[0]~33\);

-- Location: LCCOMB_X60_Y28_N4
\motor_driver_inst|cnt[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[18]~68_combout\ = (\motor_driver_inst|cnt\(18) & (\motor_driver_inst|cnt[17]~67\ $ (GND))) # (!\motor_driver_inst|cnt\(18) & (!\motor_driver_inst|cnt[17]~67\ & VCC))
-- \motor_driver_inst|cnt[18]~69\ = CARRY((\motor_driver_inst|cnt\(18) & !\motor_driver_inst|cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(18),
	datad => VCC,
	cin => \motor_driver_inst|cnt[17]~67\,
	combout => \motor_driver_inst|cnt[18]~68_combout\,
	cout => \motor_driver_inst|cnt[18]~69\);

-- Location: LCCOMB_X60_Y28_N6
\motor_driver_inst|cnt[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[19]~70_combout\ = (\motor_driver_inst|cnt\(19) & (!\motor_driver_inst|cnt[18]~69\)) # (!\motor_driver_inst|cnt\(19) & ((\motor_driver_inst|cnt[18]~69\) # (GND)))
-- \motor_driver_inst|cnt[19]~71\ = CARRY((!\motor_driver_inst|cnt[18]~69\) # (!\motor_driver_inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(19),
	datad => VCC,
	cin => \motor_driver_inst|cnt[18]~69\,
	combout => \motor_driver_inst|cnt[19]~70_combout\,
	cout => \motor_driver_inst|cnt[19]~71\);

-- Location: FF_X60_Y28_N7
\motor_driver_inst|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[19]~70_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(19));

-- Location: LCCOMB_X61_Y28_N10
\motor_driver_inst|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan0~7_combout\ = (((!\motor_driver_inst|cnt\(19)) # (!\motor_driver_inst|cnt\(16))) # (!\motor_driver_inst|cnt\(17))) # (!\motor_driver_inst|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(18),
	datab => \motor_driver_inst|cnt\(17),
	datac => \motor_driver_inst|cnt\(16),
	datad => \motor_driver_inst|cnt\(19),
	combout => \motor_driver_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X60_Y28_N8
\motor_driver_inst|cnt[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[20]~72_combout\ = (\motor_driver_inst|cnt\(20) & (\motor_driver_inst|cnt[19]~71\ $ (GND))) # (!\motor_driver_inst|cnt\(20) & (!\motor_driver_inst|cnt[19]~71\ & VCC))
-- \motor_driver_inst|cnt[20]~73\ = CARRY((\motor_driver_inst|cnt\(20) & !\motor_driver_inst|cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(20),
	datad => VCC,
	cin => \motor_driver_inst|cnt[19]~71\,
	combout => \motor_driver_inst|cnt[20]~72_combout\,
	cout => \motor_driver_inst|cnt[20]~73\);

-- Location: FF_X60_Y28_N9
\motor_driver_inst|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[20]~72_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(20));

-- Location: LCCOMB_X60_Y28_N10
\motor_driver_inst|cnt[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[21]~74_combout\ = (\motor_driver_inst|cnt\(21) & (!\motor_driver_inst|cnt[20]~73\)) # (!\motor_driver_inst|cnt\(21) & ((\motor_driver_inst|cnt[20]~73\) # (GND)))
-- \motor_driver_inst|cnt[21]~75\ = CARRY((!\motor_driver_inst|cnt[20]~73\) # (!\motor_driver_inst|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(21),
	datad => VCC,
	cin => \motor_driver_inst|cnt[20]~73\,
	combout => \motor_driver_inst|cnt[21]~74_combout\,
	cout => \motor_driver_inst|cnt[21]~75\);

-- Location: FF_X60_Y28_N11
\motor_driver_inst|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[21]~74_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(21));

-- Location: LCCOMB_X60_Y28_N12
\motor_driver_inst|cnt[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[22]~76_combout\ = (\motor_driver_inst|cnt\(22) & (\motor_driver_inst|cnt[21]~75\ $ (GND))) # (!\motor_driver_inst|cnt\(22) & (!\motor_driver_inst|cnt[21]~75\ & VCC))
-- \motor_driver_inst|cnt[22]~77\ = CARRY((\motor_driver_inst|cnt\(22) & !\motor_driver_inst|cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(22),
	datad => VCC,
	cin => \motor_driver_inst|cnt[21]~75\,
	combout => \motor_driver_inst|cnt[22]~76_combout\,
	cout => \motor_driver_inst|cnt[22]~77\);

-- Location: FF_X60_Y28_N13
\motor_driver_inst|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[22]~76_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(22));

-- Location: LCCOMB_X60_Y28_N14
\motor_driver_inst|cnt[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[23]~78_combout\ = (\motor_driver_inst|cnt\(23) & (!\motor_driver_inst|cnt[22]~77\)) # (!\motor_driver_inst|cnt\(23) & ((\motor_driver_inst|cnt[22]~77\) # (GND)))
-- \motor_driver_inst|cnt[23]~79\ = CARRY((!\motor_driver_inst|cnt[22]~77\) # (!\motor_driver_inst|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(23),
	datad => VCC,
	cin => \motor_driver_inst|cnt[22]~77\,
	combout => \motor_driver_inst|cnt[23]~78_combout\,
	cout => \motor_driver_inst|cnt[23]~79\);

-- Location: FF_X60_Y28_N15
\motor_driver_inst|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[23]~78_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(23));

-- Location: LCCOMB_X60_Y28_N16
\motor_driver_inst|cnt[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[24]~80_combout\ = (\motor_driver_inst|cnt\(24) & (\motor_driver_inst|cnt[23]~79\ $ (GND))) # (!\motor_driver_inst|cnt\(24) & (!\motor_driver_inst|cnt[23]~79\ & VCC))
-- \motor_driver_inst|cnt[24]~81\ = CARRY((\motor_driver_inst|cnt\(24) & !\motor_driver_inst|cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(24),
	datad => VCC,
	cin => \motor_driver_inst|cnt[23]~79\,
	combout => \motor_driver_inst|cnt[24]~80_combout\,
	cout => \motor_driver_inst|cnt[24]~81\);

-- Location: FF_X60_Y28_N17
\motor_driver_inst|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[24]~80_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(24));

-- Location: LCCOMB_X60_Y28_N18
\motor_driver_inst|cnt[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[25]~82_combout\ = (\motor_driver_inst|cnt\(25) & (!\motor_driver_inst|cnt[24]~81\)) # (!\motor_driver_inst|cnt\(25) & ((\motor_driver_inst|cnt[24]~81\) # (GND)))
-- \motor_driver_inst|cnt[25]~83\ = CARRY((!\motor_driver_inst|cnt[24]~81\) # (!\motor_driver_inst|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(25),
	datad => VCC,
	cin => \motor_driver_inst|cnt[24]~81\,
	combout => \motor_driver_inst|cnt[25]~82_combout\,
	cout => \motor_driver_inst|cnt[25]~83\);

-- Location: FF_X60_Y28_N19
\motor_driver_inst|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[25]~82_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(25));

-- Location: LCCOMB_X60_Y28_N20
\motor_driver_inst|cnt[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[26]~84_combout\ = (\motor_driver_inst|cnt\(26) & (\motor_driver_inst|cnt[25]~83\ $ (GND))) # (!\motor_driver_inst|cnt\(26) & (!\motor_driver_inst|cnt[25]~83\ & VCC))
-- \motor_driver_inst|cnt[26]~85\ = CARRY((\motor_driver_inst|cnt\(26) & !\motor_driver_inst|cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(26),
	datad => VCC,
	cin => \motor_driver_inst|cnt[25]~83\,
	combout => \motor_driver_inst|cnt[26]~84_combout\,
	cout => \motor_driver_inst|cnt[26]~85\);

-- Location: FF_X60_Y28_N21
\motor_driver_inst|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[26]~84_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(26));

-- Location: LCCOMB_X60_Y28_N22
\motor_driver_inst|cnt[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[27]~86_combout\ = (\motor_driver_inst|cnt\(27) & (!\motor_driver_inst|cnt[26]~85\)) # (!\motor_driver_inst|cnt\(27) & ((\motor_driver_inst|cnt[26]~85\) # (GND)))
-- \motor_driver_inst|cnt[27]~87\ = CARRY((!\motor_driver_inst|cnt[26]~85\) # (!\motor_driver_inst|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(27),
	datad => VCC,
	cin => \motor_driver_inst|cnt[26]~85\,
	combout => \motor_driver_inst|cnt[27]~86_combout\,
	cout => \motor_driver_inst|cnt[27]~87\);

-- Location: FF_X60_Y28_N23
\motor_driver_inst|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[27]~86_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(27));

-- Location: LCCOMB_X60_Y28_N24
\motor_driver_inst|cnt[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[28]~88_combout\ = (\motor_driver_inst|cnt\(28) & (\motor_driver_inst|cnt[27]~87\ $ (GND))) # (!\motor_driver_inst|cnt\(28) & (!\motor_driver_inst|cnt[27]~87\ & VCC))
-- \motor_driver_inst|cnt[28]~89\ = CARRY((\motor_driver_inst|cnt\(28) & !\motor_driver_inst|cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(28),
	datad => VCC,
	cin => \motor_driver_inst|cnt[27]~87\,
	combout => \motor_driver_inst|cnt[28]~88_combout\,
	cout => \motor_driver_inst|cnt[28]~89\);

-- Location: FF_X60_Y28_N25
\motor_driver_inst|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[28]~88_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(28));

-- Location: LCCOMB_X60_Y28_N26
\motor_driver_inst|cnt[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[29]~90_combout\ = (\motor_driver_inst|cnt\(29) & (!\motor_driver_inst|cnt[28]~89\)) # (!\motor_driver_inst|cnt\(29) & ((\motor_driver_inst|cnt[28]~89\) # (GND)))
-- \motor_driver_inst|cnt[29]~91\ = CARRY((!\motor_driver_inst|cnt[28]~89\) # (!\motor_driver_inst|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(29),
	datad => VCC,
	cin => \motor_driver_inst|cnt[28]~89\,
	combout => \motor_driver_inst|cnt[29]~90_combout\,
	cout => \motor_driver_inst|cnt[29]~91\);

-- Location: FF_X60_Y28_N27
\motor_driver_inst|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[29]~90_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(29));

-- Location: LCCOMB_X60_Y28_N28
\motor_driver_inst|cnt[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[30]~92_combout\ = (\motor_driver_inst|cnt\(30) & (\motor_driver_inst|cnt[29]~91\ $ (GND))) # (!\motor_driver_inst|cnt\(30) & (!\motor_driver_inst|cnt[29]~91\ & VCC))
-- \motor_driver_inst|cnt[30]~93\ = CARRY((\motor_driver_inst|cnt\(30) & !\motor_driver_inst|cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(30),
	datad => VCC,
	cin => \motor_driver_inst|cnt[29]~91\,
	combout => \motor_driver_inst|cnt[30]~92_combout\,
	cout => \motor_driver_inst|cnt[30]~93\);

-- Location: FF_X60_Y28_N29
\motor_driver_inst|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[30]~92_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(30));

-- Location: LCCOMB_X60_Y28_N30
\motor_driver_inst|cnt[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[31]~94_combout\ = \motor_driver_inst|cnt\(31) $ (\motor_driver_inst|cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(31),
	cin => \motor_driver_inst|cnt[30]~93\,
	combout => \motor_driver_inst|cnt[31]~94_combout\);

-- Location: FF_X60_Y28_N31
\motor_driver_inst|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[31]~94_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(31));

-- Location: LCCOMB_X61_Y28_N0
\motor_driver_inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan0~1_combout\ = (!\motor_driver_inst|cnt\(24) & (!\motor_driver_inst|cnt\(27) & (!\motor_driver_inst|cnt\(26) & !\motor_driver_inst|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(24),
	datab => \motor_driver_inst|cnt\(27),
	datac => \motor_driver_inst|cnt\(26),
	datad => \motor_driver_inst|cnt\(25),
	combout => \motor_driver_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y28_N30
\motor_driver_inst|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan0~2_combout\ = (!\motor_driver_inst|cnt\(29) & (!\motor_driver_inst|cnt\(30) & !\motor_driver_inst|cnt\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(29),
	datac => \motor_driver_inst|cnt\(30),
	datad => \motor_driver_inst|cnt\(28),
	combout => \motor_driver_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X61_Y28_N6
\motor_driver_inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan0~0_combout\ = (!\motor_driver_inst|cnt\(22) & (!\motor_driver_inst|cnt\(20) & (!\motor_driver_inst|cnt\(23) & !\motor_driver_inst|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(22),
	datab => \motor_driver_inst|cnt\(20),
	datac => \motor_driver_inst|cnt\(23),
	datad => \motor_driver_inst|cnt\(21),
	combout => \motor_driver_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y28_N8
\motor_driver_inst|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan0~3_combout\ = (\motor_driver_inst|LessThan0~1_combout\ & (\motor_driver_inst|LessThan0~2_combout\ & \motor_driver_inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|LessThan0~1_combout\,
	datac => \motor_driver_inst|LessThan0~2_combout\,
	datad => \motor_driver_inst|LessThan0~0_combout\,
	combout => \motor_driver_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X61_Y28_N20
\motor_driver_inst|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan0~4_combout\ = ((!\motor_driver_inst|cnt\(6) & (!\motor_driver_inst|cnt\(7) & !\motor_driver_inst|cnt\(8)))) # (!\motor_driver_inst|cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(6),
	datab => \motor_driver_inst|cnt\(7),
	datac => \motor_driver_inst|cnt\(9),
	datad => \motor_driver_inst|cnt\(8),
	combout => \motor_driver_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X61_Y28_N18
\motor_driver_inst|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan0~5_combout\ = (!\motor_driver_inst|cnt\(10) & (!\motor_driver_inst|cnt\(13) & (!\motor_driver_inst|cnt\(11) & !\motor_driver_inst|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(10),
	datab => \motor_driver_inst|cnt\(13),
	datac => \motor_driver_inst|cnt\(11),
	datad => \motor_driver_inst|cnt\(12),
	combout => \motor_driver_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X61_Y28_N16
\motor_driver_inst|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan0~6_combout\ = (!\motor_driver_inst|cnt\(15) & (((\motor_driver_inst|LessThan0~4_combout\ & \motor_driver_inst|LessThan0~5_combout\)) # (!\motor_driver_inst|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(15),
	datab => \motor_driver_inst|LessThan0~4_combout\,
	datac => \motor_driver_inst|cnt\(14),
	datad => \motor_driver_inst|LessThan0~5_combout\,
	combout => \motor_driver_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X61_Y28_N4
\motor_driver_inst|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan0~8_combout\ = (!\motor_driver_inst|cnt\(31) & (((!\motor_driver_inst|LessThan0~7_combout\ & !\motor_driver_inst|LessThan0~6_combout\)) # (!\motor_driver_inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan0~7_combout\,
	datab => \motor_driver_inst|cnt\(31),
	datac => \motor_driver_inst|LessThan0~3_combout\,
	datad => \motor_driver_inst|LessThan0~6_combout\,
	combout => \motor_driver_inst|LessThan0~8_combout\);

-- Location: FF_X60_Y29_N1
\motor_driver_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[0]~32_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(0));

-- Location: LCCOMB_X60_Y29_N2
\motor_driver_inst|cnt[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[1]~34_combout\ = (\motor_driver_inst|cnt\(1) & (!\motor_driver_inst|cnt[0]~33\)) # (!\motor_driver_inst|cnt\(1) & ((\motor_driver_inst|cnt[0]~33\) # (GND)))
-- \motor_driver_inst|cnt[1]~35\ = CARRY((!\motor_driver_inst|cnt[0]~33\) # (!\motor_driver_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(1),
	datad => VCC,
	cin => \motor_driver_inst|cnt[0]~33\,
	combout => \motor_driver_inst|cnt[1]~34_combout\,
	cout => \motor_driver_inst|cnt[1]~35\);

-- Location: FF_X60_Y29_N3
\motor_driver_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[1]~34_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(1));

-- Location: LCCOMB_X60_Y29_N4
\motor_driver_inst|cnt[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[2]~36_combout\ = (\motor_driver_inst|cnt\(2) & (\motor_driver_inst|cnt[1]~35\ $ (GND))) # (!\motor_driver_inst|cnt\(2) & (!\motor_driver_inst|cnt[1]~35\ & VCC))
-- \motor_driver_inst|cnt[2]~37\ = CARRY((\motor_driver_inst|cnt\(2) & !\motor_driver_inst|cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(2),
	datad => VCC,
	cin => \motor_driver_inst|cnt[1]~35\,
	combout => \motor_driver_inst|cnt[2]~36_combout\,
	cout => \motor_driver_inst|cnt[2]~37\);

-- Location: FF_X60_Y29_N5
\motor_driver_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[2]~36_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(2));

-- Location: LCCOMB_X60_Y29_N6
\motor_driver_inst|cnt[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[3]~38_combout\ = (\motor_driver_inst|cnt\(3) & (!\motor_driver_inst|cnt[2]~37\)) # (!\motor_driver_inst|cnt\(3) & ((\motor_driver_inst|cnt[2]~37\) # (GND)))
-- \motor_driver_inst|cnt[3]~39\ = CARRY((!\motor_driver_inst|cnt[2]~37\) # (!\motor_driver_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(3),
	datad => VCC,
	cin => \motor_driver_inst|cnt[2]~37\,
	combout => \motor_driver_inst|cnt[3]~38_combout\,
	cout => \motor_driver_inst|cnt[3]~39\);

-- Location: FF_X60_Y29_N7
\motor_driver_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[3]~38_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(3));

-- Location: LCCOMB_X60_Y29_N8
\motor_driver_inst|cnt[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[4]~40_combout\ = (\motor_driver_inst|cnt\(4) & (\motor_driver_inst|cnt[3]~39\ $ (GND))) # (!\motor_driver_inst|cnt\(4) & (!\motor_driver_inst|cnt[3]~39\ & VCC))
-- \motor_driver_inst|cnt[4]~41\ = CARRY((\motor_driver_inst|cnt\(4) & !\motor_driver_inst|cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(4),
	datad => VCC,
	cin => \motor_driver_inst|cnt[3]~39\,
	combout => \motor_driver_inst|cnt[4]~40_combout\,
	cout => \motor_driver_inst|cnt[4]~41\);

-- Location: FF_X60_Y29_N9
\motor_driver_inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[4]~40_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(4));

-- Location: LCCOMB_X60_Y29_N10
\motor_driver_inst|cnt[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[5]~42_combout\ = (\motor_driver_inst|cnt\(5) & (!\motor_driver_inst|cnt[4]~41\)) # (!\motor_driver_inst|cnt\(5) & ((\motor_driver_inst|cnt[4]~41\) # (GND)))
-- \motor_driver_inst|cnt[5]~43\ = CARRY((!\motor_driver_inst|cnt[4]~41\) # (!\motor_driver_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(5),
	datad => VCC,
	cin => \motor_driver_inst|cnt[4]~41\,
	combout => \motor_driver_inst|cnt[5]~42_combout\,
	cout => \motor_driver_inst|cnt[5]~43\);

-- Location: FF_X60_Y29_N11
\motor_driver_inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[5]~42_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(5));

-- Location: LCCOMB_X60_Y29_N12
\motor_driver_inst|cnt[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[6]~44_combout\ = (\motor_driver_inst|cnt\(6) & (\motor_driver_inst|cnt[5]~43\ $ (GND))) # (!\motor_driver_inst|cnt\(6) & (!\motor_driver_inst|cnt[5]~43\ & VCC))
-- \motor_driver_inst|cnt[6]~45\ = CARRY((\motor_driver_inst|cnt\(6) & !\motor_driver_inst|cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(6),
	datad => VCC,
	cin => \motor_driver_inst|cnt[5]~43\,
	combout => \motor_driver_inst|cnt[6]~44_combout\,
	cout => \motor_driver_inst|cnt[6]~45\);

-- Location: FF_X60_Y29_N13
\motor_driver_inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[6]~44_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(6));

-- Location: LCCOMB_X60_Y29_N14
\motor_driver_inst|cnt[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[7]~46_combout\ = (\motor_driver_inst|cnt\(7) & (!\motor_driver_inst|cnt[6]~45\)) # (!\motor_driver_inst|cnt\(7) & ((\motor_driver_inst|cnt[6]~45\) # (GND)))
-- \motor_driver_inst|cnt[7]~47\ = CARRY((!\motor_driver_inst|cnt[6]~45\) # (!\motor_driver_inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(7),
	datad => VCC,
	cin => \motor_driver_inst|cnt[6]~45\,
	combout => \motor_driver_inst|cnt[7]~46_combout\,
	cout => \motor_driver_inst|cnt[7]~47\);

-- Location: FF_X60_Y29_N15
\motor_driver_inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[7]~46_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(7));

-- Location: LCCOMB_X60_Y29_N16
\motor_driver_inst|cnt[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[8]~48_combout\ = (\motor_driver_inst|cnt\(8) & (\motor_driver_inst|cnt[7]~47\ $ (GND))) # (!\motor_driver_inst|cnt\(8) & (!\motor_driver_inst|cnt[7]~47\ & VCC))
-- \motor_driver_inst|cnt[8]~49\ = CARRY((\motor_driver_inst|cnt\(8) & !\motor_driver_inst|cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(8),
	datad => VCC,
	cin => \motor_driver_inst|cnt[7]~47\,
	combout => \motor_driver_inst|cnt[8]~48_combout\,
	cout => \motor_driver_inst|cnt[8]~49\);

-- Location: FF_X60_Y29_N17
\motor_driver_inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[8]~48_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(8));

-- Location: LCCOMB_X60_Y29_N18
\motor_driver_inst|cnt[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[9]~50_combout\ = (\motor_driver_inst|cnt\(9) & (!\motor_driver_inst|cnt[8]~49\)) # (!\motor_driver_inst|cnt\(9) & ((\motor_driver_inst|cnt[8]~49\) # (GND)))
-- \motor_driver_inst|cnt[9]~51\ = CARRY((!\motor_driver_inst|cnt[8]~49\) # (!\motor_driver_inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(9),
	datad => VCC,
	cin => \motor_driver_inst|cnt[8]~49\,
	combout => \motor_driver_inst|cnt[9]~50_combout\,
	cout => \motor_driver_inst|cnt[9]~51\);

-- Location: FF_X60_Y29_N19
\motor_driver_inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[9]~50_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(9));

-- Location: LCCOMB_X60_Y29_N20
\motor_driver_inst|cnt[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[10]~52_combout\ = (\motor_driver_inst|cnt\(10) & (\motor_driver_inst|cnt[9]~51\ $ (GND))) # (!\motor_driver_inst|cnt\(10) & (!\motor_driver_inst|cnt[9]~51\ & VCC))
-- \motor_driver_inst|cnt[10]~53\ = CARRY((\motor_driver_inst|cnt\(10) & !\motor_driver_inst|cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(10),
	datad => VCC,
	cin => \motor_driver_inst|cnt[9]~51\,
	combout => \motor_driver_inst|cnt[10]~52_combout\,
	cout => \motor_driver_inst|cnt[10]~53\);

-- Location: FF_X60_Y29_N21
\motor_driver_inst|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[10]~52_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(10));

-- Location: LCCOMB_X60_Y29_N22
\motor_driver_inst|cnt[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[11]~54_combout\ = (\motor_driver_inst|cnt\(11) & (!\motor_driver_inst|cnt[10]~53\)) # (!\motor_driver_inst|cnt\(11) & ((\motor_driver_inst|cnt[10]~53\) # (GND)))
-- \motor_driver_inst|cnt[11]~55\ = CARRY((!\motor_driver_inst|cnt[10]~53\) # (!\motor_driver_inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(11),
	datad => VCC,
	cin => \motor_driver_inst|cnt[10]~53\,
	combout => \motor_driver_inst|cnt[11]~54_combout\,
	cout => \motor_driver_inst|cnt[11]~55\);

-- Location: FF_X60_Y29_N23
\motor_driver_inst|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[11]~54_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(11));

-- Location: LCCOMB_X60_Y29_N24
\motor_driver_inst|cnt[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[12]~56_combout\ = (\motor_driver_inst|cnt\(12) & (\motor_driver_inst|cnt[11]~55\ $ (GND))) # (!\motor_driver_inst|cnt\(12) & (!\motor_driver_inst|cnt[11]~55\ & VCC))
-- \motor_driver_inst|cnt[12]~57\ = CARRY((\motor_driver_inst|cnt\(12) & !\motor_driver_inst|cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(12),
	datad => VCC,
	cin => \motor_driver_inst|cnt[11]~55\,
	combout => \motor_driver_inst|cnt[12]~56_combout\,
	cout => \motor_driver_inst|cnt[12]~57\);

-- Location: FF_X60_Y29_N25
\motor_driver_inst|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[12]~56_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(12));

-- Location: LCCOMB_X60_Y29_N26
\motor_driver_inst|cnt[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[13]~58_combout\ = (\motor_driver_inst|cnt\(13) & (!\motor_driver_inst|cnt[12]~57\)) # (!\motor_driver_inst|cnt\(13) & ((\motor_driver_inst|cnt[12]~57\) # (GND)))
-- \motor_driver_inst|cnt[13]~59\ = CARRY((!\motor_driver_inst|cnt[12]~57\) # (!\motor_driver_inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(13),
	datad => VCC,
	cin => \motor_driver_inst|cnt[12]~57\,
	combout => \motor_driver_inst|cnt[13]~58_combout\,
	cout => \motor_driver_inst|cnt[13]~59\);

-- Location: FF_X60_Y29_N27
\motor_driver_inst|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[13]~58_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(13));

-- Location: LCCOMB_X60_Y29_N28
\motor_driver_inst|cnt[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[14]~60_combout\ = (\motor_driver_inst|cnt\(14) & (\motor_driver_inst|cnt[13]~59\ $ (GND))) # (!\motor_driver_inst|cnt\(14) & (!\motor_driver_inst|cnt[13]~59\ & VCC))
-- \motor_driver_inst|cnt[14]~61\ = CARRY((\motor_driver_inst|cnt\(14) & !\motor_driver_inst|cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(14),
	datad => VCC,
	cin => \motor_driver_inst|cnt[13]~59\,
	combout => \motor_driver_inst|cnt[14]~60_combout\,
	cout => \motor_driver_inst|cnt[14]~61\);

-- Location: FF_X60_Y29_N29
\motor_driver_inst|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[14]~60_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(14));

-- Location: LCCOMB_X60_Y29_N30
\motor_driver_inst|cnt[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[15]~62_combout\ = (\motor_driver_inst|cnt\(15) & (!\motor_driver_inst|cnt[14]~61\)) # (!\motor_driver_inst|cnt\(15) & ((\motor_driver_inst|cnt[14]~61\) # (GND)))
-- \motor_driver_inst|cnt[15]~63\ = CARRY((!\motor_driver_inst|cnt[14]~61\) # (!\motor_driver_inst|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(15),
	datad => VCC,
	cin => \motor_driver_inst|cnt[14]~61\,
	combout => \motor_driver_inst|cnt[15]~62_combout\,
	cout => \motor_driver_inst|cnt[15]~63\);

-- Location: FF_X60_Y29_N31
\motor_driver_inst|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[15]~62_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(15));

-- Location: LCCOMB_X60_Y28_N0
\motor_driver_inst|cnt[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[16]~64_combout\ = (\motor_driver_inst|cnt\(16) & (\motor_driver_inst|cnt[15]~63\ $ (GND))) # (!\motor_driver_inst|cnt\(16) & (!\motor_driver_inst|cnt[15]~63\ & VCC))
-- \motor_driver_inst|cnt[16]~65\ = CARRY((\motor_driver_inst|cnt\(16) & !\motor_driver_inst|cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(16),
	datad => VCC,
	cin => \motor_driver_inst|cnt[15]~63\,
	combout => \motor_driver_inst|cnt[16]~64_combout\,
	cout => \motor_driver_inst|cnt[16]~65\);

-- Location: FF_X60_Y28_N1
\motor_driver_inst|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[16]~64_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(16));

-- Location: LCCOMB_X60_Y28_N2
\motor_driver_inst|cnt[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|cnt[17]~66_combout\ = (\motor_driver_inst|cnt\(17) & (!\motor_driver_inst|cnt[16]~65\)) # (!\motor_driver_inst|cnt\(17) & ((\motor_driver_inst|cnt[16]~65\) # (GND)))
-- \motor_driver_inst|cnt[17]~67\ = CARRY((!\motor_driver_inst|cnt[16]~65\) # (!\motor_driver_inst|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(17),
	datad => VCC,
	cin => \motor_driver_inst|cnt[16]~65\,
	combout => \motor_driver_inst|cnt[17]~66_combout\,
	cout => \motor_driver_inst|cnt[17]~67\);

-- Location: FF_X60_Y28_N3
\motor_driver_inst|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[17]~66_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(17));

-- Location: FF_X60_Y28_N5
\motor_driver_inst|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|cnt[18]~68_combout\,
	sclr => \motor_driver_inst|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|cnt\(18));

-- Location: LCCOMB_X61_Y28_N26
\motor_driver_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~0_combout\ = (!\motor_driver_inst|cnt\(18) & (!\motor_driver_inst|cnt\(17) & (\motor_driver_inst|LessThan0~3_combout\ & !\motor_driver_inst|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(18),
	datab => \motor_driver_inst|cnt\(17),
	datac => \motor_driver_inst|LessThan0~3_combout\,
	datad => \motor_driver_inst|cnt\(19),
	combout => \motor_driver_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X69_Y30_N12
\motorctrl~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motorctrl~feeder_combout\ = \process_1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_1~0_combout\,
	combout => \motorctrl~feeder_combout\);

-- Location: FF_X69_Y30_N13
motorctrl : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motorctrl~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motorctrl~q\);

-- Location: LCCOMB_X61_Y31_N0
\motor_driver_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~0_combout\ = \motor_driver_inst|delay_cnt\(0) $ (VCC)
-- \motor_driver_inst|Add1~1\ = CARRY(\motor_driver_inst|delay_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(0),
	datad => VCC,
	combout => \motor_driver_inst|Add1~0_combout\,
	cout => \motor_driver_inst|Add1~1\);

-- Location: LCCOMB_X62_Y31_N6
\motor_driver_inst|Add1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~90_combout\ = (\motor_driver_inst|Add1~0_combout\ & (\motor_driver_inst|motor_active~q\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|Add1~0_combout\,
	datab => \motor_driver_inst|motor_active~q\,
	datac => \motor_driver_inst|LessThan2~5_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~90_combout\);

-- Location: FF_X62_Y31_N7
\motor_driver_inst|delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~90_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(0));

-- Location: LCCOMB_X61_Y31_N2
\motor_driver_inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~2_combout\ = (\motor_driver_inst|delay_cnt\(1) & (!\motor_driver_inst|Add1~1\)) # (!\motor_driver_inst|delay_cnt\(1) & ((\motor_driver_inst|Add1~1\) # (GND)))
-- \motor_driver_inst|Add1~3\ = CARRY((!\motor_driver_inst|Add1~1\) # (!\motor_driver_inst|delay_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(1),
	datad => VCC,
	cin => \motor_driver_inst|Add1~1\,
	combout => \motor_driver_inst|Add1~2_combout\,
	cout => \motor_driver_inst|Add1~3\);

-- Location: LCCOMB_X62_Y31_N16
\motor_driver_inst|Add1~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~89_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~2_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|LessThan2~5_combout\,
	datac => \motor_driver_inst|Add1~2_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~89_combout\);

-- Location: FF_X62_Y31_N17
\motor_driver_inst|delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~89_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(1));

-- Location: LCCOMB_X61_Y31_N4
\motor_driver_inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~4_combout\ = (\motor_driver_inst|delay_cnt\(2) & (\motor_driver_inst|Add1~3\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(2) & (!\motor_driver_inst|Add1~3\ & VCC))
-- \motor_driver_inst|Add1~5\ = CARRY((\motor_driver_inst|delay_cnt\(2) & !\motor_driver_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(2),
	datad => VCC,
	cin => \motor_driver_inst|Add1~3\,
	combout => \motor_driver_inst|Add1~4_combout\,
	cout => \motor_driver_inst|Add1~5\);

-- Location: LCCOMB_X62_Y31_N2
\motor_driver_inst|Add1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~88_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~4_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|Add1~4_combout\,
	datac => \motor_driver_inst|LessThan2~5_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~88_combout\);

-- Location: FF_X62_Y31_N3
\motor_driver_inst|delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~88_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(2));

-- Location: LCCOMB_X61_Y31_N6
\motor_driver_inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~6_combout\ = (\motor_driver_inst|delay_cnt\(3) & (!\motor_driver_inst|Add1~5\)) # (!\motor_driver_inst|delay_cnt\(3) & ((\motor_driver_inst|Add1~5\) # (GND)))
-- \motor_driver_inst|Add1~7\ = CARRY((!\motor_driver_inst|Add1~5\) # (!\motor_driver_inst|delay_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(3),
	datad => VCC,
	cin => \motor_driver_inst|Add1~5\,
	combout => \motor_driver_inst|Add1~6_combout\,
	cout => \motor_driver_inst|Add1~7\);

-- Location: LCCOMB_X60_Y31_N6
\motor_driver_inst|Add1~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~87_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~6_combout\ & ((\motor_driver_inst|LessThan2~9_combout\) # (\motor_driver_inst|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|Add1~6_combout\,
	datac => \motor_driver_inst|LessThan2~9_combout\,
	datad => \motor_driver_inst|LessThan2~5_combout\,
	combout => \motor_driver_inst|Add1~87_combout\);

-- Location: FF_X60_Y31_N7
\motor_driver_inst|delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~87_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(3));

-- Location: LCCOMB_X61_Y31_N8
\motor_driver_inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~8_combout\ = (\motor_driver_inst|delay_cnt\(4) & (\motor_driver_inst|Add1~7\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(4) & (!\motor_driver_inst|Add1~7\ & VCC))
-- \motor_driver_inst|Add1~9\ = CARRY((\motor_driver_inst|delay_cnt\(4) & !\motor_driver_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(4),
	datad => VCC,
	cin => \motor_driver_inst|Add1~7\,
	combout => \motor_driver_inst|Add1~8_combout\,
	cout => \motor_driver_inst|Add1~9\);

-- Location: LCCOMB_X62_Y31_N20
\motor_driver_inst|Add1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~86_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~8_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|LessThan2~5_combout\,
	datac => \motor_driver_inst|Add1~8_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~86_combout\);

-- Location: FF_X62_Y31_N21
\motor_driver_inst|delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~86_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(4));

-- Location: LCCOMB_X61_Y31_N10
\motor_driver_inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~10_combout\ = (\motor_driver_inst|delay_cnt\(5) & (!\motor_driver_inst|Add1~9\)) # (!\motor_driver_inst|delay_cnt\(5) & ((\motor_driver_inst|Add1~9\) # (GND)))
-- \motor_driver_inst|Add1~11\ = CARRY((!\motor_driver_inst|Add1~9\) # (!\motor_driver_inst|delay_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(5),
	datad => VCC,
	cin => \motor_driver_inst|Add1~9\,
	combout => \motor_driver_inst|Add1~10_combout\,
	cout => \motor_driver_inst|Add1~11\);

-- Location: LCCOMB_X60_Y31_N16
\motor_driver_inst|Add1~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~85_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~10_combout\ & ((\motor_driver_inst|LessThan2~9_combout\) # (\motor_driver_inst|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|Add1~10_combout\,
	datac => \motor_driver_inst|LessThan2~9_combout\,
	datad => \motor_driver_inst|LessThan2~5_combout\,
	combout => \motor_driver_inst|Add1~85_combout\);

-- Location: FF_X60_Y31_N17
\motor_driver_inst|delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~85_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(5));

-- Location: LCCOMB_X61_Y31_N12
\motor_driver_inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~12_combout\ = (\motor_driver_inst|delay_cnt\(6) & (\motor_driver_inst|Add1~11\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(6) & (!\motor_driver_inst|Add1~11\ & VCC))
-- \motor_driver_inst|Add1~13\ = CARRY((\motor_driver_inst|delay_cnt\(6) & !\motor_driver_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(6),
	datad => VCC,
	cin => \motor_driver_inst|Add1~11\,
	combout => \motor_driver_inst|Add1~12_combout\,
	cout => \motor_driver_inst|Add1~13\);

-- Location: LCCOMB_X60_Y31_N14
\motor_driver_inst|Add1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~84_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~12_combout\ & ((\motor_driver_inst|LessThan2~9_combout\) # (\motor_driver_inst|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|Add1~12_combout\,
	datac => \motor_driver_inst|LessThan2~9_combout\,
	datad => \motor_driver_inst|LessThan2~5_combout\,
	combout => \motor_driver_inst|Add1~84_combout\);

-- Location: FF_X60_Y31_N15
\motor_driver_inst|delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~84_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(6));

-- Location: LCCOMB_X61_Y31_N14
\motor_driver_inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~14_combout\ = (\motor_driver_inst|delay_cnt\(7) & (!\motor_driver_inst|Add1~13\)) # (!\motor_driver_inst|delay_cnt\(7) & ((\motor_driver_inst|Add1~13\) # (GND)))
-- \motor_driver_inst|Add1~15\ = CARRY((!\motor_driver_inst|Add1~13\) # (!\motor_driver_inst|delay_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(7),
	datad => VCC,
	cin => \motor_driver_inst|Add1~13\,
	combout => \motor_driver_inst|Add1~14_combout\,
	cout => \motor_driver_inst|Add1~15\);

-- Location: LCCOMB_X60_Y31_N0
\motor_driver_inst|Add1~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~83_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~14_combout\ & ((\motor_driver_inst|LessThan2~9_combout\) # (\motor_driver_inst|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|Add1~14_combout\,
	datac => \motor_driver_inst|LessThan2~9_combout\,
	datad => \motor_driver_inst|LessThan2~5_combout\,
	combout => \motor_driver_inst|Add1~83_combout\);

-- Location: FF_X60_Y31_N1
\motor_driver_inst|delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~83_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(7));

-- Location: LCCOMB_X61_Y31_N16
\motor_driver_inst|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~16_combout\ = (\motor_driver_inst|delay_cnt\(8) & (\motor_driver_inst|Add1~15\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(8) & (!\motor_driver_inst|Add1~15\ & VCC))
-- \motor_driver_inst|Add1~17\ = CARRY((\motor_driver_inst|delay_cnt\(8) & !\motor_driver_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(8),
	datad => VCC,
	cin => \motor_driver_inst|Add1~15\,
	combout => \motor_driver_inst|Add1~16_combout\,
	cout => \motor_driver_inst|Add1~17\);

-- Location: LCCOMB_X62_Y31_N22
\motor_driver_inst|Add1~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~67_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~16_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|LessThan2~5_combout\,
	datac => \motor_driver_inst|Add1~16_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~67_combout\);

-- Location: FF_X62_Y31_N23
\motor_driver_inst|delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~67_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(8));

-- Location: LCCOMB_X61_Y31_N18
\motor_driver_inst|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~18_combout\ = (\motor_driver_inst|delay_cnt\(9) & (!\motor_driver_inst|Add1~17\)) # (!\motor_driver_inst|delay_cnt\(9) & ((\motor_driver_inst|Add1~17\) # (GND)))
-- \motor_driver_inst|Add1~19\ = CARRY((!\motor_driver_inst|Add1~17\) # (!\motor_driver_inst|delay_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(9),
	datad => VCC,
	cin => \motor_driver_inst|Add1~17\,
	combout => \motor_driver_inst|Add1~18_combout\,
	cout => \motor_driver_inst|Add1~19\);

-- Location: LCCOMB_X62_Y31_N0
\motor_driver_inst|Add1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~68_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~18_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|Add1~18_combout\,
	datac => \motor_driver_inst|LessThan2~5_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~68_combout\);

-- Location: FF_X62_Y31_N1
\motor_driver_inst|delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~68_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(9));

-- Location: LCCOMB_X61_Y31_N20
\motor_driver_inst|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~20_combout\ = (\motor_driver_inst|delay_cnt\(10) & (\motor_driver_inst|Add1~19\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(10) & (!\motor_driver_inst|Add1~19\ & VCC))
-- \motor_driver_inst|Add1~21\ = CARRY((\motor_driver_inst|delay_cnt\(10) & !\motor_driver_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(10),
	datad => VCC,
	cin => \motor_driver_inst|Add1~19\,
	combout => \motor_driver_inst|Add1~20_combout\,
	cout => \motor_driver_inst|Add1~21\);

-- Location: LCCOMB_X62_Y31_N10
\motor_driver_inst|Add1~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~69_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~20_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|Add1~20_combout\,
	datac => \motor_driver_inst|LessThan2~5_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~69_combout\);

-- Location: FF_X62_Y31_N11
\motor_driver_inst|delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~69_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(10));

-- Location: LCCOMB_X61_Y31_N22
\motor_driver_inst|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~22_combout\ = (\motor_driver_inst|delay_cnt\(11) & (!\motor_driver_inst|Add1~21\)) # (!\motor_driver_inst|delay_cnt\(11) & ((\motor_driver_inst|Add1~21\) # (GND)))
-- \motor_driver_inst|Add1~23\ = CARRY((!\motor_driver_inst|Add1~21\) # (!\motor_driver_inst|delay_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(11),
	datad => VCC,
	cin => \motor_driver_inst|Add1~21\,
	combout => \motor_driver_inst|Add1~22_combout\,
	cout => \motor_driver_inst|Add1~23\);

-- Location: LCCOMB_X62_Y31_N12
\motor_driver_inst|Add1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~70_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~22_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|Add1~22_combout\,
	datac => \motor_driver_inst|LessThan2~5_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~70_combout\);

-- Location: FF_X62_Y31_N13
\motor_driver_inst|delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~70_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(11));

-- Location: LCCOMB_X61_Y31_N24
\motor_driver_inst|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~24_combout\ = (\motor_driver_inst|delay_cnt\(12) & (\motor_driver_inst|Add1~23\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(12) & (!\motor_driver_inst|Add1~23\ & VCC))
-- \motor_driver_inst|Add1~25\ = CARRY((\motor_driver_inst|delay_cnt\(12) & !\motor_driver_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(12),
	datad => VCC,
	cin => \motor_driver_inst|Add1~23\,
	combout => \motor_driver_inst|Add1~24_combout\,
	cout => \motor_driver_inst|Add1~25\);

-- Location: LCCOMB_X62_Y31_N4
\motor_driver_inst|Add1~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~71_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~24_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|Add1~24_combout\,
	datac => \motor_driver_inst|LessThan2~5_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~71_combout\);

-- Location: FF_X62_Y31_N5
\motor_driver_inst|delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~71_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(12));

-- Location: LCCOMB_X61_Y31_N26
\motor_driver_inst|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~26_combout\ = (\motor_driver_inst|delay_cnt\(13) & (!\motor_driver_inst|Add1~25\)) # (!\motor_driver_inst|delay_cnt\(13) & ((\motor_driver_inst|Add1~25\) # (GND)))
-- \motor_driver_inst|Add1~27\ = CARRY((!\motor_driver_inst|Add1~25\) # (!\motor_driver_inst|delay_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(13),
	datad => VCC,
	cin => \motor_driver_inst|Add1~25\,
	combout => \motor_driver_inst|Add1~26_combout\,
	cout => \motor_driver_inst|Add1~27\);

-- Location: LCCOMB_X62_Y31_N24
\motor_driver_inst|Add1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~63_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~26_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|LessThan2~5_combout\,
	datac => \motor_driver_inst|Add1~26_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~63_combout\);

-- Location: FF_X62_Y31_N25
\motor_driver_inst|delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~63_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(13));

-- Location: LCCOMB_X61_Y31_N28
\motor_driver_inst|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~28_combout\ = (\motor_driver_inst|delay_cnt\(14) & (\motor_driver_inst|Add1~27\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(14) & (!\motor_driver_inst|Add1~27\ & VCC))
-- \motor_driver_inst|Add1~29\ = CARRY((\motor_driver_inst|delay_cnt\(14) & !\motor_driver_inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(14),
	datad => VCC,
	cin => \motor_driver_inst|Add1~27\,
	combout => \motor_driver_inst|Add1~28_combout\,
	cout => \motor_driver_inst|Add1~29\);

-- Location: LCCOMB_X62_Y31_N14
\motor_driver_inst|Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~64_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~28_combout\ & ((\motor_driver_inst|LessThan2~9_combout\) # (\motor_driver_inst|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~9_combout\,
	datab => \motor_driver_inst|motor_active~q\,
	datac => \motor_driver_inst|LessThan2~5_combout\,
	datad => \motor_driver_inst|Add1~28_combout\,
	combout => \motor_driver_inst|Add1~64_combout\);

-- Location: FF_X62_Y31_N15
\motor_driver_inst|delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~64_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(14));

-- Location: LCCOMB_X61_Y31_N30
\motor_driver_inst|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~30_combout\ = (\motor_driver_inst|delay_cnt\(15) & (!\motor_driver_inst|Add1~29\)) # (!\motor_driver_inst|delay_cnt\(15) & ((\motor_driver_inst|Add1~29\) # (GND)))
-- \motor_driver_inst|Add1~31\ = CARRY((!\motor_driver_inst|Add1~29\) # (!\motor_driver_inst|delay_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(15),
	datad => VCC,
	cin => \motor_driver_inst|Add1~29\,
	combout => \motor_driver_inst|Add1~30_combout\,
	cout => \motor_driver_inst|Add1~31\);

-- Location: LCCOMB_X62_Y31_N28
\motor_driver_inst|Add1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~65_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~30_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|LessThan2~5_combout\,
	datac => \motor_driver_inst|Add1~30_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~65_combout\);

-- Location: FF_X62_Y31_N29
\motor_driver_inst|delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~65_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(15));

-- Location: LCCOMB_X61_Y30_N0
\motor_driver_inst|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~32_combout\ = (\motor_driver_inst|delay_cnt\(16) & (\motor_driver_inst|Add1~31\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(16) & (!\motor_driver_inst|Add1~31\ & VCC))
-- \motor_driver_inst|Add1~33\ = CARRY((\motor_driver_inst|delay_cnt\(16) & !\motor_driver_inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(16),
	datad => VCC,
	cin => \motor_driver_inst|Add1~31\,
	combout => \motor_driver_inst|Add1~32_combout\,
	cout => \motor_driver_inst|Add1~33\);

-- Location: LCCOMB_X62_Y31_N26
\motor_driver_inst|Add1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~66_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~32_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|LessThan2~5_combout\,
	datac => \motor_driver_inst|Add1~32_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~66_combout\);

-- Location: FF_X62_Y31_N27
\motor_driver_inst|delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~66_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(16));

-- Location: LCCOMB_X62_Y31_N8
\motor_driver_inst|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~2_combout\ = (((!\motor_driver_inst|delay_cnt\(15)) # (!\motor_driver_inst|delay_cnt\(14))) # (!\motor_driver_inst|delay_cnt\(13))) # (!\motor_driver_inst|delay_cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(16),
	datab => \motor_driver_inst|delay_cnt\(13),
	datac => \motor_driver_inst|delay_cnt\(14),
	datad => \motor_driver_inst|delay_cnt\(15),
	combout => \motor_driver_inst|LessThan2~2_combout\);

-- Location: LCCOMB_X62_Y31_N18
\motor_driver_inst|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~3_combout\ = (!\motor_driver_inst|delay_cnt\(11) & (!\motor_driver_inst|delay_cnt\(9) & (!\motor_driver_inst|delay_cnt\(8) & !\motor_driver_inst|delay_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(11),
	datab => \motor_driver_inst|delay_cnt\(9),
	datac => \motor_driver_inst|delay_cnt\(8),
	datad => \motor_driver_inst|delay_cnt\(10),
	combout => \motor_driver_inst|LessThan2~3_combout\);

-- Location: LCCOMB_X62_Y31_N30
\motor_driver_inst|LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~4_combout\ = (\motor_driver_inst|LessThan2~2_combout\) # ((!\motor_driver_inst|delay_cnt\(12) & \motor_driver_inst|LessThan2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(12),
	datac => \motor_driver_inst|LessThan2~2_combout\,
	datad => \motor_driver_inst|LessThan2~3_combout\,
	combout => \motor_driver_inst|LessThan2~4_combout\);

-- Location: LCCOMB_X61_Y30_N2
\motor_driver_inst|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~34_combout\ = (\motor_driver_inst|delay_cnt\(17) & (!\motor_driver_inst|Add1~33\)) # (!\motor_driver_inst|delay_cnt\(17) & ((\motor_driver_inst|Add1~33\) # (GND)))
-- \motor_driver_inst|Add1~35\ = CARRY((!\motor_driver_inst|Add1~33\) # (!\motor_driver_inst|delay_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(17),
	datad => VCC,
	cin => \motor_driver_inst|Add1~33\,
	combout => \motor_driver_inst|Add1~34_combout\,
	cout => \motor_driver_inst|Add1~35\);

-- Location: LCCOMB_X62_Y30_N14
\motor_driver_inst|Add1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~72_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~34_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~5_combout\,
	datab => \motor_driver_inst|LessThan2~9_combout\,
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|Add1~34_combout\,
	combout => \motor_driver_inst|Add1~72_combout\);

-- Location: FF_X62_Y30_N15
\motor_driver_inst|delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~72_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(17));

-- Location: LCCOMB_X61_Y30_N4
\motor_driver_inst|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~36_combout\ = (\motor_driver_inst|delay_cnt\(18) & (\motor_driver_inst|Add1~35\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(18) & (!\motor_driver_inst|Add1~35\ & VCC))
-- \motor_driver_inst|Add1~37\ = CARRY((\motor_driver_inst|delay_cnt\(18) & !\motor_driver_inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(18),
	datad => VCC,
	cin => \motor_driver_inst|Add1~35\,
	combout => \motor_driver_inst|Add1~36_combout\,
	cout => \motor_driver_inst|Add1~37\);

-- Location: LCCOMB_X62_Y30_N16
\motor_driver_inst|Add1~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~77_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~36_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|LessThan2~5_combout\,
	datac => \motor_driver_inst|Add1~36_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~77_combout\);

-- Location: FF_X62_Y30_N17
\motor_driver_inst|delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~77_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(18));

-- Location: LCCOMB_X61_Y30_N6
\motor_driver_inst|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~38_combout\ = (\motor_driver_inst|delay_cnt\(19) & (!\motor_driver_inst|Add1~37\)) # (!\motor_driver_inst|delay_cnt\(19) & ((\motor_driver_inst|Add1~37\) # (GND)))
-- \motor_driver_inst|Add1~39\ = CARRY((!\motor_driver_inst|Add1~37\) # (!\motor_driver_inst|delay_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(19),
	datad => VCC,
	cin => \motor_driver_inst|Add1~37\,
	combout => \motor_driver_inst|Add1~38_combout\,
	cout => \motor_driver_inst|Add1~39\);

-- Location: LCCOMB_X62_Y30_N8
\motor_driver_inst|Add1~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~73_combout\ = (\motor_driver_inst|Add1~38_combout\ & (\motor_driver_inst|motor_active~q\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~5_combout\,
	datab => \motor_driver_inst|Add1~38_combout\,
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|Add1~73_combout\);

-- Location: FF_X62_Y30_N9
\motor_driver_inst|delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~73_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(19));

-- Location: LCCOMB_X60_Y30_N22
\motor_driver_inst|delay_cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|delay_cnt~0_combout\ = (\motor_driver_inst|motor_active~q\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datac => \motor_driver_inst|LessThan2~5_combout\,
	datad => \motor_driver_inst|LessThan2~9_combout\,
	combout => \motor_driver_inst|delay_cnt~0_combout\);

-- Location: LCCOMB_X61_Y30_N8
\motor_driver_inst|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~40_combout\ = (\motor_driver_inst|delay_cnt\(20) & (\motor_driver_inst|Add1~39\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(20) & (!\motor_driver_inst|Add1~39\ & VCC))
-- \motor_driver_inst|Add1~41\ = CARRY((\motor_driver_inst|delay_cnt\(20) & !\motor_driver_inst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(20),
	datad => VCC,
	cin => \motor_driver_inst|Add1~39\,
	combout => \motor_driver_inst|Add1~40_combout\,
	cout => \motor_driver_inst|Add1~41\);

-- Location: LCCOMB_X62_Y30_N6
\motor_driver_inst|Add1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~78_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~40_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~5_combout\,
	datab => \motor_driver_inst|LessThan2~9_combout\,
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|Add1~40_combout\,
	combout => \motor_driver_inst|Add1~78_combout\);

-- Location: FF_X62_Y30_N7
\motor_driver_inst|delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~78_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(20));

-- Location: LCCOMB_X61_Y30_N10
\motor_driver_inst|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~42_combout\ = (\motor_driver_inst|delay_cnt\(21) & (!\motor_driver_inst|Add1~41\)) # (!\motor_driver_inst|delay_cnt\(21) & ((\motor_driver_inst|Add1~41\) # (GND)))
-- \motor_driver_inst|Add1~43\ = CARRY((!\motor_driver_inst|Add1~41\) # (!\motor_driver_inst|delay_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(21),
	datad => VCC,
	cin => \motor_driver_inst|Add1~41\,
	combout => \motor_driver_inst|Add1~42_combout\,
	cout => \motor_driver_inst|Add1~43\);

-- Location: LCCOMB_X62_Y30_N20
\motor_driver_inst|Add1~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~79_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~42_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~5_combout\,
	datab => \motor_driver_inst|LessThan2~9_combout\,
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|Add1~42_combout\,
	combout => \motor_driver_inst|Add1~79_combout\);

-- Location: FF_X62_Y30_N21
\motor_driver_inst|delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~79_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(21));

-- Location: LCCOMB_X61_Y30_N12
\motor_driver_inst|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~44_combout\ = (\motor_driver_inst|delay_cnt\(22) & (\motor_driver_inst|Add1~43\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(22) & (!\motor_driver_inst|Add1~43\ & VCC))
-- \motor_driver_inst|Add1~45\ = CARRY((\motor_driver_inst|delay_cnt\(22) & !\motor_driver_inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(22),
	datad => VCC,
	cin => \motor_driver_inst|Add1~43\,
	combout => \motor_driver_inst|Add1~44_combout\,
	cout => \motor_driver_inst|Add1~45\);

-- Location: LCCOMB_X62_Y30_N28
\motor_driver_inst|Add1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~80_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~44_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~5_combout\,
	datab => \motor_driver_inst|LessThan2~9_combout\,
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|Add1~44_combout\,
	combout => \motor_driver_inst|Add1~80_combout\);

-- Location: FF_X62_Y30_N29
\motor_driver_inst|delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~80_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(22));

-- Location: LCCOMB_X61_Y30_N14
\motor_driver_inst|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~46_combout\ = (\motor_driver_inst|delay_cnt\(23) & (!\motor_driver_inst|Add1~45\)) # (!\motor_driver_inst|delay_cnt\(23) & ((\motor_driver_inst|Add1~45\) # (GND)))
-- \motor_driver_inst|Add1~47\ = CARRY((!\motor_driver_inst|Add1~45\) # (!\motor_driver_inst|delay_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(23),
	datad => VCC,
	cin => \motor_driver_inst|Add1~45\,
	combout => \motor_driver_inst|Add1~46_combout\,
	cout => \motor_driver_inst|Add1~47\);

-- Location: LCCOMB_X62_Y30_N2
\motor_driver_inst|Add1~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~81_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~46_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~5_combout\,
	datab => \motor_driver_inst|LessThan2~9_combout\,
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|Add1~46_combout\,
	combout => \motor_driver_inst|Add1~81_combout\);

-- Location: FF_X62_Y30_N3
\motor_driver_inst|delay_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~81_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(23));

-- Location: LCCOMB_X61_Y30_N16
\motor_driver_inst|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~48_combout\ = (\motor_driver_inst|delay_cnt\(24) & (\motor_driver_inst|Add1~47\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(24) & (!\motor_driver_inst|Add1~47\ & VCC))
-- \motor_driver_inst|Add1~49\ = CARRY((\motor_driver_inst|delay_cnt\(24) & !\motor_driver_inst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(24),
	datad => VCC,
	cin => \motor_driver_inst|Add1~47\,
	combout => \motor_driver_inst|Add1~48_combout\,
	cout => \motor_driver_inst|Add1~49\);

-- Location: LCCOMB_X60_Y30_N6
\motor_driver_inst|Add1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~82_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~48_combout\ & ((\motor_driver_inst|LessThan2~9_combout\) # (\motor_driver_inst|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|LessThan2~9_combout\,
	datac => \motor_driver_inst|LessThan2~5_combout\,
	datad => \motor_driver_inst|Add1~48_combout\,
	combout => \motor_driver_inst|Add1~82_combout\);

-- Location: FF_X60_Y30_N7
\motor_driver_inst|delay_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~82_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(24));

-- Location: LCCOMB_X61_Y30_N18
\motor_driver_inst|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~50_combout\ = (\motor_driver_inst|delay_cnt\(25) & (!\motor_driver_inst|Add1~49\)) # (!\motor_driver_inst|delay_cnt\(25) & ((\motor_driver_inst|Add1~49\) # (GND)))
-- \motor_driver_inst|Add1~51\ = CARRY((!\motor_driver_inst|Add1~49\) # (!\motor_driver_inst|delay_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(25),
	datad => VCC,
	cin => \motor_driver_inst|Add1~49\,
	combout => \motor_driver_inst|Add1~50_combout\,
	cout => \motor_driver_inst|Add1~51\);

-- Location: LCCOMB_X61_Y30_N20
\motor_driver_inst|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~52_combout\ = (\motor_driver_inst|delay_cnt\(26) & (\motor_driver_inst|Add1~51\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(26) & (!\motor_driver_inst|Add1~51\ & VCC))
-- \motor_driver_inst|Add1~53\ = CARRY((\motor_driver_inst|delay_cnt\(26) & !\motor_driver_inst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(26),
	datad => VCC,
	cin => \motor_driver_inst|Add1~51\,
	combout => \motor_driver_inst|Add1~52_combout\,
	cout => \motor_driver_inst|Add1~53\);

-- Location: LCCOMB_X62_Y30_N4
\motor_driver_inst|Add1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~76_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~52_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~5_combout\,
	datab => \motor_driver_inst|LessThan2~9_combout\,
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|Add1~52_combout\,
	combout => \motor_driver_inst|Add1~76_combout\);

-- Location: FF_X62_Y30_N5
\motor_driver_inst|delay_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~76_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(26));

-- Location: LCCOMB_X61_Y30_N22
\motor_driver_inst|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~54_combout\ = (\motor_driver_inst|delay_cnt\(27) & (!\motor_driver_inst|Add1~53\)) # (!\motor_driver_inst|delay_cnt\(27) & ((\motor_driver_inst|Add1~53\) # (GND)))
-- \motor_driver_inst|Add1~55\ = CARRY((!\motor_driver_inst|Add1~53\) # (!\motor_driver_inst|delay_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(27),
	datad => VCC,
	cin => \motor_driver_inst|Add1~53\,
	combout => \motor_driver_inst|Add1~54_combout\,
	cout => \motor_driver_inst|Add1~55\);

-- Location: LCCOMB_X60_Y30_N30
\motor_driver_inst|delay_cnt[27]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|delay_cnt[27]~1_combout\ = (\motor_driver_inst|delay_cnt~0_combout\ & ((\motor_driver_inst|Add1~54_combout\) # ((!\motor_driver_inst|duty_cycle~0_combout\ & \motor_driver_inst|delay_cnt\(27))))) # 
-- (!\motor_driver_inst|delay_cnt~0_combout\ & (!\motor_driver_inst|duty_cycle~0_combout\ & (\motor_driver_inst|delay_cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt~0_combout\,
	datab => \motor_driver_inst|duty_cycle~0_combout\,
	datac => \motor_driver_inst|delay_cnt\(27),
	datad => \motor_driver_inst|Add1~54_combout\,
	combout => \motor_driver_inst|delay_cnt[27]~1_combout\);

-- Location: FF_X60_Y30_N31
\motor_driver_inst|delay_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|delay_cnt[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(27));

-- Location: LCCOMB_X60_Y30_N0
\motor_driver_inst|duty_cycle~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|duty_cycle~2_combout\ = (!\motor_driver_inst|motor_active~q\ & \motorctrl~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motorctrl~q\,
	combout => \motor_driver_inst|duty_cycle~2_combout\);

-- Location: LCCOMB_X61_Y30_N24
\motor_driver_inst|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~56_combout\ = (\motor_driver_inst|delay_cnt\(28) & (\motor_driver_inst|Add1~55\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(28) & (!\motor_driver_inst|Add1~55\ & VCC))
-- \motor_driver_inst|Add1~57\ = CARRY((\motor_driver_inst|delay_cnt\(28) & !\motor_driver_inst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(28),
	datad => VCC,
	cin => \motor_driver_inst|Add1~55\,
	combout => \motor_driver_inst|Add1~56_combout\,
	cout => \motor_driver_inst|Add1~57\);

-- Location: LCCOMB_X60_Y30_N4
\motor_driver_inst|delay_cnt[28]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|delay_cnt[28]~2_combout\ = (\motor_driver_inst|delay_cnt~0_combout\ & ((\motor_driver_inst|Add1~56_combout\) # ((!\motor_driver_inst|duty_cycle~0_combout\ & \motor_driver_inst|delay_cnt\(28))))) # 
-- (!\motor_driver_inst|delay_cnt~0_combout\ & (!\motor_driver_inst|duty_cycle~0_combout\ & (\motor_driver_inst|delay_cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt~0_combout\,
	datab => \motor_driver_inst|duty_cycle~0_combout\,
	datac => \motor_driver_inst|delay_cnt\(28),
	datad => \motor_driver_inst|Add1~56_combout\,
	combout => \motor_driver_inst|delay_cnt[28]~2_combout\);

-- Location: FF_X60_Y30_N5
\motor_driver_inst|delay_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|delay_cnt[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(28));

-- Location: LCCOMB_X61_Y30_N26
\motor_driver_inst|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~58_combout\ = (\motor_driver_inst|delay_cnt\(29) & (!\motor_driver_inst|Add1~57\)) # (!\motor_driver_inst|delay_cnt\(29) & ((\motor_driver_inst|Add1~57\) # (GND)))
-- \motor_driver_inst|Add1~59\ = CARRY((!\motor_driver_inst|Add1~57\) # (!\motor_driver_inst|delay_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(29),
	datad => VCC,
	cin => \motor_driver_inst|Add1~57\,
	combout => \motor_driver_inst|Add1~58_combout\,
	cout => \motor_driver_inst|Add1~59\);

-- Location: LCCOMB_X60_Y30_N14
\motor_driver_inst|delay_cnt[29]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|delay_cnt[29]~3_combout\ = (\motor_driver_inst|delay_cnt~0_combout\ & (((\motor_driver_inst|Add1~58_combout\)))) # (!\motor_driver_inst|delay_cnt~0_combout\ & (!\motor_driver_inst|duty_cycle~2_combout\ & 
-- (\motor_driver_inst|delay_cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt~0_combout\,
	datab => \motor_driver_inst|duty_cycle~2_combout\,
	datac => \motor_driver_inst|delay_cnt\(29),
	datad => \motor_driver_inst|Add1~58_combout\,
	combout => \motor_driver_inst|delay_cnt[29]~3_combout\);

-- Location: FF_X60_Y30_N15
\motor_driver_inst|delay_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|delay_cnt[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(29));

-- Location: LCCOMB_X61_Y30_N28
\motor_driver_inst|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~60_combout\ = (\motor_driver_inst|delay_cnt\(30) & (\motor_driver_inst|Add1~59\ $ (GND))) # (!\motor_driver_inst|delay_cnt\(30) & (!\motor_driver_inst|Add1~59\ & VCC))
-- \motor_driver_inst|Add1~61\ = CARRY((\motor_driver_inst|delay_cnt\(30) & !\motor_driver_inst|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|delay_cnt\(30),
	datad => VCC,
	cin => \motor_driver_inst|Add1~59\,
	combout => \motor_driver_inst|Add1~60_combout\,
	cout => \motor_driver_inst|Add1~61\);

-- Location: LCCOMB_X60_Y30_N20
\motor_driver_inst|delay_cnt[30]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|delay_cnt[30]~4_combout\ = (\motor_driver_inst|delay_cnt~0_combout\ & (((\motor_driver_inst|Add1~60_combout\)))) # (!\motor_driver_inst|delay_cnt~0_combout\ & (!\motor_driver_inst|duty_cycle~2_combout\ & 
-- (\motor_driver_inst|delay_cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt~0_combout\,
	datab => \motor_driver_inst|duty_cycle~2_combout\,
	datac => \motor_driver_inst|delay_cnt\(30),
	datad => \motor_driver_inst|Add1~60_combout\,
	combout => \motor_driver_inst|delay_cnt[30]~4_combout\);

-- Location: FF_X60_Y30_N21
\motor_driver_inst|delay_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|delay_cnt[30]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(30));

-- Location: LCCOMB_X60_Y30_N2
\motor_driver_inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~0_combout\ = (!\motor_driver_inst|delay_cnt\(27) & (!\motor_driver_inst|delay_cnt\(29) & (!\motor_driver_inst|delay_cnt\(28) & !\motor_driver_inst|delay_cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(27),
	datab => \motor_driver_inst|delay_cnt\(29),
	datac => \motor_driver_inst|delay_cnt\(28),
	datad => \motor_driver_inst|delay_cnt\(30),
	combout => \motor_driver_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X62_Y30_N12
\motor_driver_inst|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~1_combout\ = (!\motor_driver_inst|delay_cnt\(25) & \motor_driver_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \motor_driver_inst|delay_cnt\(25),
	datad => \motor_driver_inst|LessThan2~0_combout\,
	combout => \motor_driver_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X62_Y30_N22
\motor_driver_inst|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~5_combout\ = (\motor_driver_inst|LessThan2~4_combout\ & (!\motor_driver_inst|delay_cnt\(17) & (!\motor_driver_inst|delay_cnt\(19) & \motor_driver_inst|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~4_combout\,
	datab => \motor_driver_inst|delay_cnt\(17),
	datac => \motor_driver_inst|delay_cnt\(19),
	datad => \motor_driver_inst|LessThan2~1_combout\,
	combout => \motor_driver_inst|LessThan2~5_combout\);

-- Location: LCCOMB_X62_Y30_N30
\motor_driver_inst|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~62_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|Add1~50_combout\ & ((\motor_driver_inst|LessThan2~5_combout\) # (\motor_driver_inst|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~5_combout\,
	datab => \motor_driver_inst|LessThan2~9_combout\,
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|Add1~50_combout\,
	combout => \motor_driver_inst|Add1~62_combout\);

-- Location: FF_X62_Y30_N31
\motor_driver_inst|delay_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|Add1~62_combout\,
	ena => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(25));

-- Location: LCCOMB_X62_Y30_N10
\motor_driver_inst|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~7_combout\ = (((!\motor_driver_inst|delay_cnt\(18) & !\motor_driver_inst|delay_cnt\(19))) # (!\motor_driver_inst|delay_cnt\(20))) # (!\motor_driver_inst|delay_cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(18),
	datab => \motor_driver_inst|delay_cnt\(21),
	datac => \motor_driver_inst|delay_cnt\(19),
	datad => \motor_driver_inst|delay_cnt\(20),
	combout => \motor_driver_inst|LessThan2~7_combout\);

-- Location: LCCOMB_X62_Y30_N0
\motor_driver_inst|LessThan2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~8_combout\ = (((\motor_driver_inst|LessThan2~7_combout\) # (!\motor_driver_inst|delay_cnt\(23))) # (!\motor_driver_inst|delay_cnt\(22))) # (!\motor_driver_inst|delay_cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(24),
	datab => \motor_driver_inst|delay_cnt\(22),
	datac => \motor_driver_inst|delay_cnt\(23),
	datad => \motor_driver_inst|LessThan2~7_combout\,
	combout => \motor_driver_inst|LessThan2~8_combout\);

-- Location: LCCOMB_X61_Y30_N30
\motor_driver_inst|Add1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|Add1~74_combout\ = \motor_driver_inst|Add1~61\ $ (\motor_driver_inst|delay_cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \motor_driver_inst|delay_cnt\(31),
	cin => \motor_driver_inst|Add1~61\,
	combout => \motor_driver_inst|Add1~74_combout\);

-- Location: LCCOMB_X60_Y30_N24
\motor_driver_inst|delay_cnt[31]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|delay_cnt[31]~5_combout\ = (\motor_driver_inst|delay_cnt~0_combout\ & (((\motor_driver_inst|Add1~74_combout\)))) # (!\motor_driver_inst|delay_cnt~0_combout\ & (!\motor_driver_inst|duty_cycle~2_combout\ & 
-- (\motor_driver_inst|delay_cnt\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt~0_combout\,
	datab => \motor_driver_inst|duty_cycle~2_combout\,
	datac => \motor_driver_inst|delay_cnt\(31),
	datad => \motor_driver_inst|Add1~74_combout\,
	combout => \motor_driver_inst|delay_cnt[31]~5_combout\);

-- Location: FF_X60_Y30_N25
\motor_driver_inst|delay_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|delay_cnt[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|delay_cnt\(31));

-- Location: LCCOMB_X62_Y30_N26
\motor_driver_inst|LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~6_combout\ = (\motor_driver_inst|delay_cnt\(31)) # ((!\motor_driver_inst|delay_cnt\(26) & \motor_driver_inst|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(31),
	datac => \motor_driver_inst|delay_cnt\(26),
	datad => \motor_driver_inst|LessThan2~0_combout\,
	combout => \motor_driver_inst|LessThan2~6_combout\);

-- Location: LCCOMB_X62_Y30_N18
\motor_driver_inst|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~9_combout\ = (\motor_driver_inst|LessThan2~6_combout\) # ((!\motor_driver_inst|delay_cnt\(25) & (\motor_driver_inst|LessThan2~8_combout\ & \motor_driver_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|delay_cnt\(25),
	datab => \motor_driver_inst|LessThan2~8_combout\,
	datac => \motor_driver_inst|LessThan2~6_combout\,
	datad => \motor_driver_inst|LessThan2~0_combout\,
	combout => \motor_driver_inst|LessThan2~9_combout\);

-- Location: LCCOMB_X62_Y30_N24
\motor_driver_inst|duty_cycle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|duty_cycle~0_combout\ = (\motor_driver_inst|motor_active~q\ & (((\motor_driver_inst|LessThan2~9_combout\) # (\motor_driver_inst|LessThan2~5_combout\)))) # (!\motor_driver_inst|motor_active~q\ & (\motorctrl~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motorctrl~q\,
	datab => \motor_driver_inst|LessThan2~9_combout\,
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|LessThan2~5_combout\,
	combout => \motor_driver_inst|duty_cycle~0_combout\);

-- Location: FF_X62_Y30_N25
\motor_driver_inst|motor_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|duty_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|motor_active~q\);

-- Location: LCCOMB_X60_Y30_N8
\motor_driver_inst|LessThan2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan2~10_combout\ = (\motor_driver_inst|LessThan2~6_combout\) # ((\motor_driver_inst|LessThan2~5_combout\) # ((\motor_driver_inst|LessThan2~8_combout\ & \motor_driver_inst|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan2~6_combout\,
	datab => \motor_driver_inst|LessThan2~8_combout\,
	datac => \motor_driver_inst|LessThan2~1_combout\,
	datad => \motor_driver_inst|LessThan2~5_combout\,
	combout => \motor_driver_inst|LessThan2~10_combout\);

-- Location: LCCOMB_X60_Y30_N12
\motor_driver_inst|duty_cycle[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|duty_cycle[4]~1_combout\ = (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|LessThan2~10_combout\ & (\motor_driver_inst|duty_cycle\(4)))) # (!\motor_driver_inst|motor_active~q\ & (((\motor_driver_inst|duty_cycle\(4)) # 
-- (\motorctrl~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|motor_active~q\,
	datab => \motor_driver_inst|LessThan2~10_combout\,
	datac => \motor_driver_inst|duty_cycle\(4),
	datad => \motorctrl~q\,
	combout => \motor_driver_inst|duty_cycle[4]~1_combout\);

-- Location: FF_X60_Y30_N13
\motor_driver_inst|duty_cycle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|duty_cycle[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|duty_cycle\(4));

-- Location: LCCOMB_X61_Y29_N30
\motor_driver_inst|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~7_combout\ = (\motor_driver_inst|cnt\(16) & (!\motor_driver_inst|duty_cycle\(4) & (!\motor_driver_inst|cnt\(14) & \motor_driver_inst|motor_active~q\))) # (!\motor_driver_inst|cnt\(16) & ((\motor_driver_inst|motor_active~q\) # 
-- ((!\motor_driver_inst|duty_cycle\(4) & !\motor_driver_inst|cnt\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|duty_cycle\(4),
	datab => \motor_driver_inst|cnt\(14),
	datac => \motor_driver_inst|cnt\(16),
	datad => \motor_driver_inst|motor_active~q\,
	combout => \motor_driver_inst|LessThan1~7_combout\);

-- Location: LCCOMB_X61_Y28_N14
\motor_driver_inst|LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~8_combout\ = (\motor_driver_inst|LessThan1~7_combout\) # ((!\motor_driver_inst|cnt\(15) & (\motor_driver_inst|motor_active~q\ $ (!\motor_driver_inst|cnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(15),
	datab => \motor_driver_inst|motor_active~q\,
	datac => \motor_driver_inst|cnt\(16),
	datad => \motor_driver_inst|LessThan1~7_combout\,
	combout => \motor_driver_inst|LessThan1~8_combout\);

-- Location: LCCOMB_X61_Y28_N12
\motor_driver_inst|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~2_combout\ = (\motor_driver_inst|cnt\(16) & (\motor_driver_inst|motor_active~q\ & (\motor_driver_inst|cnt\(14) $ (\motor_driver_inst|duty_cycle\(4))))) # (!\motor_driver_inst|cnt\(16) & (!\motor_driver_inst|motor_active~q\ & 
-- (\motor_driver_inst|cnt\(14) $ (\motor_driver_inst|duty_cycle\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(16),
	datab => \motor_driver_inst|motor_active~q\,
	datac => \motor_driver_inst|cnt\(14),
	datad => \motor_driver_inst|duty_cycle\(4),
	combout => \motor_driver_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X61_Y29_N12
\motor_driver_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~1_combout\ = (!\motor_driver_inst|cnt\(12) & (!\motor_driver_inst|cnt\(13) & !\motor_driver_inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \motor_driver_inst|cnt\(12),
	datac => \motor_driver_inst|cnt\(13),
	datad => \motor_driver_inst|cnt\(11),
	combout => \motor_driver_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X60_Y30_N26
\motor_driver_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~3_combout\ = (\motor_driver_inst|duty_cycle\(4) & (!\motor_driver_inst|cnt\(5) & (\motor_driver_inst|motor_active~q\))) # (!\motor_driver_inst|duty_cycle\(4) & ((\motor_driver_inst|cnt\(5) & ((\motor_driver_inst|cnt\(4)) # 
-- (!\motor_driver_inst|motor_active~q\))) # (!\motor_driver_inst|cnt\(5) & (!\motor_driver_inst|motor_active~q\ & \motor_driver_inst|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|duty_cycle\(4),
	datab => \motor_driver_inst|cnt\(5),
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|cnt\(4),
	combout => \motor_driver_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X60_Y30_N18
\motor_driver_inst|LessThan1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~10_combout\ = (\motor_driver_inst|LessThan1~3_combout\ & (!\motor_driver_inst|cnt\(6) & (\motor_driver_inst|cnt\(8) $ (\motor_driver_inst|duty_cycle\(4))))) # (!\motor_driver_inst|LessThan1~3_combout\ & 
-- (\motor_driver_inst|cnt\(8) & (!\motor_driver_inst|duty_cycle\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(8),
	datab => \motor_driver_inst|duty_cycle\(4),
	datac => \motor_driver_inst|LessThan1~3_combout\,
	datad => \motor_driver_inst|cnt\(6),
	combout => \motor_driver_inst|LessThan1~10_combout\);

-- Location: LCCOMB_X60_Y30_N28
\motor_driver_inst|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~11_combout\ = (\motor_driver_inst|LessThan1~10_combout\ & ((\motor_driver_inst|cnt\(10) & (\motor_driver_inst|cnt\(7) & \motor_driver_inst|motor_active~q\)) # (!\motor_driver_inst|cnt\(10) & (!\motor_driver_inst|cnt\(7) & 
-- !\motor_driver_inst|motor_active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(10),
	datab => \motor_driver_inst|cnt\(7),
	datac => \motor_driver_inst|motor_active~q\,
	datad => \motor_driver_inst|LessThan1~10_combout\,
	combout => \motor_driver_inst|LessThan1~11_combout\);

-- Location: LCCOMB_X60_Y30_N16
\motor_driver_inst|LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~4_combout\ = (\motor_driver_inst|cnt\(8) & (((\motor_driver_inst|cnt\(7)) # (\motor_driver_inst|duty_cycle\(4))) # (!\motor_driver_inst|cnt\(10)))) # (!\motor_driver_inst|cnt\(8) & (\motor_driver_inst|duty_cycle\(4) & 
-- ((\motor_driver_inst|cnt\(7)) # (!\motor_driver_inst|cnt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(10),
	datab => \motor_driver_inst|cnt\(7),
	datac => \motor_driver_inst|cnt\(8),
	datad => \motor_driver_inst|duty_cycle\(4),
	combout => \motor_driver_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X61_Y28_N2
\motor_driver_inst|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~5_combout\ = (\motor_driver_inst|cnt\(10) & (\motor_driver_inst|motor_active~q\ & ((!\motor_driver_inst|LessThan1~4_combout\) # (!\motor_driver_inst|cnt\(9))))) # (!\motor_driver_inst|cnt\(10) & 
-- ((\motor_driver_inst|motor_active~q\) # ((!\motor_driver_inst|LessThan1~4_combout\) # (!\motor_driver_inst|cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|cnt\(10),
	datab => \motor_driver_inst|motor_active~q\,
	datac => \motor_driver_inst|cnt\(9),
	datad => \motor_driver_inst|LessThan1~4_combout\,
	combout => \motor_driver_inst|LessThan1~5_combout\);

-- Location: LCCOMB_X61_Y28_N24
\motor_driver_inst|LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~6_combout\ = (\motor_driver_inst|LessThan1~2_combout\ & (\motor_driver_inst|LessThan1~1_combout\ & ((\motor_driver_inst|LessThan1~11_combout\) # (\motor_driver_inst|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan1~2_combout\,
	datab => \motor_driver_inst|LessThan1~1_combout\,
	datac => \motor_driver_inst|LessThan1~11_combout\,
	datad => \motor_driver_inst|LessThan1~5_combout\,
	combout => \motor_driver_inst|LessThan1~6_combout\);

-- Location: LCCOMB_X61_Y28_N28
\motor_driver_inst|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \motor_driver_inst|LessThan1~9_combout\ = (\motor_driver_inst|cnt\(31)) # ((\motor_driver_inst|LessThan1~0_combout\ & ((\motor_driver_inst|LessThan1~8_combout\) # (\motor_driver_inst|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \motor_driver_inst|LessThan1~0_combout\,
	datab => \motor_driver_inst|cnt\(31),
	datac => \motor_driver_inst|LessThan1~8_combout\,
	datad => \motor_driver_inst|LessThan1~6_combout\,
	combout => \motor_driver_inst|LessThan1~9_combout\);

-- Location: FF_X61_Y28_N29
\motor_driver_inst|pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_driver_inst|LessThan1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_driver_inst|pwm~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_digitOut(0) <= \digitOut[0]~output_o\;

ww_digitOut(1) <= \digitOut[1]~output_o\;

ww_digitOut(2) <= \digitOut[2]~output_o\;

ww_digitOut(3) <= \digitOut[3]~output_o\;

ww_digitOut(4) <= \digitOut[4]~output_o\;

ww_digitOut(5) <= \digitOut[5]~output_o\;

ww_digitOut(6) <= \digitOut[6]~output_o\;

ww_pwm <= \pwm~output_o\;
END structure;


