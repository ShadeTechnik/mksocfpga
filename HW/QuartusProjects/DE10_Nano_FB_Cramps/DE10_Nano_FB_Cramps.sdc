#************************************************************
# THIS IS A WIZARD-GENERATED FILE.                           
#
# Version 13.0.0 Build 156 04/24/2013 Service Pack 0.dp1 SJ Full Version
#
#************************************************************

# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.



# Clock constraints

create_clock -name "clock_50_0" -period 20.000ns [get_ports {FPGA_CLK1_50}]
create_clock -name "clock_50_1" -period 20.000ns [get_ports {FPGA_CLK2_50}]
create_clock -name "clock_50_2" -period 20.000ns [get_ports {FPGA_CLK3_50}]


# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty


create_clock -name "HDMI_TX_CLK" -period "75.0 MHz" [get_ports {HDMI_TX_CLK}]

set_output_delay -max -clock HDMI_TX_CLK 0.220 [get_ports LCD_R*]
set_output_delay -min -clock HDMI_TX_CLK -1.506 [get_ports LCD_R*]
set_output_delay -max -clock HDMI_TX_CLK 0.212 [get_ports LCD_G*]
set_output_delay -min -clock HDMI_TX_CLK -1.519 [get_ports LCD_G*]
set_output_delay -max -clock HDMI_TX_CLK 0.264 [get_ports LCD_B*]
set_output_delay -min -clock HDMI_TX_CLK -1.519 [get_ports LCD_B*]
set_output_delay -max -clock HDMI_TX_CLK 0.215 [get_ports LCD_DE]
set_output_delay -min -clock HDMI_TX_CLK -1.485 [get_ports LCD_DE]



# tsu/th constraints

# tco constraints

# tpd constraints

