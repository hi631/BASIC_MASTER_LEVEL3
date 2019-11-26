	component qsys_led is
		port (
			clk_clk    : in  std_logic                     := 'X';             -- clk
			led_export : out std_logic_vector(15 downto 0);                    -- export
			sin_export : in  std_logic_vector(15 downto 0) := (others => 'X')  -- export
		);
	end component qsys_led;

	u0 : component qsys_led
		port map (
			clk_clk    => CONNECTED_TO_clk_clk,    -- clk.clk
			led_export => CONNECTED_TO_led_export, -- led.export
			sin_export => CONNECTED_TO_sin_export  -- sin.export
		);

