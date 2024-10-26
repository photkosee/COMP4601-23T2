// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.435000,HLS_SYN_LAT=34,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=127,HLS_SYN_LUT=224,HLS_VERSION=2020_1}" *)

module fir (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y,
        y_ap_vld,
        x
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_pp0_stage0 = 5'd8;
parameter    ap_ST_fsm_state6 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] y;
output   y_ap_vld;
input  [31:0] x;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_ap_vld;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [3:0] shift_reg_address0;
reg    shift_reg_ce0;
reg    shift_reg_we0;
reg   [31:0] shift_reg_d0;
wire   [31:0] shift_reg_q0;
wire   [3:0] c1_address0;
reg    c1_ce0;
wire   [9:0] c1_q0;
reg   [31:0] acc_0_reg_129;
reg   [4:0] i_1_reg_142;
wire   [0:0] icmp_ln17_fu_153_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] i_fu_159_p2;
reg   [3:0] i_reg_220;
wire   [0:0] tmp_1_fu_175_p3;
reg   [0:0] tmp_1_reg_230;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state4_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] i_2_fu_189_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [31:0] acc_fu_205_p2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state4;
reg   [3:0] i_0_reg_117;
wire    ap_CS_fsm_state3;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln18_fu_165_p1;
wire   [63:0] zext_ln18_1_fu_170_p1;
wire   [63:0] zext_ln25_fu_183_p1;
wire    ap_CS_fsm_state6;
wire  signed [31:0] mul_ln25_fu_199_p0;
wire  signed [9:0] mul_ln25_fu_199_p1;
wire   [31:0] mul_ln25_fu_199_p2;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

fir_shift_reg #(
    .DataWidth( 32 ),
    .AddressRange( 11 ),
    .AddressWidth( 4 ))
shift_reg_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(shift_reg_address0),
    .ce0(shift_reg_ce0),
    .we0(shift_reg_we0),
    .d0(shift_reg_d0),
    .q0(shift_reg_q0)
);

fir_c1 #(
    .DataWidth( 10 ),
    .AddressRange( 11 ),
    .AddressWidth( 4 ))
c1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(c1_address0),
    .ce0(c1_ce0),
    .q0(c1_q0)
);

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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln17_fu_153_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state4);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((icmp_ln17_fu_153_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_reg_230 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        acc_0_reg_129 <= acc_fu_205_p2;
    end else if (((icmp_ln17_fu_153_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        acc_0_reg_129 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_reg_117 <= i_reg_220;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_117 <= 4'd10;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_175_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_142 <= i_2_fu_189_p2;
    end else if (((icmp_ln17_fu_153_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_1_reg_142 <= 5'd10;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln17_fu_153_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_220 <= i_fu_159_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_230 <= i_1_reg_142[32'd4];
    end
end

always @ (*) begin
    if ((tmp_1_fu_175_p3 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state4 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c1_ce0 = 1'b1;
    end else begin
        c1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        shift_reg_address0 = zext_ln25_fu_183_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        shift_reg_address0 = zext_ln18_1_fu_170_p1;
    end else if (((icmp_ln17_fu_153_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        shift_reg_address0 = 4'd0;
    end else if (((icmp_ln17_fu_153_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        shift_reg_address0 = zext_ln18_fu_165_p1;
    end else begin
        shift_reg_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln17_fu_153_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln17_fu_153_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        shift_reg_ce0 = 1'b1;
    end else begin
        shift_reg_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        shift_reg_d0 = shift_reg_q0;
    end else if (((icmp_ln17_fu_153_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        shift_reg_d0 = x;
    end else begin
        shift_reg_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln17_fu_153_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        shift_reg_we0 = 1'b1;
    end else begin
        shift_reg_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        y_ap_vld = 1'b1;
    end else begin
        y_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln17_fu_153_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((tmp_1_fu_175_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((tmp_1_fu_175_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
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

assign acc_fu_205_p2 = (mul_ln25_fu_199_p2 + acc_0_reg_129);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign c1_address0 = zext_ln25_fu_183_p1;

assign i_2_fu_189_p2 = ($signed(i_1_reg_142) + $signed(5'd31));

assign i_fu_159_p2 = ($signed(i_0_reg_117) + $signed(4'd15));

assign icmp_ln17_fu_153_p2 = ((i_0_reg_117 == 4'd0) ? 1'b1 : 1'b0);

assign mul_ln25_fu_199_p0 = shift_reg_q0;

assign mul_ln25_fu_199_p1 = c1_q0;

assign mul_ln25_fu_199_p2 = ($signed(mul_ln25_fu_199_p0) * $signed(mul_ln25_fu_199_p1));

assign tmp_1_fu_175_p3 = i_1_reg_142[32'd4];

assign y = acc_0_reg_129;

assign zext_ln18_1_fu_170_p1 = i_0_reg_117;

assign zext_ln18_fu_165_p1 = i_fu_159_p2;

assign zext_ln25_fu_183_p1 = i_1_reg_142;

endmodule //fir
