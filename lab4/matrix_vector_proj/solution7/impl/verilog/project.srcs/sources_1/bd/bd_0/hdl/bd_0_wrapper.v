//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Jun 21 14:44:58 2023
//Host        : LAPTOP-HIKTNO12 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (M_0_address0,
    M_0_address1,
    M_0_ce0,
    M_0_ce1,
    M_0_q0,
    M_0_q1,
    M_1_address0,
    M_1_address1,
    M_1_ce0,
    M_1_ce1,
    M_1_q0,
    M_1_q1,
    V_In_0_address0,
    V_In_0_address1,
    V_In_0_ce0,
    V_In_0_ce1,
    V_In_0_q0,
    V_In_0_q1,
    V_In_1_address0,
    V_In_1_address1,
    V_In_1_ce0,
    V_In_1_ce1,
    V_In_1_q0,
    V_In_1_q1,
    V_Out_address0,
    V_Out_ce0,
    V_Out_d0,
    V_Out_we0,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst);
  output [4:0]M_0_address0;
  output [4:0]M_0_address1;
  output M_0_ce0;
  output M_0_ce1;
  input [31:0]M_0_q0;
  input [31:0]M_0_q1;
  output [4:0]M_1_address0;
  output [4:0]M_1_address1;
  output M_1_ce0;
  output M_1_ce1;
  input [31:0]M_1_q0;
  input [31:0]M_1_q1;
  output [1:0]V_In_0_address0;
  output [1:0]V_In_0_address1;
  output V_In_0_ce0;
  output V_In_0_ce1;
  input [31:0]V_In_0_q0;
  input [31:0]V_In_0_q1;
  output [1:0]V_In_1_address0;
  output [1:0]V_In_1_address1;
  output V_In_1_ce0;
  output V_In_1_ce1;
  input [31:0]V_In_1_q0;
  input [31:0]V_In_1_q1;
  output [2:0]V_Out_address0;
  output V_Out_ce0;
  output [31:0]V_Out_d0;
  output V_Out_we0;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;

  wire [4:0]M_0_address0;
  wire [4:0]M_0_address1;
  wire M_0_ce0;
  wire M_0_ce1;
  wire [31:0]M_0_q0;
  wire [31:0]M_0_q1;
  wire [4:0]M_1_address0;
  wire [4:0]M_1_address1;
  wire M_1_ce0;
  wire M_1_ce1;
  wire [31:0]M_1_q0;
  wire [31:0]M_1_q1;
  wire [1:0]V_In_0_address0;
  wire [1:0]V_In_0_address1;
  wire V_In_0_ce0;
  wire V_In_0_ce1;
  wire [31:0]V_In_0_q0;
  wire [31:0]V_In_0_q1;
  wire [1:0]V_In_1_address0;
  wire [1:0]V_In_1_address1;
  wire V_In_1_ce0;
  wire V_In_1_ce1;
  wire [31:0]V_In_1_q0;
  wire [31:0]V_In_1_q1;
  wire [2:0]V_Out_address0;
  wire V_Out_ce0;
  wire [31:0]V_Out_d0;
  wire V_Out_we0;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;

  bd_0 bd_0_i
       (.M_0_address0(M_0_address0),
        .M_0_address1(M_0_address1),
        .M_0_ce0(M_0_ce0),
        .M_0_ce1(M_0_ce1),
        .M_0_q0(M_0_q0),
        .M_0_q1(M_0_q1),
        .M_1_address0(M_1_address0),
        .M_1_address1(M_1_address1),
        .M_1_ce0(M_1_ce0),
        .M_1_ce1(M_1_ce1),
        .M_1_q0(M_1_q0),
        .M_1_q1(M_1_q1),
        .V_In_0_address0(V_In_0_address0),
        .V_In_0_address1(V_In_0_address1),
        .V_In_0_ce0(V_In_0_ce0),
        .V_In_0_ce1(V_In_0_ce1),
        .V_In_0_q0(V_In_0_q0),
        .V_In_0_q1(V_In_0_q1),
        .V_In_1_address0(V_In_1_address0),
        .V_In_1_address1(V_In_1_address1),
        .V_In_1_ce0(V_In_1_ce0),
        .V_In_1_ce1(V_In_1_ce1),
        .V_In_1_q0(V_In_1_q0),
        .V_In_1_q1(V_In_1_q1),
        .V_Out_address0(V_Out_address0),
        .V_Out_ce0(V_Out_ce0),
        .V_Out_d0(V_Out_d0),
        .V_Out_we0(V_Out_we0),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst));
endmodule
