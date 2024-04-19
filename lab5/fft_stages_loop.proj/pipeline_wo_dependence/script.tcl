############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fft_stages_loop.proj
set_top fft_streaming
add_files fft_stages_loop.h
add_files fft_stages_loop.cpp
open_solution "pipeline_wo_dependence"
set_part {xqzu5ev-ffrb900-1-i}
create_clock -period 10 -name default
source "./fft_stages_loop.proj/pipeline_wo_dependence/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
