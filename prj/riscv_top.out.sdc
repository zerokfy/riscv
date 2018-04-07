## Generated SDC file "riscv_top.out.sdc"

## Copyright (C) 1991-2011 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Web Edition"

## DATE    "Sat Mar 31 23:12:51 2018"

##
## DEVICE  "EP1C20F400C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {m_clock} -period 20.000 -waveform { 0.000 10.000 } [get_ports {m_clock}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -rise -min -clock [get_clocks {m_clock}]  5.000 [get_ports {led[0]}]
set_output_delay -add_delay -rise -min -clock [get_clocks {m_clock}]  5.000 [get_ports {led[1]}]
set_output_delay -add_delay -rise -min -clock [get_clocks {m_clock}]  5.000 [get_ports {led[2]}]
set_output_delay -add_delay -rise -min -clock [get_clocks {m_clock}]  5.000 [get_ports {led[3]}]
set_output_delay -add_delay -rise -min -clock [get_clocks {m_clock}]  5.000 [get_ports {led[4]}]
set_output_delay -add_delay -rise -min -clock [get_clocks {m_clock}]  5.000 [get_ports {led[5]}]
set_output_delay -add_delay -rise -min -clock [get_clocks {m_clock}]  5.000 [get_ports {led[6]}]
set_output_delay -add_delay -rise -min -clock [get_clocks {m_clock}]  5.000 [get_ports {led[7]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

