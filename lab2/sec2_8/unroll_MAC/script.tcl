############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sec2_8
set_top fir
add_files fir11_sec2_8.cpp
open_solution "unroll_MAC"
set_part {xqzu5ev-ffrb900-1-i}
create_clock -period 10ns -name default
source "./sec2_8/unroll_MAC/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
