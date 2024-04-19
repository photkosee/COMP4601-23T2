############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dft_proj
set_top dft
add_files dft.cpp
open_solution "solution1"
set_part {xqzu5ev-ffrb900-1-i}
create_clock -period 8 -name default
#source "./dft_proj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
