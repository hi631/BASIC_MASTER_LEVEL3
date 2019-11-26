set_global_assignment -entity "clkgen" -library "lib_clkgen" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "clkgen" -library "lib_clkgen" -name IP_TOOL_VERSION "17.1"
set_global_assignment -entity "clkgen" -library "lib_clkgen" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_clkgen" -name SPD_FILE [file join $::quartus(sip_path) "clkgen.spd"]

set_global_assignment -library "lib_clkgen" -name MISC_FILE [file join $::quartus(sip_path) "clkgen_sim/clkgen.vo"]
