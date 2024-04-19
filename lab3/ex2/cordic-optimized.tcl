############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2012 Xilinx Inc. All rights reserved.
############################################################
open_project cordic_optimized_prj
set_top cordic
add_files cordic.h
add_files cordic_fixed.cpp
add_files -tb cordic_fixed-top.cpp
open_solution "solution1"
set_part  {xqzu5ev-ffrb900-1-i}
create_clock -period 10
exit