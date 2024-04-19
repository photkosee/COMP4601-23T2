############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fft_stages.proj
set_top fft_streaming
add_files fft_stages.cpp
add_files fft_stages.h
open_solution "solution2"
set_part {xqzu5ev-ffrb900-1-i}
create_clock -period 10 -name default
source "./fft_stages.proj/solution2/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
