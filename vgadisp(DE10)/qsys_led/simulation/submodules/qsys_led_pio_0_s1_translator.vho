--IP Functional Simulation Model
--VERSION_BEGIN 11.1 cbx_mgl 2011:10:31:21:12:31:SJ cbx_simgen 2011:10:31:21:11:05:SJ  VERSION_END


-- Copyright (C) 1991-2011 Altera Corporation
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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = lut 36 mux21 5 oper_add 1 oper_less_than 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  qsys_led_pio_0_s1_translator IS 
	 PORT 
	 ( 
		 av_address	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 av_chipselect	:	OUT  STD_LOGIC;
		 av_readdata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 av_write	:	OUT  STD_LOGIC;
		 av_writedata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 uav_address	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 uav_burstcount	:	IN  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 uav_byteenable	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 uav_debugaccess	:	IN  STD_LOGIC;
		 uav_lock	:	IN  STD_LOGIC;
		 uav_read	:	IN  STD_LOGIC;
		 uav_readdata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 uav_readdatavalid	:	OUT  STD_LOGIC;
		 uav_waitrequest	:	OUT  STD_LOGIC;
		 uav_write	:	IN  STD_LOGIC;
		 uav_writedata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END qsys_led_pio_0_s1_translator;

 ARCHITECTURE RTL OF qsys_led_pio_0_s1_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_waitrequest_reset_override_201q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w206w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_0_237q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_10_223q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_11_222q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_12_221q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_13_220q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_14_219q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_15_218q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_16_217q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_17_216q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_18_215q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_19_214q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_1_232q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_20_213q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_21_212q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_22_211q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_23_210q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_24_209q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_25_208q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_26_207q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_27_206q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_28_205q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_29_204q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_2_231q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_30_203q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_31_202q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_3_230q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_4_229q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_5_228q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_6_227q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_7_226q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_8_225q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_9_224q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_read_latency_shift_reg_0_240q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_0_189q	:	STD_LOGIC := '0';
	 SIGNAL	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_1_188q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w170w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w167w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_waitrequest_generated_199m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_183m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_184m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_186m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_187m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_o	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191_o	:	STD_LOGIC;
	 SIGNAL  wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193_a	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193_b	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193_o	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_reset150w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
	 SIGNAL  s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_always7_185_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_begintransfer_242_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_uav_waitrequest_200_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_reset150w(0) <= NOT reset;
	wire_w148w(0) <= NOT s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_uav_waitrequest_200_dataout;
	av_address <= ( uav_address(3 DOWNTO 2));
	av_chipselect <= s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_begintransfer_242_dataout;
	av_write <= ((uav_write AND wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191_o) AND wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193_o);
	av_writedata <= ( uav_writedata(31 DOWNTO 0));
	s_wire_gnd <= '0';
	s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_always7_185_dataout <= (wire_w148w(0) OR qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_waitrequest_reset_override_201q);
	s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_begintransfer_242_dataout <= (uav_read OR uav_write);
	s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_uav_waitrequest_200_dataout <= (wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_waitrequest_generated_199m_dataout OR qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_waitrequest_reset_override_201q);
	s_wire_vcc <= '1';
	uav_readdata <= ( qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_31_202q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_30_203q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_29_204q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_28_205q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_27_206q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_26_207q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_25_208q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_24_209q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_23_210q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_22_211q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_21_212q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_20_213q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_19_214q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_18_215q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_17_216q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_16_217q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_15_218q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_14_219q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_13_220q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_12_221q
 & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_11_222q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_10_223q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_9_224q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_8_225q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_7_226q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_6_227q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_5_228q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_4_229q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_3_230q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_2_231q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_1_232q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_0_237q);
	uav_readdatavalid <= qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_read_latency_shift_reg_0_240q;
	uav_waitrequest <= s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_uav_waitrequest_200_dataout;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_waitrequest_reset_override_201q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_waitrequest_reset_override_201q <= s_wire_gnd;
		END IF;
		if (now = 0 ns) then
			qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_waitrequest_reset_override_201q <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_nl_w206w(0) <= NOT qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_waitrequest_reset_override_201q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_0_237q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_10_223q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_11_222q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_12_221q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_13_220q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_14_219q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_15_218q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_16_217q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_17_216q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_18_215q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_19_214q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_1_232q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_20_213q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_21_212q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_22_211q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_23_210q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_24_209q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_25_208q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_26_207q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_27_206q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_28_205q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_29_204q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_2_231q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_30_203q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_31_202q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_3_230q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_4_229q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_5_228q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_6_227q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_7_226q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_8_225q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_9_224q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_read_latency_shift_reg_0_240q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_0_189q <= '0';
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_1_188q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_0_237q <= av_readdata(0);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_10_223q <= av_readdata(10);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_11_222q <= av_readdata(11);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_12_221q <= av_readdata(12);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_13_220q <= av_readdata(13);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_14_219q <= av_readdata(14);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_15_218q <= av_readdata(15);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_16_217q <= av_readdata(16);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_17_216q <= av_readdata(17);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_18_215q <= av_readdata(18);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_19_214q <= av_readdata(19);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_1_232q <= av_readdata(1);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_20_213q <= av_readdata(20);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_21_212q <= av_readdata(21);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_22_211q <= av_readdata(22);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_23_210q <= av_readdata(23);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_24_209q <= av_readdata(24);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_25_208q <= av_readdata(25);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_26_207q <= av_readdata(26);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_27_206q <= av_readdata(27);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_28_205q <= av_readdata(28);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_29_204q <= av_readdata(29);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_2_231q <= av_readdata(2);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_30_203q <= av_readdata(30);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_31_202q <= av_readdata(31);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_3_230q <= av_readdata(3);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_4_229q <= av_readdata(4);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_5_228q <= av_readdata(5);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_6_227q <= av_readdata(6);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_7_226q <= av_readdata(7);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_8_225q <= av_readdata(8);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_readdata_pre_9_224q <= av_readdata(9);
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_read_latency_shift_reg_0_240q <= (uav_read AND (wire_w148w(0) AND wire_nl_w206w(0)));
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_0_189q <= wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_187m_dataout;
				qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_1_188q <= wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_186m_dataout;
		END IF;
	END PROCESS;
	wire_nO_w170w(0) <= NOT qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_0_189q;
	wire_nO_w167w(0) <= NOT qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_1_188q;
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_waitrequest_generated_199m_dataout <= (NOT (wire_nO_w167w(0) AND wire_nO_w170w(0))) WHEN uav_write = '1'  ELSE (NOT (wire_nO_w167w(0) AND qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_0_189q));
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_183m_dataout <= wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_o(1) AND s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_begintransfer_242_dataout;
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_184m_dataout <= wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_o(0) AND s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_av_begintransfer_242_dataout;
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_186m_dataout <= wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_183m_dataout AND NOT(s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_always7_185_dataout);
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_187m_dataout <= wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_184m_dataout AND NOT(s_wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_always7_185_dataout);
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_a <= ( qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_1_188q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_0_189q);
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_b <= ( "0" & "1");
	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2,
		width_o => 2
	  )
	  PORT MAP ( 
		a => wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_a,
		b => wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_b,
		cin => wire_gnd,
		o => wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_add0_182_o
	  );
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191_a <= ( "0" & "0");
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191_b <= ( qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_1_188q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_0_189q);
	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191_a,
		b => wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191_b,
		cin => wire_vcc,
		o => wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan0_191_o
	  );
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193_a <= ( qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_1_188q & qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_wait_latency_counter_0_189q);
	wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193_b <= ( "0" & "0");
	qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193 :  oper_less_than
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 2,
		width_b => 2
	  )
	  PORT MAP ( 
		a => wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193_a,
		b => wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193_b,
		cin => wire_vcc,
		o => wire_qsys_led_pio_0_s1_translator_altera_merlin_slave_translator_pio_0_s1_translator_lessthan1_193_o
	  );

 END RTL; --qsys_led_pio_0_s1_translator
--synopsys translate_on
--VALID FILE
