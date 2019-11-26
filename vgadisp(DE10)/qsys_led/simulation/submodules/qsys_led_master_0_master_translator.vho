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

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  qsys_led_master_0_master_translator IS 
	 PORT 
	 ( 
		 av_address	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 av_byteenable	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 av_read	:	IN  STD_LOGIC;
		 av_readdata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 av_readdatavalid	:	OUT  STD_LOGIC;
		 av_waitrequest	:	OUT  STD_LOGIC;
		 av_write	:	IN  STD_LOGIC;
		 av_writedata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 uav_address	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 uav_burstcount	:	OUT  STD_LOGIC_VECTOR (2 DOWNTO 0);
		 uav_byteenable	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 uav_debugaccess	:	OUT  STD_LOGIC;
		 uav_lock	:	OUT  STD_LOGIC;
		 uav_read	:	OUT  STD_LOGIC;
		 uav_readdata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 uav_readdatavalid	:	IN  STD_LOGIC;
		 uav_waitrequest	:	IN  STD_LOGIC;
		 uav_write	:	OUT  STD_LOGIC;
		 uav_writedata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END qsys_led_master_0_master_translator;

 ARCHITECTURE RTL OF qsys_led_master_0_master_translator IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
 BEGIN

	av_readdata <= ( uav_readdata(31 DOWNTO 0));
	av_readdatavalid <= uav_readdatavalid;
	av_waitrequest <= uav_waitrequest;
	uav_address <= ( av_address(31 DOWNTO 0));
	uav_burstcount <= ( "1" & "0" & "0");
	uav_byteenable <= ( av_byteenable(3 DOWNTO 0));
	uav_debugaccess <= '0';
	uav_lock <= '0';
	uav_read <= av_read;
	uav_write <= av_write;
	uav_writedata <= ( av_writedata(31 DOWNTO 0));

 END RTL; --qsys_led_master_0_master_translator
--synopsys translate_on
--VALID FILE
