############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "matrix_vector/data_loop"
set_directive_array_partition -type complete -dim 2 "matrix_vector" M
set_directive_array_partition -type complete -dim 1 "matrix_vector" V_In
set_directive_resource -core RAM_2P_BRAM "matrix_vector" M
set_directive_resource -core RAM_2P_BRAM "matrix_vector" V_In
