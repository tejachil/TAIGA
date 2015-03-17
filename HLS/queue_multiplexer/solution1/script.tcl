############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project queue_multiplexer
set_top queue_multiplexer
add_files queue_multiplexer/.apc/queue_multiplexer.cpp
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
source "./queue_multiplexer/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
