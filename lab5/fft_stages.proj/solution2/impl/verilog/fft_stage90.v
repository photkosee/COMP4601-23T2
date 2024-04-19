// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_stage90 (
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
reg  signed [31:0] i_0_reg_279;
wire   [9:0] j_fu_332_p2;
reg   [9:0] j_reg_1345;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln885_fu_338_p2;
reg   [0:0] icmp_ln885_reg_1350;
wire   [0:0] icmp_ln47_fu_326_p2;
reg   [62:0] m_5_reg_1355;
reg   [0:0] tmp_12_reg_1360;
wire   [10:0] trunc_ln893_fu_580_p1;
reg   [10:0] trunc_ln893_reg_1365;
wire   [13:0] a_V_fu_584_p2;
reg   [13:0] a_V_reg_1370;
wire   [63:0] select_ln885_fu_635_p3;
reg   [63:0] select_ln885_reg_1375;
wire    ap_CS_fsm_state3;
wire   [63:0] grp_sin_or_cos_double_s_fu_288_ap_return;
reg   [63:0] v_assign_reg_1381;
wire    ap_CS_fsm_state4;
wire    grp_sin_or_cos_double_s_fu_288_ap_ready;
wire    grp_sin_or_cos_double_s_fu_288_ap_done;
wire    grp_sin_or_cos_double_s_fu_307_ap_ready;
wire    grp_sin_or_cos_double_s_fu_307_ap_done;
reg    ap_block_state4_on_subcall_done;
wire   [63:0] grp_sin_or_cos_double_s_fu_307_ap_return;
reg   [63:0] v_assign_1_reg_1386;
wire   [31:0] zext_ln891_fu_644_p1;
wire    ap_CS_fsm_state5;
wire  signed [32:0] sext_ln1118_fu_1206_p1;
reg  signed [32:0] sext_ln1118_reg_1396;
wire  signed [32:0] sext_ln1118_1_fu_1210_p1;
reg  signed [32:0] sext_ln1118_1_reg_1402;
wire   [0:0] icmp_ln53_fu_1224_p2;
reg   [0:0] icmp_ln53_reg_1408;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state6_pp0_stage0_iter0;
wire    ap_block_state7_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln55_fu_1236_p1;
reg  signed [63:0] sext_ln55_reg_1412;
wire  signed [63:0] sext_ln57_fu_1242_p1;
reg  signed [63:0] sext_ln57_reg_1428;
wire   [31:0] i_3_fu_1248_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state6;
reg    ap_enable_reg_pp0_iter1;
wire    grp_sin_or_cos_double_s_fu_288_ap_start;
wire    grp_sin_or_cos_double_s_fu_288_ap_idle;
wire    grp_sin_or_cos_double_s_fu_288_do_cos;
wire    grp_sin_or_cos_double_s_fu_307_ap_start;
wire    grp_sin_or_cos_double_s_fu_307_ap_idle;
wire    grp_sin_or_cos_double_s_fu_307_do_cos;
reg   [13:0] tmp_V_reg_256;
reg    ap_block_state1;
wire    ap_CS_fsm_state8;
reg   [9:0] i_reg_267;
reg    grp_sin_or_cos_double_s_fu_288_ap_start_reg;
reg    grp_sin_or_cos_double_s_fu_307_ap_start_reg;
wire    ap_block_pp0_stage0;
wire   [13:0] tmp_V_4_fu_344_p2;
wire   [21:0] zext_ln889_fu_350_p1;
reg   [21:0] p_Result_s_fu_354_p4;
wire   [31:0] p_Result_31_fu_364_p3;
reg   [31:0] l_fu_372_p3;
wire   [31:0] sub_ln894_fu_380_p2;
wire   [31:0] lsb_index_fu_390_p2;
wire   [30:0] tmp_fu_396_p4;
wire   [4:0] trunc_ln897_fu_412_p1;
wire   [4:0] sub_ln897_fu_416_p2;
wire   [21:0] zext_ln897_fu_422_p1;
wire   [21:0] lshr_ln897_fu_426_p2;
wire   [21:0] p_Result_25_fu_432_p2;
wire   [0:0] icmp_ln897_fu_406_p2;
wire   [0:0] icmp_ln897_1_fu_438_p2;
wire   [0:0] tmp_11_fu_450_p3;
wire   [21:0] trunc_ln894_fu_386_p1;
wire   [21:0] add_ln899_fu_464_p2;
wire   [0:0] p_Result_4_fu_470_p3;
wire   [0:0] xor_ln899_fu_458_p2;
wire   [0:0] and_ln899_fu_478_p2;
wire   [0:0] a_fu_444_p2;
wire   [0:0] or_ln899_fu_484_p2;
wire   [31:0] zext_ln907_1_fu_502_p1;
wire   [31:0] add_ln908_fu_512_p2;
wire   [31:0] lshr_ln908_fu_518_p2;
wire   [31:0] sub_ln908_fu_528_p2;
wire   [63:0] m_fu_498_p1;
wire   [63:0] zext_ln908_1_fu_534_p1;
wire   [0:0] icmp_ln908_fu_506_p2;
wire   [63:0] zext_ln908_fu_524_p1;
wire   [63:0] shl_ln908_fu_538_p2;
wire   [31:0] or_ln_fu_490_p3;
wire   [63:0] zext_ln911_fu_552_p1;
wire   [63:0] m_1_fu_544_p3;
wire   [63:0] m_2_fu_556_p2;
wire   [10:0] sub_ln915_fu_600_p2;
wire   [10:0] select_ln915_fu_593_p3;
wire   [10:0] add_ln915_fu_605_p2;
wire   [63:0] m_6_fu_590_p1;
wire   [11:0] tmp_8_fu_611_p3;
wire   [63:0] p_Result_32_fu_619_p5;
wire   [63:0] bitcast_ln729_fu_631_p1;
wire   [63:0] ireg_V_fu_648_p1;
wire   [10:0] exp_tmp_V_fu_663_p4;
wire   [51:0] trunc_ln565_fu_677_p1;
wire   [52:0] tmp_9_fu_681_p3;
wire   [53:0] p_Result_34_fu_689_p1;
wire   [0:0] p_Result_33_fu_655_p3;
wire   [53:0] man_V_1_fu_693_p2;
wire   [62:0] trunc_ln556_fu_651_p1;
wire   [11:0] zext_ln461_fu_673_p1;
wire   [11:0] F2_fu_713_p2;
wire   [0:0] icmp_ln581_fu_719_p2;
wire   [11:0] add_ln581_fu_725_p2;
wire   [11:0] sub_ln581_fu_731_p2;
wire  signed [11:0] sh_amt_fu_737_p3;
wire   [53:0] man_V_2_fu_699_p3;
wire  signed [31:0] sext_ln581_fu_745_p1;
wire   [53:0] zext_ln586_fu_775_p1;
wire   [53:0] ashr_ln586_fu_779_p2;
wire   [0:0] tmp_14_fu_789_p3;
wire   [21:0] trunc_ln583_fu_759_p1;
wire  signed [21:0] sext_ln581_1_fu_749_p1;
wire   [0:0] icmp_ln571_fu_707_p2;
wire   [0:0] icmp_ln582_fu_753_p2;
wire   [0:0] xor_ln571_fu_811_p2;
wire   [0:0] or_ln582_fu_823_p2;
wire   [0:0] xor_ln582_fu_829_p2;
wire   [0:0] icmp_ln585_fu_763_p2;
wire   [0:0] and_ln581_fu_835_p2;
wire   [0:0] xor_ln585_fu_841_p2;
wire   [0:0] or_ln581_fu_859_p2;
wire   [0:0] icmp_ln603_fu_769_p2;
wire   [0:0] xor_ln581_fu_865_p2;
wire   [0:0] and_ln603_fu_871_p2;
wire   [21:0] shl_ln604_fu_805_p2;
wire   [21:0] trunc_ln586_fu_785_p1;
wire   [0:0] and_ln585_1_fu_853_p2;
wire   [0:0] and_ln585_fu_847_p2;
wire   [21:0] select_ln588_fu_797_p3;
wire   [0:0] and_ln582_fu_817_p2;
wire   [0:0] or_ln603_fu_885_p2;
wire   [21:0] select_ln603_fu_877_p3;
wire   [21:0] select_ln603_1_fu_891_p3;
wire   [0:0] or_ln603_1_fu_899_p2;
wire   [0:0] or_ln603_2_fu_913_p2;
wire   [21:0] select_ln603_2_fu_905_p3;
wire   [63:0] ireg_V_1_fu_927_p1;
wire   [10:0] exp_tmp_V_1_fu_942_p4;
wire   [51:0] trunc_ln565_1_fu_956_p1;
wire   [52:0] tmp_2_fu_960_p3;
wire   [53:0] p_Result_36_fu_968_p1;
wire   [0:0] p_Result_35_fu_934_p3;
wire   [53:0] man_V_4_fu_972_p2;
wire   [62:0] trunc_ln556_1_fu_930_p1;
wire   [11:0] zext_ln461_1_fu_952_p1;
wire   [11:0] F2_1_fu_992_p2;
wire   [0:0] icmp_ln581_1_fu_998_p2;
wire   [11:0] add_ln581_1_fu_1004_p2;
wire   [11:0] sub_ln581_1_fu_1010_p2;
wire  signed [11:0] sh_amt_1_fu_1016_p3;
wire   [53:0] man_V_5_fu_978_p3;
wire  signed [31:0] sext_ln581_2_fu_1024_p1;
wire   [53:0] zext_ln586_1_fu_1054_p1;
wire   [53:0] ashr_ln586_1_fu_1058_p2;
wire   [0:0] tmp_16_fu_1068_p3;
wire   [21:0] trunc_ln583_1_fu_1038_p1;
wire  signed [21:0] sext_ln581_3_fu_1028_p1;
wire   [0:0] icmp_ln571_1_fu_986_p2;
wire   [0:0] icmp_ln582_1_fu_1032_p2;
wire   [0:0] xor_ln571_1_fu_1090_p2;
wire   [0:0] or_ln582_1_fu_1102_p2;
wire   [0:0] xor_ln582_1_fu_1108_p2;
wire   [0:0] icmp_ln585_1_fu_1042_p2;
wire   [0:0] and_ln581_1_fu_1114_p2;
wire   [0:0] xor_ln585_1_fu_1120_p2;
wire   [0:0] or_ln581_1_fu_1138_p2;
wire   [0:0] icmp_ln603_1_fu_1048_p2;
wire   [0:0] xor_ln581_1_fu_1144_p2;
wire   [0:0] and_ln603_1_fu_1150_p2;
wire   [21:0] shl_ln604_1_fu_1084_p2;
wire   [21:0] trunc_ln586_1_fu_1064_p1;
wire   [0:0] and_ln585_3_fu_1132_p2;
wire   [0:0] and_ln585_2_fu_1126_p2;
wire   [21:0] select_ln588_1_fu_1076_p3;
wire   [0:0] and_ln582_1_fu_1096_p2;
wire   [0:0] or_ln603_3_fu_1164_p2;
wire   [21:0] select_ln603_4_fu_1156_p3;
wire   [21:0] select_ln603_5_fu_1170_p3;
wire   [0:0] or_ln603_4_fu_1178_p2;
wire   [0:0] or_ln603_5_fu_1192_p2;
wire   [21:0] select_ln603_6_fu_1184_p3;
wire   [21:0] c_V_fu_919_p3;
wire   [21:0] s_V_fu_1198_p3;
wire   [21:0] tmp_17_fu_1214_p4;
wire   [31:0] i_lower_fu_1230_p2;
wire  signed [21:0] mul_ln700_fu_1262_p0;
wire  signed [21:0] mul_ln700_fu_1262_p1;
wire  signed [32:0] sext_ln1118_2_fu_1254_p1;
wire  signed [21:0] mul_ln1193_fu_1267_p0;
wire  signed [21:0] mul_ln1193_fu_1267_p1;
wire  signed [32:0] sext_ln1118_3_fu_1258_p1;
wire   [32:0] mul_ln700_fu_1262_p2;
wire   [32:0] mul_ln1193_fu_1267_p2;
wire   [32:0] ret_V_fu_1272_p2;
wire  signed [21:0] mul_ln700_1_fu_1288_p0;
wire  signed [21:0] mul_ln700_1_fu_1288_p1;
wire  signed [21:0] mul_ln1192_fu_1293_p0;
wire  signed [21:0] mul_ln1192_fu_1293_p1;
wire   [32:0] mul_ln1192_fu_1293_p2;
wire   [32:0] mul_ln700_1_fu_1288_p2;
wire   [32:0] ret_V_13_fu_1298_p2;
wire   [21:0] temp_R_V_fu_1278_p4;
wire   [21:0] temp_I_V_fu_1304_p4;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_sin_or_cos_double_s_fu_288_ap_start_reg = 1'b0;
#0 grp_sin_or_cos_double_s_fu_307_ap_start_reg = 1'b0;
end

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_288(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_288_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_288_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_288_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_288_ap_ready),
    .t_in(select_ln885_reg_1375),
    .do_cos(grp_sin_or_cos_double_s_fu_288_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_288_ap_return)
);

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_307(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_307_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_307_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_307_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_307_ap_ready),
    .t_in(select_ln885_reg_1375),
    .do_cos(grp_sin_or_cos_double_s_fu_307_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_307_ap_return)
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
        end else if (((icmp_ln47_fu_326_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
        grp_sin_or_cos_double_s_fu_288_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_sin_or_cos_double_s_fu_288_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_288_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_288_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_307_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_sin_or_cos_double_s_fu_307_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_307_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_307_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_fu_1224_p2 == 1'd1))) begin
        i_0_reg_279 <= i_3_fu_1248_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_reg_279 <= zext_ln891_fu_644_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_267 <= j_reg_1345;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_267 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_V_reg_256 <= a_V_reg_1370;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_reg_256 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln47_fu_326_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        a_V_reg_1370 <= a_V_fu_584_p2;
        icmp_ln885_reg_1350 <= icmp_ln885_fu_338_p2;
        m_5_reg_1355 <= {{m_2_fu_556_p2[63:1]}};
        tmp_12_reg_1360 <= m_2_fu_556_p2[32'd54];
        trunc_ln893_reg_1365 <= trunc_ln893_fu_580_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln53_reg_1408 <= icmp_ln53_fu_1224_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        j_reg_1345 <= j_fu_332_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        select_ln885_reg_1375 <= select_ln885_fu_635_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sext_ln1118_1_reg_1402 <= sext_ln1118_1_fu_1210_p1;
        sext_ln1118_reg_1396 <= sext_ln1118_fu_1206_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_fu_1224_p2 == 1'd1))) begin
        sext_ln55_reg_1412 <= sext_ln55_fu_1236_p1;
        sext_ln57_reg_1428 <= sext_ln57_fu_1242_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
        v_assign_1_reg_1386 <= grp_sin_or_cos_double_s_fu_307_ap_return;
        v_assign_reg_1381 <= grp_sin_or_cos_double_s_fu_288_ap_return;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_reg_1408 == 1'd1))) begin
        Out_I_V_we0 = 1'b1;
    end else begin
        Out_I_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_reg_1408 == 1'd1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_reg_1408 == 1'd1))) begin
        Out_R_V_we0 = 1'b1;
    end else begin
        Out_R_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_reg_1408 == 1'd1))) begin
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
    if ((icmp_ln53_fu_1224_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_fu_326_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln47_fu_326_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln47_fu_326_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln53_fu_1224_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln53_fu_1224_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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

assign F2_1_fu_992_p2 = (12'd1075 - zext_ln461_1_fu_952_p1);

assign F2_fu_713_p2 = (12'd1075 - zext_ln461_fu_673_p1);

assign Out_I_V_address0 = sext_ln55_reg_1412;

assign Out_I_V_address1 = sext_ln57_reg_1428;

assign Out_I_V_d0 = (X_I_V_q1 - temp_I_V_fu_1304_p4);

assign Out_I_V_d1 = (X_I_V_q1 + temp_I_V_fu_1304_p4);

assign Out_R_V_address0 = sext_ln55_reg_1412;

assign Out_R_V_address1 = sext_ln57_reg_1428;

assign Out_R_V_d0 = (X_R_V_q1 - temp_R_V_fu_1278_p4);

assign Out_R_V_d1 = (X_R_V_q1 + temp_R_V_fu_1278_p4);

assign X_I_V_address0 = sext_ln55_fu_1236_p1;

assign X_I_V_address1 = sext_ln57_fu_1242_p1;

assign X_R_V_address0 = sext_ln55_fu_1236_p1;

assign X_R_V_address1 = sext_ln57_fu_1242_p1;

assign a_V_fu_584_p2 = ($signed(14'd16371) + $signed(tmp_V_reg_256));

assign a_fu_444_p2 = (icmp_ln897_fu_406_p2 & icmp_ln897_1_fu_438_p2);

assign add_ln581_1_fu_1004_p2 = ($signed(12'd4085) + $signed(F2_1_fu_992_p2));

assign add_ln581_fu_725_p2 = ($signed(12'd4085) + $signed(F2_fu_713_p2));

assign add_ln899_fu_464_p2 = ($signed(22'd4194251) + $signed(trunc_ln894_fu_386_p1));

assign add_ln908_fu_512_p2 = ($signed(32'd4294967242) + $signed(sub_ln894_fu_380_p2));

assign add_ln915_fu_605_p2 = (sub_ln915_fu_600_p2 + select_ln915_fu_593_p3);

assign and_ln581_1_fu_1114_p2 = (xor_ln582_1_fu_1108_p2 & icmp_ln581_1_fu_998_p2);

assign and_ln581_fu_835_p2 = (xor_ln582_fu_829_p2 & icmp_ln581_fu_719_p2);

assign and_ln582_1_fu_1096_p2 = (xor_ln571_1_fu_1090_p2 & icmp_ln582_1_fu_1032_p2);

assign and_ln582_fu_817_p2 = (xor_ln571_fu_811_p2 & icmp_ln582_fu_753_p2);

assign and_ln585_1_fu_853_p2 = (icmp_ln585_fu_763_p2 & and_ln581_fu_835_p2);

assign and_ln585_2_fu_1126_p2 = (xor_ln585_1_fu_1120_p2 & and_ln581_1_fu_1114_p2);

assign and_ln585_3_fu_1132_p2 = (icmp_ln585_1_fu_1042_p2 & and_ln581_1_fu_1114_p2);

assign and_ln585_fu_847_p2 = (xor_ln585_fu_841_p2 & and_ln581_fu_835_p2);

assign and_ln603_1_fu_1150_p2 = (xor_ln581_1_fu_1144_p2 & icmp_ln603_1_fu_1048_p2);

assign and_ln603_fu_871_p2 = (xor_ln581_fu_865_p2 & icmp_ln603_fu_769_p2);

assign and_ln899_fu_478_p2 = (xor_ln899_fu_458_p2 & p_Result_4_fu_470_p3);

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
    ap_block_state4_on_subcall_done = ((grp_sin_or_cos_double_s_fu_307_ap_done == 1'b0) | (grp_sin_or_cos_double_s_fu_288_ap_done == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ashr_ln586_1_fu_1058_p2 = $signed(man_V_5_fu_978_p3) >>> zext_ln586_1_fu_1054_p1;

assign ashr_ln586_fu_779_p2 = $signed(man_V_2_fu_699_p3) >>> zext_ln586_fu_775_p1;

assign bitcast_ln729_fu_631_p1 = p_Result_32_fu_619_p5;

assign c_V_fu_919_p3 = ((or_ln603_2_fu_913_p2[0:0] === 1'b1) ? select_ln603_2_fu_905_p3 : 22'd0);

assign exp_tmp_V_1_fu_942_p4 = {{ireg_V_1_fu_927_p1[62:52]}};

assign exp_tmp_V_fu_663_p4 = {{ireg_V_fu_648_p1[62:52]}};

assign grp_sin_or_cos_double_s_fu_288_ap_start = grp_sin_or_cos_double_s_fu_288_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_288_do_cos = 1'd1;

assign grp_sin_or_cos_double_s_fu_307_ap_start = grp_sin_or_cos_double_s_fu_307_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_307_do_cos = 1'd0;

assign i_3_fu_1248_p2 = ($signed(i_0_reg_279) + $signed(32'd1024));

assign i_lower_fu_1230_p2 = ($signed(i_0_reg_279) + $signed(32'd512));

assign icmp_ln47_fu_326_p2 = ((i_reg_267 == 10'd512) ? 1'b1 : 1'b0);

assign icmp_ln53_fu_1224_p2 = (($signed(tmp_17_fu_1214_p4) < $signed(22'd1)) ? 1'b1 : 1'b0);

assign icmp_ln571_1_fu_986_p2 = ((trunc_ln556_1_fu_930_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln571_fu_707_p2 = ((trunc_ln556_fu_651_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln581_1_fu_998_p2 = (($signed(F2_1_fu_992_p2) > $signed(12'd11)) ? 1'b1 : 1'b0);

assign icmp_ln581_fu_719_p2 = (($signed(F2_fu_713_p2) > $signed(12'd11)) ? 1'b1 : 1'b0);

assign icmp_ln582_1_fu_1032_p2 = ((F2_1_fu_992_p2 == 12'd11) ? 1'b1 : 1'b0);

assign icmp_ln582_fu_753_p2 = ((F2_fu_713_p2 == 12'd11) ? 1'b1 : 1'b0);

assign icmp_ln585_1_fu_1042_p2 = ((sh_amt_1_fu_1016_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln585_fu_763_p2 = ((sh_amt_fu_737_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln603_1_fu_1048_p2 = ((sh_amt_1_fu_1016_p3 < 12'd22) ? 1'b1 : 1'b0);

assign icmp_ln603_fu_769_p2 = ((sh_amt_fu_737_p3 < 12'd22) ? 1'b1 : 1'b0);

assign icmp_ln885_fu_338_p2 = ((tmp_V_reg_256 == 14'd0) ? 1'b1 : 1'b0);

assign icmp_ln897_1_fu_438_p2 = ((p_Result_25_fu_432_p2 != 22'd0) ? 1'b1 : 1'b0);

assign icmp_ln897_fu_406_p2 = (($signed(tmp_fu_396_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln908_fu_506_p2 = (($signed(lsb_index_fu_390_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign ireg_V_1_fu_927_p1 = v_assign_1_reg_1386;

assign ireg_V_fu_648_p1 = v_assign_reg_1381;

assign j_fu_332_p2 = (i_reg_267 + 10'd1);


always @ (p_Result_31_fu_364_p3) begin
    if (p_Result_31_fu_364_p3[0] == 1'b1) begin
        l_fu_372_p3 = 32'd0;
    end else if (p_Result_31_fu_364_p3[1] == 1'b1) begin
        l_fu_372_p3 = 32'd1;
    end else if (p_Result_31_fu_364_p3[2] == 1'b1) begin
        l_fu_372_p3 = 32'd2;
    end else if (p_Result_31_fu_364_p3[3] == 1'b1) begin
        l_fu_372_p3 = 32'd3;
    end else if (p_Result_31_fu_364_p3[4] == 1'b1) begin
        l_fu_372_p3 = 32'd4;
    end else if (p_Result_31_fu_364_p3[5] == 1'b1) begin
        l_fu_372_p3 = 32'd5;
    end else if (p_Result_31_fu_364_p3[6] == 1'b1) begin
        l_fu_372_p3 = 32'd6;
    end else if (p_Result_31_fu_364_p3[7] == 1'b1) begin
        l_fu_372_p3 = 32'd7;
    end else if (p_Result_31_fu_364_p3[8] == 1'b1) begin
        l_fu_372_p3 = 32'd8;
    end else if (p_Result_31_fu_364_p3[9] == 1'b1) begin
        l_fu_372_p3 = 32'd9;
    end else if (p_Result_31_fu_364_p3[10] == 1'b1) begin
        l_fu_372_p3 = 32'd10;
    end else if (p_Result_31_fu_364_p3[11] == 1'b1) begin
        l_fu_372_p3 = 32'd11;
    end else if (p_Result_31_fu_364_p3[12] == 1'b1) begin
        l_fu_372_p3 = 32'd12;
    end else if (p_Result_31_fu_364_p3[13] == 1'b1) begin
        l_fu_372_p3 = 32'd13;
    end else if (p_Result_31_fu_364_p3[14] == 1'b1) begin
        l_fu_372_p3 = 32'd14;
    end else if (p_Result_31_fu_364_p3[15] == 1'b1) begin
        l_fu_372_p3 = 32'd15;
    end else if (p_Result_31_fu_364_p3[16] == 1'b1) begin
        l_fu_372_p3 = 32'd16;
    end else if (p_Result_31_fu_364_p3[17] == 1'b1) begin
        l_fu_372_p3 = 32'd17;
    end else if (p_Result_31_fu_364_p3[18] == 1'b1) begin
        l_fu_372_p3 = 32'd18;
    end else if (p_Result_31_fu_364_p3[19] == 1'b1) begin
        l_fu_372_p3 = 32'd19;
    end else if (p_Result_31_fu_364_p3[20] == 1'b1) begin
        l_fu_372_p3 = 32'd20;
    end else if (p_Result_31_fu_364_p3[21] == 1'b1) begin
        l_fu_372_p3 = 32'd21;
    end else if (p_Result_31_fu_364_p3[22] == 1'b1) begin
        l_fu_372_p3 = 32'd22;
    end else if (p_Result_31_fu_364_p3[23] == 1'b1) begin
        l_fu_372_p3 = 32'd23;
    end else if (p_Result_31_fu_364_p3[24] == 1'b1) begin
        l_fu_372_p3 = 32'd24;
    end else if (p_Result_31_fu_364_p3[25] == 1'b1) begin
        l_fu_372_p3 = 32'd25;
    end else if (p_Result_31_fu_364_p3[26] == 1'b1) begin
        l_fu_372_p3 = 32'd26;
    end else if (p_Result_31_fu_364_p3[27] == 1'b1) begin
        l_fu_372_p3 = 32'd27;
    end else if (p_Result_31_fu_364_p3[28] == 1'b1) begin
        l_fu_372_p3 = 32'd28;
    end else if (p_Result_31_fu_364_p3[29] == 1'b1) begin
        l_fu_372_p3 = 32'd29;
    end else if (p_Result_31_fu_364_p3[30] == 1'b1) begin
        l_fu_372_p3 = 32'd30;
    end else if (p_Result_31_fu_364_p3[31] == 1'b1) begin
        l_fu_372_p3 = 32'd31;
    end else begin
        l_fu_372_p3 = 32'd32;
    end
end

assign lsb_index_fu_390_p2 = ($signed(32'd4294967243) + $signed(sub_ln894_fu_380_p2));

assign lshr_ln897_fu_426_p2 = 22'd4194303 >> zext_ln897_fu_422_p1;

assign lshr_ln908_fu_518_p2 = zext_ln907_1_fu_502_p1 >> add_ln908_fu_512_p2;

assign m_1_fu_544_p3 = ((icmp_ln908_fu_506_p2[0:0] === 1'b1) ? zext_ln908_fu_524_p1 : shl_ln908_fu_538_p2);

assign m_2_fu_556_p2 = (zext_ln911_fu_552_p1 + m_1_fu_544_p3);

assign m_6_fu_590_p1 = m_5_reg_1355;

assign m_fu_498_p1 = tmp_V_4_fu_344_p2;

assign man_V_1_fu_693_p2 = (54'd0 - p_Result_34_fu_689_p1);

assign man_V_2_fu_699_p3 = ((p_Result_33_fu_655_p3[0:0] === 1'b1) ? man_V_1_fu_693_p2 : p_Result_34_fu_689_p1);

assign man_V_4_fu_972_p2 = (54'd0 - p_Result_36_fu_968_p1);

assign man_V_5_fu_978_p3 = ((p_Result_35_fu_934_p3[0:0] === 1'b1) ? man_V_4_fu_972_p2 : p_Result_36_fu_968_p1);

assign mul_ln1192_fu_1293_p0 = sext_ln1118_1_reg_1402;

assign mul_ln1192_fu_1293_p1 = sext_ln1118_2_fu_1254_p1;

assign mul_ln1192_fu_1293_p2 = ($signed(mul_ln1192_fu_1293_p0) * $signed(mul_ln1192_fu_1293_p1));

assign mul_ln1193_fu_1267_p0 = sext_ln1118_1_reg_1402;

assign mul_ln1193_fu_1267_p1 = sext_ln1118_3_fu_1258_p1;

assign mul_ln1193_fu_1267_p2 = ($signed(mul_ln1193_fu_1267_p0) * $signed(mul_ln1193_fu_1267_p1));

assign mul_ln700_1_fu_1288_p0 = sext_ln1118_3_fu_1258_p1;

assign mul_ln700_1_fu_1288_p1 = sext_ln1118_reg_1396;

assign mul_ln700_1_fu_1288_p2 = ($signed(mul_ln700_1_fu_1288_p0) * $signed(mul_ln700_1_fu_1288_p1));

assign mul_ln700_fu_1262_p0 = sext_ln1118_reg_1396;

assign mul_ln700_fu_1262_p1 = sext_ln1118_2_fu_1254_p1;

assign mul_ln700_fu_1262_p2 = ($signed(mul_ln700_fu_1262_p0) * $signed(mul_ln700_fu_1262_p1));

assign or_ln581_1_fu_1138_p2 = (or_ln582_1_fu_1102_p2 | icmp_ln581_1_fu_998_p2);

assign or_ln581_fu_859_p2 = (or_ln582_fu_823_p2 | icmp_ln581_fu_719_p2);

assign or_ln582_1_fu_1102_p2 = (icmp_ln582_1_fu_1032_p2 | icmp_ln571_1_fu_986_p2);

assign or_ln582_fu_823_p2 = (icmp_ln582_fu_753_p2 | icmp_ln571_fu_707_p2);

assign or_ln603_1_fu_899_p2 = (and_ln585_fu_847_p2 | and_ln582_fu_817_p2);

assign or_ln603_2_fu_913_p2 = (or_ln603_fu_885_p2 | or_ln603_1_fu_899_p2);

assign or_ln603_3_fu_1164_p2 = (and_ln603_1_fu_1150_p2 | and_ln585_3_fu_1132_p2);

assign or_ln603_4_fu_1178_p2 = (and_ln585_2_fu_1126_p2 | and_ln582_1_fu_1096_p2);

assign or_ln603_5_fu_1192_p2 = (or_ln603_4_fu_1178_p2 | or_ln603_3_fu_1164_p2);

assign or_ln603_fu_885_p2 = (and_ln603_fu_871_p2 | and_ln585_1_fu_853_p2);

assign or_ln899_fu_484_p2 = (and_ln899_fu_478_p2 | a_fu_444_p2);

assign or_ln_fu_490_p3 = {{31'd0}, {or_ln899_fu_484_p2}};

assign p_Result_25_fu_432_p2 = (zext_ln889_fu_350_p1 & lshr_ln897_fu_426_p2);

assign p_Result_31_fu_364_p3 = {{10'd1023}, {p_Result_s_fu_354_p4}};

assign p_Result_32_fu_619_p5 = {{tmp_8_fu_611_p3}, {m_6_fu_590_p1[51:0]}};

assign p_Result_33_fu_655_p3 = ireg_V_fu_648_p1[32'd63];

assign p_Result_34_fu_689_p1 = tmp_9_fu_681_p3;

assign p_Result_35_fu_934_p3 = ireg_V_1_fu_927_p1[32'd63];

assign p_Result_36_fu_968_p1 = tmp_2_fu_960_p3;

assign p_Result_4_fu_470_p3 = zext_ln889_fu_350_p1[add_ln899_fu_464_p2];

integer ap_tvar_int_0;

always @ (zext_ln889_fu_350_p1) begin
    for (ap_tvar_int_0 = 22 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 21 - 0) begin
            p_Result_s_fu_354_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_s_fu_354_p4[ap_tvar_int_0] = zext_ln889_fu_350_p1[21 - ap_tvar_int_0];
        end
    end
end

assign ret_V_13_fu_1298_p2 = (mul_ln1192_fu_1293_p2 + mul_ln700_1_fu_1288_p2);

assign ret_V_fu_1272_p2 = (mul_ln700_fu_1262_p2 - mul_ln1193_fu_1267_p2);

assign s_V_fu_1198_p3 = ((or_ln603_5_fu_1192_p2[0:0] === 1'b1) ? select_ln603_6_fu_1184_p3 : 22'd0);

assign select_ln588_1_fu_1076_p3 = ((tmp_16_fu_1068_p3[0:0] === 1'b1) ? 22'd4194303 : 22'd0);

assign select_ln588_fu_797_p3 = ((tmp_14_fu_789_p3[0:0] === 1'b1) ? 22'd4194303 : 22'd0);

assign select_ln603_1_fu_891_p3 = ((and_ln585_fu_847_p2[0:0] === 1'b1) ? select_ln588_fu_797_p3 : trunc_ln583_fu_759_p1);

assign select_ln603_2_fu_905_p3 = ((or_ln603_fu_885_p2[0:0] === 1'b1) ? select_ln603_fu_877_p3 : select_ln603_1_fu_891_p3);

assign select_ln603_4_fu_1156_p3 = ((and_ln603_1_fu_1150_p2[0:0] === 1'b1) ? shl_ln604_1_fu_1084_p2 : trunc_ln586_1_fu_1064_p1);

assign select_ln603_5_fu_1170_p3 = ((and_ln585_2_fu_1126_p2[0:0] === 1'b1) ? select_ln588_1_fu_1076_p3 : trunc_ln583_1_fu_1038_p1);

assign select_ln603_6_fu_1184_p3 = ((or_ln603_3_fu_1164_p2[0:0] === 1'b1) ? select_ln603_4_fu_1156_p3 : select_ln603_5_fu_1170_p3);

assign select_ln603_fu_877_p3 = ((and_ln603_fu_871_p2[0:0] === 1'b1) ? shl_ln604_fu_805_p2 : trunc_ln586_fu_785_p1);

assign select_ln885_fu_635_p3 = ((icmp_ln885_reg_1350[0:0] === 1'b1) ? 64'd0 : bitcast_ln729_fu_631_p1);

assign select_ln915_fu_593_p3 = ((tmp_12_reg_1360[0:0] === 1'b1) ? 11'd1023 : 11'd1022);

assign sext_ln1118_1_fu_1210_p1 = $signed(s_V_fu_1198_p3);

assign sext_ln1118_2_fu_1254_p1 = $signed(X_R_V_q0);

assign sext_ln1118_3_fu_1258_p1 = $signed(X_I_V_q0);

assign sext_ln1118_fu_1206_p1 = $signed(c_V_fu_919_p3);

assign sext_ln55_fu_1236_p1 = $signed(i_lower_fu_1230_p2);

assign sext_ln57_fu_1242_p1 = i_0_reg_279;

assign sext_ln581_1_fu_749_p1 = sh_amt_fu_737_p3;

assign sext_ln581_2_fu_1024_p1 = sh_amt_1_fu_1016_p3;

assign sext_ln581_3_fu_1028_p1 = sh_amt_1_fu_1016_p3;

assign sext_ln581_fu_745_p1 = sh_amt_fu_737_p3;

assign sh_amt_1_fu_1016_p3 = ((icmp_ln581_1_fu_998_p2[0:0] === 1'b1) ? add_ln581_1_fu_1004_p2 : sub_ln581_1_fu_1010_p2);

assign sh_amt_fu_737_p3 = ((icmp_ln581_fu_719_p2[0:0] === 1'b1) ? add_ln581_fu_725_p2 : sub_ln581_fu_731_p2);

assign shl_ln604_1_fu_1084_p2 = trunc_ln583_1_fu_1038_p1 << sext_ln581_3_fu_1028_p1;

assign shl_ln604_fu_805_p2 = trunc_ln583_fu_759_p1 << sext_ln581_1_fu_749_p1;

assign shl_ln908_fu_538_p2 = m_fu_498_p1 << zext_ln908_1_fu_534_p1;

assign sub_ln581_1_fu_1010_p2 = (12'd11 - F2_1_fu_992_p2);

assign sub_ln581_fu_731_p2 = (12'd11 - F2_fu_713_p2);

assign sub_ln894_fu_380_p2 = (32'd22 - l_fu_372_p3);

assign sub_ln897_fu_416_p2 = (5'd12 - trunc_ln897_fu_412_p1);

assign sub_ln908_fu_528_p2 = (32'd54 - sub_ln894_fu_380_p2);

assign sub_ln915_fu_600_p2 = (11'd11 - trunc_ln893_reg_1365);

assign temp_I_V_fu_1304_p4 = {{ret_V_13_fu_1298_p2[32:11]}};

assign temp_R_V_fu_1278_p4 = {{ret_V_fu_1272_p2[32:11]}};

assign tmp_11_fu_450_p3 = lsb_index_fu_390_p2[32'd31];

assign tmp_14_fu_789_p3 = ireg_V_fu_648_p1[32'd63];

assign tmp_16_fu_1068_p3 = ireg_V_1_fu_927_p1[32'd63];

assign tmp_17_fu_1214_p4 = {{i_0_reg_279[31:10]}};

assign tmp_2_fu_960_p3 = {{1'd1}, {trunc_ln565_1_fu_956_p1}};

assign tmp_8_fu_611_p3 = {{1'd1}, {add_ln915_fu_605_p2}};

assign tmp_9_fu_681_p3 = {{1'd1}, {trunc_ln565_fu_677_p1}};

assign tmp_V_4_fu_344_p2 = (14'd0 - tmp_V_reg_256);

assign tmp_fu_396_p4 = {{lsb_index_fu_390_p2[31:1]}};

assign trunc_ln556_1_fu_930_p1 = ireg_V_1_fu_927_p1[62:0];

assign trunc_ln556_fu_651_p1 = ireg_V_fu_648_p1[62:0];

assign trunc_ln565_1_fu_956_p1 = ireg_V_1_fu_927_p1[51:0];

assign trunc_ln565_fu_677_p1 = ireg_V_fu_648_p1[51:0];

assign trunc_ln583_1_fu_1038_p1 = man_V_5_fu_978_p3[21:0];

assign trunc_ln583_fu_759_p1 = man_V_2_fu_699_p3[21:0];

assign trunc_ln586_1_fu_1064_p1 = ashr_ln586_1_fu_1058_p2[21:0];

assign trunc_ln586_fu_785_p1 = ashr_ln586_fu_779_p2[21:0];

assign trunc_ln893_fu_580_p1 = l_fu_372_p3[10:0];

assign trunc_ln894_fu_386_p1 = sub_ln894_fu_380_p2[21:0];

assign trunc_ln897_fu_412_p1 = sub_ln894_fu_380_p2[4:0];

assign xor_ln571_1_fu_1090_p2 = (icmp_ln571_1_fu_986_p2 ^ 1'd1);

assign xor_ln571_fu_811_p2 = (icmp_ln571_fu_707_p2 ^ 1'd1);

assign xor_ln581_1_fu_1144_p2 = (or_ln581_1_fu_1138_p2 ^ 1'd1);

assign xor_ln581_fu_865_p2 = (or_ln581_fu_859_p2 ^ 1'd1);

assign xor_ln582_1_fu_1108_p2 = (or_ln582_1_fu_1102_p2 ^ 1'd1);

assign xor_ln582_fu_829_p2 = (or_ln582_fu_823_p2 ^ 1'd1);

assign xor_ln585_1_fu_1120_p2 = (icmp_ln585_1_fu_1042_p2 ^ 1'd1);

assign xor_ln585_fu_841_p2 = (icmp_ln585_fu_763_p2 ^ 1'd1);

assign xor_ln899_fu_458_p2 = (tmp_11_fu_450_p3 ^ 1'd1);

assign zext_ln461_1_fu_952_p1 = exp_tmp_V_1_fu_942_p4;

assign zext_ln461_fu_673_p1 = exp_tmp_V_fu_663_p4;

assign zext_ln586_1_fu_1054_p1 = $unsigned(sext_ln581_2_fu_1024_p1);

assign zext_ln586_fu_775_p1 = $unsigned(sext_ln581_fu_745_p1);

assign zext_ln889_fu_350_p1 = tmp_V_4_fu_344_p2;

assign zext_ln891_fu_644_p1 = i_reg_267;

assign zext_ln897_fu_422_p1 = sub_ln897_fu_416_p2;

assign zext_ln907_1_fu_502_p1 = tmp_V_4_fu_344_p2;

assign zext_ln908_1_fu_534_p1 = sub_ln908_fu_528_p2;

assign zext_ln908_fu_524_p1 = lshr_ln908_fu_518_p2;

assign zext_ln911_fu_552_p1 = or_ln_fu_490_p3;

endmodule //fft_stage90
