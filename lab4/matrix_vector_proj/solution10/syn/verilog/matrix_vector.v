// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrix_vector,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.762000,HLS_SYN_LAT=18,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=24,HLS_SYN_FF=339,HLS_SYN_LUT=484,HLS_VERSION=2020_1}" *)

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
        M_1_address0,
        M_1_ce0,
        M_1_q0,
        M_2_address0,
        M_2_ce0,
        M_2_q0,
        M_3_address0,
        M_3_ce0,
        M_3_q0,
        M_4_address0,
        M_4_ce0,
        M_4_q0,
        M_5_address0,
        M_5_ce0,
        M_5_q0,
        M_6_address0,
        M_6_ce0,
        M_6_q0,
        M_7_address0,
        M_7_ce0,
        M_7_q0,
        V_In_0,
        V_In_1,
        V_In_2,
        V_In_3,
        V_In_4,
        V_In_5,
        V_In_6,
        V_In_7,
        V_Out_address0,
        V_Out_ce0,
        V_Out_we0,
        V_Out_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_pp0_stage0 = 4'd2;
parameter    ap_ST_fsm_pp0_stage1 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] M_0_address0;
output   M_0_ce0;
input  [31:0] M_0_q0;
output  [2:0] M_1_address0;
output   M_1_ce0;
input  [31:0] M_1_q0;
output  [2:0] M_2_address0;
output   M_2_ce0;
input  [31:0] M_2_q0;
output  [2:0] M_3_address0;
output   M_3_ce0;
input  [31:0] M_3_q0;
output  [2:0] M_4_address0;
output   M_4_ce0;
input  [31:0] M_4_q0;
output  [2:0] M_5_address0;
output   M_5_ce0;
input  [31:0] M_5_q0;
output  [2:0] M_6_address0;
output   M_6_ce0;
input  [31:0] M_6_q0;
output  [2:0] M_7_address0;
output   M_7_ce0;
input  [31:0] M_7_q0;
input  [31:0] V_In_0;
input  [31:0] V_In_1;
input  [31:0] V_In_2;
input  [31:0] V_In_3;
input  [31:0] V_In_4;
input  [31:0] V_In_5;
input  [31:0] V_In_6;
input  [31:0] V_In_7;
output  [2:0] V_Out_address0;
output   V_Out_ce0;
output   V_Out_we0;
output  [31:0] V_Out_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg M_0_ce0;
reg M_1_ce0;
reg M_2_ce0;
reg M_3_ce0;
reg M_4_ce0;
reg M_5_ce0;
reg M_6_ce0;
reg M_7_ce0;
reg V_Out_ce0;
reg V_Out_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [3:0] i_0_reg_237;
wire   [0:0] icmp_ln7_fu_248_p2;
reg   [0:0] icmp_ln7_reg_353;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] i_fu_254_p2;
reg   [3:0] i_reg_357;
reg    ap_enable_reg_pp0_iter0;
wire   [63:0] zext_ln11_fu_260_p1;
reg   [63:0] zext_ln11_reg_362;
reg  signed [31:0] V_In_2_read_reg_407;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
reg  signed [31:0] M_2_load_reg_412;
reg  signed [31:0] V_In_3_read_reg_417;
reg  signed [31:0] M_3_load_reg_422;
reg  signed [31:0] V_In_4_read_reg_427;
reg  signed [31:0] M_4_load_reg_432;
reg  signed [31:0] V_In_5_read_reg_437;
reg  signed [31:0] M_5_load_reg_442;
wire   [31:0] add_ln11_fu_296_p2;
reg   [31:0] add_ln11_reg_447;
wire   [31:0] add_ln11_4_fu_302_p2;
reg   [31:0] add_ln11_4_reg_452;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [3:0] ap_phi_mux_i_0_phi_fu_241_p4;
wire    ap_block_pp0_stage0;
wire  signed [31:0] mul_ln11_fu_272_p0;
wire  signed [31:0] mul_ln11_fu_272_p1;
wire    ap_block_pp0_stage1;
wire  signed [31:0] mul_ln11_1_fu_278_p0;
wire  signed [31:0] mul_ln11_1_fu_278_p1;
wire  signed [31:0] mul_ln11_6_fu_284_p0;
wire  signed [31:0] mul_ln11_6_fu_284_p1;
wire  signed [31:0] mul_ln11_7_fu_290_p0;
wire  signed [31:0] mul_ln11_7_fu_290_p1;
wire   [31:0] mul_ln11_fu_272_p2;
wire   [31:0] mul_ln11_1_fu_278_p2;
wire   [31:0] mul_ln11_6_fu_284_p2;
wire   [31:0] mul_ln11_7_fu_290_p2;
wire   [31:0] mul_ln11_2_fu_308_p2;
wire   [31:0] mul_ln11_3_fu_312_p2;
wire   [31:0] add_ln11_1_fu_324_p2;
wire   [31:0] mul_ln11_4_fu_316_p2;
wire   [31:0] mul_ln11_5_fu_320_p2;
wire   [31:0] add_ln11_3_fu_335_p2;
wire   [31:0] add_ln11_5_fu_341_p2;
wire   [31:0] add_ln11_2_fu_330_p2;
wire    ap_CS_fsm_state5;
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
        if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_reg_353 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_0_reg_237 <= i_reg_357;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_237 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln7_reg_353 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        M_2_load_reg_412 <= M_2_q0;
        M_3_load_reg_422 <= M_3_q0;
        M_4_load_reg_432 <= M_4_q0;
        M_5_load_reg_442 <= M_5_q0;
        V_In_2_read_reg_407 <= V_In_2;
        V_In_3_read_reg_417 <= V_In_3;
        V_In_4_read_reg_427 <= V_In_4;
        V_In_5_read_reg_437 <= V_In_5;
        add_ln11_4_reg_452 <= add_ln11_4_fu_302_p2;
        add_ln11_reg_447 <= add_ln11_fu_296_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_reg_357 <= i_fu_254_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7_reg_353 <= icmp_ln7_fu_248_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_fu_248_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln11_reg_362[3 : 0] <= zext_ln11_fu_260_p1[3 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        M_0_ce0 = 1'b1;
    end else begin
        M_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        M_1_ce0 = 1'b1;
    end else begin
        M_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        M_2_ce0 = 1'b1;
    end else begin
        M_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        M_3_ce0 = 1'b1;
    end else begin
        M_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        M_4_ce0 = 1'b1;
    end else begin
        M_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        M_5_ce0 = 1'b1;
    end else begin
        M_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        M_6_ce0 = 1'b1;
    end else begin
        M_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        M_7_ce0 = 1'b1;
    end else begin
        M_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        V_Out_ce0 = 1'b1;
    end else begin
        V_Out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_reg_353 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        V_Out_we0 = 1'b1;
    end else begin
        V_Out_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln7_fu_248_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln7_reg_353 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_0_phi_fu_241_p4 = i_reg_357;
    end else begin
        ap_phi_mux_i_0_phi_fu_241_p4 = i_0_reg_237;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
            if ((~((icmp_ln7_fu_248_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln7_fu_248_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign M_0_address0 = zext_ln11_fu_260_p1;

assign M_1_address0 = zext_ln11_fu_260_p1;

assign M_2_address0 = zext_ln11_fu_260_p1;

assign M_3_address0 = zext_ln11_fu_260_p1;

assign M_4_address0 = zext_ln11_fu_260_p1;

assign M_5_address0 = zext_ln11_fu_260_p1;

assign M_6_address0 = zext_ln11_fu_260_p1;

assign M_7_address0 = zext_ln11_fu_260_p1;

assign V_Out_address0 = zext_ln11_reg_362;

assign V_Out_d0 = (add_ln11_5_fu_341_p2 + add_ln11_2_fu_330_p2);

assign add_ln11_1_fu_324_p2 = (mul_ln11_2_fu_308_p2 + mul_ln11_3_fu_312_p2);

assign add_ln11_2_fu_330_p2 = (add_ln11_1_fu_324_p2 + add_ln11_reg_447);

assign add_ln11_3_fu_335_p2 = (mul_ln11_4_fu_316_p2 + mul_ln11_5_fu_320_p2);

assign add_ln11_4_fu_302_p2 = (mul_ln11_6_fu_284_p2 + mul_ln11_7_fu_290_p2);

assign add_ln11_5_fu_341_p2 = (add_ln11_4_reg_452 + add_ln11_3_fu_335_p2);

assign add_ln11_fu_296_p2 = (mul_ln11_fu_272_p2 + mul_ln11_1_fu_278_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_fu_254_p2 = (ap_phi_mux_i_0_phi_fu_241_p4 + 4'd1);

assign icmp_ln7_fu_248_p2 = ((ap_phi_mux_i_0_phi_fu_241_p4 == 4'd8) ? 1'b1 : 1'b0);

assign mul_ln11_1_fu_278_p0 = V_In_1;

assign mul_ln11_1_fu_278_p1 = M_1_q0;

assign mul_ln11_1_fu_278_p2 = ($signed(mul_ln11_1_fu_278_p0) * $signed(mul_ln11_1_fu_278_p1));

assign mul_ln11_2_fu_308_p2 = ($signed(V_In_2_read_reg_407) * $signed(M_2_load_reg_412));

assign mul_ln11_3_fu_312_p2 = ($signed(V_In_3_read_reg_417) * $signed(M_3_load_reg_422));

assign mul_ln11_4_fu_316_p2 = ($signed(V_In_4_read_reg_427) * $signed(M_4_load_reg_432));

assign mul_ln11_5_fu_320_p2 = ($signed(V_In_5_read_reg_437) * $signed(M_5_load_reg_442));

assign mul_ln11_6_fu_284_p0 = V_In_6;

assign mul_ln11_6_fu_284_p1 = M_6_q0;

assign mul_ln11_6_fu_284_p2 = ($signed(mul_ln11_6_fu_284_p0) * $signed(mul_ln11_6_fu_284_p1));

assign mul_ln11_7_fu_290_p0 = V_In_7;

assign mul_ln11_7_fu_290_p1 = M_7_q0;

assign mul_ln11_7_fu_290_p2 = ($signed(mul_ln11_7_fu_290_p0) * $signed(mul_ln11_7_fu_290_p1));

assign mul_ln11_fu_272_p0 = V_In_0;

assign mul_ln11_fu_272_p1 = M_0_q0;

assign mul_ln11_fu_272_p2 = ($signed(mul_ln11_fu_272_p0) * $signed(mul_ln11_fu_272_p1));

assign zext_ln11_fu_260_p1 = ap_phi_mux_i_0_phi_fu_241_p4;

always @ (posedge ap_clk) begin
    zext_ln11_reg_362[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //matrix_vector