############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project fifo_dequeue
set_top fifo_dequeue
add_files fifo_dequeue/.apc/fifo_dequeue.c
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
source "./fifo_dequeue/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
