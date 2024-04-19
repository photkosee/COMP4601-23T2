// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_stage81 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        X_R_V_address0,
        X_R_V_ce0,
        X_R_V_q0,
        X_R_V_address1,
        X_R_V_ce1,
        X_R_V_q1,
        X_I_V_address0,
        X_I_V_ce0,
        X_I_V_q0,
        X_I_V_address1,
        X_I_V_ce1,
        X_I_V_q1,
        Out_R_V_address0,
        Out_R_V_ce0,
        Out_R_V_we0,
        Out_R_V_d0,
        Out_R_V_address1,
        Out_R_V_ce1,
        Out_R_V_we1,
        Out_R_V_d1,
        Out_I_V_address0,
        Out_I_V_ce0,
        Out_I_V_we0,
        Out_I_V_d0,
        Out_I_V_address1,
        Out_I_V_ce1,
        Out_I_V_we1,
        Out_I_V_d1
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_pp0_stage0 = 7'd32;
parameter    ap_ST_fsm_state8 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] X_R_V_address0;
output   X_R_V_ce0;
input  [21:0] X_R_V_q0;
output  [9:0] X_R_V_address1;
output   X_R_V_ce1;
input  [21:0] X_R_V_q1;
output  [9:0] X_I_V_address0;
output   X_I_V_ce0;
input  [21:0] X_I_V_q0;
output  [9:0] X_I_V_address1;
output   X_I_V_ce1;
input  [21:0] X_I_V_q1;
output  [9:0] Out_R_V_address0;
output   Out_R_V_ce0;
output   Out_R_V_we0;
output  [21:0] Out_R_V_d0;
output  [9:0] Out_R_V_address1;
output   Out_R_V_ce1;
output   Out_R_V_we1;
output  [21:0] Out_R_V_d1;
output  [9:0] Out_I_V_address0;
output   Out_I_V_ce0;
output   Out_I_V_we0;
output  [21:0] Out_I_V_d0;
output  [9:0] Out_I_V_address1;
output   Out_I_V_ce1;
output   Out_I_V_we1;
output  [21:0] Out_I_V_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg X_R_V_ce0;
reg X_R_V_ce1;
reg X_I_V_ce0;
reg X_I_V_ce1;
reg Out_R_V_ce0;
reg Out_R_V_we0;
reg Out_R_V_ce1;
reg Out_R_V_we1;
reg Out_I_V_ce0;
reg Out_I_V_we0;
reg Out_I_V_ce1;
reg Out_I_V_we1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [10:0] i_0_reg_276;
wire   [63:0] select_ln885_fu_613_p3;
reg   [63:0] select_ln885_reg_1317;
wire    ap_CS_fsm_state2;
wire   [0:0] ap_phi_mux_i_phi_fu_268_p4;
wire   [13:0] a_V_fu_621_p2;
reg   [13:0] a_V_reg_1323;
wire   [63:0] grp_sin_or_cos_double_s_fu_287_ap_return;
reg   [63:0] v_assign_reg_1328;
wire    ap_CS_fsm_state4;
wire    grp_sin_or_cos_double_s_fu_287_ap_ready;
wire    grp_sin_or_cos_double_s_fu_287_ap_done;
wire    grp_sin_or_cos_double_s_fu_306_ap_ready;
wire    grp_sin_or_cos_double_s_fu_306_ap_done;
reg    ap_block_state4_on_subcall_done;
wire   [63:0] grp_sin_or_cos_double_s_fu_306_ap_return;
reg   [63:0] v_assign_s_reg_1333;
wire  signed [32:0] sext_ln1118_fu_1185_p1;
reg  signed [32:0] sext_ln1118_reg_1338;
wire    ap_CS_fsm_state5;
wire  signed [32:0] sext_ln1118_28_fu_1189_p1;
reg  signed [32:0] sext_ln1118_28_reg_1344;
wire   [0:0] tmp_80_fu_1197_p3;
reg   [0:0] tmp_80_reg_1350;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state6_pp0_stage0_iter0;
wire    ap_block_state7_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln55_fu_1211_p1;
reg   [63:0] zext_ln55_reg_1354;
wire   [63:0] zext_ln57_fu_1217_p1;
reg   [63:0] zext_ln57_reg_1370;
wire   [10:0] i_12_fu_1223_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state6;
reg    ap_enable_reg_pp0_iter1;
wire    grp_sin_or_cos_double_s_fu_287_ap_start;
wire    grp_sin_or_cos_double_s_fu_287_ap_idle;
wire    grp_sin_or_cos_double_s_fu_287_do_cos;
wire    grp_sin_or_cos_double_s_fu_306_ap_start;
wire    grp_sin_or_cos_double_s_fu_306_ap_idle;
wire    grp_sin_or_cos_double_s_fu_306_do_cos;
reg  signed [13:0] tmp_V_reg_252;
reg    ap_block_state1;
wire    ap_CS_fsm_state8;
reg   [0:0] i_reg_263;
reg    grp_sin_or_cos_double_s_fu_287_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_sin_or_cos_double_s_fu_306_ap_start_reg;
wire    ap_block_pp0_stage0;
wire  signed [21:0] sext_ln891_fu_325_p1;
reg   [21:0] p_Result_s_fu_335_p4;
wire   [31:0] p_Result_159_fu_345_p3;
reg   [31:0] l_fu_353_p3;
wire   [31:0] sub_ln894_fu_361_p2;
wire   [31:0] lsb_index_fu_371_p2;
wire   [30:0] tmp_fu_377_p4;
wire   [4:0] trunc_ln897_fu_393_p1;
wire   [4:0] sub_ln897_fu_397_p2;
wire   [21:0] zext_ln897_fu_403_p1;
wire   [21:0] lshr_ln897_fu_407_p2;
wire   [21:0] p_Result_152_fu_413_p2;
wire   [0:0] icmp_ln897_fu_387_p2;
wire   [0:0] icmp_ln897_1_fu_419_p2;
wire   [0:0] tmp_74_fu_431_p3;
wire   [21:0] trunc_ln894_fu_367_p1;
wire   [21:0] add_ln899_fu_445_p2;
wire   [0:0] p_Result_153_fu_451_p3;
wire   [0:0] xor_ln899_fu_439_p2;
wire   [0:0] and_ln899_fu_459_p2;
wire   [0:0] a_fu_425_p2;
wire   [0:0] or_ln899_fu_465_p2;
wire   [31:0] zext_ln907_10_fu_483_p1;
wire   [31:0] add_ln908_fu_493_p2;
wire   [31:0] lshr_ln908_fu_499_p2;
wire   [31:0] sub_ln908_fu_509_p2;
wire   [63:0] m_fu_479_p1;
wire   [63:0] zext_ln908_1_fu_515_p1;
wire   [0:0] icmp_ln908_fu_487_p2;
wire   [63:0] zext_ln908_fu_505_p1;
wire   [63:0] shl_ln908_fu_519_p2;
wire   [31:0] or_ln_fu_471_p3;
wire   [63:0] zext_ln911_fu_533_p1;
wire   [63:0] m_47_fu_525_p3;
wire   [63:0] m_48_fu_537_p2;
wire   [62:0] m_s_fu_543_p4;
wire   [0:0] tmp_75_fu_557_p3;
wire   [10:0] trunc_ln893_fu_573_p1;
wire   [10:0] sub_ln915_fu_577_p2;
wire   [10:0] select_ln915_fu_565_p3;
wire   [10:0] add_ln915_fu_583_p2;
wire   [63:0] m_51_fu_553_p1;
wire   [11:0] tmp_12_fu_589_p3;
wire   [63:0] p_Result_160_fu_597_p5;
wire   [0:0] icmp_ln885_fu_329_p2;
wire   [63:0] bitcast_ln729_fu_609_p1;
wire   [63:0] ireg_V_fu_627_p1;
wire   [10:0] exp_tmp_V_fu_642_p4;
wire   [51:0] trunc_ln565_fu_656_p1;
wire   [52:0] tmp_13_fu_660_p3;
wire   [53:0] p_Result_162_fu_668_p1;
wire   [0:0] p_Result_161_fu_634_p3;
wire   [53:0] man_V_46_fu_672_p2;
wire   [62:0] trunc_ln556_fu_630_p1;
wire   [11:0] zext_ln461_1_fu_652_p1;
wire   [11:0] F2_fu_692_p2;
wire   [0:0] icmp_ln581_1_fu_698_p2;
wire   [11:0] add_ln581_1_fu_704_p2;
wire   [11:0] sub_ln581_1_fu_710_p2;
wire  signed [11:0] sh_amt_fu_716_p3;
wire   [53:0] man_V_47_fu_678_p3;
wire  signed [31:0] sext_ln581_fu_724_p1;
wire   [53:0] zext_ln586_1_fu_754_p1;
wire   [53:0] ashr_ln586_1_fu_758_p2;
wire   [0:0] tmp_77_fu_768_p3;
wire   [21:0] trunc_ln583_fu_738_p1;
wire  signed [21:0] sext_ln581_28_fu_728_p1;
wire   [0:0] icmp_ln571_1_fu_686_p2;
wire   [0:0] icmp_ln582_1_fu_732_p2;
wire   [0:0] xor_ln571_fu_790_p2;
wire   [0:0] or_ln582_fu_802_p2;
wire   [0:0] xor_ln582_fu_808_p2;
wire   [0:0] icmp_ln585_1_fu_742_p2;
wire   [0:0] and_ln581_fu_814_p2;
wire   [0:0] xor_ln585_fu_820_p2;
wire   [0:0] or_ln581_fu_838_p2;
wire   [0:0] icmp_ln603_1_fu_748_p2;
wire   [0:0] xor_ln581_fu_844_p2;
wire   [0:0] and_ln603_fu_850_p2;
wire   [21:0] shl_ln604_1_fu_784_p2;
wire   [21:0] trunc_ln586_fu_764_p1;
wire   [0:0] and_ln585_28_fu_832_p2;
wire   [0:0] and_ln585_fu_826_p2;
wire   [21:0] select_ln588_fu_776_p3;
wire   [0:0] and_ln582_fu_796_p2;
wire   [0:0] or_ln603_fu_864_p2;
wire   [21:0] select_ln603_fu_856_p3;
wire   [21:0] select_ln603_64_fu_870_p3;
wire   [0:0] or_ln603_46_fu_878_p2;
wire   [0:0] or_ln603_47_fu_892_p2;
wire   [21:0] select_ln603_65_fu_884_p3;
wire   [63:0] ireg_V_10_fu_906_p1;
wire   [10:0] exp_tmp_V_10_fu_921_p4;
wire   [51:0] trunc_ln565_10_fu_935_p1;
wire   [52:0] tmp_14_fu_939_p3;
wire   [53:0] p_Result_164_fu_947_p1;
wire   [0:0] p_Result_163_fu_913_p3;
wire   [53:0] man_V_49_fu_951_p2;
wire   [62:0] trunc_ln556_10_fu_909_p1;
wire   [11:0] zext_ln461_fu_931_p1;
wire   [11:0] F2_10_fu_971_p2;
wire   [0:0] icmp_ln581_fu_977_p2;
wire   [11:0] add_ln581_fu_983_p2;
wire   [11:0] sub_ln581_fu_989_p2;
wire  signed [11:0] sh_amt_10_fu_995_p3;
wire   [53:0] man_V_50_fu_957_p3;
wire  signed [31:0] sext_ln581_29_fu_1003_p1;
wire   [53:0] zext_ln586_fu_1033_p1;
wire   [53:0] ashr_ln586_fu_1037_p2;
wire   [0:0] tmp_79_fu_1047_p3;
wire   [21:0] trunc_ln583_10_fu_1017_p1;
wire  signed [21:0] sext_ln581_30_fu_1007_p1;
wire   [0:0] icmp_ln571_fu_965_p2;
wire   [0:0] icmp_ln582_fu_1011_p2;
wire   [0:0] xor_ln571_10_fu_1069_p2;
wire   [0:0] or_ln582_10_fu_1081_p2;
wire   [0:0] xor_ln582_10_fu_1087_p2;
wire   [0:0] icmp_ln585_fu_1021_p2;
wire   [0:0] and_ln581_10_fu_1093_p2;
wire   [0:0] xor_ln585_10_fu_1099_p2;
wire   [0:0] or_ln581_10_fu_1117_p2;
wire   [0:0] icmp_ln603_fu_1027_p2;
wire   [0:0] xor_ln581_10_fu_1123_p2;
wire   [0:0] and_ln603_10_fu_1129_p2;
wire   [21:0] shl_ln604_fu_1063_p2;
wire   [21:0] trunc_ln586_10_fu_1043_p1;
wire   [0:0] and_ln585_30_fu_1111_p2;
wire   [0:0] and_ln585_29_fu_1105_p2;
wire   [21:0] select_ln588_10_fu_1055_p3;
wire   [0:0] and_ln582_10_fu_1075_p2;
wire   [0:0] or_ln603_48_fu_1143_p2;
wire   [21:0] select_ln603_67_fu_1135_p3;
wire   [21:0] select_ln603_68_fu_1149_p3;
wire   [0:0] or_ln603_49_fu_1157_p2;
wire   [0:0] or_ln603_50_fu_1171_p2;
wire   [21:0] select_ln603_69_fu_1163_p3;
wire   [21:0] c_V_fu_898_p3;
wire   [21:0] s_V_fu_1177_p3;
wire   [9:0] trunc_ln53_fu_1193_p1;
wire   [9:0] i_lower_fu_1205_p2;
wire  signed [21:0] mul_ln700_fu_1237_p0;
wire  signed [32:0] sext_ln1118_29_fu_1229_p1;
wire  signed [21:0] mul_ln700_fu_1237_p1;
wire  signed [21:0] mul_ln1193_fu_1242_p0;
wire  signed [32:0] sext_ln1118_30_fu_1233_p1;
wire  signed [21:0] mul_ln1193_fu_1242_p1;
wire   [32:0] mul_ln700_fu_1237_p2;
wire   [32:0] mul_ln1193_fu_1242_p2;
wire   [32:0] ret_V_fu_1247_p2;
wire  signed [21:0] mul_ln700_10_fu_1263_p0;
wire  signed [21:0] mul_ln700_10_fu_1263_p1;
wire  signed [21:0] mul_ln1192_fu_1268_p0;
wire  signed [21:0] mul_ln1192_fu_1268_p1;
wire   [32:0] mul_ln700_10_fu_1263_p2;
wire   [32:0] mul_ln1192_fu_1268_p2;
wire   [32:0] ret_V_22_fu_1273_p2;
wire   [21:0] temp_R_V_fu_1253_p4;
wire   [21:0] temp_I_V_fu_1279_p4;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_sin_or_cos_double_s_fu_287_ap_start_reg = 1'b0;
#0 grp_sin_or_cos_double_s_fu_306_ap_start_reg = 1'b0;
end

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_287(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_287_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_287_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_287_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_287_ap_ready),
    .t_in(select_ln885_reg_1317),
    .do_cos(grp_sin_or_cos_double_s_fu_287_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_287_ap_return)
);

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_306(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_306_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_306_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_306_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_306_ap_ready),
    .t_in(select_ln885_reg_1317),
    .do_cos(grp_sin_or_cos_double_s_fu_306_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_306_ap_return)
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
        end else if (((ap_phi_mux_i_phi_fu_268_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state6) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state6) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state6);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_287_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_sin_or_cos_double_s_fu_287_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_287_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_287_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_306_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_sin_or_cos_double_s_fu_306_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_306_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_306_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_80_fu_1197_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_reg_276 <= i_12_fu_1223_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_reg_276 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_263 <= 1'd1;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_263 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_V_reg_252 <= a_V_reg_1323;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_reg_252 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_i_phi_fu_268_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        a_V_reg_1323 <= a_V_fu_621_p2;
        select_ln885_reg_1317 <= select_ln885_fu_613_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sext_ln1118_28_reg_1344 <= sext_ln1118_28_fu_1189_p1;
        sext_ln1118_reg_1338 <= sext_ln1118_fu_1185_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_80_reg_1350 <= i_0_reg_276[32'd10];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
        v_assign_reg_1328 <= grp_sin_or_cos_double_s_fu_287_ap_return;
        v_assign_s_reg_1333 <= grp_sin_or_cos_double_s_fu_306_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_80_fu_1197_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        zext_ln55_reg_1354[9 : 1] <= zext_ln55_fu_1211_p1[9 : 1];
        zext_ln57_reg_1370[10 : 0] <= zext_ln57_fu_1217_p1[10 : 0];
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_I_V_ce0 = 1'b1;
    end else begin
        Out_I_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_I_V_ce1 = 1'b1;
    end else begin
        Out_I_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_80_reg_1350 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_I_V_we0 = 1'b1;
    end else begin
        Out_I_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_80_reg_1350 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_I_V_we1 = 1'b1;
    end else begin
        Out_I_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_R_V_ce0 = 1'b1;
    end else begin
        Out_R_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_R_V_ce1 = 1'b1;
    end else begin
        Out_R_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_80_reg_1350 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_R_V_we0 = 1'b1;
    end else begin
        Out_R_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_80_reg_1350 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_R_V_we1 = 1'b1;
    end else begin
        Out_R_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        X_I_V_ce0 = 1'b1;
    end else begin
        X_I_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        X_I_V_ce1 = 1'b1;
    end else begin
        X_I_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        X_R_V_ce0 = 1'b1;
    end else begin
        X_R_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        X_R_V_ce1 = 1'b1;
    end else begin
        X_R_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((tmp_80_fu_1197_p3 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_phi_mux_i_phi_fu_268_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_phi_mux_i_phi_fu_268_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((ap_phi_mux_i_phi_fu_268_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_80_fu_1197_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_80_fu_1197_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign F2_10_fu_971_p2 = (12'd1075 - zext_ln461_fu_931_p1);

assign F2_fu_692_p2 = (12'd1075 - zext_ln461_1_fu_652_p1);

assign Out_I_V_address0 = zext_ln55_reg_1354;

assign Out_I_V_address1 = zext_ln57_reg_1370;

assign Out_I_V_d0 = (X_I_V_q1 - temp_I_V_fu_1279_p4);

assign Out_I_V_d1 = (temp_I_V_fu_1279_p4 + X_I_V_q1);

assign Out_R_V_address0 = zext_ln55_reg_1354;

assign Out_R_V_address1 = zext_ln57_reg_1370;

assign Out_R_V_d0 = (X_R_V_q1 - temp_R_V_fu_1253_p4);

assign Out_R_V_d1 = (temp_R_V_fu_1253_p4 + X_R_V_q1);

assign X_I_V_address0 = zext_ln55_fu_1211_p1;

assign X_I_V_address1 = zext_ln57_fu_1217_p1;

assign X_R_V_address0 = zext_ln55_fu_1211_p1;

assign X_R_V_address1 = zext_ln57_fu_1217_p1;

assign a_V_fu_621_p2 = ($signed(14'd9950) + $signed(tmp_V_reg_252));

assign a_fu_425_p2 = (icmp_ln897_fu_387_p2 & icmp_ln897_1_fu_419_p2);

assign add_ln581_1_fu_704_p2 = ($signed(12'd4085) + $signed(F2_fu_692_p2));

assign add_ln581_fu_983_p2 = ($signed(12'd4085) + $signed(F2_10_fu_971_p2));

assign add_ln899_fu_445_p2 = ($signed(22'd4194251) + $signed(trunc_ln894_fu_367_p1));

assign add_ln908_fu_493_p2 = ($signed(32'd4294967242) + $signed(sub_ln894_fu_361_p2));

assign add_ln915_fu_583_p2 = (sub_ln915_fu_577_p2 + select_ln915_fu_565_p3);

assign and_ln581_10_fu_1093_p2 = (xor_ln582_10_fu_1087_p2 & icmp_ln581_fu_977_p2);

assign and_ln581_fu_814_p2 = (xor_ln582_fu_808_p2 & icmp_ln581_1_fu_698_p2);

assign and_ln582_10_fu_1075_p2 = (xor_ln571_10_fu_1069_p2 & icmp_ln582_fu_1011_p2);

assign and_ln582_fu_796_p2 = (xor_ln571_fu_790_p2 & icmp_ln582_1_fu_732_p2);

assign and_ln585_28_fu_832_p2 = (icmp_ln585_1_fu_742_p2 & and_ln581_fu_814_p2);

assign and_ln585_29_fu_1105_p2 = (xor_ln585_10_fu_1099_p2 & and_ln581_10_fu_1093_p2);

assign and_ln585_30_fu_1111_p2 = (icmp_ln585_fu_1021_p2 & and_ln581_10_fu_1093_p2);

assign and_ln585_fu_826_p2 = (xor_ln585_fu_820_p2 & and_ln581_fu_814_p2);

assign and_ln603_10_fu_1129_p2 = (xor_ln581_10_fu_1123_p2 & icmp_ln603_fu_1027_p2);

assign and_ln603_fu_850_p2 = (xor_ln581_fu_844_p2 & icmp_ln603_1_fu_748_p2);

assign and_ln899_fu_459_p2 = (xor_ln899_fu_439_p2 & p_Result_153_fu_451_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state4_on_subcall_done = ((grp_sin_or_cos_double_s_fu_306_ap_done == 1'b0) | (grp_sin_or_cos_double_s_fu_287_ap_done == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_mux_i_phi_fu_268_p4 = i_reg_263;

assign ashr_ln586_1_fu_758_p2 = $signed(man_V_47_fu_678_p3) >>> zext_ln586_1_fu_754_p1;

assign ashr_ln586_fu_1037_p2 = $signed(man_V_50_fu_957_p3) >>> zext_ln586_fu_1033_p1;

assign bitcast_ln729_fu_609_p1 = p_Result_160_fu_597_p5;

assign c_V_fu_898_p3 = ((or_ln603_47_fu_892_p2[0:0] === 1'b1) ? select_ln603_65_fu_884_p3 : 22'd0);

assign exp_tmp_V_10_fu_921_p4 = {{ireg_V_10_fu_906_p1[62:52]}};

assign exp_tmp_V_fu_642_p4 = {{ireg_V_fu_627_p1[62:52]}};

assign grp_sin_or_cos_double_s_fu_287_ap_start = grp_sin_or_cos_double_s_fu_287_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_287_do_cos = 1'd1;

assign grp_sin_or_cos_double_s_fu_306_ap_start = grp_sin_or_cos_double_s_fu_306_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_306_do_cos = 1'd0;

assign i_12_fu_1223_p2 = (i_0_reg_276 + 11'd2);

assign i_lower_fu_1205_p2 = (trunc_ln53_fu_1193_p1 | 10'd1);

assign icmp_ln571_1_fu_686_p2 = ((trunc_ln556_fu_630_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln571_fu_965_p2 = ((trunc_ln556_10_fu_909_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln581_1_fu_698_p2 = (($signed(F2_fu_692_p2) > $signed(12'd11)) ? 1'b1 : 1'b0);

assign icmp_ln581_fu_977_p2 = (($signed(F2_10_fu_971_p2) > $signed(12'd11)) ? 1'b1 : 1'b0);

assign icmp_ln582_1_fu_732_p2 = ((F2_fu_692_p2 == 12'd11) ? 1'b1 : 1'b0);

assign icmp_ln582_fu_1011_p2 = ((F2_10_fu_971_p2 == 12'd11) ? 1'b1 : 1'b0);

assign icmp_ln585_1_fu_742_p2 = ((sh_amt_fu_716_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln585_fu_1021_p2 = ((sh_amt_10_fu_995_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln603_1_fu_748_p2 = ((sh_amt_fu_716_p3 < 12'd22) ? 1'b1 : 1'b0);

assign icmp_ln603_fu_1027_p2 = ((sh_amt_10_fu_995_p3 < 12'd22) ? 1'b1 : 1'b0);

assign icmp_ln885_fu_329_p2 = ((tmp_V_reg_252 == 14'd0) ? 1'b1 : 1'b0);

assign icmp_ln897_1_fu_419_p2 = ((p_Result_152_fu_413_p2 != 22'd0) ? 1'b1 : 1'b0);

assign icmp_ln897_fu_387_p2 = (($signed(tmp_fu_377_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln908_fu_487_p2 = (($signed(lsb_index_fu_371_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign ireg_V_10_fu_906_p1 = v_assign_s_reg_1333;

assign ireg_V_fu_627_p1 = v_assign_reg_1328;


always @ (p_Result_159_fu_345_p3) begin
    if (p_Result_159_fu_345_p3[0] == 1'b1) begin
        l_fu_353_p3 = 32'd0;
    end else if (p_Result_159_fu_345_p3[1] == 1'b1) begin
        l_fu_353_p3 = 32'd1;
    end else if (p_Result_159_fu_345_p3[2] == 1'b1) begin
        l_fu_353_p3 = 32'd2;
    end else if (p_Result_159_fu_345_p3[3] == 1'b1) begin
        l_fu_353_p3 = 32'd3;
    end else if (p_Result_159_fu_345_p3[4] == 1'b1) begin
        l_fu_353_p3 = 32'd4;
    end else if (p_Result_159_fu_345_p3[5] == 1'b1) begin
        l_fu_353_p3 = 32'd5;
    end else if (p_Result_159_fu_345_p3[6] == 1'b1) begin
        l_fu_353_p3 = 32'd6;
    end else if (p_Result_159_fu_345_p3[7] == 1'b1) begin
        l_fu_353_p3 = 32'd7;
    end else if (p_Result_159_fu_345_p3[8] == 1'b1) begin
        l_fu_353_p3 = 32'd8;
    end else if (p_Result_159_fu_345_p3[9] == 1'b1) begin
        l_fu_353_p3 = 32'd9;
    end else if (p_Result_159_fu_345_p3[10] == 1'b1) begin
        l_fu_353_p3 = 32'd10;
    end else if (p_Result_159_fu_345_p3[11] == 1'b1) begin
        l_fu_353_p3 = 32'd11;
    end else if (p_Result_159_fu_345_p3[12] == 1'b1) begin
        l_fu_353_p3 = 32'd12;
    end else if (p_Result_159_fu_345_p3[13] == 1'b1) begin
        l_fu_353_p3 = 32'd13;
    end else if (p_Result_159_fu_345_p3[14] == 1'b1) begin
        l_fu_353_p3 = 32'd14;
    end else if (p_Result_159_fu_345_p3[15] == 1'b1) begin
        l_fu_353_p3 = 32'd15;
    end else if (p_Result_159_fu_345_p3[16] == 1'b1) begin
        l_fu_353_p3 = 32'd16;
    end else if (p_Result_159_fu_345_p3[17] == 1'b1) begin
        l_fu_353_p3 = 32'd17;
    end else if (p_Result_159_fu_345_p3[18] == 1'b1) begin
        l_fu_353_p3 = 32'd18;
    end else if (p_Result_159_fu_345_p3[19] == 1'b1) begin
        l_fu_353_p3 = 32'd19;
    end else if (p_Result_159_fu_345_p3[20] == 1'b1) begin
        l_fu_353_p3 = 32'd20;
    end else if (p_Result_159_fu_345_p3[21] == 1'b1) begin
        l_fu_353_p3 = 32'd21;
    end else if (p_Result_159_fu_345_p3[22] == 1'b1) begin
        l_fu_353_p3 = 32'd22;
    end else if (p_Result_159_fu_345_p3[23] == 1'b1) begin
        l_fu_353_p3 = 32'd23;
    end else if (p_Result_159_fu_345_p3[24] == 1'b1) begin
        l_fu_353_p3 = 32'd24;
    end else if (p_Result_159_fu_345_p3[25] == 1'b1) begin
        l_fu_353_p3 = 32'd25;
    end else if (p_Result_159_fu_345_p3[26] == 1'b1) begin
        l_fu_353_p3 = 32'd26;
    end else if (p_Result_159_fu_345_p3[27] == 1'b1) begin
        l_fu_353_p3 = 32'd27;
    end else if (p_Result_159_fu_345_p3[28] == 1'b1) begin
        l_fu_353_p3 = 32'd28;
    end else if (p_Result_159_fu_345_p3[29] == 1'b1) begin
        l_fu_353_p3 = 32'd29;
    end else if (p_Result_159_fu_345_p3[30] == 1'b1) begin
        l_fu_353_p3 = 32'd30;
    end else if (p_Result_159_fu_345_p3[31] == 1'b1) begin
        l_fu_353_p3 = 32'd31;
    end else begin
        l_fu_353_p3 = 32'd32;
    end
end

assign lsb_index_fu_371_p2 = ($signed(32'd4294967243) + $signed(sub_ln894_fu_361_p2));

assign lshr_ln897_fu_407_p2 = 22'd4194303 >> zext_ln897_fu_403_p1;

assign lshr_ln908_fu_499_p2 = zext_ln907_10_fu_483_p1 >> add_ln908_fu_493_p2;

assign m_47_fu_525_p3 = ((icmp_ln908_fu_487_p2[0:0] === 1'b1) ? zext_ln908_fu_505_p1 : shl_ln908_fu_519_p2);

assign m_48_fu_537_p2 = (zext_ln911_fu_533_p1 + m_47_fu_525_p3);

assign m_51_fu_553_p1 = m_s_fu_543_p4;

assign m_fu_479_p1 = $unsigned(sext_ln891_fu_325_p1);

assign m_s_fu_543_p4 = {{m_48_fu_537_p2[63:1]}};

assign man_V_46_fu_672_p2 = (54'd0 - p_Result_162_fu_668_p1);

assign man_V_47_fu_678_p3 = ((p_Result_161_fu_634_p3[0:0] === 1'b1) ? man_V_46_fu_672_p2 : p_Result_162_fu_668_p1);

assign man_V_49_fu_951_p2 = (54'd0 - p_Result_164_fu_947_p1);

assign man_V_50_fu_957_p3 = ((p_Result_163_fu_913_p3[0:0] === 1'b1) ? man_V_49_fu_951_p2 : p_Result_164_fu_947_p1);

assign mul_ln1192_fu_1268_p0 = sext_ln1118_29_fu_1229_p1;

assign mul_ln1192_fu_1268_p1 = sext_ln1118_28_reg_1344;

assign mul_ln1192_fu_1268_p2 = ($signed(mul_ln1192_fu_1268_p0) * $signed(mul_ln1192_fu_1268_p1));

assign mul_ln1193_fu_1242_p0 = sext_ln1118_30_fu_1233_p1;

assign mul_ln1193_fu_1242_p1 = sext_ln1118_28_reg_1344;

assign mul_ln1193_fu_1242_p2 = ($signed(mul_ln1193_fu_1242_p0) * $signed(mul_ln1193_fu_1242_p1));

assign mul_ln700_10_fu_1263_p0 = sext_ln1118_reg_1338;

assign mul_ln700_10_fu_1263_p1 = sext_ln1118_30_fu_1233_p1;

assign mul_ln700_10_fu_1263_p2 = ($signed(mul_ln700_10_fu_1263_p0) * $signed(mul_ln700_10_fu_1263_p1));

assign mul_ln700_fu_1237_p0 = sext_ln1118_29_fu_1229_p1;

assign mul_ln700_fu_1237_p1 = sext_ln1118_reg_1338;

assign mul_ln700_fu_1237_p2 = ($signed(mul_ln700_fu_1237_p0) * $signed(mul_ln700_fu_1237_p1));

assign or_ln581_10_fu_1117_p2 = (or_ln582_10_fu_1081_p2 | icmp_ln581_fu_977_p2);

assign or_ln581_fu_838_p2 = (or_ln582_fu_802_p2 | icmp_ln581_1_fu_698_p2);

assign or_ln582_10_fu_1081_p2 = (icmp_ln582_fu_1011_p2 | icmp_ln571_fu_965_p2);

assign or_ln582_fu_802_p2 = (icmp_ln582_1_fu_732_p2 | icmp_ln571_1_fu_686_p2);

assign or_ln603_46_fu_878_p2 = (and_ln585_fu_826_p2 | and_ln582_fu_796_p2);

assign or_ln603_47_fu_892_p2 = (or_ln603_fu_864_p2 | or_ln603_46_fu_878_p2);

assign or_ln603_48_fu_1143_p2 = (and_ln603_10_fu_1129_p2 | and_ln585_30_fu_1111_p2);

assign or_ln603_49_fu_1157_p2 = (and_ln585_29_fu_1105_p2 | and_ln582_10_fu_1075_p2);

assign or_ln603_50_fu_1171_p2 = (or_ln603_49_fu_1157_p2 | or_ln603_48_fu_1143_p2);

assign or_ln603_fu_864_p2 = (and_ln603_fu_850_p2 | and_ln585_28_fu_832_p2);

assign or_ln899_fu_465_p2 = (and_ln899_fu_459_p2 | a_fu_425_p2);

assign or_ln_fu_471_p3 = {{31'd0}, {or_ln899_fu_465_p2}};

assign p_Result_152_fu_413_p2 = (sext_ln891_fu_325_p1 & lshr_ln897_fu_407_p2);

assign p_Result_153_fu_451_p3 = sext_ln891_fu_325_p1[add_ln899_fu_445_p2];

assign p_Result_159_fu_345_p3 = {{10'd1023}, {p_Result_s_fu_335_p4}};

assign p_Result_160_fu_597_p5 = {{tmp_12_fu_589_p3}, {m_51_fu_553_p1[51:0]}};

assign p_Result_161_fu_634_p3 = ireg_V_fu_627_p1[32'd63];

assign p_Result_162_fu_668_p1 = tmp_13_fu_660_p3;

assign p_Result_163_fu_913_p3 = ireg_V_10_fu_906_p1[32'd63];

assign p_Result_164_fu_947_p1 = tmp_14_fu_939_p3;

integer ap_tvar_int_0;

always @ (sext_ln891_fu_325_p1) begin
    for (ap_tvar_int_0 = 22 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 21 - 0) begin
            p_Result_s_fu_335_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_s_fu_335_p4[ap_tvar_int_0] = sext_ln891_fu_325_p1[21 - ap_tvar_int_0];
        end
    end
end

assign ret_V_22_fu_1273_p2 = (mul_ln700_10_fu_1263_p2 + mul_ln1192_fu_1268_p2);

assign ret_V_fu_1247_p2 = (mul_ln700_fu_1237_p2 - mul_ln1193_fu_1242_p2);

assign s_V_fu_1177_p3 = ((or_ln603_50_fu_1171_p2[0:0] === 1'b1) ? select_ln603_69_fu_1163_p3 : 22'd0);

assign select_ln588_10_fu_1055_p3 = ((tmp_79_fu_1047_p3[0:0] === 1'b1) ? 22'd4194303 : 22'd0);

assign select_ln588_fu_776_p3 = ((tmp_77_fu_768_p3[0:0] === 1'b1) ? 22'd4194303 : 22'd0);

assign select_ln603_64_fu_870_p3 = ((and_ln585_fu_826_p2[0:0] === 1'b1) ? select_ln588_fu_776_p3 : trunc_ln583_fu_738_p1);

assign select_ln603_65_fu_884_p3 = ((or_ln603_fu_864_p2[0:0] === 1'b1) ? select_ln603_fu_856_p3 : select_ln603_64_fu_870_p3);

assign select_ln603_67_fu_1135_p3 = ((and_ln603_10_fu_1129_p2[0:0] === 1'b1) ? shl_ln604_fu_1063_p2 : trunc_ln586_10_fu_1043_p1);

assign select_ln603_68_fu_1149_p3 = ((and_ln585_29_fu_1105_p2[0:0] === 1'b1) ? select_ln588_10_fu_1055_p3 : trunc_ln583_10_fu_1017_p1);

assign select_ln603_69_fu_1163_p3 = ((or_ln603_48_fu_1143_p2[0:0] === 1'b1) ? select_ln603_67_fu_1135_p3 : select_ln603_68_fu_1149_p3);

assign select_ln603_fu_856_p3 = ((and_ln603_fu_850_p2[0:0] === 1'b1) ? shl_ln604_1_fu_784_p2 : trunc_ln586_fu_764_p1);

assign select_ln885_fu_613_p3 = ((icmp_ln885_fu_329_p2[0:0] === 1'b1) ? 64'd0 : bitcast_ln729_fu_609_p1);

assign select_ln915_fu_565_p3 = ((tmp_75_fu_557_p3[0:0] === 1'b1) ? 11'd1023 : 11'd1022);

assign sext_ln1118_28_fu_1189_p1 = $signed(s_V_fu_1177_p3);

assign sext_ln1118_29_fu_1229_p1 = $signed(X_R_V_q0);

assign sext_ln1118_30_fu_1233_p1 = $signed(X_I_V_q0);

assign sext_ln1118_fu_1185_p1 = $signed(c_V_fu_898_p3);

assign sext_ln581_28_fu_728_p1 = sh_amt_fu_716_p3;

assign sext_ln581_29_fu_1003_p1 = sh_amt_10_fu_995_p3;

assign sext_ln581_30_fu_1007_p1 = sh_amt_10_fu_995_p3;

assign sext_ln581_fu_724_p1 = sh_amt_fu_716_p3;

assign sext_ln891_fu_325_p1 = tmp_V_reg_252;

assign sh_amt_10_fu_995_p3 = ((icmp_ln581_fu_977_p2[0:0] === 1'b1) ? add_ln581_fu_983_p2 : sub_ln581_fu_989_p2);

assign sh_amt_fu_716_p3 = ((icmp_ln581_1_fu_698_p2[0:0] === 1'b1) ? add_ln581_1_fu_704_p2 : sub_ln581_1_fu_710_p2);

assign shl_ln604_1_fu_784_p2 = trunc_ln583_fu_738_p1 << sext_ln581_28_fu_728_p1;

assign shl_ln604_fu_1063_p2 = trunc_ln583_10_fu_1017_p1 << sext_ln581_30_fu_1007_p1;

assign shl_ln908_fu_519_p2 = m_fu_479_p1 << zext_ln908_1_fu_515_p1;

assign sub_ln581_1_fu_710_p2 = (12'd11 - F2_fu_692_p2);

assign sub_ln581_fu_989_p2 = (12'd11 - F2_10_fu_971_p2);

assign sub_ln894_fu_361_p2 = (32'd22 - l_fu_353_p3);

assign sub_ln897_fu_397_p2 = (5'd12 - trunc_ln897_fu_393_p1);

assign sub_ln908_fu_509_p2 = (32'd54 - sub_ln894_fu_361_p2);

assign sub_ln915_fu_577_p2 = (11'd11 - trunc_ln893_fu_573_p1);

assign temp_I_V_fu_1279_p4 = {{ret_V_22_fu_1273_p2[32:11]}};

assign temp_R_V_fu_1253_p4 = {{ret_V_fu_1247_p2[32:11]}};

assign tmp_12_fu_589_p3 = {{1'd0}, {add_ln915_fu_583_p2}};

assign tmp_13_fu_660_p3 = {{1'd1}, {trunc_ln565_fu_656_p1}};

assign tmp_14_fu_939_p3 = {{1'd1}, {trunc_ln565_10_fu_935_p1}};

assign tmp_74_fu_431_p3 = lsb_index_fu_371_p2[32'd31];

assign tmp_75_fu_557_p3 = m_48_fu_537_p2[32'd54];

assign tmp_77_fu_768_p3 = ireg_V_fu_627_p1[32'd63];

assign tmp_79_fu_1047_p3 = ireg_V_10_fu_906_p1[32'd63];

assign tmp_80_fu_1197_p3 = i_0_reg_276[32'd10];

assign tmp_fu_377_p4 = {{lsb_index_fu_371_p2[31:1]}};

assign trunc_ln53_fu_1193_p1 = i_0_reg_276[9:0];

assign trunc_ln556_10_fu_909_p1 = ireg_V_10_fu_906_p1[62:0];

assign trunc_ln556_fu_630_p1 = ireg_V_fu_627_p1[62:0];

assign trunc_ln565_10_fu_935_p1 = ireg_V_10_fu_906_p1[51:0];

assign trunc_ln565_fu_656_p1 = ireg_V_fu_627_p1[51:0];

assign trunc_ln583_10_fu_1017_p1 = man_V_50_fu_957_p3[21:0];

assign trunc_ln583_fu_738_p1 = man_V_47_fu_678_p3[21:0];

assign trunc_ln586_10_fu_1043_p1 = ashr_ln586_fu_1037_p2[21:0];

assign trunc_ln586_fu_764_p1 = ashr_ln586_1_fu_758_p2[21:0];

assign trunc_ln893_fu_573_p1 = l_fu_353_p3[10:0];

assign trunc_ln894_fu_367_p1 = sub_ln894_fu_361_p2[21:0];

assign trunc_ln897_fu_393_p1 = sub_ln894_fu_361_p2[4:0];

assign xor_ln571_10_fu_1069_p2 = (icmp_ln571_fu_965_p2 ^ 1'd1);

assign xor_ln571_fu_790_p2 = (icmp_ln571_1_fu_686_p2 ^ 1'd1);

assign xor_ln581_10_fu_1123_p2 = (or_ln581_10_fu_1117_p2 ^ 1'd1);

assign xor_ln581_fu_844_p2 = (or_ln581_fu_838_p2 ^ 1'd1);

assign xor_ln582_10_fu_1087_p2 = (or_ln582_10_fu_1081_p2 ^ 1'd1);

assign xor_ln582_fu_808_p2 = (or_ln582_fu_802_p2 ^ 1'd1);

assign xor_ln585_10_fu_1099_p2 = (icmp_ln585_fu_1021_p2 ^ 1'd1);

assign xor_ln585_fu_820_p2 = (icmp_ln585_1_fu_742_p2 ^ 1'd1);

assign xor_ln899_fu_439_p2 = (tmp_74_fu_431_p3 ^ 1'd1);

assign zext_ln461_1_fu_652_p1 = exp_tmp_V_fu_642_p4;

assign zext_ln461_fu_931_p1 = exp_tmp_V_10_fu_921_p4;

assign zext_ln55_fu_1211_p1 = i_lower_fu_1205_p2;

assign zext_ln57_fu_1217_p1 = i_0_reg_276;

assign zext_ln586_1_fu_754_p1 = $unsigned(sext_ln581_fu_724_p1);

assign zext_ln586_fu_1033_p1 = $unsigned(sext_ln581_29_fu_1003_p1);

assign zext_ln897_fu_403_p1 = sub_ln897_fu_397_p2;

assign zext_ln907_10_fu_483_p1 = $unsigned(sext_ln891_fu_325_p1);

assign zext_ln908_1_fu_515_p1 = sub_ln908_fu_509_p2;

assign zext_ln908_fu_505_p1 = lshr_ln908_fu_499_p2;

assign zext_ln911_fu_533_p1 = or_ln_fu_471_p3;

always @ (posedge ap_clk) begin
    zext_ln55_reg_1354[0] <= 1'b1;
    zext_ln55_reg_1354[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln57_reg_1370[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end

endmodule //fft_stage81
