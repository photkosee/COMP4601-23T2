// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_stage_134 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        X_R_8_V_address0,
        X_R_8_V_ce0,
        X_R_8_V_q0,
        X_R_8_V_address1,
        X_R_8_V_ce1,
        X_R_8_V_q1,
        X_I_8_V_address0,
        X_I_8_V_ce0,
        X_I_8_V_q0,
        X_I_8_V_address1,
        X_I_8_V_ce1,
        X_I_8_V_q1,
        Out_R_9_V_address0,
        Out_R_9_V_ce0,
        Out_R_9_V_we0,
        Out_R_9_V_d0,
        Out_R_9_V_address1,
        Out_R_9_V_ce1,
        Out_R_9_V_we1,
        Out_R_9_V_d1,
        Out_I_9_V_address0,
        Out_I_9_V_ce0,
        Out_I_9_V_we0,
        Out_I_9_V_d0,
        Out_I_9_V_address1,
        Out_I_9_V_ce1,
        Out_I_9_V_we1,
        Out_I_9_V_d1
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] X_R_8_V_address0;
output   X_R_8_V_ce0;
input  [21:0] X_R_8_V_q0;
output  [9:0] X_R_8_V_address1;
output   X_R_8_V_ce1;
input  [21:0] X_R_8_V_q1;
output  [9:0] X_I_8_V_address0;
output   X_I_8_V_ce0;
input  [21:0] X_I_8_V_q0;
output  [9:0] X_I_8_V_address1;
output   X_I_8_V_ce1;
input  [21:0] X_I_8_V_q1;
output  [9:0] Out_R_9_V_address0;
output   Out_R_9_V_ce0;
output   Out_R_9_V_we0;
output  [21:0] Out_R_9_V_d0;
output  [9:0] Out_R_9_V_address1;
output   Out_R_9_V_ce1;
output   Out_R_9_V_we1;
output  [21:0] Out_R_9_V_d1;
output  [9:0] Out_I_9_V_address0;
output   Out_I_9_V_ce0;
output   Out_I_9_V_we0;
output  [21:0] Out_I_9_V_d0;
output  [9:0] Out_I_9_V_address1;
output   Out_I_9_V_ce1;
output   Out_I_9_V_we1;
output  [21:0] Out_I_9_V_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg X_R_8_V_ce0;
reg X_R_8_V_ce1;
reg X_I_8_V_ce0;
reg X_I_8_V_ce1;
reg Out_R_9_V_ce0;
reg Out_R_9_V_we0;
reg Out_R_9_V_ce1;
reg Out_R_9_V_we1;
reg Out_I_9_V_ce0;
reg Out_I_9_V_we0;
reg Out_I_9_V_ce1;
reg Out_I_9_V_we1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] W_real_V61_address0;
reg    W_real_V61_ce0;
wire   [12:0] W_real_V61_q0;
wire   [8:0] W_imag_V53_address0;
reg    W_imag_V53_ce0;
wire   [11:0] W_imag_V53_q0;
reg   [9:0] indvar_flatten_reg_194;
reg   [8:0] j_0_reg_205;
reg   [1:0] t_0_reg_216;
wire   [0:0] icmp_ln47_fu_227_p2;
reg   [0:0] icmp_ln47_reg_420;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln47_reg_420_pp0_iter1_reg;
wire   [9:0] add_ln47_fu_233_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [8:0] select_ln47_fu_289_p3;
reg   [8:0] select_ln47_reg_439;
wire   [9:0] i_fu_301_p3;
reg   [9:0] i_reg_444;
wire   [63:0] zext_ln58_fu_315_p1;
reg   [63:0] zext_ln58_reg_449;
reg   [63:0] zext_ln58_reg_449_pp0_iter1_reg;
wire   [1:0] t_fu_320_p2;
reg   [12:0] W_real_V61_load_reg_466;
reg   [11:0] W_imag_V53_load_reg_471;
reg   [21:0] X_R_8_V_load_reg_476;
reg    ap_enable_reg_pp0_iter1;
wire   [63:0] zext_ln60_fu_326_p1;
reg   [63:0] zext_ln60_reg_486;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg   [8:0] ap_phi_mux_j_0_phi_fu_209_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_283_p1;
wire   [0:0] icmp_ln50_fu_239_p2;
wire   [8:0] add_ln47_1_fu_253_p2;
wire   [7:0] trunc_ln54_fu_259_p1;
wire   [7:0] trunc_ln54_1_fu_263_p1;
wire   [7:0] select_ln54_2_fu_267_p3;
wire   [8:0] select_ln54_1_v_fu_275_p3;
wire   [1:0] select_ln54_fu_245_p3;
wire   [0:0] trunc_ln51_fu_297_p1;
wire   [9:0] i_lower_fu_309_p2;
wire  signed [32:0] grp_fu_396_p3;
wire  signed [32:0] grp_fu_405_p3;
wire   [21:0] temp_R_V_fu_344_p4;
wire   [21:0] temp_I_V_fu_353_p4;
wire  signed [12:0] mul_ln700_fu_390_p0;
wire  signed [32:0] sext_ln54_fu_331_p1;
wire  signed [21:0] mul_ln700_fu_390_p1;
wire  signed [32:0] sext_ln1118_fu_337_p1;
wire  signed [11:0] grp_fu_396_p0;
wire  signed [32:0] sext_ln54_1_fu_334_p1;
wire  signed [21:0] grp_fu_396_p1;
wire  signed [32:0] sext_ln1118_4_fu_340_p1;
wire  signed [32:0] mul_ln700_fu_390_p2;
wire  signed [12:0] grp_fu_405_p0;
wire  signed [21:0] grp_fu_405_p1;
wire  signed [32:0] mul_ln1192_fu_413_p2;
wire  signed [11:0] mul_ln1192_fu_413_p0;
wire  signed [21:0] mul_ln1192_fu_413_p1;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

fft_stage_127_W_rbkb #(
    .DataWidth( 13 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
W_real_V61_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(W_real_V61_address0),
    .ce0(W_real_V61_ce0),
    .q0(W_real_V61_q0)
);

fft_stage_127_W_icud #(
    .DataWidth( 12 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
W_imag_V53_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(W_imag_V53_address0),
    .ce0(W_imag_V53_ce0),
    .q0(W_imag_V53_q0)
);

fft_streaming_muldEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 22 ),
    .dout_WIDTH( 33 ))
fft_streaming_muldEe_U71(
    .din0(mul_ln700_fu_390_p0),
    .din1(mul_ln700_fu_390_p1),
    .dout(mul_ln700_fu_390_p2)
);

fft_streaming_maceOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 22 ),
    .din2_WIDTH( 33 ),
    .dout_WIDTH( 33 ))
fft_streaming_maceOg_U72(
    .din0(grp_fu_396_p0),
    .din1(grp_fu_396_p1),
    .din2(mul_ln700_fu_390_p2),
    .dout(grp_fu_396_p3)
);

fft_streaming_macfYi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 22 ),
    .din2_WIDTH( 33 ),
    .dout_WIDTH( 33 ))
fft_streaming_macfYi_U73(
    .din0(grp_fu_405_p0),
    .din1(grp_fu_405_p1),
    .din2(mul_ln1192_fu_413_p2),
    .dout(grp_fu_405_p3)
);

fft_streaming_mulg8j #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 22 ),
    .dout_WIDTH( 33 ))
fft_streaming_mulg8j_U74(
    .din0(mul_ln1192_fu_413_p0),
    .din1(mul_ln1192_fu_413_p1),
    .dout(mul_ln1192_fu_413_p2)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten_reg_194 <= add_ln47_fu_233_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_194 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_reg_420 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_0_reg_205 <= select_ln47_reg_439;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_205 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        t_0_reg_216 <= t_fu_320_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_0_reg_216 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_reg_420 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_imag_V53_load_reg_471 <= W_imag_V53_q0;
        W_real_V61_load_reg_466 <= W_real_V61_q0;
        zext_ln60_reg_486[9 : 0] <= zext_ln60_fu_326_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_reg_420 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        X_R_8_V_load_reg_476 <= X_R_8_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_444 <= i_fu_301_p3;
        zext_ln58_reg_449[9 : 0] <= zext_ln58_fu_315_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln47_reg_420 <= icmp_ln47_fu_227_p2;
        icmp_ln47_reg_420_pp0_iter1_reg <= icmp_ln47_reg_420;
        zext_ln58_reg_449_pp0_iter1_reg[9 : 0] <= zext_ln58_reg_449[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_fu_227_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        select_ln47_reg_439 <= select_ln47_fu_289_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        Out_I_9_V_ce0 = 1'b1;
    end else begin
        Out_I_9_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        Out_I_9_V_ce1 = 1'b1;
    end else begin
        Out_I_9_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln47_reg_420_pp0_iter1_reg == 1'd0))) begin
        Out_I_9_V_we0 = 1'b1;
    end else begin
        Out_I_9_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln47_reg_420_pp0_iter1_reg == 1'd0))) begin
        Out_I_9_V_we1 = 1'b1;
    end else begin
        Out_I_9_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        Out_R_9_V_ce0 = 1'b1;
    end else begin
        Out_R_9_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        Out_R_9_V_ce1 = 1'b1;
    end else begin
        Out_R_9_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln47_reg_420_pp0_iter1_reg == 1'd0))) begin
        Out_R_9_V_we0 = 1'b1;
    end else begin
        Out_R_9_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln47_reg_420_pp0_iter1_reg == 1'd0))) begin
        Out_R_9_V_we1 = 1'b1;
    end else begin
        Out_R_9_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        W_imag_V53_ce0 = 1'b1;
    end else begin
        W_imag_V53_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        W_real_V61_ce0 = 1'b1;
    end else begin
        W_real_V61_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        X_I_8_V_ce0 = 1'b1;
    end else begin
        X_I_8_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        X_I_8_V_ce1 = 1'b1;
    end else begin
        X_I_8_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        X_R_8_V_ce0 = 1'b1;
    end else begin
        X_R_8_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        X_R_8_V_ce1 = 1'b1;
    end else begin
        X_R_8_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln47_fu_227_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_reg_420 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_0_phi_fu_209_p4 = select_ln47_reg_439;
    end else begin
        ap_phi_mux_j_0_phi_fu_209_p4 = j_0_reg_205;
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
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln47_fu_227_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((icmp_ln47_fu_227_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
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

assign Out_I_9_V_address0 = zext_ln58_reg_449_pp0_iter1_reg;

assign Out_I_9_V_address1 = zext_ln60_reg_486;

assign Out_I_9_V_d0 = (X_I_8_V_q1 - temp_I_V_fu_353_p4);

assign Out_I_9_V_d1 = (temp_I_V_fu_353_p4 + X_I_8_V_q1);

assign Out_R_9_V_address0 = zext_ln58_reg_449_pp0_iter1_reg;

assign Out_R_9_V_address1 = zext_ln60_reg_486;

assign Out_R_9_V_d0 = (X_R_8_V_q1 - temp_R_V_fu_344_p4);

assign Out_R_9_V_d1 = (temp_R_V_fu_344_p4 + X_R_8_V_q1);

assign W_imag_V53_address0 = zext_ln54_fu_283_p1;

assign W_real_V61_address0 = zext_ln54_fu_283_p1;

assign X_I_8_V_address0 = zext_ln58_reg_449;

assign X_I_8_V_address1 = zext_ln60_fu_326_p1;

assign X_R_8_V_address0 = zext_ln58_fu_315_p1;

assign X_R_8_V_address1 = zext_ln60_fu_326_p1;

assign add_ln47_1_fu_253_p2 = (9'd1 + ap_phi_mux_j_0_phi_fu_209_p4);

assign add_ln47_fu_233_p2 = (indvar_flatten_reg_194 + 10'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_fu_396_p0 = sext_ln54_1_fu_334_p1;

assign grp_fu_396_p1 = sext_ln1118_4_fu_340_p1;

assign grp_fu_405_p0 = sext_ln54_fu_331_p1;

assign grp_fu_405_p1 = sext_ln1118_4_fu_340_p1;

assign i_fu_301_p3 = {{trunc_ln51_fu_297_p1}, {select_ln47_fu_289_p3}};

assign i_lower_fu_309_p2 = (10'd256 + i_fu_301_p3);

assign icmp_ln47_fu_227_p2 = ((indvar_flatten_reg_194 == 10'd512) ? 1'b1 : 1'b0);

assign icmp_ln50_fu_239_p2 = ((t_0_reg_216 == 2'd2) ? 1'b1 : 1'b0);

assign mul_ln1192_fu_413_p0 = sext_ln54_1_fu_334_p1;

assign mul_ln1192_fu_413_p1 = sext_ln1118_fu_337_p1;

assign mul_ln700_fu_390_p0 = sext_ln54_fu_331_p1;

assign mul_ln700_fu_390_p1 = sext_ln1118_fu_337_p1;

assign select_ln47_fu_289_p3 = ((icmp_ln50_fu_239_p2[0:0] === 1'b1) ? add_ln47_1_fu_253_p2 : ap_phi_mux_j_0_phi_fu_209_p4);

assign select_ln54_1_v_fu_275_p3 = {{select_ln54_2_fu_267_p3}, {1'd0}};

assign select_ln54_2_fu_267_p3 = ((icmp_ln50_fu_239_p2[0:0] === 1'b1) ? trunc_ln54_fu_259_p1 : trunc_ln54_1_fu_263_p1);

assign select_ln54_fu_245_p3 = ((icmp_ln50_fu_239_p2[0:0] === 1'b1) ? 2'd0 : t_0_reg_216);

assign sext_ln1118_4_fu_340_p1 = $signed(X_I_8_V_q0);

assign sext_ln1118_fu_337_p1 = $signed(X_R_8_V_load_reg_476);

assign sext_ln54_1_fu_334_p1 = $signed(W_imag_V53_load_reg_471);

assign sext_ln54_fu_331_p1 = $signed(W_real_V61_load_reg_466);

assign t_fu_320_p2 = (2'd1 + select_ln54_fu_245_p3);

assign temp_I_V_fu_353_p4 = {{grp_fu_405_p3[32:11]}};

assign temp_R_V_fu_344_p4 = {{grp_fu_396_p3[32:11]}};

assign trunc_ln51_fu_297_p1 = select_ln54_fu_245_p3[0:0];

assign trunc_ln54_1_fu_263_p1 = ap_phi_mux_j_0_phi_fu_209_p4[7:0];

assign trunc_ln54_fu_259_p1 = add_ln47_1_fu_253_p2[7:0];

assign zext_ln54_fu_283_p1 = select_ln54_1_v_fu_275_p3;

assign zext_ln58_fu_315_p1 = i_lower_fu_309_p2;

assign zext_ln60_fu_326_p1 = i_reg_444;

always @ (posedge ap_clk) begin
    zext_ln58_reg_449[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln58_reg_449_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln60_reg_486[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end

endmodule //fft_stage_134
