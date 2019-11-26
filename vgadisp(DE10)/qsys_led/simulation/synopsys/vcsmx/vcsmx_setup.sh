
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
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="qsys_led"
QSYS_SIMDIR="./../../"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/qsys_led_p2b_adapter/
mkdir -p ./libraries/qsys_led_b2p_adapter/
mkdir -p ./libraries/qsys_led_transacto/
mkdir -p ./libraries/qsys_led_p2b/
mkdir -p ./libraries/qsys_led_b2p/
mkdir -p ./libraries/qsys_led_fifo/
mkdir -p ./libraries/qsys_led_timing_adt/
mkdir -p ./libraries/qsys_led_jtag_phy_embedded_in_jtag_master/
mkdir -p ./libraries/qsys_led_rst_controller/
mkdir -p ./libraries/qsys_led_pio_0_s1_translator/
mkdir -p ./libraries/qsys_led_master_0_master_translator/
mkdir -p ./libraries/qsys_led_master_0/
mkdir -p ./libraries/qsys_led_pio_0/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cycloneiii/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/altera_syn_attributes.vhd"        -work altera      
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/altera_standard_functions.vhd"    -work altera      
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera      
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera      
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/altera_primitives_components.vhd" -work altera      
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/altera_primitives.vhd"            -work altera      
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/220pack.vhd"                      -work lpm         
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/220model.vhd"                     -work lpm         
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/sgate_pack.vhd"                   -work sgate       
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/sgate.vhd"                        -work sgate       
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf   
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/altera_mf.vhd"                    -work altera_mf   
  vlogan +v2k -sverilog "C:/altera/11.1/quartus/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/cycloneiii_atoms.vhd"             -work cycloneiii  
  vhdlan -xlrm          "C:/altera/11.1/quartus/eda/sim_lib/cycloneiii_components.vhd"        -work cycloneiii  
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0_p2b_adapter.vho"                      -work qsys_led_p2b_adapter                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0_b2p_adapter.vho"                      -work qsys_led_b2p_adapter                     
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0_transacto.vho"                        -work qsys_led_transacto                       
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0_p2b.vho"                              -work qsys_led_p2b                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0_b2p.vho"                              -work qsys_led_b2p                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0_fifo.vho"                             -work qsys_led_fifo                            
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0_timing_adt.vho"                       -work qsys_led_timing_adt                      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0_jtag_phy_embedded_in_jtag_master.vho" -work qsys_led_jtag_phy_embedded_in_jtag_master
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_rst_controller.vho"                            -work qsys_led_rst_controller                  
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_pio_0_s1_translator.vho"                       -work qsys_led_pio_0_s1_translator             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0_master_translator.vho"                -work qsys_led_master_0_master_translator      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_master_0.vhd"                                  -work qsys_led_master_0                        
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/qsys_led_pio_0.vhd"                                     -work qsys_led_pio_0                           
  vhdlan -xlrm "$QSYS_SIMDIR/qsys_led.vhd"                                                                                                     
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
