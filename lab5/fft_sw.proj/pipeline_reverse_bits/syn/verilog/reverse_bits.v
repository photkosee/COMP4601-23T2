// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module reverse_bits (
        ap_ready,
        input_r,
        ap_return
);


output   ap_ready;
input  [10:0] input_r;
output  [9:0] ap_return;

reg[9:0] ap_return;

assign ap_ready = 1'b1;

integer ap_tvar_int_0;

always @ (input_r) begin
    for (ap_tvar_int_0 = 10 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 9 - 0) begin
            ap_return[ap_tvar_int_0] = 1'b0;
        end else begin
            ap_return[ap_tvar_int_0] = input_r[9 - ap_tvar_int_0];
        end
    end
end

endmodule //reverse_bits
