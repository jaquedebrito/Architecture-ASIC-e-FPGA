##########################################################

# * Aluna: Jaqueline Ferreira de Brito

##########################################################



#### Template Script for RTL->Gate-Level Flow ####

# *************************************************
# * Local Variable settings for this design
# *************************************************
set LOCAL_DIR [exec pwd]
set SYNTH_DIR $LOCAL_DIR
set RTL_PATH $LOCAL_DIR/source
set LIB_PATH $LOCAL_DIR/library
set LIBRARY  {sky130_ff_1.98_0_nldm.lib}
set FILE_LIST  {ULA.sv}
set SYN_EFFORT   high 
set MAP_EFFORT   high
set OPT_EFFORT   high
set DESIGN       ULA
set top_module   $DESIGN
set WITH_DFT 0
set DATE [clock format [clock seconds] -format "%b%d-%T"]

set _OUTPUTS_PATH outputs_${DATE}
set _LOG_PATH logs_${DATE}
set _REPORTS_PATH reports_${DATE}

# *********************************************************
# * Display the system info and Start Time
# *********************************************************
puts "The DATE is ${DATE} \n"

if {[file exists /proc/cpuinfo]} {
  sh grep "model name" /proc/cpuinfo
  sh grep "cpu MHz"    /proc/cpuinfo
}

puts "Hostname : [info hostname]"


# ###################################
# # Load Design
# ###################################
read_lib $LIB_PATH/$LIBRARY
read_hdl -sv $RTL_PATH/$FILE_LIST
elaborate $DESIGN
puts "Runtime & Memory after 'read_hdl'"
timestat Elaboration

check_design -unresolved


# ###################################
# # Synthesizing to generic 
# ###################################
syn_gen -effort $SYN_EFFORT
puts "Runtime & Memory after 'synthesize -to_generic'"
timestat GENERIC
report datapath > $_REPORTS_PATH/${DESIGN}_datapath_generic.rpt



# ###################################
# # Synthesizing to gates
# ###################################
syn_map -effort $MAP_EFFORT
puts "Runtime & Memory after 'synthesize -to_map'"
timestat MAPPED
report datapath > $_REPORTS_PATH/${DESIGN}_datapath_map.rpt


syn_opt -effort $OPT_EFFORT   
puts "Runtime & Memory after incremental synthesis"
timestat INCREMENTAL


# ###################################
# # write Encounter file set (verilog, SDC, config, etc.)
# ###################################
report area > $_REPORTS_PATH/${DESIGN}_area.rpt
report power > $_REPORTS_PATH/${DESIGN}_power.rpt
report gates > $_REPORTS_PATH/${DESIGN}_gates.rpt
write_hdl  > ${_OUTPUTS_PATH}/${DESIGN}.v
write_sdc > ${_OUTPUTS_PATH}/${DESIGN}.sdc


puts "Final Runtime & Memory."
timestat FINAL
puts "============================"
puts "Synthesis Finished ........."
puts "============================"

#exit
