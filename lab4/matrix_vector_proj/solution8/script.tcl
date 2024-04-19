############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrix_vector_proj
set_top matrix_vector
add_files matrix_vector_base.c
add_files -tb out.matrix_vector.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb matrix_vector_base-top.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution8"
set_part {xqzu5ev-ffrb900-1-i}
create_clock -period 8 -name default
source "./matrix_vector_proj/solution8/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
