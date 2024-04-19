// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrix_vector,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.435000,HLS_SYN_LAT=19,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=12,HLS_SYN_FF=184,HLS_SYN_LUT=503,HLS_VERSION=2020_1}" *)

module matrix_vector (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        M_0_address0,
        M_0_ce0,
        M_0_q0,
        M_0_address1,
        M_0_ce1,
        M_0_q1,
        M_1_address0,
        M_1_ce0,
        M_1_q0,
        M_1_address1,
        M_1_ce1,
        M_1_q1,
        V_In_0_address0,
        V_In_0_ce0,
        V_In_0_q0,
        V_In_0_address1,
        V_In_0_ce1,
        V_In_0_q1,
        V_In_1_address0,
        V_In_1_ce0,
        V_In_1_q0,
        V_In_1_address1,
        V_In_1_ce1,
        V_In_1_q1,
        V_Out_address0,
        V_Out_ce0,
        V_Out_we0,
        V_Out_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_pp0_stage0 = 4'd2;
parameter    ap_ST_fsm_pp0_stage1 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] M_0_address0;
output   M_0_ce0;
input  [31:0] M_0_q0;
output  [4:0] M_0_address1;
output   M_0_ce1;
input  [31:0] M_0_q1;
output  [4:0] M_1_address0;
output   M_1_ce0;
input  [31:0] M_1_q0;
output  [4:0] M_1_address1;
output   M_1_ce1;
input  [31:0] M_1_q1;
output  [1:0] V_In_0_address0;
output   V_In_0_ce0;
input  [31:0] V_In_0_q0;
output  [1:0] V_In_0_address1;
output   V_In_0_ce1;
input  [31:0] V_In_0_q1;
output  [1:0] V_In_1_address0;
output   V_In_1_ce0;
input  [31:0] V_In_1_q0;
output  [1:0] V_In_1_address1;
output   V_In_1_ce1;
input  [31:0] V_In_1_q1;
output  [2:0] V_Out_address0;
output   V_Out_ce0;
output   V_Out_we0;
output  [31:0] V_Out_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] M_0_address0;
reg M_0_ce0;
reg[4:0] M_0_address1;
reg M_0_ce1;
reg[4:0] M_1_address0;
reg M_1_ce0;
reg[4:0] M_1_address1;
reg M_1_ce1;
reg[1:0] V_In_0_address0;
reg V_In_0_ce0;
reg[1:0] V_In_0_address1;
reg V_In_0_ce1;
reg[1:0] V_In_1_address0;
reg V_In_1_ce0;
reg[1:0] V_In_1_address1;
reg V_In_1_ce1;
reg V_Out_ce0;
reg V_Out_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [3:0] i_0_reg_243;
reg   [3:0] i_0_reg_243_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_279_p2;
reg   [31:0] reg_285;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln7_reg_433;
reg    ap_enable_reg_pp0_iter1;
wire   [0:0] icmp_ln7_fu_289_p2;
reg   [0:0] icmp_ln7_reg_433_pp0_iter1_reg;
wire   [3:0] i_fu_295_p2;
reg   [3:0] i_reg_437;
wire   [5:0] tmp_1_fu_301_p3;
reg   [5:0] tmp_1_reg_442;
wire   [31:0] grp_fu_267_p2;
reg   [31:0] mul_ln11_2_reg_488;
wire   [31:0] grp_fu_273_p2;
reg   [31:0] mul_ln11_3_reg_493;
wire   [31:0] add_ln11_2_fu_365_p2;
reg   [31:0] add_ln11_2_reg_498;
wire   [31:0] add_ln11_4_fu_371_p2;
reg   [31:0] add_ln11_4_reg_503;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_block_pp0_stage1_subdone;
reg   [3:0] ap_phi_mux_i_0_phi_fu_247_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11_1_fu_309_p1;
wire   [63:0] tmp_2_fu_321_p3;
wire   [63:0] tmp_3_fu_336_p3;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_4_fu_351_p3;
wire   [63:0] zext_ln11_fu_377_p1;
wire  signed [31:0] grp_fu_255_p0;
wire  signed [31:0] grp_fu_255_p1;
wire  signed [31:0] grp_fu_261_p0;
wire  signed [31:0] grp_fu_261_p1;
wire  signed [31:0] grp_fu_267_p0;
wire  signed [31:0] grp_fu_267_p1;
wire  signed [31:0] grp_fu_273_p0;
wire  signed [31:0] grp_fu_273_p1;
wire   [31:0] grp_fu_261_p2;
wire   [31:0] grp_fu_255_p2;
wire   [5:0] or_ln11_fu_315_p2;
wire   [5:0] or_ln11_1_fu_331_p2;
wire   [5:0] or_ln11_2_fu_346_p2;
wire   [31:0] add_ln11_1_fu_361_p2;
wire   [31:0] add_ln11_5_fu_382_p2;
wire    ap_CS_fsm_state6;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln7_reg_433 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_0_reg_243 <= i_reg_437;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_243 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln7_reg_433 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln11_2_reg_498 <= add_ln11_2_fu_365_p2;
        add_ln11_4_reg_503 <= add_ln11_4_fu_371_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_reg_243_pp0_iter1_reg <= i_0_reg_243;
        icmp_ln7_reg_433 <= icmp_ln7_fu_289_p2;
        icmp_ln7_reg_433_pp0_iter1_reg <= icmp_ln7_reg_433;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_437 <= i_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln7_reg_433 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln11_2_reg_488 <= grp_fu_267_p2;
        mul_ln11_3_reg_493 <= grp_fu_273_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln7_reg_433 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln7_reg_433 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        reg_285 <= grp_fu_279_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln7_fu_289_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_442[5 : 2] <= tmp_1_fu_301_p3[5 : 2];
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            M_0_address0 = tmp_3_fu_336_p3;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            M_0_address0 = zext_ln11_1_fu_309_p1;
        end else begin
            M_0_address0 = 'bx;
        end
    end else begin
        M_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            M_0_address1 = tmp_4_fu_351_p3;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            M_0_address1 = tmp_2_fu_321_p3;
        end else begin
            M_0_address1 = 'bx;
        end
    end else begin
        M_0_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce0 = 1'b1;
    end else begin
        M_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce1 = 1'b1;
    end else begin
        M_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            M_1_address0 = tmp_3_fu_336_p3;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            M_1_address0 = zext_ln11_1_fu_309_p1;
        end else begin
            M_1_address0 = 'bx;
        end
    end else begin
        M_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            M_1_address1 = tmp_4_fu_351_p3;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            M_1_address1 = tmp_2_fu_321_p3;
        end else begin
            M_1_address1 = 'bx;
        end
    end else begin
        M_1_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce0 = 1'b1;
    end else begin
        M_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce1 = 1'b1;
    end else begin
        M_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            V_In_0_address0 = 64'd2;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            V_In_0_address0 = 64'd0;
        end else begin
            V_In_0_address0 = 'bx;
        end
    end else begin
        V_In_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            V_In_0_address1 = 64'd3;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            V_In_0_address1 = 64'd1;
        end else begin
            V_In_0_address1 = 'bx;
        end
    end else begin
        V_In_0_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        V_In_0_ce0 = 1'b1;
    end else begin
        V_In_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        V_In_0_ce1 = 1'b1;
    end else begin
        V_In_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            V_In_1_address0 = 64'd2;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            V_In_1_address0 = 64'd0;
        end else begin
            V_In_1_address0 = 'bx;
        end
    end else begin
        V_In_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            V_In_1_address1 = 64'd3;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            V_In_1_address1 = 64'd1;
        end else begin
            V_In_1_address1 = 'bx;
        end
    end else begin
        V_In_1_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        V_In_1_ce0 = 1'b1;
    end else begin
        V_In_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        V_In_1_ce1 = 1'b1;
    end else begin
        V_In_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        V_Out_ce0 = 1'b1;
    end else begin
        V_Out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln7_reg_433_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        V_Out_we0 = 1'b1;
    end else begin
        V_Out_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln7_fu_289_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln7_reg_433 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_0_phi_fu_247_p4 = i_reg_437;
    end else begin
        ap_phi_mux_i_0_phi_fu_247_p4 = i_0_reg_243;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln7_fu_289_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln7_fu_289_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign V_Out_address0 = zext_ln11_fu_377_p1;

assign V_Out_d0 = (add_ln11_2_reg_498 + add_ln11_5_fu_382_p2);

assign add_ln11_1_fu_361_p2 = (mul_ln11_3_reg_493 + mul_ln11_2_reg_488);

assign add_ln11_2_fu_365_p2 = (reg_285 + add_ln11_1_fu_361_p2);

assign add_ln11_4_fu_371_p2 = (grp_fu_273_p2 + grp_fu_267_p2);

assign add_ln11_5_fu_382_p2 = (reg_285 + add_ln11_4_reg_503);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_fu_255_p0 = M_0_q0;

assign grp_fu_255_p1 = V_In_0_q0;

assign grp_fu_255_p2 = ($signed(grp_fu_255_p0) * $signed(grp_fu_255_p1));

assign grp_fu_261_p0 = M_1_q0;

assign grp_fu_261_p1 = V_In_1_q0;

assign grp_fu_261_p2 = ($signed(grp_fu_261_p0) * $signed(grp_fu_261_p1));

assign grp_fu_267_p0 = M_0_q1;

assign grp_fu_267_p1 = V_In_0_q1;

assign grp_fu_267_p2 = ($signed(grp_fu_267_p0) * $signed(grp_fu_267_p1));

assign grp_fu_273_p0 = M_1_q1;

assign grp_fu_273_p1 = V_In_1_q1;

assign grp_fu_273_p2 = ($signed(grp_fu_273_p0) * $signed(grp_fu_273_p1));

assign grp_fu_279_p2 = (grp_fu_261_p2 + grp_fu_255_p2);

assign i_fu_295_p2 = (ap_phi_mux_i_0_phi_fu_247_p4 + 4'd1);

assign icmp_ln7_fu_289_p2 = ((ap_phi_mux_i_0_phi_fu_247_p4 == 4'd8) ? 1'b1 : 1'b0);

assign or_ln11_1_fu_331_p2 = (tmp_1_reg_442 | 6'd2);

assign or_ln11_2_fu_346_p2 = (tmp_1_reg_442 | 6'd3);

assign or_ln11_fu_315_p2 = (tmp_1_fu_301_p3 | 6'd1);

assign tmp_1_fu_301_p3 = {{ap_phi_mux_i_0_phi_fu_247_p4}, {2'd0}};

assign tmp_2_fu_321_p3 = {{58'd0}, {or_ln11_fu_315_p2}};

assign tmp_3_fu_336_p3 = {{58'd0}, {or_ln11_1_fu_331_p2}};

assign tmp_4_fu_351_p3 = {{58'd0}, {or_ln11_2_fu_346_p2}};

assign zext_ln11_1_fu_309_p1 = tmp_1_fu_301_p3;

assign zext_ln11_fu_377_p1 = i_0_reg_243_pp0_iter1_reg;

always @ (posedge ap_clk) begin
    tmp_1_reg_442[1:0] <= 2'b00;
end

endmodule //matrix_vector
