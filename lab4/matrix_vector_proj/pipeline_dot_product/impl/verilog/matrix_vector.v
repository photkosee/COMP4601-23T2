// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrix_vector,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.663000,HLS_SYN_LAT=67,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=106,HLS_SYN_LUT=283,HLS_VERSION=2020_1}" *)

module matrix_vector (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        M_address0,
        M_ce0,
        M_q0,
        V_In_address0,
        V_In_ce0,
        V_In_q0,
        V_Out_address0,
        V_Out_ce0,
        V_Out_we0,
        V_Out_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] M_address0;
output   M_ce0;
input  [31:0] M_q0;
output  [2:0] V_In_address0;
output   V_In_ce0;
input  [31:0] V_In_q0;
output  [2:0] V_Out_address0;
output   V_Out_ce0;
output   V_Out_we0;
output  [31:0] V_Out_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg M_ce0;
reg V_In_ce0;
reg V_Out_ce0;
reg V_Out_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_93;
reg   [3:0] i_0_reg_104;
reg   [3:0] j_0_reg_115;
reg   [31:0] sum_0_reg_126;
wire   [0:0] icmp_ln7_fu_138_p2;
reg   [0:0] icmp_ln7_reg_243;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln7_reg_243_pp0_iter1_reg;
wire   [6:0] add_ln7_fu_144_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln10_fu_156_p2;
reg   [0:0] icmp_ln10_reg_252;
reg   [0:0] icmp_ln10_reg_252_pp0_iter1_reg;
wire   [3:0] select_ln11_fu_162_p3;
reg   [3:0] select_ln11_reg_257;
wire   [3:0] select_ln11_2_fu_170_p3;
reg   [3:0] select_ln11_2_reg_262;
reg   [3:0] select_ln11_2_reg_262_pp0_iter1_reg;
wire   [3:0] j_fu_205_p2;
reg   [3:0] j_reg_273;
reg  signed [31:0] M_load_reg_284;
wire   [0:0] icmp_ln10_1_fu_215_p2;
reg   [0:0] icmp_ln10_1_reg_289;
wire   [31:0] sum_fu_236_p2;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg   [3:0] ap_phi_mux_i_0_phi_fu_108_p4;
wire    ap_block_pp0_stage0;
reg   [3:0] ap_phi_mux_j_0_phi_fu_119_p4;
wire   [63:0] zext_ln11_3_fu_200_p1;
wire   [63:0] zext_ln11_1_fu_211_p1;
wire   [63:0] zext_ln11_fu_227_p1;
wire   [3:0] i_fu_150_p2;
wire   [6:0] tmp_fu_178_p3;
wire   [7:0] zext_ln11_2_fu_190_p1;
wire   [7:0] zext_ln10_fu_186_p1;
wire   [7:0] add_ln11_fu_194_p2;
wire  signed [31:0] mul_ln11_fu_231_p0;
wire   [31:0] mul_ln11_fu_231_p2;
wire   [31:0] select_ln11_1_fu_220_p3;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_reg_243 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_0_reg_104 <= select_ln11_2_reg_262;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_104 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_fu_138_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_93 <= add_ln7_fu_144_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_93 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_reg_243 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_0_reg_115 <= j_reg_273;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_115 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln7_reg_243_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sum_0_reg_126 <= sum_fu_236_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_0_reg_126 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_reg_243 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_load_reg_284 <= M_q0;
        icmp_ln10_1_reg_289 <= icmp_ln10_1_fu_215_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_fu_138_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln10_reg_252 <= icmp_ln10_fu_156_p2;
        select_ln11_reg_257 <= select_ln11_fu_162_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln10_reg_252_pp0_iter1_reg <= icmp_ln10_reg_252;
        icmp_ln7_reg_243 <= icmp_ln7_fu_138_p2;
        icmp_ln7_reg_243_pp0_iter1_reg <= icmp_ln7_reg_243;
        select_ln11_2_reg_262_pp0_iter1_reg <= select_ln11_2_reg_262;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_fu_138_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_reg_273 <= j_fu_205_p2;
        select_ln11_2_reg_262 <= select_ln11_2_fu_170_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_ce0 = 1'b1;
    end else begin
        M_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        V_In_ce0 = 1'b1;
    end else begin
        V_In_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        V_Out_ce0 = 1'b1;
    end else begin
        V_Out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln10_1_reg_289 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        V_Out_we0 = 1'b1;
    end else begin
        V_Out_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln7_fu_138_p2 == 1'd1)) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln7_reg_243 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_0_phi_fu_108_p4 = select_ln11_2_reg_262;
    end else begin
        ap_phi_mux_i_0_phi_fu_108_p4 = i_0_reg_104;
    end
end

always @ (*) begin
    if (((icmp_ln7_reg_243 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_0_phi_fu_119_p4 = j_reg_273;
    end else begin
        ap_phi_mux_j_0_phi_fu_119_p4 = j_0_reg_115;
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
            if ((~((icmp_ln7_fu_138_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln7_fu_138_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
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

assign M_address0 = zext_ln11_3_fu_200_p1;

assign V_In_address0 = zext_ln11_1_fu_211_p1;

assign V_Out_address0 = zext_ln11_fu_227_p1;

assign V_Out_d0 = (mul_ln11_fu_231_p2 + select_ln11_1_fu_220_p3);

assign add_ln11_fu_194_p2 = (zext_ln11_2_fu_190_p1 + zext_ln10_fu_186_p1);

assign add_ln7_fu_144_p2 = (indvar_flatten_reg_93 + 7'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_fu_150_p2 = (ap_phi_mux_i_0_phi_fu_108_p4 + 4'd1);

assign icmp_ln10_1_fu_215_p2 = ((j_reg_273 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln10_fu_156_p2 = ((ap_phi_mux_j_0_phi_fu_119_p4 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln7_fu_138_p2 = ((indvar_flatten_reg_93 == 7'd64) ? 1'b1 : 1'b0);

assign j_fu_205_p2 = (select_ln11_fu_162_p3 + 4'd1);

assign mul_ln11_fu_231_p0 = V_In_q0;

assign mul_ln11_fu_231_p2 = ($signed(mul_ln11_fu_231_p0) * $signed(M_load_reg_284));

assign select_ln11_1_fu_220_p3 = ((icmp_ln10_reg_252_pp0_iter1_reg[0:0] === 1'b1) ? 32'd0 : sum_0_reg_126);

assign select_ln11_2_fu_170_p3 = ((icmp_ln10_fu_156_p2[0:0] === 1'b1) ? i_fu_150_p2 : ap_phi_mux_i_0_phi_fu_108_p4);

assign select_ln11_fu_162_p3 = ((icmp_ln10_fu_156_p2[0:0] === 1'b1) ? 4'd0 : ap_phi_mux_j_0_phi_fu_119_p4);

assign sum_fu_236_p2 = (mul_ln11_fu_231_p2 + select_ln11_1_fu_220_p3);

assign tmp_fu_178_p3 = {{select_ln11_2_fu_170_p3}, {3'd0}};

assign zext_ln10_fu_186_p1 = tmp_fu_178_p3;

assign zext_ln11_1_fu_211_p1 = select_ln11_reg_257;

assign zext_ln11_2_fu_190_p1 = select_ln11_fu_162_p3;

assign zext_ln11_3_fu_200_p1 = add_ln11_fu_194_p2;

assign zext_ln11_fu_227_p1 = select_ln11_2_reg_262_pp0_iter1_reg;

endmodule //matrix_vector