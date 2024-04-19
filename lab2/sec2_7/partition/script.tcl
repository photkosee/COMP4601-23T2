############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sec2_7
set_top fir
add_files fir11_sec2_7.cpp
open_solution "partition"
set_part {xqzu5ev-ffrb900-1-i}
create_clock -period 10ns -name default
#source "./sec2_7/partition/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
