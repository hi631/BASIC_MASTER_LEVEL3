
# (C) 2001-2011 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "qsys_led_tb"
} elseif { ![ string match "" $TOP_LEVEL_NAME ] } { 
  set TOP_LEVEL_NAME "$TOP_LEVEL_NAME"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} elseif { ![ string match "" $QSYS_SIMDIR ] } { 
  set QSYS_SIMDIR "$QSYS_SIMDIR"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries/     
ensure_lib      ./libraries/work/
vmap       work ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib              ./libraries/altera/      
  vmap       altera       ./libraries/altera/      
  ensure_lib              ./libraries/lpm/         
  vmap       lpm          ./libraries/lpm/         
  ensure_lib              ./libraries/sgate/       
  vmap       sgate        ./libraries/sgate/       
  ensure_lib              ./libraries/altera_mf/   
  vmap       altera_mf    ./libraries/altera_mf/   
  ensure_lib              ./libraries/altera_lnsim/
  vmap       altera_lnsim ./libraries/altera_lnsim/
  ensure_lib              ./libraries/cycloneiii/  
  vmap       cycloneiii   ./libraries/cycloneiii/  
}
ensure_lib                                              ./libraries/qsys_led_tb_p2b_adapter/                     
vmap       qsys_led_tb_p2b_adapter                      ./libraries/qsys_led_tb_p2b_adapter/                     
ensure_lib                                              ./libraries/qsys_led_tb_b2p_adapter/                     
vmap       qsys_led_tb_b2p_adapter                      ./libraries/qsys_led_tb_b2p_adapter/                     
ensure_lib                                              ./libraries/qsys_led_tb_transacto/                       
vmap       qsys_led_tb_transacto                        ./libraries/qsys_led_tb_transacto/                       
ensure_lib                                              ./libraries/qsys_led_tb_p2b/                             
vmap       qsys_led_tb_p2b                              ./libraries/qsys_led_tb_p2b/                             
ensure_lib                                              ./libraries/qsys_led_tb_b2p/                             
vmap       qsys_led_tb_b2p                              ./libraries/qsys_led_tb_b2p/                             
ensure_lib                                              ./libraries/qsys_led_tb_fifo/                            
vmap       qsys_led_tb_fifo                             ./libraries/qsys_led_tb_fifo/                            
ensure_lib                                              ./libraries/qsys_led_tb_timing_adt/                      
vmap       qsys_led_tb_timing_adt                       ./libraries/qsys_led_tb_timing_adt/                      
ensure_lib                                              ./libraries/qsys_led_tb_jtag_phy_embedded_in_jtag_master/
vmap       qsys_led_tb_jtag_phy_embedded_in_jtag_master ./libraries/qsys_led_tb_jtag_phy_embedded_in_jtag_master/
ensure_lib                                              ./libraries/qsys_led_tb_rst_controller/                  
vmap       qsys_led_tb_rst_controller                   ./libraries/qsys_led_tb_rst_controller/                  
ensure_lib                                              ./libraries/qsys_led_tb_pio_0_s1_translator/             
vmap       qsys_led_tb_pio_0_s1_translator              ./libraries/qsys_led_tb_pio_0_s1_translator/             
ensure_lib                                              ./libraries/qsys_led_tb_master_0_master_translator/      
vmap       qsys_led_tb_master_0_master_translator       ./libraries/qsys_led_tb_master_0_master_translator/      
ensure_lib                                              ./libraries/qsys_led_tb_master_0/                        
vmap       qsys_led_tb_master_0                         ./libraries/qsys_led_tb_master_0/                        
ensure_lib                                              ./libraries/qsys_led_tb_pio_0/                           
vmap       qsys_led_tb_pio_0                            ./libraries/qsys_led_tb_pio_0/                           
ensure_lib                                              ./libraries/qsys_led_tb_qsys_led_inst_clk_bfm/           
vmap       qsys_led_tb_qsys_led_inst_clk_bfm            ./libraries/qsys_led_tb_qsys_led_inst_clk_bfm/           
ensure_lib                                              ./libraries/qsys_led_tb_qsys_led_inst/                   
vmap       qsys_led_tb_qsys_led_inst                    ./libraries/qsys_led_tb_qsys_led_inst/                   

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/altera_syn_attributes.vhd"        -work altera      
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/altera_standard_functions.vhd"    -work altera      
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera      
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera      
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/altera_primitives_components.vhd" -work altera      
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/altera_primitives.vhd"            -work altera      
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/220pack.vhd"                      -work lpm         
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/220model.vhd"                     -work lpm         
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/sgate_pack.vhd"                   -work sgate       
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/sgate.vhd"                        -work sgate       
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf   
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/altera_mf.vhd"                    -work altera_mf   
    vlog -sv "C:/altera/11.1/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"  -work altera_lnsim
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/cycloneiii_atoms.vhd"             -work cycloneiii  
    vcom     "C:/altera/11.1/quartus/eda/sim_lib/cycloneiii_components.vhd"        -work cycloneiii  
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0_p2b_adapter.vho"                      -work qsys_led_tb_p2b_adapter                     
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0_b2p_adapter.vho"                      -work qsys_led_tb_b2p_adapter                     
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0_transacto.vho"                        -work qsys_led_tb_transacto                       
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0_p2b.vho"                              -work qsys_led_tb_p2b                             
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0_b2p.vho"                              -work qsys_led_tb_b2p                             
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0_fifo.vho"                             -work qsys_led_tb_fifo                            
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0_timing_adt.vho"                       -work qsys_led_tb_timing_adt                      
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0_jtag_phy_embedded_in_jtag_master.vho" -work qsys_led_tb_jtag_phy_embedded_in_jtag_master
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_rst_controller.vho"                            -work qsys_led_tb_rst_controller                  
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_pio_0_s1_translator.vho"                       -work qsys_led_tb_pio_0_s1_translator             
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0_master_translator.vho"                -work qsys_led_tb_master_0_master_translator      
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_master_0.vhd"                                  -work qsys_led_tb_master_0                        
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led_pio_0.vhd"                                     -work qsys_led_tb_pio_0                           
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/altera_avalon_clock_source.vhd"                         -work qsys_led_tb_qsys_led_inst_clk_bfm           
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/submodules/qsys_led.vhd"                                           -work qsys_led_tb_qsys_led_inst                   
  vcom "$QSYS_SIMDIR/qsys_led_tb/simulation/qsys_led_tb.vhd"                                                                                                     
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L qsys_led_tb_p2b_adapter -L qsys_led_tb_b2p_adapter -L qsys_led_tb_transacto -L qsys_led_tb_p2b -L qsys_led_tb_b2p -L qsys_led_tb_fifo -L qsys_led_tb_timing_adt -L qsys_led_tb_jtag_phy_embedded_in_jtag_master -L qsys_led_tb_rst_controller -L qsys_led_tb_pio_0_s1_translator -L qsys_led_tb_master_0_master_translator -L qsys_led_tb_master_0 -L qsys_led_tb_pio_0 -L qsys_led_tb_qsys_led_inst_clk_bfm -L qsys_led_tb_qsys_led_inst -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L qsys_led_tb_p2b_adapter -L qsys_led_tb_b2p_adapter -L qsys_led_tb_transacto -L qsys_led_tb_p2b -L qsys_led_tb_b2p -L qsys_led_tb_fifo -L qsys_led_tb_timing_adt -L qsys_led_tb_jtag_phy_embedded_in_jtag_master -L qsys_led_tb_rst_controller -L qsys_led_tb_pio_0_s1_translator -L qsys_led_tb_master_0_master_translator -L qsys_led_tb_master_0 -L qsys_led_tb_pio_0 -L qsys_led_tb_qsys_led_inst_clk_bfm -L qsys_led_tb_qsys_led_inst -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
}
h
