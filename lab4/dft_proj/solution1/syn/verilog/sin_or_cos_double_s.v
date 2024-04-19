// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sin_or_cos_double_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        t_in,
        do_cos,
        ap_return
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] t_in;
input   do_cos;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] ref_4oPi_table_256_V_address0;
reg    ref_4oPi_table_256_V_ce0;
wire   [255:0] ref_4oPi_table_256_V_q0;
wire   [7:0] fourth_order_double_4_address0;
reg    fourth_order_double_4_ce0;
wire   [58:0] fourth_order_double_4_q0;
wire   [7:0] fourth_order_double_5_address0;
reg    fourth_order_double_5_ce0;
wire   [51:0] fourth_order_double_5_q0;
wire   [7:0] fourth_order_double_6_address0;
reg    fourth_order_double_6_ce0;
wire   [43:0] fourth_order_double_6_q0;
wire   [7:0] fourth_order_double_7_address0;
reg    fourth_order_double_7_ce0;
wire   [32:0] fourth_order_double_7_q0;
wire   [7:0] fourth_order_double_s_address0;
reg    fourth_order_double_s_ce0;
wire   [24:0] fourth_order_double_s_q0;
reg   [0:0] p_Result_s_reg_1117;
wire   [10:0] tmp_V_fu_286_p4;
reg   [10:0] tmp_V_reg_1123;
wire   [51:0] tmp_V_1_fu_296_p1;
reg   [51:0] tmp_V_1_reg_1130;
wire   [0:0] closepath_fu_300_p2;
reg   [0:0] closepath_reg_1136;
wire   [6:0] trunc_ln601_fu_335_p1;
reg   [6:0] trunc_ln601_reg_1147;
reg   [169:0] ret_V_11_reg_1152;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln833_1_fu_378_p2;
reg   [0:0] icmp_ln833_1_reg_1167;
reg   [123:0] p_Val2_29_reg_1173;
wire    ap_CS_fsm_state4;
reg   [2:0] trunc_ln_i_reg_1179;
wire   [2:0] p_Val2_30_fu_415_p3;
reg   [2:0] p_Val2_30_reg_1184;
wire    ap_CS_fsm_state5;
reg   [62:0] Mx_V_reg_1190;
wire  signed [10:0] Ex_V_fu_509_p2;
reg  signed [10:0] Ex_V_reg_1197;
wire   [0:0] isNeg_fu_519_p3;
reg   [0:0] isNeg_reg_1202;
wire   [11:0] ush_fu_533_p3;
reg   [11:0] ush_reg_1207;
wire   [0:0] icmp_ln833_fu_541_p2;
reg   [0:0] icmp_ln833_reg_1212;
wire   [0:0] icmp_ln833_2_fu_546_p2;
reg   [0:0] icmp_ln833_2_reg_1218;
wire    ap_CS_fsm_state6;
wire   [0:0] tmp_fu_575_p10;
reg   [0:0] tmp_reg_1232;
wire   [55:0] B_V_fu_606_p1;
reg   [55:0] B_V_reg_1238;
wire   [97:0] r_V_5_fu_620_p1;
reg   [97:0] r_V_5_reg_1243;
reg   [48:0] B_squared_V_reg_1248;
wire   [0:0] xor_ln29_fu_640_p2;
reg   [0:0] xor_ln29_reg_1254;
wire   [63:0] zext_ln498_fu_660_p1;
reg   [63:0] zext_ln498_reg_1259;
reg   [41:0] B_third_power_V_reg_1276;
wire    ap_CS_fsm_state7;
reg   [34:0] B_fourth_power_V_reg_1281;
reg   [55:0] trunc_ln1_reg_1291;
reg   [47:0] trunc_ln662_1_reg_1296;
wire   [63:0] ret_V_8_fu_836_p2;
reg   [63:0] ret_V_8_reg_1311;
wire    ap_CS_fsm_state8;
wire   [0:0] cos_basis_fu_847_p3;
reg   [0:0] cos_basis_reg_1316;
wire    ap_CS_fsm_state9;
reg   [62:0] result_V_reg_1321;
wire   [11:0] ret_V_fu_895_p2;
reg   [11:0] ret_V_reg_1326;
wire   [63:0] grp_scaled_fixed2ieee_fu_268_ap_return;
reg   [63:0] resultf_reg_1331;
wire    ap_CS_fsm_state10;
wire    grp_scaled_fixed2ieee_fu_268_ap_ready;
wire    grp_scaled_fixed2ieee_fu_268_ap_done;
wire    grp_scaled_fixed2ieee_fu_268_ap_start;
wire    grp_scaled_fixed2ieee_fu_268_ap_idle;
reg    grp_scaled_fixed2ieee_fu_268_ap_start_reg;
wire   [63:0] zext_ln635_fu_330_p1;
wire   [63:0] p_Val2_s_fu_274_p1;
wire   [10:0] add_ln114_1_fu_306_p2;
wire   [10:0] addr_V_fu_312_p3;
wire   [3:0] p_Result_i_i_fu_320_p4;
wire   [255:0] zext_ln744_fu_339_p1;
wire   [255:0] r_V_17_fu_342_p2;
wire   [52:0] p_Result_15_fu_358_p3;
wire   [169:0] grp_fu_372_p0;
wire   [52:0] grp_fu_372_p1;
wire   [222:0] grp_fu_372_p2;
wire   [10:0] add_ln114_fu_403_p2;
wire   [0:0] trunc_ln745_fu_421_p1;
wire   [123:0] Mx_bits_V_1_fu_425_p2;
wire   [123:0] p_Val2_7_fu_430_p3;
wire   [60:0] p_Result_i_i_39_fu_437_p4;
wire   [61:0] p_Result_16_fu_447_p3;
reg   [61:0] p_Result_8_fu_455_p4;
wire   [63:0] p_Result_17_fu_465_p3;
reg   [63:0] tmp_i_i_fu_473_p3;
wire   [5:0] Mx_zeros_V_fu_481_p1;
wire   [123:0] zext_ln1253_fu_485_p1;
wire   [123:0] r_V_18_fu_489_p2;
wire   [10:0] select_ln482_fu_408_p3;
wire   [10:0] zext_ln655_fu_505_p1;
wire  signed [11:0] sext_ln1334_fu_515_p1;
wire   [11:0] sub_ln1311_fu_527_p2;
wire  signed [31:0] sext_ln1311_fu_551_p1;
wire   [62:0] zext_ln1287_fu_554_p1;
wire   [62:0] r_V_fu_558_p2;
wire   [62:0] r_V_3_fu_563_p2;
wire   [62:0] r_V_19_fu_568_p3;
wire   [48:0] B_trunc_V_fu_610_p4;
wire   [48:0] r_V_20_fu_624_p0;
wire   [48:0] r_V_20_fu_624_p1;
wire   [97:0] r_V_20_fu_624_p2;
wire   [0:0] xor_ln29_fu_640_p0;
wire   [0:0] sin_basis_fu_646_p2;
wire   [6:0] p_Result_i_fu_596_p4;
wire   [7:0] p_Result_18_fu_652_p3;
wire   [48:0] r_V_21_fu_669_p0;
wire   [48:0] r_V_21_fu_669_p1;
wire   [97:0] r_V_8_fu_666_p1;
wire   [97:0] r_V_21_fu_669_p2;
wire   [48:0] r_V_22_fu_684_p0;
wire   [48:0] r_V_22_fu_684_p1;
wire   [97:0] r_V_22_fu_684_p2;
wire   [55:0] r_V_23_fu_707_p0;
wire  signed [51:0] r_V_23_fu_707_p1;
wire   [107:0] r_V_23_fu_707_p2;
wire   [48:0] r_V_24_fu_730_p0;
wire  signed [43:0] r_V_24_fu_730_p1;
wire   [92:0] r_V_24_fu_730_p2;
wire   [41:0] r_V_25_fu_761_p0;
wire   [32:0] r_V_25_fu_761_p1;
wire   [74:0] r_V_25_fu_761_p2;
wire   [34:0] r_V_26_fu_784_p0;
wire   [24:0] r_V_26_fu_784_p1;
wire   [59:0] r_V_26_fu_784_p2;
wire   [62:0] t1_V_fu_746_p3;
wire  signed [63:0] lhs_V_1_fu_800_p1;
wire  signed [63:0] rhs_V_2_fu_804_p1;
wire   [63:0] ret_V_13_fu_807_p2;
wire  signed [63:0] sext_ln657_fu_813_p1;
wire   [36:0] tmp_3_fu_767_p4;
wire   [63:0] ret_V_14_fu_816_p2;
wire   [63:0] zext_ln657_fu_822_p1;
wire   [28:0] tmp_4_fu_790_p4;
wire   [63:0] ret_V_15_fu_826_p2;
wire   [63:0] zext_ln657_1_fu_832_p1;
wire   [0:0] cos_basis_fu_847_p0;
wire   [0:0] xor_ln271_fu_842_p2;
wire   [62:0] select_ln272_1_fu_860_p3;
wire  signed [63:0] r_V_27_fu_874_p0;
wire   [62:0] r_V_27_fu_874_p1;
wire   [125:0] r_V_27_fu_874_p2;
wire   [10:0] select_ln272_fu_853_p3;
wire  signed [11:0] rhs_V_fu_891_p1;
wire    ap_CS_fsm_state11;
wire   [63:0] p_Val2_25_fu_902_p1;
wire   [3:0] p_Result_20_fu_927_p3;
wire   [0:0] tmp_1_fu_933_p18;
wire   [0:0] tmp_2_fu_971_p18;
wire   [0:0] select_ln307_fu_1024_p0;
wire   [0:0] select_ln271_fu_1009_p3;
wire   [0:0] or_ln311_fu_1036_p2;
wire   [0:0] xor_ln311_fu_1031_p2;
wire   [0:0] p_Result_19_fu_905_p3;
wire   [10:0] tmp_V_2_fu_913_p4;
wire   [0:0] and_ln300_fu_1016_p2;
wire   [0:0] and_ln307_fu_1020_p2;
wire   [0:0] select_ln311_fu_1041_p3;
wire   [10:0] select_ln307_fu_1024_p3;
wire   [10:0] select_ln311_1_fu_1049_p3;
wire   [0:0] and_ln300_1_fu_1072_p2;
wire   [0:0] xor_ln300_fu_1076_p2;
wire   [0:0] or_ln300_fu_1090_p2;
wire   [51:0] select_ln300_2_fu_1082_p3;
wire   [51:0] tmp_V_3_fu_923_p1;
wire   [0:0] p_Repl2_3_fu_1056_p3;
wire   [10:0] ret_V_9_fu_1064_p3;
wire   [51:0] ret_V_10_fu_1095_p3;
wire   [63:0] p_Result_21_fu_1103_p4;
reg   [10:0] ap_NS_fsm;
wire   [222:0] grp_fu_372_p00;
wire   [222:0] grp_fu_372_p10;
wire   [107:0] r_V_23_fu_707_p00;
wire   [92:0] r_V_24_fu_730_p00;
wire   [74:0] r_V_25_fu_761_p00;
wire   [74:0] r_V_25_fu_761_p10;
wire   [59:0] r_V_26_fu_784_p00;
wire   [59:0] r_V_26_fu_784_p10;
wire   [125:0] r_V_27_fu_874_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_scaled_fixed2ieee_fu_268_ap_start_reg = 1'b0;
end

sin_or_cos_doublebkb #(
    .DataWidth( 256 ),
    .AddressRange( 10 ),
    .AddressWidth( 4 ))
ref_4oPi_table_256_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ref_4oPi_table_256_V_address0),
    .ce0(ref_4oPi_table_256_V_ce0),
    .q0(ref_4oPi_table_256_V_q0)
);

sin_or_cos_doublecud #(
    .DataWidth( 59 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
fourth_order_double_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fourth_order_double_4_address0),
    .ce0(fourth_order_double_4_ce0),
    .q0(fourth_order_double_4_q0)
);

sin_or_cos_doubledEe #(
    .DataWidth( 52 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
fourth_order_double_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fourth_order_double_5_address0),
    .ce0(fourth_order_double_5_ce0),
    .q0(fourth_order_double_5_q0)
);

sin_or_cos_doubleeOg #(
    .DataWidth( 44 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
fourth_order_double_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fourth_order_double_6_address0),
    .ce0(fourth_order_double_6_ce0),
    .q0(fourth_order_double_6_q0)
);

sin_or_cos_doublefYi #(
    .DataWidth( 33 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
fourth_order_double_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fourth_order_double_7_address0),
    .ce0(fourth_order_double_7_ce0),
    .q0(fourth_order_double_7_q0)
);

sin_or_cos_doubleg8j #(
    .DataWidth( 25 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
fourth_order_double_s_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fourth_order_double_s_address0),
    .ce0(fourth_order_double_s_ce0),
    .q0(fourth_order_double_s_q0)
);

scaled_fixed2ieee grp_scaled_fixed2ieee_fu_268(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_scaled_fixed2ieee_fu_268_ap_start),
    .ap_done(grp_scaled_fixed2ieee_fu_268_ap_done),
    .ap_idle(grp_scaled_fixed2ieee_fu_268_ap_idle),
    .ap_ready(grp_scaled_fixed2ieee_fu_268_ap_ready),
    .in_V(result_V_reg_1321),
    .prescale(ret_V_reg_1326),
    .ap_return(grp_scaled_fixed2ieee_fu_268_ap_return)
);

dft_mul_170ns_53nhbi #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 170 ),
    .din1_WIDTH( 53 ),
    .dout_WIDTH( 223 ))
dft_mul_170ns_53nhbi_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_372_p0),
    .din1(grp_fu_372_p1),
    .ce(1'b1),
    .dout(grp_fu_372_p2)
);

dft_mux_83_1_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 1 ),
    .din5_WIDTH( 1 ),
    .din6_WIDTH( 1 ),
    .din7_WIDTH( 1 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 1 ))
dft_mux_83_1_1_1_U7(
    .din0(1'd0),
    .din1(1'd1),
    .din2(1'd1),
    .din3(1'd0),
    .din4(1'd0),
    .din5(1'd1),
    .din6(1'd1),
    .din7(1'd0),
    .din8(p_Val2_30_reg_1184),
    .dout(tmp_fu_575_p10)
);

dft_mux_164_1_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 1 ),
    .din5_WIDTH( 1 ),
    .din6_WIDTH( 1 ),
    .din7_WIDTH( 1 ),
    .din8_WIDTH( 1 ),
    .din9_WIDTH( 1 ),
    .din10_WIDTH( 1 ),
    .din11_WIDTH( 1 ),
    .din12_WIDTH( 1 ),
    .din13_WIDTH( 1 ),
    .din14_WIDTH( 1 ),
    .din15_WIDTH( 1 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 1 ))
dft_mux_164_1_1_1_U8(
    .din0(1'd0),
    .din1(1'd0),
    .din2(1'd0),
    .din3(1'd1),
    .din4(1'd1),
    .din5(1'd1),
    .din6(1'd1),
    .din7(1'd0),
    .din8(1'd0),
    .din9(1'd1),
    .din10(1'd1),
    .din11(1'd1),
    .din12(1'd1),
    .din13(1'd0),
    .din14(1'd0),
    .din15(1'd0),
    .din16(p_Result_20_fu_927_p3),
    .dout(tmp_1_fu_933_p18)
);

dft_mux_164_1_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 1 ),
    .din5_WIDTH( 1 ),
    .din6_WIDTH( 1 ),
    .din7_WIDTH( 1 ),
    .din8_WIDTH( 1 ),
    .din9_WIDTH( 1 ),
    .din10_WIDTH( 1 ),
    .din11_WIDTH( 1 ),
    .din12_WIDTH( 1 ),
    .din13_WIDTH( 1 ),
    .din14_WIDTH( 1 ),
    .din15_WIDTH( 1 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 1 ))
dft_mux_164_1_1_1_U9(
    .din0(1'd0),
    .din1(1'd0),
    .din2(1'd1),
    .din3(1'd0),
    .din4(1'd1),
    .din5(1'd1),
    .din6(1'd0),
    .din7(1'd1),
    .din8(1'd1),
    .din9(1'd0),
    .din10(1'd1),
    .din11(1'd1),
    .din12(1'd0),
    .din13(1'd1),
    .din14(1'd0),
    .din15(1'd0),
    .din16(p_Result_20_fu_927_p3),
    .dout(tmp_2_fu_971_p18)
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
        grp_scaled_fixed2ieee_fu_268_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_scaled_fixed2ieee_fu_268_ap_start_reg <= 1'b1;
        end else if ((grp_scaled_fixed2ieee_fu_268_ap_ready == 1'b1)) begin
            grp_scaled_fixed2ieee_fu_268_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        B_V_reg_1238 <= B_V_fu_606_p1;
        B_squared_V_reg_1248 <= {{r_V_20_fu_624_p2[97:49]}};
        r_V_5_reg_1243[48 : 0] <= r_V_5_fu_620_p1[48 : 0];
        tmp_reg_1232 <= tmp_fu_575_p10;
        xor_ln29_reg_1254 <= xor_ln29_fu_640_p2;
        zext_ln498_reg_1259[7 : 0] <= zext_ln498_fu_660_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        B_fourth_power_V_reg_1281 <= {{r_V_22_fu_684_p2[97:63]}};
        B_third_power_V_reg_1276 <= {{r_V_21_fu_669_p2[97:56]}};
        trunc_ln1_reg_1291 <= {{r_V_23_fu_707_p2[107:52]}};
        trunc_ln662_1_reg_1296 <= {{r_V_24_fu_730_p2[92:45]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        Ex_V_reg_1197 <= Ex_V_fu_509_p2;
        Mx_V_reg_1190 <= {{r_V_18_fu_489_p2[123:61]}};
        icmp_ln833_2_reg_1218 <= icmp_ln833_2_fu_546_p2;
        icmp_ln833_reg_1212 <= icmp_ln833_fu_541_p2;
        isNeg_reg_1202 <= Ex_V_fu_509_p2[32'd10];
        p_Val2_30_reg_1184 <= p_Val2_30_fu_415_p3;
        ush_reg_1207 <= ush_fu_533_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        closepath_reg_1136 <= closepath_fu_300_p2;
        p_Result_s_reg_1117 <= p_Val2_s_fu_274_p1[32'd63];
        tmp_V_1_reg_1130 <= tmp_V_1_fu_296_p1;
        tmp_V_reg_1123 <= {{p_Val2_s_fu_274_p1[62:52]}};
        trunc_ln601_reg_1147 <= trunc_ln601_fu_335_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        cos_basis_reg_1316 <= cos_basis_fu_847_p3;
        result_V_reg_1321 <= {{r_V_27_fu_874_p2[125:63]}};
        ret_V_reg_1326 <= ret_V_fu_895_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln833_1_reg_1167 <= icmp_ln833_1_fu_378_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_Val2_29_reg_1173 <= {{grp_fu_372_p2[166:43]}};
    end
end

always @ (posedge ap_clk) begin
    if (((grp_scaled_fixed2ieee_fu_268_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        resultf_reg_1331 <= grp_scaled_fixed2ieee_fu_268_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ret_V_11_reg_1152 <= {{r_V_17_fu_342_p2[255:86]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ret_V_8_reg_1311 <= ret_V_8_fu_836_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((closepath_reg_1136 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        trunc_ln_i_reg_1179 <= {{grp_fu_372_p2[169:167]}};
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        fourth_order_double_4_ce0 = 1'b1;
    end else begin
        fourth_order_double_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        fourth_order_double_5_ce0 = 1'b1;
    end else begin
        fourth_order_double_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        fourth_order_double_6_ce0 = 1'b1;
    end else begin
        fourth_order_double_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        fourth_order_double_7_ce0 = 1'b1;
    end else begin
        fourth_order_double_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        fourth_order_double_s_ce0 = 1'b1;
    end else begin
        fourth_order_double_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ref_4oPi_table_256_V_ce0 = 1'b1;
    end else begin
        ref_4oPi_table_256_V_ce0 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_scaled_fixed2ieee_fu_268_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign B_V_fu_606_p1 = r_V_19_fu_568_p3[55:0];

assign B_trunc_V_fu_610_p4 = {{r_V_19_fu_568_p3[55:7]}};

assign Ex_V_fu_509_p2 = (select_ln482_fu_408_p3 - zext_ln655_fu_505_p1);

assign Mx_bits_V_1_fu_425_p2 = (124'd0 - p_Val2_29_reg_1173);

assign Mx_zeros_V_fu_481_p1 = tmp_i_i_fu_473_p3[5:0];

assign add_ln114_1_fu_306_p2 = ($signed(11'd1101) + $signed(tmp_V_fu_286_p4));

assign add_ln114_fu_403_p2 = ($signed(11'd1027) + $signed(tmp_V_reg_1123));

assign addr_V_fu_312_p3 = ((closepath_fu_300_p2[0:0] === 1'b1) ? 11'd74 : add_ln114_1_fu_306_p2);

assign and_ln300_1_fu_1072_p2 = (icmp_ln833_reg_1212 & icmp_ln833_1_reg_1167);

assign and_ln300_fu_1016_p2 = (icmp_ln833_reg_1212 & icmp_ln833_1_reg_1167);

assign and_ln307_fu_1020_p2 = (xor_ln29_reg_1254 & p_Result_s_reg_1117);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = p_Result_21_fu_1103_p4;

assign closepath_fu_300_p2 = ((tmp_V_fu_286_p4 < 11'd1022) ? 1'b1 : 1'b0);

assign cos_basis_fu_847_p0 = do_cos;

assign cos_basis_fu_847_p3 = ((cos_basis_fu_847_p0[0:0] === 1'b1) ? xor_ln271_fu_842_p2 : tmp_reg_1232);

assign fourth_order_double_4_address0 = zext_ln498_reg_1259;

assign fourth_order_double_5_address0 = zext_ln498_fu_660_p1;

assign fourth_order_double_6_address0 = zext_ln498_fu_660_p1;

assign fourth_order_double_7_address0 = zext_ln498_reg_1259;

assign fourth_order_double_s_address0 = zext_ln498_reg_1259;

assign grp_fu_372_p0 = grp_fu_372_p00;

assign grp_fu_372_p00 = ret_V_11_reg_1152;

assign grp_fu_372_p1 = grp_fu_372_p10;

assign grp_fu_372_p10 = p_Result_15_fu_358_p3;

assign grp_scaled_fixed2ieee_fu_268_ap_start = grp_scaled_fixed2ieee_fu_268_ap_start_reg;

assign icmp_ln833_1_fu_378_p2 = ((tmp_V_1_reg_1130 == 52'd0) ? 1'b1 : 1'b0);

assign icmp_ln833_2_fu_546_p2 = ((tmp_V_reg_1123 == 11'd2047) ? 1'b1 : 1'b0);

assign icmp_ln833_fu_541_p2 = ((tmp_V_reg_1123 == 11'd0) ? 1'b1 : 1'b0);

assign isNeg_fu_519_p3 = Ex_V_fu_509_p2[32'd10];

assign lhs_V_1_fu_800_p1 = $signed(t1_V_fu_746_p3);

assign or_ln300_fu_1090_p2 = (icmp_ln833_2_reg_1218 | and_ln300_fu_1016_p2);

assign or_ln311_fu_1036_p2 = (select_ln271_fu_1009_p3 | icmp_ln833_2_reg_1218);

assign p_Repl2_3_fu_1056_p3 = ((and_ln300_fu_1016_p2[0:0] === 1'b1) ? and_ln307_fu_1020_p2 : select_ln311_fu_1041_p3);

assign p_Result_15_fu_358_p3 = {{1'd1}, {tmp_V_1_reg_1130}};

assign p_Result_16_fu_447_p3 = {{p_Result_i_i_39_fu_437_p4}, {1'd1}};

assign p_Result_17_fu_465_p3 = {{2'd3}, {p_Result_8_fu_455_p4}};

assign p_Result_18_fu_652_p3 = {{sin_basis_fu_646_p2}, {p_Result_i_fu_596_p4}};

assign p_Result_19_fu_905_p3 = p_Val2_25_fu_902_p1[32'd63];

assign p_Result_20_fu_927_p3 = {{p_Result_s_reg_1117}, {p_Val2_30_reg_1184}};

assign p_Result_21_fu_1103_p4 = {{{p_Repl2_3_fu_1056_p3}, {ret_V_9_fu_1064_p3}}, {ret_V_10_fu_1095_p3}};

integer ap_tvar_int_0;

always @ (p_Result_16_fu_447_p3) begin
    for (ap_tvar_int_0 = 62 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 61 - 0) begin
            p_Result_8_fu_455_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_8_fu_455_p4[ap_tvar_int_0] = p_Result_16_fu_447_p3[61 - ap_tvar_int_0];
        end
    end
end

assign p_Result_i_fu_596_p4 = {{r_V_19_fu_568_p3[62:56]}};

assign p_Result_i_i_39_fu_437_p4 = {{p_Val2_7_fu_430_p3[123:63]}};

assign p_Result_i_i_fu_320_p4 = {{addr_V_fu_312_p3[10:7]}};

assign p_Val2_25_fu_902_p1 = resultf_reg_1331;

assign p_Val2_30_fu_415_p3 = ((closepath_reg_1136[0:0] === 1'b1) ? 3'd0 : trunc_ln_i_reg_1179);

assign p_Val2_7_fu_430_p3 = ((trunc_ln745_fu_421_p1[0:0] === 1'b1) ? Mx_bits_V_1_fu_425_p2 : p_Val2_29_reg_1173);

assign p_Val2_s_fu_274_p1 = t_in;

assign r_V_17_fu_342_p2 = ref_4oPi_table_256_V_q0 << zext_ln744_fu_339_p1;

assign r_V_18_fu_489_p2 = p_Val2_7_fu_430_p3 << zext_ln1253_fu_485_p1;

assign r_V_19_fu_568_p3 = ((isNeg_reg_1202[0:0] === 1'b1) ? r_V_fu_558_p2 : r_V_3_fu_563_p2);

assign r_V_20_fu_624_p0 = r_V_5_fu_620_p1;

assign r_V_20_fu_624_p1 = r_V_5_fu_620_p1;

assign r_V_20_fu_624_p2 = (r_V_20_fu_624_p0 * r_V_20_fu_624_p1);

assign r_V_21_fu_669_p0 = r_V_5_reg_1243;

assign r_V_21_fu_669_p1 = r_V_8_fu_666_p1;

assign r_V_21_fu_669_p2 = (r_V_21_fu_669_p0 * r_V_21_fu_669_p1);

assign r_V_22_fu_684_p0 = r_V_8_fu_666_p1;

assign r_V_22_fu_684_p1 = r_V_8_fu_666_p1;

assign r_V_22_fu_684_p2 = (r_V_22_fu_684_p0 * r_V_22_fu_684_p1);

assign r_V_23_fu_707_p0 = r_V_23_fu_707_p00;

assign r_V_23_fu_707_p00 = B_V_reg_1238;

assign r_V_23_fu_707_p1 = fourth_order_double_5_q0;

assign r_V_23_fu_707_p2 = ($signed({{1'b0}, {r_V_23_fu_707_p0}}) * $signed(r_V_23_fu_707_p1));

assign r_V_24_fu_730_p0 = r_V_24_fu_730_p00;

assign r_V_24_fu_730_p00 = B_squared_V_reg_1248;

assign r_V_24_fu_730_p1 = fourth_order_double_6_q0;

assign r_V_24_fu_730_p2 = ($signed({{1'b0}, {r_V_24_fu_730_p0}}) * $signed(r_V_24_fu_730_p1));

assign r_V_25_fu_761_p0 = r_V_25_fu_761_p00;

assign r_V_25_fu_761_p00 = B_third_power_V_reg_1276;

assign r_V_25_fu_761_p1 = r_V_25_fu_761_p10;

assign r_V_25_fu_761_p10 = fourth_order_double_7_q0;

assign r_V_25_fu_761_p2 = (r_V_25_fu_761_p0 * r_V_25_fu_761_p1);

assign r_V_26_fu_784_p0 = r_V_26_fu_784_p00;

assign r_V_26_fu_784_p00 = B_fourth_power_V_reg_1281;

assign r_V_26_fu_784_p1 = r_V_26_fu_784_p10;

assign r_V_26_fu_784_p10 = fourth_order_double_s_q0;

assign r_V_26_fu_784_p2 = (r_V_26_fu_784_p0 * r_V_26_fu_784_p1);

assign r_V_27_fu_874_p0 = ret_V_8_reg_1311;

assign r_V_27_fu_874_p1 = r_V_27_fu_874_p10;

assign r_V_27_fu_874_p10 = select_ln272_1_fu_860_p3;

assign r_V_27_fu_874_p2 = ($signed(r_V_27_fu_874_p0) * $signed({{1'b0}, {r_V_27_fu_874_p1}}));

assign r_V_3_fu_563_p2 = Mx_V_reg_1190 << zext_ln1287_fu_554_p1;

assign r_V_5_fu_620_p1 = B_trunc_V_fu_610_p4;

assign r_V_8_fu_666_p1 = B_squared_V_reg_1248;

assign r_V_fu_558_p2 = Mx_V_reg_1190 >> zext_ln1287_fu_554_p1;

assign ref_4oPi_table_256_V_address0 = zext_ln635_fu_330_p1;

assign ret_V_10_fu_1095_p3 = ((or_ln300_fu_1090_p2[0:0] === 1'b1) ? select_ln300_2_fu_1082_p3 : tmp_V_3_fu_923_p1);

assign ret_V_13_fu_807_p2 = ($signed(lhs_V_1_fu_800_p1) + $signed(rhs_V_2_fu_804_p1));

assign ret_V_14_fu_816_p2 = ($signed(ret_V_13_fu_807_p2) + $signed(sext_ln657_fu_813_p1));

assign ret_V_15_fu_826_p2 = (ret_V_14_fu_816_p2 + zext_ln657_fu_822_p1);

assign ret_V_8_fu_836_p2 = (ret_V_15_fu_826_p2 + zext_ln657_1_fu_832_p1);

assign ret_V_9_fu_1064_p3 = ((and_ln300_fu_1016_p2[0:0] === 1'b1) ? select_ln307_fu_1024_p3 : select_ln311_1_fu_1049_p3);

assign ret_V_fu_895_p2 = ($signed(12'd0) - $signed(rhs_V_fu_891_p1));

assign rhs_V_2_fu_804_p1 = $signed(trunc_ln1_reg_1291);

assign rhs_V_fu_891_p1 = $signed(select_ln272_fu_853_p3);

assign select_ln271_fu_1009_p3 = ((cos_basis_reg_1316[0:0] === 1'b1) ? tmp_1_fu_933_p18 : tmp_2_fu_971_p18);

assign select_ln272_1_fu_860_p3 = ((cos_basis_fu_847_p3[0:0] === 1'b1) ? 63'd9223372036854775807 : Mx_V_reg_1190);

assign select_ln272_fu_853_p3 = ((cos_basis_fu_847_p3[0:0] === 1'b1) ? 11'd0 : Ex_V_reg_1197);

assign select_ln300_2_fu_1082_p3 = ((xor_ln300_fu_1076_p2[0:0] === 1'b1) ? 52'd4503599627370495 : 52'd0);

assign select_ln307_fu_1024_p0 = do_cos;

assign select_ln307_fu_1024_p3 = ((select_ln307_fu_1024_p0[0:0] === 1'b1) ? 11'd1023 : 11'd0);

assign select_ln311_1_fu_1049_p3 = ((icmp_ln833_2_reg_1218[0:0] === 1'b1) ? 11'd2047 : tmp_V_2_fu_913_p4);

assign select_ln311_fu_1041_p3 = ((or_ln311_fu_1036_p2[0:0] === 1'b1) ? xor_ln311_fu_1031_p2 : p_Result_19_fu_905_p3);

assign select_ln482_fu_408_p3 = ((closepath_reg_1136[0:0] === 1'b1) ? add_ln114_fu_403_p2 : 11'd0);

assign sext_ln1311_fu_551_p1 = $signed(ush_reg_1207);

assign sext_ln1334_fu_515_p1 = Ex_V_fu_509_p2;

assign sext_ln657_fu_813_p1 = $signed(trunc_ln662_1_reg_1296);

assign sin_basis_fu_646_p2 = (xor_ln29_fu_640_p2 ^ tmp_fu_575_p10);

assign sub_ln1311_fu_527_p2 = ($signed(12'd0) - $signed(sext_ln1334_fu_515_p1));

assign t1_V_fu_746_p3 = {{fourth_order_double_4_q0}, {4'd0}};

assign tmp_3_fu_767_p4 = {{r_V_25_fu_761_p2[74:38]}};

assign tmp_4_fu_790_p4 = {{r_V_26_fu_784_p2[59:31]}};

assign tmp_V_1_fu_296_p1 = p_Val2_s_fu_274_p1[51:0];

assign tmp_V_2_fu_913_p4 = {{p_Val2_25_fu_902_p1[62:52]}};

assign tmp_V_3_fu_923_p1 = p_Val2_25_fu_902_p1[51:0];

assign tmp_V_fu_286_p4 = {{p_Val2_s_fu_274_p1[62:52]}};


always @ (p_Result_17_fu_465_p3) begin
    if (p_Result_17_fu_465_p3[0] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd0;
    end else if (p_Result_17_fu_465_p3[1] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd1;
    end else if (p_Result_17_fu_465_p3[2] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd2;
    end else if (p_Result_17_fu_465_p3[3] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd3;
    end else if (p_Result_17_fu_465_p3[4] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd4;
    end else if (p_Result_17_fu_465_p3[5] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd5;
    end else if (p_Result_17_fu_465_p3[6] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd6;
    end else if (p_Result_17_fu_465_p3[7] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd7;
    end else if (p_Result_17_fu_465_p3[8] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd8;
    end else if (p_Result_17_fu_465_p3[9] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd9;
    end else if (p_Result_17_fu_465_p3[10] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd10;
    end else if (p_Result_17_fu_465_p3[11] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd11;
    end else if (p_Result_17_fu_465_p3[12] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd12;
    end else if (p_Result_17_fu_465_p3[13] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd13;
    end else if (p_Result_17_fu_465_p3[14] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd14;
    end else if (p_Result_17_fu_465_p3[15] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd15;
    end else if (p_Result_17_fu_465_p3[16] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd16;
    end else if (p_Result_17_fu_465_p3[17] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd17;
    end else if (p_Result_17_fu_465_p3[18] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd18;
    end else if (p_Result_17_fu_465_p3[19] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd19;
    end else if (p_Result_17_fu_465_p3[20] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd20;
    end else if (p_Result_17_fu_465_p3[21] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd21;
    end else if (p_Result_17_fu_465_p3[22] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd22;
    end else if (p_Result_17_fu_465_p3[23] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd23;
    end else if (p_Result_17_fu_465_p3[24] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd24;
    end else if (p_Result_17_fu_465_p3[25] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd25;
    end else if (p_Result_17_fu_465_p3[26] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd26;
    end else if (p_Result_17_fu_465_p3[27] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd27;
    end else if (p_Result_17_fu_465_p3[28] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd28;
    end else if (p_Result_17_fu_465_p3[29] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd29;
    end else if (p_Result_17_fu_465_p3[30] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd30;
    end else if (p_Result_17_fu_465_p3[31] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd31;
    end else if (p_Result_17_fu_465_p3[32] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd32;
    end else if (p_Result_17_fu_465_p3[33] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd33;
    end else if (p_Result_17_fu_465_p3[34] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd34;
    end else if (p_Result_17_fu_465_p3[35] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd35;
    end else if (p_Result_17_fu_465_p3[36] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd36;
    end else if (p_Result_17_fu_465_p3[37] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd37;
    end else if (p_Result_17_fu_465_p3[38] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd38;
    end else if (p_Result_17_fu_465_p3[39] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd39;
    end else if (p_Result_17_fu_465_p3[40] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd40;
    end else if (p_Result_17_fu_465_p3[41] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd41;
    end else if (p_Result_17_fu_465_p3[42] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd42;
    end else if (p_Result_17_fu_465_p3[43] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd43;
    end else if (p_Result_17_fu_465_p3[44] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd44;
    end else if (p_Result_17_fu_465_p3[45] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd45;
    end else if (p_Result_17_fu_465_p3[46] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd46;
    end else if (p_Result_17_fu_465_p3[47] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd47;
    end else if (p_Result_17_fu_465_p3[48] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd48;
    end else if (p_Result_17_fu_465_p3[49] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd49;
    end else if (p_Result_17_fu_465_p3[50] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd50;
    end else if (p_Result_17_fu_465_p3[51] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd51;
    end else if (p_Result_17_fu_465_p3[52] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd52;
    end else if (p_Result_17_fu_465_p3[53] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd53;
    end else if (p_Result_17_fu_465_p3[54] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd54;
    end else if (p_Result_17_fu_465_p3[55] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd55;
    end else if (p_Result_17_fu_465_p3[56] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd56;
    end else if (p_Result_17_fu_465_p3[57] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd57;
    end else if (p_Result_17_fu_465_p3[58] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd58;
    end else if (p_Result_17_fu_465_p3[59] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd59;
    end else if (p_Result_17_fu_465_p3[60] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd60;
    end else if (p_Result_17_fu_465_p3[61] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd61;
    end else if (p_Result_17_fu_465_p3[62] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd62;
    end else if (p_Result_17_fu_465_p3[63] == 1'b1) begin
        tmp_i_i_fu_473_p3 = 64'd63;
    end else begin
        tmp_i_i_fu_473_p3 = 64'd64;
    end
end

assign trunc_ln601_fu_335_p1 = addr_V_fu_312_p3[6:0];

assign trunc_ln745_fu_421_p1 = p_Val2_30_fu_415_p3[0:0];

assign ush_fu_533_p3 = ((isNeg_fu_519_p3[0:0] === 1'b1) ? sub_ln1311_fu_527_p2 : sext_ln1334_fu_515_p1);

assign xor_ln271_fu_842_p2 = (tmp_reg_1232 ^ 1'd1);

assign xor_ln29_fu_640_p0 = do_cos;

assign xor_ln29_fu_640_p2 = (xor_ln29_fu_640_p0 ^ 1'd1);

assign xor_ln300_fu_1076_p2 = (1'd1 ^ and_ln300_1_fu_1072_p2);

assign xor_ln311_fu_1031_p2 = (icmp_ln833_2_reg_1218 ^ 1'd1);

assign zext_ln1253_fu_485_p1 = Mx_zeros_V_fu_481_p1;

assign zext_ln1287_fu_554_p1 = $unsigned(sext_ln1311_fu_551_p1);

assign zext_ln498_fu_660_p1 = p_Result_18_fu_652_p3;

assign zext_ln635_fu_330_p1 = p_Result_i_i_fu_320_p4;

assign zext_ln655_fu_505_p1 = Mx_zeros_V_fu_481_p1;

assign zext_ln657_1_fu_832_p1 = tmp_4_fu_790_p4;

assign zext_ln657_fu_822_p1 = tmp_3_fu_767_p4;

assign zext_ln744_fu_339_p1 = trunc_ln601_reg_1147;

always @ (posedge ap_clk) begin
    r_V_5_reg_1243[97:49] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln498_reg_1259[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //sin_or_cos_double_s