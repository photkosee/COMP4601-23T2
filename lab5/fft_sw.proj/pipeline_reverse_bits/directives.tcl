############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_loop_tripcount -min 512 -max 512 -avg 512 "fft/dft_loop"
set_directive_loop_tripcount -min 24 -max 24 -avg 24 "fft/butterfly_loop"
set_directive_pipeline "reverse_bits"
