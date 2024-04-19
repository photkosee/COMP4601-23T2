############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cordic_optimized_prj
set_top cordic
add_files cordic_fixed.cpp
add_files cordic.h
add_files -tb cordic_fixed-top.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "iteration_16"
set_part {xqzu5ev-ffrb900-1-i}
create_clock -period 10 -name default
source "./cordic_optimized_prj/iteration_16/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog