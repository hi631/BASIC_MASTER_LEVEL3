-- qsys_led.vhd

-- Generated using ACDS version 11.1 173 at 2011.12.10.02:23:59

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity qsys_led is
	port (
		clk_clk : in std_logic := '0'  -- clk.clk
	);
end entity qsys_led;

architecture rtl of qsys_led is
	component qsys_led_pio_0 is
		port (
			clk        : in  std_logic                     := 'X';             -- clk
			reset_n    : in  std_logic                     := 'X';             -- reset_n
			address    : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- address
			write_n    : in  std_logic                     := 'X';             -- write_n
			writedata  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			chipselect : in  std_logic                     := 'X';             -- chipselect
			readdata   : out std_logic_vector(31 downto 0);                    -- readdata
			out_port   : out std_logic_vector(31 downto 0)                     -- export
		);
	end component qsys_led_pio_0;

	component qsys_led_master_0 is
		port (
			clk_clk              : in  std_logic                     := 'X';             -- clk
			clk_reset_reset      : in  std_logic                     := 'X';             -- reset
			master_address       : out std_logic_vector(31 downto 0);                    -- address
			master_readdata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			master_read          : out std_logic;                                        -- read
			master_write         : out std_logic;                                        -- write
			master_writedata     : out std_logic_vector(31 downto 0);                    -- writedata
			master_waitrequest   : in  std_logic                     := 'X';             -- waitrequest
			master_readdatavalid : in  std_logic                     := 'X';             -- readdatavalid
			master_byteenable    : out std_logic_vector(3 downto 0);                     -- byteenable
			master_reset_reset   : out std_logic                                         -- reset
		);
	end component qsys_led_master_0;

	component qsys_led_master_0_master_translator is
		port (
			clk               : in  std_logic                     := 'X';             -- clk
			reset             : in  std_logic                     := 'X';             -- reset
			uav_address       : out std_logic_vector(31 downto 0);                    -- address
			uav_burstcount    : out std_logic_vector(2 downto 0);                     -- burstcount
			uav_read          : out std_logic;                                        -- read
			uav_write         : out std_logic;                                        -- write
			uav_waitrequest   : in  std_logic                     := 'X';             -- waitrequest
			uav_readdatavalid : in  std_logic                     := 'X';             -- readdatavalid
			uav_byteenable    : out std_logic_vector(3 downto 0);                     -- byteenable
			uav_readdata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			uav_writedata     : out std_logic_vector(31 downto 0);                    -- writedata
			uav_lock          : out std_logic;                                        -- lock
			uav_debugaccess   : out std_logic;                                        -- debugaccess
			av_address        : in  std_logic_vector(31 downto 0) := (others => 'X'); -- address
			av_waitrequest    : out std_logic;                                        -- waitrequest
			av_byteenable     : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			av_read           : in  std_logic                     := 'X';             -- read
			av_readdata       : out std_logic_vector(31 downto 0);                    -- readdata
			av_readdatavalid  : out std_logic;                                        -- readdatavalid
			av_write          : in  std_logic                     := 'X';             -- write
			av_writedata      : in  std_logic_vector(31 downto 0) := (others => 'X')  -- writedata
		);
	end component qsys_led_master_0_master_translator;

	component qsys_led_pio_0_s1_translator is
		port (
			clk               : in  std_logic                     := 'X';             -- clk
			reset             : in  std_logic                     := 'X';             -- reset
			uav_address       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- address
			uav_burstcount    : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- burstcount
			uav_read          : in  std_logic                     := 'X';             -- read
			uav_write         : in  std_logic                     := 'X';             -- write
			uav_waitrequest   : out std_logic;                                        -- waitrequest
			uav_readdatavalid : out std_logic;                                        -- readdatavalid
			uav_byteenable    : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			uav_readdata      : out std_logic_vector(31 downto 0);                    -- readdata
			uav_writedata     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			uav_lock          : in  std_logic                     := 'X';             -- lock
			uav_debugaccess   : in  std_logic                     := 'X';             -- debugaccess
			av_address        : out std_logic_vector(1 downto 0);                     -- address
			av_write          : out std_logic;                                        -- write
			av_readdata       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			av_writedata      : out std_logic_vector(31 downto 0);                    -- writedata
			av_chipselect     : out std_logic                                         -- chipselect
		);
	end component qsys_led_pio_0_s1_translator;

	component qsys_led_rst_controller is
		port (
			reset_in0 : in  std_logic := 'X'; -- reset
			reset_in1 : in  std_logic := 'X'; -- reset
			clk       : in  std_logic := 'X'; -- clk
			reset_out : out std_logic         -- reset
		);
	end component qsys_led_rst_controller;

	signal master_0_master_reset_reset                                        : std_logic;                     -- master_0:master_reset_reset -> [rst_controller:reset_in0, rst_controller:reset_in1]
	signal master_0_master_waitrequest                                        : std_logic;                     -- master_0_master_translator:av_waitrequest -> master_0:master_waitrequest
	signal master_0_master_writedata                                          : std_logic_vector(31 downto 0); -- master_0:master_writedata -> master_0_master_translator:av_writedata
	signal master_0_master_address                                            : std_logic_vector(31 downto 0); -- master_0:master_address -> master_0_master_translator:av_address
	signal master_0_master_write                                              : std_logic;                     -- master_0:master_write -> master_0_master_translator:av_write
	signal master_0_master_read                                               : std_logic;                     -- master_0:master_read -> master_0_master_translator:av_read
	signal master_0_master_readdata                                           : std_logic_vector(31 downto 0); -- master_0_master_translator:av_readdata -> master_0:master_readdata
	signal master_0_master_byteenable                                         : std_logic_vector(3 downto 0);  -- master_0:master_byteenable -> master_0_master_translator:av_byteenable
	signal master_0_master_readdatavalid                                      : std_logic;                     -- master_0_master_translator:av_readdatavalid -> master_0:master_readdatavalid
	signal master_0_master_translator_avalon_universal_master_0_waitrequest   : std_logic;                     -- pio_0_s1_translator:uav_waitrequest -> master_0_master_translator:uav_waitrequest
	signal master_0_master_translator_avalon_universal_master_0_burstcount    : std_logic_vector(2 downto 0);  -- master_0_master_translator:uav_burstcount -> pio_0_s1_translator:uav_burstcount
	signal master_0_master_translator_avalon_universal_master_0_writedata     : std_logic_vector(31 downto 0); -- master_0_master_translator:uav_writedata -> pio_0_s1_translator:uav_writedata
	signal master_0_master_translator_avalon_universal_master_0_address       : std_logic_vector(31 downto 0); -- master_0_master_translator:uav_address -> pio_0_s1_translator:uav_address
	signal master_0_master_translator_avalon_universal_master_0_lock          : std_logic;                     -- master_0_master_translator:uav_lock -> pio_0_s1_translator:uav_lock
	signal master_0_master_translator_avalon_universal_master_0_write         : std_logic;                     -- master_0_master_translator:uav_write -> pio_0_s1_translator:uav_write
	signal master_0_master_translator_avalon_universal_master_0_read          : std_logic;                     -- master_0_master_translator:uav_read -> pio_0_s1_translator:uav_read
	signal master_0_master_translator_avalon_universal_master_0_readdata      : std_logic_vector(31 downto 0); -- pio_0_s1_translator:uav_readdata -> master_0_master_translator:uav_readdata
	signal master_0_master_translator_avalon_universal_master_0_debugaccess   : std_logic;                     -- master_0_master_translator:uav_debugaccess -> pio_0_s1_translator:uav_debugaccess
	signal master_0_master_translator_avalon_universal_master_0_byteenable    : std_logic_vector(3 downto 0);  -- master_0_master_translator:uav_byteenable -> pio_0_s1_translator:uav_byteenable
	signal master_0_master_translator_avalon_universal_master_0_readdatavalid : std_logic;                     -- pio_0_s1_translator:uav_readdatavalid -> master_0_master_translator:uav_readdatavalid
	signal pio_0_s1_translator_avalon_anti_slave_0_writedata                  : std_logic_vector(31 downto 0); -- pio_0_s1_translator:av_writedata -> pio_0:writedata
	signal pio_0_s1_translator_avalon_anti_slave_0_address                    : std_logic_vector(1 downto 0);  -- pio_0_s1_translator:av_address -> pio_0:address
	signal pio_0_s1_translator_avalon_anti_slave_0_chipselect                 : std_logic;                     -- pio_0_s1_translator:av_chipselect -> pio_0:chipselect
	signal pio_0_s1_translator_avalon_anti_slave_0_write                      : std_logic;                     -- pio_0_s1_translator:av_write -> pio_0_s1_translator_avalon_anti_slave_0_write:in
	signal pio_0_s1_translator_avalon_anti_slave_0_readdata                   : std_logic_vector(31 downto 0); -- pio_0:readdata -> pio_0_s1_translator:av_readdata
	signal rst_controller_reset_out_reset                                     : std_logic;                     -- rst_controller:reset_out -> [master_0:clk_reset_reset, master_0_master_translator:reset, pio_0_s1_translator:reset, rst_controller_reset_out_reset:in]
	signal pio_0_s1_translator_avalon_anti_slave_0_write_ports_inv            : std_logic;                     -- pio_0_s1_translator_avalon_anti_slave_0_write:inv -> pio_0:write_n
	signal rst_controller_reset_out_reset_ports_inv                           : std_logic;                     -- rst_controller_reset_out_reset:inv -> pio_0:reset_n

begin

	pio_0 : component qsys_led_pio_0
		port map (
			clk        => clk_clk,                                                 --                 clk.clk
			reset_n    => rst_controller_reset_out_reset_ports_inv,                --               reset.reset_n
			address    => pio_0_s1_translator_avalon_anti_slave_0_address,         --                  s1.address
			write_n    => pio_0_s1_translator_avalon_anti_slave_0_write_ports_inv, --                    .write_n
			writedata  => pio_0_s1_translator_avalon_anti_slave_0_writedata,       --                    .writedata
			chipselect => pio_0_s1_translator_avalon_anti_slave_0_chipselect,      --                    .chipselect
			readdata   => pio_0_s1_translator_avalon_anti_slave_0_readdata,        --                    .readdata
			out_port   => open                                                     -- external_connection.export
		);

	master_0 : component qsys_led_master_0
		port map (
			clk_clk              => clk_clk,                        --          clk.clk
			clk_reset_reset      => rst_controller_reset_out_reset, --    clk_reset.reset
			master_address       => master_0_master_address,        --       master.address
			master_readdata      => master_0_master_readdata,       --             .readdata
			master_read          => master_0_master_read,           --             .read
			master_write         => master_0_master_write,          --             .write
			master_writedata     => master_0_master_writedata,      --             .writedata
			master_waitrequest   => master_0_master_waitrequest,    --             .waitrequest
			master_readdatavalid => master_0_master_readdatavalid,  --             .readdatavalid
			master_byteenable    => master_0_master_byteenable,     --             .byteenable
			master_reset_reset   => master_0_master_reset_reset     -- master_reset.reset
		);

	master_0_master_translator : component qsys_led_master_0_master_translator
		port map (
			clk               => clk_clk,                                                            --                       clk.clk
			reset             => rst_controller_reset_out_reset,                                     --                     reset.reset
			uav_address       => master_0_master_translator_avalon_universal_master_0_address,       -- avalon_universal_master_0.address
			uav_burstcount    => master_0_master_translator_avalon_universal_master_0_burstcount,    --                          .burstcount
			uav_read          => master_0_master_translator_avalon_universal_master_0_read,          --                          .read
			uav_write         => master_0_master_translator_avalon_universal_master_0_write,         --                          .write
			uav_waitrequest   => master_0_master_translator_avalon_universal_master_0_waitrequest,   --                          .waitrequest
			uav_readdatavalid => master_0_master_translator_avalon_universal_master_0_readdatavalid, --                          .readdatavalid
			uav_byteenable    => master_0_master_translator_avalon_universal_master_0_byteenable,    --                          .byteenable
			uav_readdata      => master_0_master_translator_avalon_universal_master_0_readdata,      --                          .readdata
			uav_writedata     => master_0_master_translator_avalon_universal_master_0_writedata,     --                          .writedata
			uav_lock          => master_0_master_translator_avalon_universal_master_0_lock,          --                          .lock
			uav_debugaccess   => master_0_master_translator_avalon_universal_master_0_debugaccess,   --                          .debugaccess
			av_address        => master_0_master_address,                                            --      avalon_anti_master_0.address
			av_waitrequest    => master_0_master_waitrequest,                                        --                          .waitrequest
			av_byteenable     => master_0_master_byteenable,                                         --                          .byteenable
			av_read           => master_0_master_read,                                               --                          .read
			av_readdata       => master_0_master_readdata,                                           --                          .readdata
			av_readdatavalid  => master_0_master_readdatavalid,                                      --                          .readdatavalid
			av_write          => master_0_master_write,                                              --                          .write
			av_writedata      => master_0_master_writedata                                           --                          .writedata
		);

	pio_0_s1_translator : component qsys_led_pio_0_s1_translator
		port map (
			clk               => clk_clk,                                                            --                      clk.clk
			reset             => rst_controller_reset_out_reset,                                     --                    reset.reset
			uav_address       => master_0_master_translator_avalon_universal_master_0_address,       -- avalon_universal_slave_0.address
			uav_burstcount    => master_0_master_translator_avalon_universal_master_0_burstcount,    --                         .burstcount
			uav_read          => master_0_master_translator_avalon_universal_master_0_read,          --                         .read
			uav_write         => master_0_master_translator_avalon_universal_master_0_write,         --                         .write
			uav_waitrequest   => master_0_master_translator_avalon_universal_master_0_waitrequest,   --                         .waitrequest
			uav_readdatavalid => master_0_master_translator_avalon_universal_master_0_readdatavalid, --                         .readdatavalid
			uav_byteenable    => master_0_master_translator_avalon_universal_master_0_byteenable,    --                         .byteenable
			uav_readdata      => master_0_master_translator_avalon_universal_master_0_readdata,      --                         .readdata
			uav_writedata     => master_0_master_translator_avalon_universal_master_0_writedata,     --                         .writedata
			uav_lock          => master_0_master_translator_avalon_universal_master_0_lock,          --                         .lock
			uav_debugaccess   => master_0_master_translator_avalon_universal_master_0_debugaccess,   --                         .debugaccess
			av_address        => pio_0_s1_translator_avalon_anti_slave_0_address,                    --      avalon_anti_slave_0.address
			av_write          => pio_0_s1_translator_avalon_anti_slave_0_write,                      --                         .write
			av_readdata       => pio_0_s1_translator_avalon_anti_slave_0_readdata,                   --                         .readdata
			av_writedata      => pio_0_s1_translator_avalon_anti_slave_0_writedata,                  --                         .writedata
			av_chipselect     => pio_0_s1_translator_avalon_anti_slave_0_chipselect                  --                         .chipselect
		);

	rst_controller : component qsys_led_rst_controller
		port map (
			reset_in0 => master_0_master_reset_reset,    -- reset_in0.reset
			reset_in1 => master_0_master_reset_reset,    -- reset_in1.reset
			clk       => clk_clk,                        --       clk.clk
			reset_out => rst_controller_reset_out_reset  -- reset_out.reset
		);

	pio_0_s1_translator_avalon_anti_slave_0_write_ports_inv <= not pio_0_s1_translator_avalon_anti_slave_0_write;

	rst_controller_reset_out_reset_ports_inv <= not rst_controller_reset_out_reset;

end architecture rtl; -- of qsys_led
