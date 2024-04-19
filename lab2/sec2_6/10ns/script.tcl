############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sec2_6
set_top fir
add_files fir11_sec2_6.cpp
open_solution "10ns"
set_part {xqzu5ev-ffrb900-1-i}
create_clock -period 10ns -name default
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
set_clock_uncertainty 12.5%
#source "./sec2_6/10ns/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
