// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_stage86 (
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
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

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
wire   [31:0] zext_ln891_fu_317_p1;
reg   [31:0] zext_ln891_reg_1333;
wire    ap_CS_fsm_state2;
wire   [5:0] j_fu_327_p2;
reg   [5:0] j_reg_1341;
wire   [0:0] icmp_ln885_fu_333_p2;
reg   [0:0] icmp_ln885_reg_1346;
wire   [0:0] icmp_ln47_fu_321_p2;
reg   [62:0] m_s_reg_1351;
reg   [0:0] tmp_40_reg_1356;
wire   [10:0] trunc_ln893_fu_575_p1;
reg   [10:0] trunc_ln893_reg_1361;
wire   [13:0] a_V_fu_579_p2;
reg   [13:0] a_V_reg_1366;
wire   [63:0] select_ln885_fu_630_p3;
reg   [63:0] select_ln885_reg_1371;
wire    ap_CS_fsm_state3;
wire   [63:0] grp_sin_or_cos_double_s_fu_279_ap_return;
reg   [63:0] v_assign_reg_1377;
wire    ap_CS_fsm_state4;
wire    grp_sin_or_cos_double_s_fu_279_ap_ready;
wire    grp_sin_or_cos_double_s_fu_279_ap_done;
wire    grp_sin_or_cos_double_s_fu_298_ap_ready;
wire    grp_sin_or_cos_double_s_fu_298_ap_done;
reg    ap_block_state4_on_subcall_done;
wire   [63:0] grp_sin_or_cos_double_s_fu_298_ap_return;
reg   [63:0] v_assign_5_reg_1382;
wire  signed [32:0] sext_ln1118_fu_1197_p1;
reg  signed [32:0] sext_ln1118_reg_1387;
wire    ap_CS_fsm_state5;
wire  signed [32:0] sext_ln1118_13_fu_1201_p1;
reg  signed [32:0] sext_ln1118_13_reg_1393;
wire  signed [63:0] sext_ln55_fu_1227_p1;
reg  signed [63:0] sext_ln55_reg_1402;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln53_fu_1215_p2;
wire  signed [63:0] sext_ln57_fu_1233_p1;
reg  signed [63:0] sext_ln57_reg_1418;
wire   [31:0] i_7_fu_1239_p2;
reg   [31:0] i_7_reg_1434;
wire    grp_sin_or_cos_double_s_fu_279_ap_start;
wire    grp_sin_or_cos_double_s_fu_279_ap_idle;
wire    grp_sin_or_cos_double_s_fu_279_do_cos;
wire    grp_sin_or_cos_double_s_fu_298_ap_start;
wire    grp_sin_or_cos_double_s_fu_298_ap_idle;
wire    grp_sin_or_cos_double_s_fu_298_do_cos;
reg   [13:0] tmp_V_reg_248;
reg    ap_block_state1;
reg   [5:0] i_reg_259;
reg  signed [31:0] i_0_reg_270;
wire    ap_CS_fsm_state7;
reg    grp_sin_or_cos_double_s_fu_279_ap_start_reg;
reg    grp_sin_or_cos_double_s_fu_298_ap_start_reg;
wire   [13:0] tmp_V_8_fu_339_p2;
wire   [21:0] zext_ln889_fu_345_p1;
reg   [21:0] p_Result_s_fu_349_p4;
wire   [31:0] p_Result_89_fu_359_p3;
reg   [31:0] l_fu_367_p3;
wire   [31:0] sub_ln894_fu_375_p2;
wire   [31:0] lsb_index_fu_385_p2;
wire   [30:0] tmp_fu_391_p4;
wire   [4:0] trunc_ln897_fu_407_p1;
wire   [4:0] sub_ln897_fu_411_p2;
wire   [21:0] zext_ln897_fu_417_p1;
wire   [21:0] lshr_ln897_fu_421_p2;
wire   [21:0] p_Result_81_fu_427_p2;
wire   [0:0] icmp_ln897_fu_401_p2;
wire   [0:0] icmp_ln897_1_fu_433_p2;
wire   [0:0] tmp_39_fu_445_p3;
wire   [21:0] trunc_ln894_fu_381_p1;
wire   [21:0] add_ln899_fu_459_p2;
wire   [0:0] p_Result_83_fu_465_p3;
wire   [0:0] xor_ln899_fu_453_p2;
wire   [0:0] and_ln899_fu_473_p2;
wire   [0:0] a_fu_439_p2;
wire   [0:0] or_ln899_fu_479_p2;
wire   [31:0] zext_ln907_5_fu_497_p1;
wire   [31:0] add_ln908_fu_507_p2;
wire   [31:0] lshr_ln908_fu_513_p2;
wire   [31:0] sub_ln908_fu_523_p2;
wire   [63:0] m_fu_493_p1;
wire   [63:0] zext_ln908_1_fu_529_p1;
wire   [0:0] icmp_ln908_fu_501_p2;
wire   [63:0] zext_ln908_fu_519_p1;
wire   [63:0] shl_ln908_fu_533_p2;
wire   [31:0] or_ln_fu_485_p3;
wire   [63:0] zext_ln911_fu_547_p1;
wire   [63:0] m_22_fu_539_p3;
wire   [63:0] m_23_fu_551_p2;
wire   [10:0] sub_ln915_fu_595_p2;
wire   [10:0] select_ln915_fu_588_p3;
wire   [10:0] add_ln915_fu_600_p2;
wire   [63:0] m_26_fu_585_p1;
wire   [11:0] tmp_7_fu_606_p3;
wire   [63:0] p_Result_90_fu_614_p5;
wire   [63:0] bitcast_ln729_fu_626_p1;
wire   [63:0] ireg_V_fu_639_p1;
wire   [10:0] exp_tmp_V_fu_654_p4;
wire   [51:0] trunc_ln565_fu_668_p1;
wire   [52:0] tmp_8_fu_672_p3;
wire   [53:0] p_Result_92_fu_680_p1;
wire   [0:0] p_Result_91_fu_646_p3;
wire   [53:0] man_V_21_fu_684_p2;
wire   [62:0] trunc_ln556_fu_642_p1;
wire   [11:0] zext_ln461_1_fu_664_p1;
wire   [11:0] F2_fu_704_p2;
wire   [0:0] icmp_ln581_1_fu_710_p2;
wire   [11:0] add_ln581_1_fu_716_p2;
wire   [11:0] sub_ln581_1_fu_722_p2;
wire  signed [11:0] sh_amt_fu_728_p3;
wire   [53:0] man_V_22_fu_690_p3;
wire  signed [31:0] sext_ln581_fu_736_p1;
wire   [53:0] zext_ln586_1_fu_766_p1;
wire   [53:0] ashr_ln586_1_fu_770_p2;
wire   [0:0] tmp_42_fu_780_p3;
wire   [21:0] trunc_ln583_fu_750_p1;
wire  signed [21:0] sext_ln581_13_fu_740_p1;
wire   [0:0] icmp_ln571_1_fu_698_p2;
wire   [0:0] icmp_ln582_1_fu_744_p2;
wire   [0:0] xor_ln571_fu_802_p2;
wire   [0:0] or_ln582_fu_814_p2;
wire   [0:0] xor_ln582_fu_820_p2;
wire   [0:0] icmp_ln585_1_fu_754_p2;
wire   [0:0] and_ln581_fu_826_p2;
wire   [0:0] xor_ln585_fu_832_p2;
wire   [0:0] or_ln581_fu_850_p2;
wire   [0:0] icmp_ln603_1_fu_760_p2;
wire   [0:0] xor_ln581_fu_856_p2;
wire   [0:0] and_ln603_fu_862_p2;
wire   [21:0] shl_ln604_1_fu_796_p2;
wire   [21:0] trunc_ln586_fu_776_p1;
wire   [0:0] and_ln585_13_fu_844_p2;
wire   [0:0] and_ln585_fu_838_p2;
wire   [21:0] select_ln588_fu_788_p3;
wire   [0:0] and_ln582_fu_808_p2;
wire   [0:0] or_ln603_fu_876_p2;
wire   [21:0] select_ln603_fu_868_p3;
wire   [21:0] select_ln603_29_fu_882_p3;
wire   [0:0] or_ln603_21_fu_890_p2;
wire   [0:0] or_ln603_22_fu_904_p2;
wire   [21:0] select_ln603_30_fu_896_p3;
wire   [63:0] ireg_V_5_fu_918_p1;
wire   [10:0] exp_tmp_V_5_fu_933_p4;
wire   [51:0] trunc_ln565_5_fu_947_p1;
wire   [52:0] tmp_9_fu_951_p3;
wire   [53:0] p_Result_94_fu_959_p1;
wire   [0:0] p_Result_93_fu_925_p3;
wire   [53:0] man_V_24_fu_963_p2;
wire   [62:0] trunc_ln556_5_fu_921_p1;
wire   [11:0] zext_ln461_fu_943_p1;
wire   [11:0] F2_5_fu_983_p2;
wire   [0:0] icmp_ln581_fu_989_p2;
wire   [11:0] add_ln581_fu_995_p2;
wire   [11:0] sub_ln581_fu_1001_p2;
wire  signed [11:0] sh_amt_5_fu_1007_p3;
wire   [53:0] man_V_25_fu_969_p3;
wire  signed [31:0] sext_ln581_14_fu_1015_p1;
wire   [53:0] zext_ln586_fu_1045_p1;
wire   [53:0] ashr_ln586_fu_1049_p2;
wire   [0:0] tmp_44_fu_1059_p3;
wire   [21:0] trunc_ln583_5_fu_1029_p1;
wire  signed [21:0] sext_ln581_15_fu_1019_p1;
wire   [0:0] icmp_ln571_fu_977_p2;
wire   [0:0] icmp_ln582_fu_1023_p2;
wire   [0:0] xor_ln571_5_fu_1081_p2;
wire   [0:0] or_ln582_5_fu_1093_p2;
wire   [0:0] xor_ln582_5_fu_1099_p2;
wire   [0:0] icmp_ln585_fu_1033_p2;
wire   [0:0] and_ln581_5_fu_1105_p2;
wire   [0:0] xor_ln585_5_fu_1111_p2;
wire   [0:0] or_ln581_5_fu_1129_p2;
wire   [0:0] icmp_ln603_fu_1039_p2;
wire   [0:0] xor_ln581_5_fu_1135_p2;
wire   [0:0] and_ln603_5_fu_1141_p2;
wire   [21:0] shl_ln604_fu_1075_p2;
wire   [21:0] trunc_ln586_5_fu_1055_p1;
wire   [0:0] and_ln585_15_fu_1123_p2;
wire   [0:0] and_ln585_14_fu_1117_p2;
wire   [21:0] select_ln588_5_fu_1067_p3;
wire   [0:0] and_ln582_5_fu_1087_p2;
wire   [0:0] or_ln603_23_fu_1155_p2;
wire   [21:0] select_ln603_32_fu_1147_p3;
wire   [21:0] select_ln603_33_fu_1161_p3;
wire   [0:0] or_ln603_24_fu_1169_p2;
wire   [0:0] or_ln603_25_fu_1183_p2;
wire   [21:0] select_ln603_34_fu_1175_p3;
wire   [21:0] c_V_fu_910_p3;
wire   [21:0] s_V_fu_1189_p3;
wire   [21:0] tmp_45_fu_1205_p4;
wire   [31:0] i_lower_fu_1221_p2;
wire  signed [21:0] mul_ln700_fu_1253_p0;
wire  signed [21:0] mul_ln700_fu_1253_p1;
wire  signed [32:0] sext_ln1118_14_fu_1245_p1;
wire  signed [21:0] mul_ln1193_fu_1258_p0;
wire  signed [21:0] mul_ln1193_fu_1258_p1;
wire  signed [32:0] sext_ln1118_15_fu_1249_p1;
wire   [32:0] mul_ln700_fu_1253_p2;
wire   [32:0] mul_ln1193_fu_1258_p2;
wire   [32:0] ret_V_fu_1263_p2;
wire  signed [21:0] mul_ln700_5_fu_1279_p0;
wire  signed [21:0] mul_ln700_5_fu_1279_p1;
wire  signed [21:0] mul_ln1192_fu_1284_p0;
wire  signed [21:0] mul_ln1192_fu_1284_p1;
wire   [32:0] mul_ln1192_fu_1284_p2;
wire   [32:0] mul_ln700_5_fu_1279_p2;
wire   [32:0] ret_V_17_fu_1289_p2;
wire   [21:0] temp_R_V_fu_1269_p4;
wire   [21:0] temp_I_V_fu_1295_p4;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 grp_sin_or_cos_double_s_fu_279_ap_start_reg = 1'b0;
#0 grp_sin_or_cos_double_s_fu_298_ap_start_reg = 1'b0;
end

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_279(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_279_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_279_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_279_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_279_ap_ready),
    .t_in(select_ln885_reg_1371),
    .do_cos(grp_sin_or_cos_double_s_fu_279_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_279_ap_return)
);

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_298(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_298_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_298_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_298_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_298_ap_ready),
    .t_in(select_ln885_reg_1371),
    .do_cos(grp_sin_or_cos_double_s_fu_298_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_298_ap_return)
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
        end else if (((icmp_ln47_fu_321_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_279_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_sin_or_cos_double_s_fu_279_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_279_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_279_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_298_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_sin_or_cos_double_s_fu_298_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_298_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_298_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_0_reg_270 <= i_7_reg_1434;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_reg_270 <= zext_ln891_reg_1333;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_fu_1215_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        i_reg_259 <= j_reg_1341;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_259 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_fu_1215_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_V_reg_248 <= a_V_reg_1366;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_reg_248 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln47_fu_321_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        a_V_reg_1366 <= a_V_fu_579_p2;
        icmp_ln885_reg_1346 <= icmp_ln885_fu_333_p2;
        m_s_reg_1351 <= {{m_23_fu_551_p2[63:1]}};
        tmp_40_reg_1356 <= m_23_fu_551_p2[32'd54];
        trunc_ln893_reg_1361 <= trunc_ln893_fu_575_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln53_fu_1215_p2 == 1'd1))) begin
        i_7_reg_1434 <= i_7_fu_1239_p2;
        sext_ln55_reg_1402 <= sext_ln55_fu_1227_p1;
        sext_ln57_reg_1418 <= sext_ln57_fu_1233_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        j_reg_1341 <= j_fu_327_p2;
        zext_ln891_reg_1333[5 : 0] <= zext_ln891_fu_317_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        select_ln885_reg_1371 <= select_ln885_fu_630_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sext_ln1118_13_reg_1393 <= sext_ln1118_13_fu_1201_p1;
        sext_ln1118_reg_1387 <= sext_ln1118_fu_1197_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
        v_assign_5_reg_1382 <= grp_sin_or_cos_double_s_fu_298_ap_return;
        v_assign_reg_1377 <= grp_sin_or_cos_double_s_fu_279_ap_return;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Out_I_V_ce0 = 1'b1;
    end else begin
        Out_I_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Out_I_V_ce1 = 1'b1;
    end else begin
        Out_I_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Out_I_V_we0 = 1'b1;
    end else begin
        Out_I_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Out_I_V_we1 = 1'b1;
    end else begin
        Out_I_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Out_R_V_ce0 = 1'b1;
    end else begin
        Out_R_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Out_R_V_ce1 = 1'b1;
    end else begin
        Out_R_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Out_R_V_we0 = 1'b1;
    end else begin
        Out_R_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Out_R_V_we1 = 1'b1;
    end else begin
        Out_R_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        X_I_V_ce0 = 1'b1;
    end else begin
        X_I_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        X_I_V_ce1 = 1'b1;
    end else begin
        X_I_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        X_R_V_ce0 = 1'b1;
    end else begin
        X_R_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        X_R_V_ce1 = 1'b1;
    end else begin
        X_R_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_fu_321_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln47_fu_321_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln47_fu_321_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln53_fu_1215_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign F2_5_fu_983_p2 = (12'd1075 - zext_ln461_fu_943_p1);

assign F2_fu_704_p2 = (12'd1075 - zext_ln461_1_fu_664_p1);

assign Out_I_V_address0 = sext_ln55_reg_1402;

assign Out_I_V_address1 = sext_ln57_reg_1418;

assign Out_I_V_d0 = (X_I_V_q1 - temp_I_V_fu_1295_p4);

assign Out_I_V_d1 = (X_I_V_q1 + temp_I_V_fu_1295_p4);

assign Out_R_V_address0 = sext_ln55_reg_1402;

assign Out_R_V_address1 = sext_ln57_reg_1418;

assign Out_R_V_d0 = (X_R_V_q1 - temp_R_V_fu_1269_p4);

assign Out_R_V_d1 = (X_R_V_q1 + temp_R_V_fu_1269_p4);

assign X_I_V_address0 = sext_ln55_fu_1227_p1;

assign X_I_V_address1 = sext_ln57_fu_1233_p1;

assign X_R_V_address0 = sext_ln55_fu_1227_p1;

assign X_R_V_address1 = sext_ln57_fu_1233_p1;

assign a_V_fu_579_p2 = ($signed(14'd16182) + $signed(tmp_V_reg_248));

assign a_fu_439_p2 = (icmp_ln897_fu_401_p2 & icmp_ln897_1_fu_433_p2);

assign add_ln581_1_fu_716_p2 = ($signed(12'd4085) + $signed(F2_fu_704_p2));

assign add_ln581_fu_995_p2 = ($signed(12'd4085) + $signed(F2_5_fu_983_p2));

assign add_ln899_fu_459_p2 = ($signed(22'd4194251) + $signed(trunc_ln894_fu_381_p1));

assign add_ln908_fu_507_p2 = ($signed(32'd4294967242) + $signed(sub_ln894_fu_375_p2));

assign add_ln915_fu_600_p2 = (sub_ln915_fu_595_p2 + select_ln915_fu_588_p3);

assign and_ln581_5_fu_1105_p2 = (xor_ln582_5_fu_1099_p2 & icmp_ln581_fu_989_p2);

assign and_ln581_fu_826_p2 = (xor_ln582_fu_820_p2 & icmp_ln581_1_fu_710_p2);

assign and_ln582_5_fu_1087_p2 = (xor_ln571_5_fu_1081_p2 & icmp_ln582_fu_1023_p2);

assign and_ln582_fu_808_p2 = (xor_ln571_fu_802_p2 & icmp_ln582_1_fu_744_p2);

assign and_ln585_13_fu_844_p2 = (icmp_ln585_1_fu_754_p2 & and_ln581_fu_826_p2);

assign and_ln585_14_fu_1117_p2 = (xor_ln585_5_fu_1111_p2 & and_ln581_5_fu_1105_p2);

assign and_ln585_15_fu_1123_p2 = (icmp_ln585_fu_1033_p2 & and_ln581_5_fu_1105_p2);

assign and_ln585_fu_838_p2 = (xor_ln585_fu_832_p2 & and_ln581_fu_826_p2);

assign and_ln603_5_fu_1141_p2 = (xor_ln581_5_fu_1135_p2 & icmp_ln603_fu_1039_p2);

assign and_ln603_fu_862_p2 = (xor_ln581_fu_856_p2 & icmp_ln603_1_fu_760_p2);

assign and_ln899_fu_473_p2 = (xor_ln899_fu_453_p2 & p_Result_83_fu_465_p3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state4_on_subcall_done = ((grp_sin_or_cos_double_s_fu_298_ap_done == 1'b0) | (grp_sin_or_cos_double_s_fu_279_ap_done == 1'b0));
end

assign ashr_ln586_1_fu_770_p2 = $signed(man_V_22_fu_690_p3) >>> zext_ln586_1_fu_766_p1;

assign ashr_ln586_fu_1049_p2 = $signed(man_V_25_fu_969_p3) >>> zext_ln586_fu_1045_p1;

assign bitcast_ln729_fu_626_p1 = p_Result_90_fu_614_p5;

assign c_V_fu_910_p3 = ((or_ln603_22_fu_904_p2[0:0] === 1'b1) ? select_ln603_30_fu_896_p3 : 22'd0);

assign exp_tmp_V_5_fu_933_p4 = {{ireg_V_5_fu_918_p1[62:52]}};

assign exp_tmp_V_fu_654_p4 = {{ireg_V_fu_639_p1[62:52]}};

assign grp_sin_or_cos_double_s_fu_279_ap_start = grp_sin_or_cos_double_s_fu_279_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_279_do_cos = 1'd1;

assign grp_sin_or_cos_double_s_fu_298_ap_start = grp_sin_or_cos_double_s_fu_298_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_298_do_cos = 1'd0;

assign i_7_fu_1239_p2 = ($signed(i_0_reg_270) + $signed(32'd64));

assign i_lower_fu_1221_p2 = ($signed(i_0_reg_270) + $signed(32'd32));

assign icmp_ln47_fu_321_p2 = ((i_reg_259 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln53_fu_1215_p2 = (($signed(tmp_45_fu_1205_p4) < $signed(22'd1)) ? 1'b1 : 1'b0);

assign icmp_ln571_1_fu_698_p2 = ((trunc_ln556_fu_642_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln571_fu_977_p2 = ((trunc_ln556_5_fu_921_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln581_1_fu_710_p2 = (($signed(F2_fu_704_p2) > $signed(12'd11)) ? 1'b1 : 1'b0);

assign icmp_ln581_fu_989_p2 = (($signed(F2_5_fu_983_p2) > $signed(12'd11)) ? 1'b1 : 1'b0);

assign icmp_ln582_1_fu_744_p2 = ((F2_fu_704_p2 == 12'd11) ? 1'b1 : 1'b0);

assign icmp_ln582_fu_1023_p2 = ((F2_5_fu_983_p2 == 12'd11) ? 1'b1 : 1'b0);

assign icmp_ln585_1_fu_754_p2 = ((sh_amt_fu_728_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln585_fu_1033_p2 = ((sh_amt_5_fu_1007_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln603_1_fu_760_p2 = ((sh_amt_fu_728_p3 < 12'd22) ? 1'b1 : 1'b0);

assign icmp_ln603_fu_1039_p2 = ((sh_amt_5_fu_1007_p3 < 12'd22) ? 1'b1 : 1'b0);

assign icmp_ln885_fu_333_p2 = ((tmp_V_reg_248 == 14'd0) ? 1'b1 : 1'b0);

assign icmp_ln897_1_fu_433_p2 = ((p_Result_81_fu_427_p2 != 22'd0) ? 1'b1 : 1'b0);

assign icmp_ln897_fu_401_p2 = (($signed(tmp_fu_391_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln908_fu_501_p2 = (($signed(lsb_index_fu_385_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign ireg_V_5_fu_918_p1 = v_assign_5_reg_1382;

assign ireg_V_fu_639_p1 = v_assign_reg_1377;

assign j_fu_327_p2 = (i_reg_259 + 6'd1);


always @ (p_Result_89_fu_359_p3) begin
    if (p_Result_89_fu_359_p3[0] == 1'b1) begin
        l_fu_367_p3 = 32'd0;
    end else if (p_Result_89_fu_359_p3[1] == 1'b1) begin
        l_fu_367_p3 = 32'd1;
    end else if (p_Result_89_fu_359_p3[2] == 1'b1) begin
        l_fu_367_p3 = 32'd2;
    end else if (p_Result_89_fu_359_p3[3] == 1'b1) begin
        l_fu_367_p3 = 32'd3;
    end else if (p_Result_89_fu_359_p3[4] == 1'b1) begin
        l_fu_367_p3 = 32'd4;
    end else if (p_Result_89_fu_359_p3[5] == 1'b1) begin
        l_fu_367_p3 = 32'd5;
    end else if (p_Result_89_fu_359_p3[6] == 1'b1) begin
        l_fu_367_p3 = 32'd6;
    end else if (p_Result_89_fu_359_p3[7] == 1'b1) begin
        l_fu_367_p3 = 32'd7;
    end else if (p_Result_89_fu_359_p3[8] == 1'b1) begin
        l_fu_367_p3 = 32'd8;
    end else if (p_Result_89_fu_359_p3[9] == 1'b1) begin
        l_fu_367_p3 = 32'd9;
    end else if (p_Result_89_fu_359_p3[10] == 1'b1) begin
        l_fu_367_p3 = 32'd10;
    end else if (p_Result_89_fu_359_p3[11] == 1'b1) begin
        l_fu_367_p3 = 32'd11;
    end else if (p_Result_89_fu_359_p3[12] == 1'b1) begin
        l_fu_367_p3 = 32'd12;
    end else if (p_Result_89_fu_359_p3[13] == 1'b1) begin
        l_fu_367_p3 = 32'd13;
    end else if (p_Result_89_fu_359_p3[14] == 1'b1) begin
        l_fu_367_p3 = 32'd14;
    end else if (p_Result_89_fu_359_p3[15] == 1'b1) begin
        l_fu_367_p3 = 32'd15;
    end else if (p_Result_89_fu_359_p3[16] == 1'b1) begin
        l_fu_367_p3 = 32'd16;
    end else if (p_Result_89_fu_359_p3[17] == 1'b1) begin
        l_fu_367_p3 = 32'd17;
    end else if (p_Result_89_fu_359_p3[18] == 1'b1) begin
        l_fu_367_p3 = 32'd18;
    end else if (p_Result_89_fu_359_p3[19] == 1'b1) begin
        l_fu_367_p3 = 32'd19;
    end else if (p_Result_89_fu_359_p3[20] == 1'b1) begin
        l_fu_367_p3 = 32'd20;
    end else if (p_Result_89_fu_359_p3[21] == 1'b1) begin
        l_fu_367_p3 = 32'd21;
    end else if (p_Result_89_fu_359_p3[22] == 1'b1) begin
        l_fu_367_p3 = 32'd22;
    end else if (p_Result_89_fu_359_p3[23] == 1'b1) begin
        l_fu_367_p3 = 32'd23;
    end else if (p_Result_89_fu_359_p3[24] == 1'b1) begin
        l_fu_367_p3 = 32'd24;
    end else if (p_Result_89_fu_359_p3[25] == 1'b1) begin
        l_fu_367_p3 = 32'd25;
    end else if (p_Result_89_fu_359_p3[26] == 1'b1) begin
        l_fu_367_p3 = 32'd26;
    end else if (p_Result_89_fu_359_p3[27] == 1'b1) begin
        l_fu_367_p3 = 32'd27;
    end else if (p_Result_89_fu_359_p3[28] == 1'b1) begin
        l_fu_367_p3 = 32'd28;
    end else if (p_Result_89_fu_359_p3[29] == 1'b1) begin
        l_fu_367_p3 = 32'd29;
    end else if (p_Result_89_fu_359_p3[30] == 1'b1) begin
        l_fu_367_p3 = 32'd30;
    end else if (p_Result_89_fu_359_p3[31] == 1'b1) begin
        l_fu_367_p3 = 32'd31;
    end else begin
        l_fu_367_p3 = 32'd32;
    end
end

assign lsb_index_fu_385_p2 = ($signed(32'd4294967243) + $signed(sub_ln894_fu_375_p2));

assign lshr_ln897_fu_421_p2 = 22'd4194303 >> zext_ln897_fu_417_p1;

assign lshr_ln908_fu_513_p2 = zext_ln907_5_fu_497_p1 >> add_ln908_fu_507_p2;

assign m_22_fu_539_p3 = ((icmp_ln908_fu_501_p2[0:0] === 1'b1) ? zext_ln908_fu_519_p1 : shl_ln908_fu_533_p2);

assign m_23_fu_551_p2 = (zext_ln911_fu_547_p1 + m_22_fu_539_p3);

assign m_26_fu_585_p1 = m_s_reg_1351;

assign m_fu_493_p1 = tmp_V_8_fu_339_p2;

assign man_V_21_fu_684_p2 = (54'd0 - p_Result_92_fu_680_p1);

assign man_V_22_fu_690_p3 = ((p_Result_91_fu_646_p3[0:0] === 1'b1) ? man_V_21_fu_684_p2 : p_Result_92_fu_680_p1);

assign man_V_24_fu_963_p2 = (54'd0 - p_Result_94_fu_959_p1);

assign man_V_25_fu_969_p3 = ((p_Result_93_fu_925_p3[0:0] === 1'b1) ? man_V_24_fu_963_p2 : p_Result_94_fu_959_p1);

assign mul_ln1192_fu_1284_p0 = sext_ln1118_13_reg_1393;

assign mul_ln1192_fu_1284_p1 = sext_ln1118_14_fu_1245_p1;

assign mul_ln1192_fu_1284_p2 = ($signed(mul_ln1192_fu_1284_p0) * $signed(mul_ln1192_fu_1284_p1));

assign mul_ln1193_fu_1258_p0 = sext_ln1118_13_reg_1393;

assign mul_ln1193_fu_1258_p1 = sext_ln1118_15_fu_1249_p1;

assign mul_ln1193_fu_1258_p2 = ($signed(mul_ln1193_fu_1258_p0) * $signed(mul_ln1193_fu_1258_p1));

assign mul_ln700_5_fu_1279_p0 = sext_ln1118_15_fu_1249_p1;

assign mul_ln700_5_fu_1279_p1 = sext_ln1118_reg_1387;

assign mul_ln700_5_fu_1279_p2 = ($signed(mul_ln700_5_fu_1279_p0) * $signed(mul_ln700_5_fu_1279_p1));

assign mul_ln700_fu_1253_p0 = sext_ln1118_reg_1387;

assign mul_ln700_fu_1253_p1 = sext_ln1118_14_fu_1245_p1;

assign mul_ln700_fu_1253_p2 = ($signed(mul_ln700_fu_1253_p0) * $signed(mul_ln700_fu_1253_p1));

assign or_ln581_5_fu_1129_p2 = (or_ln582_5_fu_1093_p2 | icmp_ln581_fu_989_p2);

assign or_ln581_fu_850_p2 = (or_ln582_fu_814_p2 | icmp_ln581_1_fu_710_p2);

assign or_ln582_5_fu_1093_p2 = (icmp_ln582_fu_1023_p2 | icmp_ln571_fu_977_p2);

assign or_ln582_fu_814_p2 = (icmp_ln582_1_fu_744_p2 | icmp_ln571_1_fu_698_p2);

assign or_ln603_21_fu_890_p2 = (and_ln585_fu_838_p2 | and_ln582_fu_808_p2);

assign or_ln603_22_fu_904_p2 = (or_ln603_fu_876_p2 | or_ln603_21_fu_890_p2);

assign or_ln603_23_fu_1155_p2 = (and_ln603_5_fu_1141_p2 | and_ln585_15_fu_1123_p2);

assign or_ln603_24_fu_1169_p2 = (and_ln585_14_fu_1117_p2 | and_ln582_5_fu_1087_p2);

assign or_ln603_25_fu_1183_p2 = (or_ln603_24_fu_1169_p2 | or_ln603_23_fu_1155_p2);

assign or_ln603_fu_876_p2 = (and_ln603_fu_862_p2 | and_ln585_13_fu_844_p2);

assign or_ln899_fu_479_p2 = (and_ln899_fu_473_p2 | a_fu_439_p2);

assign or_ln_fu_485_p3 = {{31'd0}, {or_ln899_fu_479_p2}};

assign p_Result_81_fu_427_p2 = (zext_ln889_fu_345_p1 & lshr_ln897_fu_421_p2);

assign p_Result_83_fu_465_p3 = zext_ln889_fu_345_p1[add_ln899_fu_459_p2];

assign p_Result_89_fu_359_p3 = {{10'd1023}, {p_Result_s_fu_349_p4}};

assign p_Result_90_fu_614_p5 = {{tmp_7_fu_606_p3}, {m_26_fu_585_p1[51:0]}};

assign p_Result_91_fu_646_p3 = ireg_V_fu_639_p1[32'd63];

assign p_Result_92_fu_680_p1 = tmp_8_fu_672_p3;

assign p_Result_93_fu_925_p3 = ireg_V_5_fu_918_p1[32'd63];

assign p_Result_94_fu_959_p1 = tmp_9_fu_951_p3;

integer ap_tvar_int_0;

always @ (zext_ln889_fu_345_p1) begin
    for (ap_tvar_int_0 = 22 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 21 - 0) begin
            p_Result_s_fu_349_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_s_fu_349_p4[ap_tvar_int_0] = zext_ln889_fu_345_p1[21 - ap_tvar_int_0];
        end
    end
end

assign ret_V_17_fu_1289_p2 = (mul_ln1192_fu_1284_p2 + mul_ln700_5_fu_1279_p2);

assign ret_V_fu_1263_p2 = (mul_ln700_fu_1253_p2 - mul_ln1193_fu_1258_p2);

assign s_V_fu_1189_p3 = ((or_ln603_25_fu_1183_p2[0:0] === 1'b1) ? select_ln603_34_fu_1175_p3 : 22'd0);

assign select_ln588_5_fu_1067_p3 = ((tmp_44_fu_1059_p3[0:0] === 1'b1) ? 22'd4194303 : 22'd0);

assign select_ln588_fu_788_p3 = ((tmp_42_fu_780_p3[0:0] === 1'b1) ? 22'd4194303 : 22'd0);

assign select_ln603_29_fu_882_p3 = ((and_ln585_fu_838_p2[0:0] === 1'b1) ? select_ln588_fu_788_p3 : trunc_ln583_fu_750_p1);

assign select_ln603_30_fu_896_p3 = ((or_ln603_fu_876_p2[0:0] === 1'b1) ? select_ln603_fu_868_p3 : select_ln603_29_fu_882_p3);

assign select_ln603_32_fu_1147_p3 = ((and_ln603_5_fu_1141_p2[0:0] === 1'b1) ? shl_ln604_fu_1075_p2 : trunc_ln586_5_fu_1055_p1);

assign select_ln603_33_fu_1161_p3 = ((and_ln585_14_fu_1117_p2[0:0] === 1'b1) ? select_ln588_5_fu_1067_p3 : trunc_ln583_5_fu_1029_p1);

assign select_ln603_34_fu_1175_p3 = ((or_ln603_23_fu_1155_p2[0:0] === 1'b1) ? select_ln603_32_fu_1147_p3 : select_ln603_33_fu_1161_p3);

assign select_ln603_fu_868_p3 = ((and_ln603_fu_862_p2[0:0] === 1'b1) ? shl_ln604_1_fu_796_p2 : trunc_ln586_fu_776_p1);

assign select_ln885_fu_630_p3 = ((icmp_ln885_reg_1346[0:0] === 1'b1) ? 64'd0 : bitcast_ln729_fu_626_p1);

assign select_ln915_fu_588_p3 = ((tmp_40_reg_1356[0:0] === 1'b1) ? 11'd1023 : 11'd1022);

assign sext_ln1118_13_fu_1201_p1 = $signed(s_V_fu_1189_p3);

assign sext_ln1118_14_fu_1245_p1 = $signed(X_R_V_q0);

assign sext_ln1118_15_fu_1249_p1 = $signed(X_I_V_q0);

assign sext_ln1118_fu_1197_p1 = $signed(c_V_fu_910_p3);

assign sext_ln55_fu_1227_p1 = $signed(i_lower_fu_1221_p2);

assign sext_ln57_fu_1233_p1 = i_0_reg_270;

assign sext_ln581_13_fu_740_p1 = sh_amt_fu_728_p3;

assign sext_ln581_14_fu_1015_p1 = sh_amt_5_fu_1007_p3;

assign sext_ln581_15_fu_1019_p1 = sh_amt_5_fu_1007_p3;

assign sext_ln581_fu_736_p1 = sh_amt_fu_728_p3;

assign sh_amt_5_fu_1007_p3 = ((icmp_ln581_fu_989_p2[0:0] === 1'b1) ? add_ln581_fu_995_p2 : sub_ln581_fu_1001_p2);

assign sh_amt_fu_728_p3 = ((icmp_ln581_1_fu_710_p2[0:0] === 1'b1) ? add_ln581_1_fu_716_p2 : sub_ln581_1_fu_722_p2);

assign shl_ln604_1_fu_796_p2 = trunc_ln583_fu_750_p1 << sext_ln581_13_fu_740_p1;

assign shl_ln604_fu_1075_p2 = trunc_ln583_5_fu_1029_p1 << sext_ln581_15_fu_1019_p1;

assign shl_ln908_fu_533_p2 = m_fu_493_p1 << zext_ln908_1_fu_529_p1;

assign sub_ln581_1_fu_722_p2 = (12'd11 - F2_fu_704_p2);

assign sub_ln581_fu_1001_p2 = (12'd11 - F2_5_fu_983_p2);

assign sub_ln894_fu_375_p2 = (32'd22 - l_fu_367_p3);

assign sub_ln897_fu_411_p2 = (5'd12 - trunc_ln897_fu_407_p1);

assign sub_ln908_fu_523_p2 = (32'd54 - sub_ln894_fu_375_p2);

assign sub_ln915_fu_595_p2 = (11'd11 - trunc_ln893_reg_1361);

assign temp_I_V_fu_1295_p4 = {{ret_V_17_fu_1289_p2[32:11]}};

assign temp_R_V_fu_1269_p4 = {{ret_V_fu_1263_p2[32:11]}};

assign tmp_39_fu_445_p3 = lsb_index_fu_385_p2[32'd31];

assign tmp_42_fu_780_p3 = ireg_V_fu_639_p1[32'd63];

assign tmp_44_fu_1059_p3 = ireg_V_5_fu_918_p1[32'd63];

assign tmp_45_fu_1205_p4 = {{i_0_reg_270[31:10]}};

assign tmp_7_fu_606_p3 = {{1'd1}, {add_ln915_fu_600_p2}};

assign tmp_8_fu_672_p3 = {{1'd1}, {trunc_ln565_fu_668_p1}};

assign tmp_9_fu_951_p3 = {{1'd1}, {trunc_ln565_5_fu_947_p1}};

assign tmp_V_8_fu_339_p2 = (14'd0 - tmp_V_reg_248);

assign tmp_fu_391_p4 = {{lsb_index_fu_385_p2[31:1]}};

assign trunc_ln556_5_fu_921_p1 = ireg_V_5_fu_918_p1[62:0];

assign trunc_ln556_fu_642_p1 = ireg_V_fu_639_p1[62:0];

assign trunc_ln565_5_fu_947_p1 = ireg_V_5_fu_918_p1[51:0];

assign trunc_ln565_fu_668_p1 = ireg_V_fu_639_p1[51:0];

assign trunc_ln583_5_fu_1029_p1 = man_V_25_fu_969_p3[21:0];

assign trunc_ln583_fu_750_p1 = man_V_22_fu_690_p3[21:0];

assign trunc_ln586_5_fu_1055_p1 = ashr_ln586_fu_1049_p2[21:0];

assign trunc_ln586_fu_776_p1 = ashr_ln586_1_fu_770_p2[21:0];

assign trunc_ln893_fu_575_p1 = l_fu_367_p3[10:0];

assign trunc_ln894_fu_381_p1 = sub_ln894_fu_375_p2[21:0];

assign trunc_ln897_fu_407_p1 = sub_ln894_fu_375_p2[4:0];

assign xor_ln571_5_fu_1081_p2 = (icmp_ln571_fu_977_p2 ^ 1'd1);

assign xor_ln571_fu_802_p2 = (icmp_ln571_1_fu_698_p2 ^ 1'd1);

assign xor_ln581_5_fu_1135_p2 = (or_ln581_5_fu_1129_p2 ^ 1'd1);

assign xor_ln581_fu_856_p2 = (or_ln581_fu_850_p2 ^ 1'd1);

assign xor_ln582_5_fu_1099_p2 = (or_ln582_5_fu_1093_p2 ^ 1'd1);

assign xor_ln582_fu_820_p2 = (or_ln582_fu_814_p2 ^ 1'd1);

assign xor_ln585_5_fu_1111_p2 = (icmp_ln585_fu_1033_p2 ^ 1'd1);

assign xor_ln585_fu_832_p2 = (icmp_ln585_1_fu_754_p2 ^ 1'd1);

assign xor_ln899_fu_453_p2 = (tmp_39_fu_445_p3 ^ 1'd1);

assign zext_ln461_1_fu_664_p1 = exp_tmp_V_fu_654_p4;

assign zext_ln461_fu_943_p1 = exp_tmp_V_5_fu_933_p4;

assign zext_ln586_1_fu_766_p1 = $unsigned(sext_ln581_fu_736_p1);

assign zext_ln586_fu_1045_p1 = $unsigned(sext_ln581_14_fu_1015_p1);

assign zext_ln889_fu_345_p1 = tmp_V_8_fu_339_p2;

assign zext_ln891_fu_317_p1 = i_reg_259;

assign zext_ln897_fu_417_p1 = sub_ln897_fu_411_p2;

assign zext_ln907_5_fu_497_p1 = tmp_V_8_fu_339_p2;

assign zext_ln908_1_fu_529_p1 = sub_ln908_fu_523_p2;

assign zext_ln908_fu_519_p1 = lshr_ln908_fu_513_p2;

assign zext_ln911_fu_547_p1 = or_ln_fu_485_p3;

always @ (posedge ap_clk) begin
    zext_ln891_reg_1333[31:6] <= 26'b00000000000000000000000000;
end

endmodule //fft_stage86
