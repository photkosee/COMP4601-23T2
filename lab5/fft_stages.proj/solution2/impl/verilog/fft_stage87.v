// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_stage87 (
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
reg  signed [31:0] i_0_reg_281;
wire   [6:0] j_fu_334_p2;
reg   [6:0] j_reg_1347;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln885_fu_340_p2;
reg   [0:0] icmp_ln885_reg_1352;
wire   [0:0] icmp_ln47_fu_328_p2;
reg   [62:0] m_s_reg_1357;
reg   [0:0] tmp_33_reg_1362;
wire   [10:0] trunc_ln893_fu_582_p1;
reg   [10:0] trunc_ln893_reg_1367;
wire   [13:0] a_V_fu_586_p2;
reg   [13:0] a_V_reg_1372;
wire   [63:0] select_ln885_fu_637_p3;
reg   [63:0] select_ln885_reg_1377;
wire    ap_CS_fsm_state3;
wire   [63:0] grp_sin_or_cos_double_s_fu_290_ap_return;
reg   [63:0] v_assign_reg_1383;
wire    ap_CS_fsm_state4;
wire    grp_sin_or_cos_double_s_fu_290_ap_ready;
wire    grp_sin_or_cos_double_s_fu_290_ap_done;
wire    grp_sin_or_cos_double_s_fu_309_ap_ready;
wire    grp_sin_or_cos_double_s_fu_309_ap_done;
reg    ap_block_state4_on_subcall_done;
wire   [63:0] grp_sin_or_cos_double_s_fu_309_ap_return;
reg   [63:0] v_assign_4_reg_1388;
wire   [31:0] zext_ln891_fu_646_p1;
wire    ap_CS_fsm_state5;
wire  signed [32:0] sext_ln1118_fu_1208_p1;
reg  signed [32:0] sext_ln1118_reg_1398;
wire  signed [32:0] sext_ln1118_10_fu_1212_p1;
reg  signed [32:0] sext_ln1118_10_reg_1404;
wire   [0:0] icmp_ln53_fu_1226_p2;
reg   [0:0] icmp_ln53_reg_1410;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state6_pp0_stage0_iter0;
wire    ap_block_state7_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln55_fu_1238_p1;
reg  signed [63:0] sext_ln55_reg_1414;
wire  signed [63:0] sext_ln57_fu_1244_p1;
reg  signed [63:0] sext_ln57_reg_1430;
wire   [31:0] i_6_fu_1250_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state6;
reg    ap_enable_reg_pp0_iter1;
wire    grp_sin_or_cos_double_s_fu_290_ap_start;
wire    grp_sin_or_cos_double_s_fu_290_ap_idle;
wire    grp_sin_or_cos_double_s_fu_290_do_cos;
wire    grp_sin_or_cos_double_s_fu_309_ap_start;
wire    grp_sin_or_cos_double_s_fu_309_ap_idle;
wire    grp_sin_or_cos_double_s_fu_309_do_cos;
reg   [13:0] tmp_V_reg_258;
reg    ap_block_state1;
wire    ap_CS_fsm_state8;
reg   [6:0] i_reg_269;
reg    grp_sin_or_cos_double_s_fu_290_ap_start_reg;
reg    grp_sin_or_cos_double_s_fu_309_ap_start_reg;
wire    ap_block_pp0_stage0;
wire   [13:0] tmp_V_7_fu_346_p2;
wire   [21:0] zext_ln889_fu_352_p1;
reg   [21:0] p_Result_s_fu_356_p4;
wire   [31:0] p_Result_72_fu_366_p3;
reg   [31:0] l_fu_374_p3;
wire   [31:0] sub_ln894_fu_382_p2;
wire   [31:0] lsb_index_fu_392_p2;
wire   [30:0] tmp_fu_398_p4;
wire   [4:0] trunc_ln897_fu_414_p1;
wire   [4:0] sub_ln897_fu_418_p2;
wire   [21:0] zext_ln897_fu_424_p1;
wire   [21:0] lshr_ln897_fu_428_p2;
wire   [21:0] p_Result_65_fu_434_p2;
wire   [0:0] icmp_ln897_fu_408_p2;
wire   [0:0] icmp_ln897_1_fu_440_p2;
wire   [0:0] tmp_32_fu_452_p3;
wire   [21:0] trunc_ln894_fu_388_p1;
wire   [21:0] add_ln899_fu_466_p2;
wire   [0:0] p_Result_66_fu_472_p3;
wire   [0:0] xor_ln899_fu_460_p2;
wire   [0:0] and_ln899_fu_480_p2;
wire   [0:0] a_fu_446_p2;
wire   [0:0] or_ln899_fu_486_p2;
wire   [31:0] zext_ln907_4_fu_504_p1;
wire   [31:0] add_ln908_fu_514_p2;
wire   [31:0] lshr_ln908_fu_520_p2;
wire   [31:0] sub_ln908_fu_530_p2;
wire   [63:0] m_fu_500_p1;
wire   [63:0] zext_ln908_1_fu_536_p1;
wire   [0:0] icmp_ln908_fu_508_p2;
wire   [63:0] zext_ln908_fu_526_p1;
wire   [63:0] shl_ln908_fu_540_p2;
wire   [31:0] or_ln_fu_492_p3;
wire   [63:0] zext_ln911_fu_554_p1;
wire   [63:0] m_17_fu_546_p3;
wire   [63:0] m_18_fu_558_p2;
wire   [10:0] sub_ln915_fu_602_p2;
wire   [10:0] select_ln915_fu_595_p3;
wire   [10:0] add_ln915_fu_607_p2;
wire   [63:0] m_21_fu_592_p1;
wire   [11:0] tmp_6_fu_613_p3;
wire   [63:0] p_Result_73_fu_621_p5;
wire   [63:0] bitcast_ln729_fu_633_p1;
wire   [63:0] ireg_V_fu_650_p1;
wire   [10:0] exp_tmp_V_fu_665_p4;
wire   [51:0] trunc_ln565_fu_679_p1;
wire   [52:0] tmp_7_fu_683_p3;
wire   [53:0] p_Result_75_fu_691_p1;
wire   [0:0] p_Result_74_fu_657_p3;
wire   [53:0] man_V_16_fu_695_p2;
wire   [62:0] trunc_ln556_fu_653_p1;
wire   [11:0] zext_ln461_1_fu_675_p1;
wire   [11:0] F2_fu_715_p2;
wire   [0:0] icmp_ln581_1_fu_721_p2;
wire   [11:0] add_ln581_1_fu_727_p2;
wire   [11:0] sub_ln581_1_fu_733_p2;
wire  signed [11:0] sh_amt_fu_739_p3;
wire   [53:0] man_V_17_fu_701_p3;
wire  signed [31:0] sext_ln581_fu_747_p1;
wire   [53:0] zext_ln586_1_fu_777_p1;
wire   [53:0] ashr_ln586_1_fu_781_p2;
wire   [0:0] tmp_35_fu_791_p3;
wire   [21:0] trunc_ln583_fu_761_p1;
wire  signed [21:0] sext_ln581_10_fu_751_p1;
wire   [0:0] icmp_ln571_1_fu_709_p2;
wire   [0:0] icmp_ln582_1_fu_755_p2;
wire   [0:0] xor_ln571_fu_813_p2;
wire   [0:0] or_ln582_fu_825_p2;
wire   [0:0] xor_ln582_fu_831_p2;
wire   [0:0] icmp_ln585_1_fu_765_p2;
wire   [0:0] and_ln581_fu_837_p2;
wire   [0:0] xor_ln585_fu_843_p2;
wire   [0:0] or_ln581_fu_861_p2;
wire   [0:0] icmp_ln603_1_fu_771_p2;
wire   [0:0] xor_ln581_fu_867_p2;
wire   [0:0] and_ln603_fu_873_p2;
wire   [21:0] shl_ln604_1_fu_807_p2;
wire   [21:0] trunc_ln586_fu_787_p1;
wire   [0:0] and_ln585_10_fu_855_p2;
wire   [0:0] and_ln585_fu_849_p2;
wire   [21:0] select_ln588_fu_799_p3;
wire   [0:0] and_ln582_fu_819_p2;
wire   [0:0] or_ln603_fu_887_p2;
wire   [21:0] select_ln603_fu_879_p3;
wire   [21:0] select_ln603_22_fu_893_p3;
wire   [0:0] or_ln603_16_fu_901_p2;
wire   [0:0] or_ln603_17_fu_915_p2;
wire   [21:0] select_ln603_23_fu_907_p3;
wire   [63:0] ireg_V_4_fu_929_p1;
wire   [10:0] exp_tmp_V_4_fu_944_p4;
wire   [51:0] trunc_ln565_4_fu_958_p1;
wire   [52:0] tmp_8_fu_962_p3;
wire   [53:0] p_Result_77_fu_970_p1;
wire   [0:0] p_Result_76_fu_936_p3;
wire   [53:0] man_V_19_fu_974_p2;
wire   [62:0] trunc_ln556_4_fu_932_p1;
wire   [11:0] zext_ln461_fu_954_p1;
wire   [11:0] F2_4_fu_994_p2;
wire   [0:0] icmp_ln581_fu_1000_p2;
wire   [11:0] add_ln581_fu_1006_p2;
wire   [11:0] sub_ln581_fu_1012_p2;
wire  signed [11:0] sh_amt_4_fu_1018_p3;
wire   [53:0] man_V_20_fu_980_p3;
wire  signed [31:0] sext_ln581_11_fu_1026_p1;
wire   [53:0] zext_ln586_fu_1056_p1;
wire   [53:0] ashr_ln586_fu_1060_p2;
wire   [0:0] tmp_37_fu_1070_p3;
wire   [21:0] trunc_ln583_4_fu_1040_p1;
wire  signed [21:0] sext_ln581_12_fu_1030_p1;
wire   [0:0] icmp_ln571_fu_988_p2;
wire   [0:0] icmp_ln582_fu_1034_p2;
wire   [0:0] xor_ln571_4_fu_1092_p2;
wire   [0:0] or_ln582_4_fu_1104_p2;
wire   [0:0] xor_ln582_4_fu_1110_p2;
wire   [0:0] icmp_ln585_fu_1044_p2;
wire   [0:0] and_ln581_4_fu_1116_p2;
wire   [0:0] xor_ln585_4_fu_1122_p2;
wire   [0:0] or_ln581_4_fu_1140_p2;
wire   [0:0] icmp_ln603_fu_1050_p2;
wire   [0:0] xor_ln581_4_fu_1146_p2;
wire   [0:0] and_ln603_4_fu_1152_p2;
wire   [21:0] shl_ln604_fu_1086_p2;
wire   [21:0] trunc_ln586_4_fu_1066_p1;
wire   [0:0] and_ln585_12_fu_1134_p2;
wire   [0:0] and_ln585_11_fu_1128_p2;
wire   [21:0] select_ln588_4_fu_1078_p3;
wire   [0:0] and_ln582_4_fu_1098_p2;
wire   [0:0] or_ln603_18_fu_1166_p2;
wire   [21:0] select_ln603_25_fu_1158_p3;
wire   [21:0] select_ln603_26_fu_1172_p3;
wire   [0:0] or_ln603_19_fu_1180_p2;
wire   [0:0] or_ln603_20_fu_1194_p2;
wire   [21:0] select_ln603_27_fu_1186_p3;
wire   [21:0] c_V_fu_921_p3;
wire   [21:0] s_V_fu_1200_p3;
wire   [21:0] tmp_38_fu_1216_p4;
wire   [31:0] i_lower_fu_1232_p2;
wire  signed [21:0] mul_ln700_fu_1264_p0;
wire  signed [21:0] mul_ln700_fu_1264_p1;
wire  signed [32:0] sext_ln1118_11_fu_1256_p1;
wire  signed [21:0] mul_ln1193_fu_1269_p0;
wire  signed [21:0] mul_ln1193_fu_1269_p1;
wire  signed [32:0] sext_ln1118_12_fu_1260_p1;
wire   [32:0] mul_ln700_fu_1264_p2;
wire   [32:0] mul_ln1193_fu_1269_p2;
wire   [32:0] ret_V_fu_1274_p2;
wire  signed [21:0] mul_ln700_4_fu_1290_p0;
wire  signed [21:0] mul_ln700_4_fu_1290_p1;
wire  signed [21:0] mul_ln1192_fu_1295_p0;
wire  signed [21:0] mul_ln1192_fu_1295_p1;
wire   [32:0] mul_ln1192_fu_1295_p2;
wire   [32:0] mul_ln700_4_fu_1290_p2;
wire   [32:0] ret_V_16_fu_1300_p2;
wire   [21:0] temp_R_V_fu_1280_p4;
wire   [21:0] temp_I_V_fu_1306_p4;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_sin_or_cos_double_s_fu_290_ap_start_reg = 1'b0;
#0 grp_sin_or_cos_double_s_fu_309_ap_start_reg = 1'b0;
end

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_290(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_290_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_290_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_290_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_290_ap_ready),
    .t_in(select_ln885_reg_1377),
    .do_cos(grp_sin_or_cos_double_s_fu_290_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_290_ap_return)
);

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_309(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_309_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_309_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_309_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_309_ap_ready),
    .t_in(select_ln885_reg_1377),
    .do_cos(grp_sin_or_cos_double_s_fu_309_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_309_ap_return)
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
        end else if (((icmp_ln47_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
        grp_sin_or_cos_double_s_fu_290_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_sin_or_cos_double_s_fu_290_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_290_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_290_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_309_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_sin_or_cos_double_s_fu_309_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_309_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_309_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_fu_1226_p2 == 1'd1))) begin
        i_0_reg_281 <= i_6_fu_1250_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_reg_281 <= zext_ln891_fu_646_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_269 <= j_reg_1347;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_269 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_V_reg_258 <= a_V_reg_1372;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_reg_258 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln47_fu_328_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        a_V_reg_1372 <= a_V_fu_586_p2;
        icmp_ln885_reg_1352 <= icmp_ln885_fu_340_p2;
        m_s_reg_1357 <= {{m_18_fu_558_p2[63:1]}};
        tmp_33_reg_1362 <= m_18_fu_558_p2[32'd54];
        trunc_ln893_reg_1367 <= trunc_ln893_fu_582_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln53_reg_1410 <= icmp_ln53_fu_1226_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        j_reg_1347 <= j_fu_334_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        select_ln885_reg_1377 <= select_ln885_fu_637_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sext_ln1118_10_reg_1404 <= sext_ln1118_10_fu_1212_p1;
        sext_ln1118_reg_1398 <= sext_ln1118_fu_1208_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_fu_1226_p2 == 1'd1))) begin
        sext_ln55_reg_1414 <= sext_ln55_fu_1238_p1;
        sext_ln57_reg_1430 <= sext_ln57_fu_1244_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
        v_assign_4_reg_1388 <= grp_sin_or_cos_double_s_fu_309_ap_return;
        v_assign_reg_1383 <= grp_sin_or_cos_double_s_fu_290_ap_return;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_reg_1410 == 1'd1))) begin
        Out_I_V_we0 = 1'b1;
    end else begin
        Out_I_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_reg_1410 == 1'd1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_reg_1410 == 1'd1))) begin
        Out_R_V_we0 = 1'b1;
    end else begin
        Out_R_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln53_reg_1410 == 1'd1))) begin
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
    if ((icmp_ln53_fu_1226_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln47_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln47_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (~((icmp_ln53_fu_1226_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln53_fu_1226_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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

assign F2_4_fu_994_p2 = (12'd1075 - zext_ln461_fu_954_p1);

assign F2_fu_715_p2 = (12'd1075 - zext_ln461_1_fu_675_p1);

assign Out_I_V_address0 = sext_ln55_reg_1414;

assign Out_I_V_address1 = sext_ln57_reg_1430;

assign Out_I_V_d0 = (X_I_V_q1 - temp_I_V_fu_1306_p4);

assign Out_I_V_d1 = (X_I_V_q1 + temp_I_V_fu_1306_p4);

assign Out_R_V_address0 = sext_ln55_reg_1414;

assign Out_R_V_address1 = sext_ln57_reg_1430;

assign Out_R_V_d0 = (X_R_V_q1 - temp_R_V_fu_1280_p4);

assign Out_R_V_d1 = (X_R_V_q1 + temp_R_V_fu_1280_p4);

assign X_I_V_address0 = sext_ln55_fu_1238_p1;

assign X_I_V_address1 = sext_ln57_fu_1244_p1;

assign X_R_V_address0 = sext_ln55_fu_1238_p1;

assign X_R_V_address1 = sext_ln57_fu_1244_p1;

assign a_V_fu_586_p2 = ($signed(14'd16283) + $signed(tmp_V_reg_258));

assign a_fu_446_p2 = (icmp_ln897_fu_408_p2 & icmp_ln897_1_fu_440_p2);

assign add_ln581_1_fu_727_p2 = ($signed(12'd4085) + $signed(F2_fu_715_p2));

assign add_ln581_fu_1006_p2 = ($signed(12'd4085) + $signed(F2_4_fu_994_p2));

assign add_ln899_fu_466_p2 = ($signed(22'd4194251) + $signed(trunc_ln894_fu_388_p1));

assign add_ln908_fu_514_p2 = ($signed(32'd4294967242) + $signed(sub_ln894_fu_382_p2));

assign add_ln915_fu_607_p2 = (sub_ln915_fu_602_p2 + select_ln915_fu_595_p3);

assign and_ln581_4_fu_1116_p2 = (xor_ln582_4_fu_1110_p2 & icmp_ln581_fu_1000_p2);

assign and_ln581_fu_837_p2 = (xor_ln582_fu_831_p2 & icmp_ln581_1_fu_721_p2);

assign and_ln582_4_fu_1098_p2 = (xor_ln571_4_fu_1092_p2 & icmp_ln582_fu_1034_p2);

assign and_ln582_fu_819_p2 = (xor_ln571_fu_813_p2 & icmp_ln582_1_fu_755_p2);

assign and_ln585_10_fu_855_p2 = (icmp_ln585_1_fu_765_p2 & and_ln581_fu_837_p2);

assign and_ln585_11_fu_1128_p2 = (xor_ln585_4_fu_1122_p2 & and_ln581_4_fu_1116_p2);

assign and_ln585_12_fu_1134_p2 = (icmp_ln585_fu_1044_p2 & and_ln581_4_fu_1116_p2);

assign and_ln585_fu_849_p2 = (xor_ln585_fu_843_p2 & and_ln581_fu_837_p2);

assign and_ln603_4_fu_1152_p2 = (xor_ln581_4_fu_1146_p2 & icmp_ln603_fu_1050_p2);

assign and_ln603_fu_873_p2 = (xor_ln581_fu_867_p2 & icmp_ln603_1_fu_771_p2);

assign and_ln899_fu_480_p2 = (xor_ln899_fu_460_p2 & p_Result_66_fu_472_p3);

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
    ap_block_state4_on_subcall_done = ((grp_sin_or_cos_double_s_fu_309_ap_done == 1'b0) | (grp_sin_or_cos_double_s_fu_290_ap_done == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ashr_ln586_1_fu_781_p2 = $signed(man_V_17_fu_701_p3) >>> zext_ln586_1_fu_777_p1;

assign ashr_ln586_fu_1060_p2 = $signed(man_V_20_fu_980_p3) >>> zext_ln586_fu_1056_p1;

assign bitcast_ln729_fu_633_p1 = p_Result_73_fu_621_p5;

assign c_V_fu_921_p3 = ((or_ln603_17_fu_915_p2[0:0] === 1'b1) ? select_ln603_23_fu_907_p3 : 22'd0);

assign exp_tmp_V_4_fu_944_p4 = {{ireg_V_4_fu_929_p1[62:52]}};

assign exp_tmp_V_fu_665_p4 = {{ireg_V_fu_650_p1[62:52]}};

assign grp_sin_or_cos_double_s_fu_290_ap_start = grp_sin_or_cos_double_s_fu_290_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_290_do_cos = 1'd1;

assign grp_sin_or_cos_double_s_fu_309_ap_start = grp_sin_or_cos_double_s_fu_309_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_309_do_cos = 1'd0;

assign i_6_fu_1250_p2 = ($signed(i_0_reg_281) + $signed(32'd128));

assign i_lower_fu_1232_p2 = ($signed(i_0_reg_281) + $signed(32'd64));

assign icmp_ln47_fu_328_p2 = ((i_reg_269 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln53_fu_1226_p2 = (($signed(tmp_38_fu_1216_p4) < $signed(22'd1)) ? 1'b1 : 1'b0);

assign icmp_ln571_1_fu_709_p2 = ((trunc_ln556_fu_653_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln571_fu_988_p2 = ((trunc_ln556_4_fu_932_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln581_1_fu_721_p2 = (($signed(F2_fu_715_p2) > $signed(12'd11)) ? 1'b1 : 1'b0);

assign icmp_ln581_fu_1000_p2 = (($signed(F2_4_fu_994_p2) > $signed(12'd11)) ? 1'b1 : 1'b0);

assign icmp_ln582_1_fu_755_p2 = ((F2_fu_715_p2 == 12'd11) ? 1'b1 : 1'b0);

assign icmp_ln582_fu_1034_p2 = ((F2_4_fu_994_p2 == 12'd11) ? 1'b1 : 1'b0);

assign icmp_ln585_1_fu_765_p2 = ((sh_amt_fu_739_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln585_fu_1044_p2 = ((sh_amt_4_fu_1018_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln603_1_fu_771_p2 = ((sh_amt_fu_739_p3 < 12'd22) ? 1'b1 : 1'b0);

assign icmp_ln603_fu_1050_p2 = ((sh_amt_4_fu_1018_p3 < 12'd22) ? 1'b1 : 1'b0);

assign icmp_ln885_fu_340_p2 = ((tmp_V_reg_258 == 14'd0) ? 1'b1 : 1'b0);

assign icmp_ln897_1_fu_440_p2 = ((p_Result_65_fu_434_p2 != 22'd0) ? 1'b1 : 1'b0);

assign icmp_ln897_fu_408_p2 = (($signed(tmp_fu_398_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln908_fu_508_p2 = (($signed(lsb_index_fu_392_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign ireg_V_4_fu_929_p1 = v_assign_4_reg_1388;

assign ireg_V_fu_650_p1 = v_assign_reg_1383;

assign j_fu_334_p2 = (i_reg_269 + 7'd1);


always @ (p_Result_72_fu_366_p3) begin
    if (p_Result_72_fu_366_p3[0] == 1'b1) begin
        l_fu_374_p3 = 32'd0;
    end else if (p_Result_72_fu_366_p3[1] == 1'b1) begin
        l_fu_374_p3 = 32'd1;
    end else if (p_Result_72_fu_366_p3[2] == 1'b1) begin
        l_fu_374_p3 = 32'd2;
    end else if (p_Result_72_fu_366_p3[3] == 1'b1) begin
        l_fu_374_p3 = 32'd3;
    end else if (p_Result_72_fu_366_p3[4] == 1'b1) begin
        l_fu_374_p3 = 32'd4;
    end else if (p_Result_72_fu_366_p3[5] == 1'b1) begin
        l_fu_374_p3 = 32'd5;
    end else if (p_Result_72_fu_366_p3[6] == 1'b1) begin
        l_fu_374_p3 = 32'd6;
    end else if (p_Result_72_fu_366_p3[7] == 1'b1) begin
        l_fu_374_p3 = 32'd7;
    end else if (p_Result_72_fu_366_p3[8] == 1'b1) begin
        l_fu_374_p3 = 32'd8;
    end else if (p_Result_72_fu_366_p3[9] == 1'b1) begin
        l_fu_374_p3 = 32'd9;
    end else if (p_Result_72_fu_366_p3[10] == 1'b1) begin
        l_fu_374_p3 = 32'd10;
    end else if (p_Result_72_fu_366_p3[11] == 1'b1) begin
        l_fu_374_p3 = 32'd11;
    end else if (p_Result_72_fu_366_p3[12] == 1'b1) begin
        l_fu_374_p3 = 32'd12;
    end else if (p_Result_72_fu_366_p3[13] == 1'b1) begin
        l_fu_374_p3 = 32'd13;
    end else if (p_Result_72_fu_366_p3[14] == 1'b1) begin
        l_fu_374_p3 = 32'd14;
    end else if (p_Result_72_fu_366_p3[15] == 1'b1) begin
        l_fu_374_p3 = 32'd15;
    end else if (p_Result_72_fu_366_p3[16] == 1'b1) begin
        l_fu_374_p3 = 32'd16;
    end else if (p_Result_72_fu_366_p3[17] == 1'b1) begin
        l_fu_374_p3 = 32'd17;
    end else if (p_Result_72_fu_366_p3[18] == 1'b1) begin
        l_fu_374_p3 = 32'd18;
    end else if (p_Result_72_fu_366_p3[19] == 1'b1) begin
        l_fu_374_p3 = 32'd19;
    end else if (p_Result_72_fu_366_p3[20] == 1'b1) begin
        l_fu_374_p3 = 32'd20;
    end else if (p_Result_72_fu_366_p3[21] == 1'b1) begin
        l_fu_374_p3 = 32'd21;
    end else if (p_Result_72_fu_366_p3[22] == 1'b1) begin
        l_fu_374_p3 = 32'd22;
    end else if (p_Result_72_fu_366_p3[23] == 1'b1) begin
        l_fu_374_p3 = 32'd23;
    end else if (p_Result_72_fu_366_p3[24] == 1'b1) begin
        l_fu_374_p3 = 32'd24;
    end else if (p_Result_72_fu_366_p3[25] == 1'b1) begin
        l_fu_374_p3 = 32'd25;
    end else if (p_Result_72_fu_366_p3[26] == 1'b1) begin
        l_fu_374_p3 = 32'd26;
    end else if (p_Result_72_fu_366_p3[27] == 1'b1) begin
        l_fu_374_p3 = 32'd27;
    end else if (p_Result_72_fu_366_p3[28] == 1'b1) begin
        l_fu_374_p3 = 32'd28;
    end else if (p_Result_72_fu_366_p3[29] == 1'b1) begin
        l_fu_374_p3 = 32'd29;
    end else if (p_Result_72_fu_366_p3[30] == 1'b1) begin
        l_fu_374_p3 = 32'd30;
    end else if (p_Result_72_fu_366_p3[31] == 1'b1) begin
        l_fu_374_p3 = 32'd31;
    end else begin
        l_fu_374_p3 = 32'd32;
    end
end

assign lsb_index_fu_392_p2 = ($signed(32'd4294967243) + $signed(sub_ln894_fu_382_p2));

assign lshr_ln897_fu_428_p2 = 22'd4194303 >> zext_ln897_fu_424_p1;

assign lshr_ln908_fu_520_p2 = zext_ln907_4_fu_504_p1 >> add_ln908_fu_514_p2;

assign m_17_fu_546_p3 = ((icmp_ln908_fu_508_p2[0:0] === 1'b1) ? zext_ln908_fu_526_p1 : shl_ln908_fu_540_p2);

assign m_18_fu_558_p2 = (zext_ln911_fu_554_p1 + m_17_fu_546_p3);

assign m_21_fu_592_p1 = m_s_reg_1357;

assign m_fu_500_p1 = tmp_V_7_fu_346_p2;

assign man_V_16_fu_695_p2 = (54'd0 - p_Result_75_fu_691_p1);

assign man_V_17_fu_701_p3 = ((p_Result_74_fu_657_p3[0:0] === 1'b1) ? man_V_16_fu_695_p2 : p_Result_75_fu_691_p1);

assign man_V_19_fu_974_p2 = (54'd0 - p_Result_77_fu_970_p1);

assign man_V_20_fu_980_p3 = ((p_Result_76_fu_936_p3[0:0] === 1'b1) ? man_V_19_fu_974_p2 : p_Result_77_fu_970_p1);

assign mul_ln1192_fu_1295_p0 = sext_ln1118_10_reg_1404;

assign mul_ln1192_fu_1295_p1 = sext_ln1118_11_fu_1256_p1;

assign mul_ln1192_fu_1295_p2 = ($signed(mul_ln1192_fu_1295_p0) * $signed(mul_ln1192_fu_1295_p1));

assign mul_ln1193_fu_1269_p0 = sext_ln1118_10_reg_1404;

assign mul_ln1193_fu_1269_p1 = sext_ln1118_12_fu_1260_p1;

assign mul_ln1193_fu_1269_p2 = ($signed(mul_ln1193_fu_1269_p0) * $signed(mul_ln1193_fu_1269_p1));

assign mul_ln700_4_fu_1290_p0 = sext_ln1118_12_fu_1260_p1;

assign mul_ln700_4_fu_1290_p1 = sext_ln1118_reg_1398;

assign mul_ln700_4_fu_1290_p2 = ($signed(mul_ln700_4_fu_1290_p0) * $signed(mul_ln700_4_fu_1290_p1));

assign mul_ln700_fu_1264_p0 = sext_ln1118_reg_1398;

assign mul_ln700_fu_1264_p1 = sext_ln1118_11_fu_1256_p1;

assign mul_ln700_fu_1264_p2 = ($signed(mul_ln700_fu_1264_p0) * $signed(mul_ln700_fu_1264_p1));

assign or_ln581_4_fu_1140_p2 = (or_ln582_4_fu_1104_p2 | icmp_ln581_fu_1000_p2);

assign or_ln581_fu_861_p2 = (or_ln582_fu_825_p2 | icmp_ln581_1_fu_721_p2);

assign or_ln582_4_fu_1104_p2 = (icmp_ln582_fu_1034_p2 | icmp_ln571_fu_988_p2);

assign or_ln582_fu_825_p2 = (icmp_ln582_1_fu_755_p2 | icmp_ln571_1_fu_709_p2);

assign or_ln603_16_fu_901_p2 = (and_ln585_fu_849_p2 | and_ln582_fu_819_p2);

assign or_ln603_17_fu_915_p2 = (or_ln603_fu_887_p2 | or_ln603_16_fu_901_p2);

assign or_ln603_18_fu_1166_p2 = (and_ln603_4_fu_1152_p2 | and_ln585_12_fu_1134_p2);

assign or_ln603_19_fu_1180_p2 = (and_ln585_11_fu_1128_p2 | and_ln582_4_fu_1098_p2);

assign or_ln603_20_fu_1194_p2 = (or_ln603_19_fu_1180_p2 | or_ln603_18_fu_1166_p2);

assign or_ln603_fu_887_p2 = (and_ln603_fu_873_p2 | and_ln585_10_fu_855_p2);

assign or_ln899_fu_486_p2 = (and_ln899_fu_480_p2 | a_fu_446_p2);

assign or_ln_fu_492_p3 = {{31'd0}, {or_ln899_fu_486_p2}};

assign p_Result_65_fu_434_p2 = (zext_ln889_fu_352_p1 & lshr_ln897_fu_428_p2);

assign p_Result_66_fu_472_p3 = zext_ln889_fu_352_p1[add_ln899_fu_466_p2];

assign p_Result_72_fu_366_p3 = {{10'd1023}, {p_Result_s_fu_356_p4}};

assign p_Result_73_fu_621_p5 = {{tmp_6_fu_613_p3}, {m_21_fu_592_p1[51:0]}};

assign p_Result_74_fu_657_p3 = ireg_V_fu_650_p1[32'd63];

assign p_Result_75_fu_691_p1 = tmp_7_fu_683_p3;

assign p_Result_76_fu_936_p3 = ireg_V_4_fu_929_p1[32'd63];

assign p_Result_77_fu_970_p1 = tmp_8_fu_962_p3;

integer ap_tvar_int_0;

always @ (zext_ln889_fu_352_p1) begin
    for (ap_tvar_int_0 = 22 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 21 - 0) begin
            p_Result_s_fu_356_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_s_fu_356_p4[ap_tvar_int_0] = zext_ln889_fu_352_p1[21 - ap_tvar_int_0];
        end
    end
end

assign ret_V_16_fu_1300_p2 = (mul_ln1192_fu_1295_p2 + mul_ln700_4_fu_1290_p2);

assign ret_V_fu_1274_p2 = (mul_ln700_fu_1264_p2 - mul_ln1193_fu_1269_p2);

assign s_V_fu_1200_p3 = ((or_ln603_20_fu_1194_p2[0:0] === 1'b1) ? select_ln603_27_fu_1186_p3 : 22'd0);

assign select_ln588_4_fu_1078_p3 = ((tmp_37_fu_1070_p3[0:0] === 1'b1) ? 22'd4194303 : 22'd0);

assign select_ln588_fu_799_p3 = ((tmp_35_fu_791_p3[0:0] === 1'b1) ? 22'd4194303 : 22'd0);

assign select_ln603_22_fu_893_p3 = ((and_ln585_fu_849_p2[0:0] === 1'b1) ? select_ln588_fu_799_p3 : trunc_ln583_fu_761_p1);

assign select_ln603_23_fu_907_p3 = ((or_ln603_fu_887_p2[0:0] === 1'b1) ? select_ln603_fu_879_p3 : select_ln603_22_fu_893_p3);

assign select_ln603_25_fu_1158_p3 = ((and_ln603_4_fu_1152_p2[0:0] === 1'b1) ? shl_ln604_fu_1086_p2 : trunc_ln586_4_fu_1066_p1);

assign select_ln603_26_fu_1172_p3 = ((and_ln585_11_fu_1128_p2[0:0] === 1'b1) ? select_ln588_4_fu_1078_p3 : trunc_ln583_4_fu_1040_p1);

assign select_ln603_27_fu_1186_p3 = ((or_ln603_18_fu_1166_p2[0:0] === 1'b1) ? select_ln603_25_fu_1158_p3 : select_ln603_26_fu_1172_p3);

assign select_ln603_fu_879_p3 = ((and_ln603_fu_873_p2[0:0] === 1'b1) ? shl_ln604_1_fu_807_p2 : trunc_ln586_fu_787_p1);

assign select_ln885_fu_637_p3 = ((icmp_ln885_reg_1352[0:0] === 1'b1) ? 64'd0 : bitcast_ln729_fu_633_p1);

assign select_ln915_fu_595_p3 = ((tmp_33_reg_1362[0:0] === 1'b1) ? 11'd1023 : 11'd1022);

assign sext_ln1118_10_fu_1212_p1 = $signed(s_V_fu_1200_p3);

assign sext_ln1118_11_fu_1256_p1 = $signed(X_R_V_q0);

assign sext_ln1118_12_fu_1260_p1 = $signed(X_I_V_q0);

assign sext_ln1118_fu_1208_p1 = $signed(c_V_fu_921_p3);

assign sext_ln55_fu_1238_p1 = $signed(i_lower_fu_1232_p2);

assign sext_ln57_fu_1244_p1 = i_0_reg_281;

assign sext_ln581_10_fu_751_p1 = sh_amt_fu_739_p3;

assign sext_ln581_11_fu_1026_p1 = sh_amt_4_fu_1018_p3;

assign sext_ln581_12_fu_1030_p1 = sh_amt_4_fu_1018_p3;

assign sext_ln581_fu_747_p1 = sh_amt_fu_739_p3;

assign sh_amt_4_fu_1018_p3 = ((icmp_ln581_fu_1000_p2[0:0] === 1'b1) ? add_ln581_fu_1006_p2 : sub_ln581_fu_1012_p2);

assign sh_amt_fu_739_p3 = ((icmp_ln581_1_fu_721_p2[0:0] === 1'b1) ? add_ln581_1_fu_727_p2 : sub_ln581_1_fu_733_p2);

assign shl_ln604_1_fu_807_p2 = trunc_ln583_fu_761_p1 << sext_ln581_10_fu_751_p1;

assign shl_ln604_fu_1086_p2 = trunc_ln583_4_fu_1040_p1 << sext_ln581_12_fu_1030_p1;

assign shl_ln908_fu_540_p2 = m_fu_500_p1 << zext_ln908_1_fu_536_p1;

assign sub_ln581_1_fu_733_p2 = (12'd11 - F2_fu_715_p2);

assign sub_ln581_fu_1012_p2 = (12'd11 - F2_4_fu_994_p2);

assign sub_ln894_fu_382_p2 = (32'd22 - l_fu_374_p3);

assign sub_ln897_fu_418_p2 = (5'd12 - trunc_ln897_fu_414_p1);

assign sub_ln908_fu_530_p2 = (32'd54 - sub_ln894_fu_382_p2);

assign sub_ln915_fu_602_p2 = (11'd11 - trunc_ln893_reg_1367);

assign temp_I_V_fu_1306_p4 = {{ret_V_16_fu_1300_p2[32:11]}};

assign temp_R_V_fu_1280_p4 = {{ret_V_fu_1274_p2[32:11]}};

assign tmp_32_fu_452_p3 = lsb_index_fu_392_p2[32'd31];

assign tmp_35_fu_791_p3 = ireg_V_fu_650_p1[32'd63];

assign tmp_37_fu_1070_p3 = ireg_V_4_fu_929_p1[32'd63];

assign tmp_38_fu_1216_p4 = {{i_0_reg_281[31:10]}};

assign tmp_6_fu_613_p3 = {{1'd1}, {add_ln915_fu_607_p2}};

assign tmp_7_fu_683_p3 = {{1'd1}, {trunc_ln565_fu_679_p1}};

assign tmp_8_fu_962_p3 = {{1'd1}, {trunc_ln565_4_fu_958_p1}};

assign tmp_V_7_fu_346_p2 = (14'd0 - tmp_V_reg_258);

assign tmp_fu_398_p4 = {{lsb_index_fu_392_p2[31:1]}};

assign trunc_ln556_4_fu_932_p1 = ireg_V_4_fu_929_p1[62:0];

assign trunc_ln556_fu_653_p1 = ireg_V_fu_650_p1[62:0];

assign trunc_ln565_4_fu_958_p1 = ireg_V_4_fu_929_p1[51:0];

assign trunc_ln565_fu_679_p1 = ireg_V_fu_650_p1[51:0];

assign trunc_ln583_4_fu_1040_p1 = man_V_20_fu_980_p3[21:0];

assign trunc_ln583_fu_761_p1 = man_V_17_fu_701_p3[21:0];

assign trunc_ln586_4_fu_1066_p1 = ashr_ln586_fu_1060_p2[21:0];

assign trunc_ln586_fu_787_p1 = ashr_ln586_1_fu_781_p2[21:0];

assign trunc_ln893_fu_582_p1 = l_fu_374_p3[10:0];

assign trunc_ln894_fu_388_p1 = sub_ln894_fu_382_p2[21:0];

assign trunc_ln897_fu_414_p1 = sub_ln894_fu_382_p2[4:0];

assign xor_ln571_4_fu_1092_p2 = (icmp_ln571_fu_988_p2 ^ 1'd1);

assign xor_ln571_fu_813_p2 = (icmp_ln571_1_fu_709_p2 ^ 1'd1);

assign xor_ln581_4_fu_1146_p2 = (or_ln581_4_fu_1140_p2 ^ 1'd1);

assign xor_ln581_fu_867_p2 = (or_ln581_fu_861_p2 ^ 1'd1);

assign xor_ln582_4_fu_1110_p2 = (or_ln582_4_fu_1104_p2 ^ 1'd1);

assign xor_ln582_fu_831_p2 = (or_ln582_fu_825_p2 ^ 1'd1);

assign xor_ln585_4_fu_1122_p2 = (icmp_ln585_fu_1044_p2 ^ 1'd1);

assign xor_ln585_fu_843_p2 = (icmp_ln585_1_fu_765_p2 ^ 1'd1);

assign xor_ln899_fu_460_p2 = (tmp_32_fu_452_p3 ^ 1'd1);

assign zext_ln461_1_fu_675_p1 = exp_tmp_V_fu_665_p4;

assign zext_ln461_fu_954_p1 = exp_tmp_V_4_fu_944_p4;

assign zext_ln586_1_fu_777_p1 = $unsigned(sext_ln581_fu_747_p1);

assign zext_ln586_fu_1056_p1 = $unsigned(sext_ln581_11_fu_1026_p1);

assign zext_ln889_fu_352_p1 = tmp_V_7_fu_346_p2;

assign zext_ln891_fu_646_p1 = i_reg_269;

assign zext_ln897_fu_424_p1 = sub_ln897_fu_418_p2;

assign zext_ln907_4_fu_504_p1 = tmp_V_7_fu_346_p2;

assign zext_ln908_1_fu_536_p1 = sub_ln908_fu_530_p2;

assign zext_ln908_fu_526_p1 = lshr_ln908_fu_520_p2;

assign zext_ln911_fu_554_p1 = or_ln_fu_492_p3;

endmodule //fft_stage87