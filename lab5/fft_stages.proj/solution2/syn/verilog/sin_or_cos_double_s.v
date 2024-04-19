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

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

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
reg[63:0] ap_return;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
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
reg   [0:0] p_Result_s_reg_1127;
wire   [10:0] tmp_V_fu_286_p4;
reg   [10:0] tmp_V_reg_1133;
wire   [51:0] tmp_V_1_fu_296_p1;
reg   [51:0] tmp_V_1_reg_1140;
wire   [0:0] closepath_fu_300_p2;
reg   [0:0] closepath_reg_1146;
wire   [6:0] trunc_ln601_fu_335_p1;
reg   [6:0] trunc_ln601_reg_1157;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln833_1_fu_379_p2;
reg   [0:0] icmp_ln833_1_reg_1172;
reg   [123:0] p_Val2_26_reg_1178;
wire    ap_CS_fsm_state3;
reg   [2:0] trunc_ln_i_reg_1184;
wire   [2:0] p_Val2_27_fu_416_p3;
reg   [2:0] p_Val2_27_reg_1189;
wire    ap_CS_fsm_state4;
reg   [62:0] Mx_V_reg_1195;
wire  signed [10:0] Ex_V_fu_510_p2;
reg  signed [10:0] Ex_V_reg_1202;
reg   [0:0] isNeg_reg_1208;
wire   [0:0] icmp_ln833_fu_524_p2;
reg   [0:0] icmp_ln833_reg_1214;
wire   [0:0] icmp_ln833_2_fu_529_p2;
reg   [0:0] icmp_ln833_2_reg_1220;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_1_fu_575_p10;
reg   [0:0] tmp_1_reg_1234;
wire   [55:0] B_V_fu_606_p1;
reg   [55:0] B_V_reg_1240;
wire   [97:0] r_V_5_fu_620_p1;
reg   [97:0] r_V_5_reg_1245;
reg   [48:0] B_squared_V_reg_1250;
wire   [0:0] xor_ln29_fu_640_p2;
reg   [0:0] xor_ln29_reg_1256;
reg   [41:0] B_third_power_V_reg_1286;
wire    ap_CS_fsm_state6;
reg   [58:0] p_Val2_15_reg_1291;
reg   [55:0] trunc_ln1_reg_1296;
reg   [47:0] trunc_ln662_1_reg_1301;
reg   [32:0] fourth_order_double_14_reg_1306;
reg   [28:0] tmp_4_reg_1311;
wire   [63:0] ret_V_5_fu_845_p2;
reg   [63:0] ret_V_5_reg_1316;
wire    ap_CS_fsm_state7;
wire   [0:0] cos_basis_fu_856_p3;
reg   [0:0] cos_basis_reg_1321;
wire    ap_CS_fsm_state8;
reg   [62:0] result_V_reg_1326;
wire   [11:0] ret_V_fu_904_p2;
reg   [11:0] ret_V_reg_1331;
wire    grp_scaled_fixed2ieee_fu_268_ap_start;
wire    grp_scaled_fixed2ieee_fu_268_ap_done;
wire    grp_scaled_fixed2ieee_fu_268_ap_idle;
wire    grp_scaled_fixed2ieee_fu_268_ap_ready;
wire   [63:0] grp_scaled_fixed2ieee_fu_268_ap_return;
reg    grp_scaled_fixed2ieee_fu_268_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln635_fu_330_p1;
wire   [63:0] zext_ln498_fu_660_p1;
wire   [63:0] p_Val2_s_fu_274_p1;
wire   [10:0] add_ln114_1_fu_306_p2;
wire   [10:0] addr_V_fu_312_p3;
wire   [3:0] p_Result_i_i_fu_320_p4;
wire   [255:0] zext_ln744_fu_346_p1;
wire   [255:0] r_V_17_fu_349_p2;
wire   [169:0] ret_V_8_fu_355_p4;
wire   [52:0] p_Result_15_fu_339_p3;
wire   [169:0] grp_fu_373_p0;
wire   [52:0] grp_fu_373_p1;
wire   [222:0] grp_fu_373_p2;
wire   [10:0] add_ln114_fu_404_p2;
wire   [0:0] trunc_ln745_fu_422_p1;
wire   [123:0] Mx_bits_V_1_fu_426_p2;
wire   [123:0] p_Val2_7_fu_431_p3;
wire   [60:0] p_Result_i_i_46_fu_438_p4;
wire   [61:0] p_Result_16_fu_448_p3;
reg   [61:0] p_Result_8_fu_456_p4;
wire   [63:0] p_Result_17_fu_466_p3;
reg   [63:0] tmp_i_i_fu_474_p3;
wire   [5:0] Mx_zeros_V_fu_482_p1;
wire   [123:0] zext_ln1253_fu_486_p1;
wire   [123:0] r_V_18_fu_490_p2;
wire   [10:0] select_ln482_fu_409_p3;
wire   [10:0] zext_ln655_fu_506_p1;
wire  signed [11:0] sext_ln1334_fu_534_p1;
wire   [11:0] sub_ln1311_fu_537_p2;
wire   [11:0] ush_fu_543_p3;
wire  signed [31:0] sext_ln1311_fu_550_p1;
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
wire   [48:0] r_V_21_fu_672_p0;
wire   [48:0] r_V_21_fu_672_p1;
wire   [97:0] r_V_8_fu_669_p1;
wire   [97:0] r_V_21_fu_672_p2;
wire   [48:0] r_V_22_fu_687_p0;
wire   [48:0] r_V_22_fu_687_p1;
wire   [97:0] r_V_22_fu_687_p2;
wire   [55:0] r_V_23_fu_710_p0;
wire  signed [51:0] r_V_23_fu_710_p1;
wire   [107:0] r_V_23_fu_710_p2;
wire   [48:0] r_V_24_fu_733_p0;
wire  signed [43:0] r_V_24_fu_733_p1;
wire   [92:0] r_V_24_fu_733_p2;
wire   [34:0] B_fourth_power_V_fu_693_p4;
wire   [34:0] r_V_26_fu_757_p0;
wire   [24:0] r_V_26_fu_757_p1;
wire   [59:0] r_V_26_fu_757_p2;
wire   [41:0] r_V_25_fu_786_p0;
wire   [32:0] r_V_25_fu_786_p1;
wire   [74:0] r_V_25_fu_786_p2;
wire   [36:0] tmp_3_fu_792_p4;
wire   [62:0] t1_V_fu_773_p3;
wire  signed [63:0] lhs_V_1_fu_806_p1;
wire  signed [63:0] rhs_V_2_fu_810_p1;
wire   [37:0] zext_ln662_fu_802_p1;
wire   [37:0] zext_ln1146_fu_816_p1;
wire   [37:0] add_ln1146_1_fu_825_p2;
wire   [48:0] zext_ln1146_1_fu_831_p1;
wire  signed [48:0] sext_ln657_fu_813_p1;
wire   [48:0] add_ln1146_2_fu_835_p2;
wire  signed [63:0] sext_ln1146_fu_841_p1;
wire   [63:0] add_ln1146_fu_819_p2;
wire   [0:0] cos_basis_fu_856_p0;
wire   [0:0] xor_ln271_fu_851_p2;
wire   [62:0] select_ln272_1_fu_869_p3;
wire  signed [63:0] r_V_27_fu_883_p0;
wire   [62:0] r_V_27_fu_883_p1;
wire   [125:0] r_V_27_fu_883_p2;
wire   [10:0] select_ln272_fu_862_p3;
wire  signed [11:0] rhs_V_fu_900_p1;
wire   [63:0] p_Val2_22_fu_911_p1;
wire   [3:0] p_Result_20_fu_937_p3;
wire   [0:0] tmp_fu_943_p18;
wire   [0:0] tmp_2_fu_981_p18;
wire   [0:0] select_ln307_fu_1034_p0;
wire   [0:0] select_ln271_fu_1019_p3;
wire   [0:0] or_ln311_fu_1046_p2;
wire   [0:0] xor_ln311_fu_1041_p2;
wire   [0:0] p_Result_19_fu_915_p3;
wire   [10:0] tmp_V_2_fu_923_p4;
wire   [0:0] and_ln300_fu_1026_p2;
wire   [0:0] and_ln307_fu_1030_p2;
wire   [0:0] select_ln311_fu_1051_p3;
wire   [10:0] select_ln307_fu_1034_p3;
wire   [10:0] select_ln311_1_fu_1059_p3;
wire   [0:0] and_ln300_1_fu_1082_p2;
wire   [0:0] xor_ln300_fu_1086_p2;
wire   [0:0] or_ln300_fu_1100_p2;
wire   [51:0] select_ln300_2_fu_1092_p3;
wire   [51:0] tmp_V_3_fu_933_p1;
wire   [0:0] p_Repl2_3_fu_1066_p3;
wire   [10:0] ret_V_6_fu_1074_p3;
wire   [51:0] ret_V_7_fu_1105_p3;
wire   [63:0] p_Result_21_fu_1113_p4;
wire   [63:0] bitcast_ln512_fu_1123_p1;
reg   [63:0] ap_return_preg;
reg   [8:0] ap_NS_fsm;
wire   [222:0] grp_fu_373_p00;
wire   [222:0] grp_fu_373_p10;
wire   [107:0] r_V_23_fu_710_p00;
wire   [92:0] r_V_24_fu_733_p00;
wire   [74:0] r_V_25_fu_786_p00;
wire   [74:0] r_V_25_fu_786_p10;
wire   [59:0] r_V_26_fu_757_p00;
wire   [59:0] r_V_26_fu_757_p10;
wire   [125:0] r_V_27_fu_883_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_scaled_fixed2ieee_fu_268_ap_start_reg = 1'b0;
#0 ap_return_preg = 64'd0;
end

sin_or_cos_doublecud #(
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

sin_or_cos_doubledEe #(
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

sin_or_cos_doubleeOg #(
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

sin_or_cos_doublefYi #(
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

sin_or_cos_doubleg8j #(
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

sin_or_cos_doublehbi #(
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
    .in_V(result_V_reg_1326),
    .prescale(ret_V_reg_1331),
    .ap_return(grp_scaled_fixed2ieee_fu_268_ap_return)
);

fft_streaming_mulibs #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 170 ),
    .din1_WIDTH( 53 ),
    .dout_WIDTH( 223 ))
fft_streaming_mulibs_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_373_p0),
    .din1(grp_fu_373_p1),
    .ce(1'b1),
    .dout(grp_fu_373_p2)
);

fft_streaming_muxjbC #(
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
fft_streaming_muxjbC_U10(
    .din0(1'd0),
    .din1(1'd1),
    .din2(1'd1),
    .din3(1'd0),
    .din4(1'd0),
    .din5(1'd1),
    .din6(1'd1),
    .din7(1'd0),
    .din8(p_Val2_27_reg_1189),
    .dout(tmp_1_fu_575_p10)
);

fft_streaming_muxkbM #(
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
fft_streaming_muxkbM_U11(
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
    .din16(p_Result_20_fu_937_p3),
    .dout(tmp_fu_943_p18)
);

fft_streaming_muxkbM #(
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
fft_streaming_muxkbM_U12(
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
    .din16(p_Result_20_fu_937_p3),
    .dout(tmp_2_fu_981_p18)
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
        ap_return_preg <= 64'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) & (grp_scaled_fixed2ieee_fu_268_ap_done == 1'b1))) begin
            ap_return_preg <= bitcast_ln512_fu_1123_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_scaled_fixed2ieee_fu_268_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_scaled_fixed2ieee_fu_268_ap_start_reg <= 1'b1;
        end else if ((grp_scaled_fixed2ieee_fu_268_ap_ready == 1'b1)) begin
            grp_scaled_fixed2ieee_fu_268_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        B_V_reg_1240 <= B_V_fu_606_p1;
        B_squared_V_reg_1250 <= {{r_V_20_fu_624_p2[97:49]}};
        r_V_5_reg_1245[48 : 0] <= r_V_5_fu_620_p1[48 : 0];
        tmp_1_reg_1234 <= tmp_1_fu_575_p10;
        xor_ln29_reg_1256 <= xor_ln29_fu_640_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        B_third_power_V_reg_1286 <= {{r_V_21_fu_672_p2[97:56]}};
        fourth_order_double_14_reg_1306 <= fourth_order_double_7_q0;
        p_Val2_15_reg_1291 <= fourth_order_double_4_q0;
        tmp_4_reg_1311 <= {{r_V_26_fu_757_p2[59:31]}};
        trunc_ln1_reg_1296 <= {{r_V_23_fu_710_p2[107:52]}};
        trunc_ln662_1_reg_1301 <= {{r_V_24_fu_733_p2[92:45]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        Ex_V_reg_1202 <= Ex_V_fu_510_p2;
        Mx_V_reg_1195 <= {{r_V_18_fu_490_p2[123:61]}};
        icmp_ln833_2_reg_1220 <= icmp_ln833_2_fu_529_p2;
        icmp_ln833_reg_1214 <= icmp_ln833_fu_524_p2;
        isNeg_reg_1208 <= Ex_V_fu_510_p2[32'd10];
        p_Val2_27_reg_1189 <= p_Val2_27_fu_416_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        closepath_reg_1146 <= closepath_fu_300_p2;
        p_Result_s_reg_1127 <= p_Val2_s_fu_274_p1[32'd63];
        tmp_V_1_reg_1140 <= tmp_V_1_fu_296_p1;
        tmp_V_reg_1133 <= {{p_Val2_s_fu_274_p1[62:52]}};
        trunc_ln601_reg_1157 <= trunc_ln601_fu_335_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cos_basis_reg_1321 <= cos_basis_fu_856_p3;
        result_V_reg_1326 <= {{r_V_27_fu_883_p2[125:63]}};
        ret_V_reg_1331 <= ret_V_fu_904_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln833_1_reg_1172 <= icmp_ln833_1_fu_379_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Val2_26_reg_1178 <= {{grp_fu_373_p2[166:43]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ret_V_5_reg_1316 <= ret_V_5_fu_845_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((closepath_reg_1146 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        trunc_ln_i_reg_1184 <= {{grp_fu_373_p2[169:167]}};
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (grp_scaled_fixed2ieee_fu_268_ap_done == 1'b1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (grp_scaled_fixed2ieee_fu_268_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_scaled_fixed2ieee_fu_268_ap_done == 1'b1))) begin
        ap_return = bitcast_ln512_fu_1123_p1;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        fourth_order_double_4_ce0 = 1'b1;
    end else begin
        fourth_order_double_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        fourth_order_double_5_ce0 = 1'b1;
    end else begin
        fourth_order_double_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        fourth_order_double_6_ce0 = 1'b1;
    end else begin
        fourth_order_double_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        fourth_order_double_7_ce0 = 1'b1;
    end else begin
        fourth_order_double_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
            if (((1'b1 == ap_CS_fsm_state9) & (grp_scaled_fixed2ieee_fu_268_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign B_V_fu_606_p1 = r_V_19_fu_568_p3[55:0];

assign B_fourth_power_V_fu_693_p4 = {{r_V_22_fu_687_p2[97:63]}};

assign B_trunc_V_fu_610_p4 = {{r_V_19_fu_568_p3[55:7]}};

assign Ex_V_fu_510_p2 = (select_ln482_fu_409_p3 - zext_ln655_fu_506_p1);

assign Mx_bits_V_1_fu_426_p2 = (124'd0 - p_Val2_26_reg_1178);

assign Mx_zeros_V_fu_482_p1 = tmp_i_i_fu_474_p3[5:0];

assign add_ln1146_1_fu_825_p2 = (zext_ln662_fu_802_p1 + zext_ln1146_fu_816_p1);

assign add_ln1146_2_fu_835_p2 = ($signed(zext_ln1146_1_fu_831_p1) + $signed(sext_ln657_fu_813_p1));

assign add_ln1146_fu_819_p2 = ($signed(lhs_V_1_fu_806_p1) + $signed(rhs_V_2_fu_810_p1));

assign add_ln114_1_fu_306_p2 = ($signed(11'd1101) + $signed(tmp_V_fu_286_p4));

assign add_ln114_fu_404_p2 = ($signed(11'd1027) + $signed(tmp_V_reg_1133));

assign addr_V_fu_312_p3 = ((closepath_fu_300_p2[0:0] === 1'b1) ? 11'd74 : add_ln114_1_fu_306_p2);

assign and_ln300_1_fu_1082_p2 = (icmp_ln833_reg_1214 & icmp_ln833_1_reg_1172);

assign and_ln300_fu_1026_p2 = (icmp_ln833_reg_1214 & icmp_ln833_1_reg_1172);

assign and_ln307_fu_1030_p2 = (xor_ln29_reg_1256 & p_Result_s_reg_1127);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bitcast_ln512_fu_1123_p1 = p_Result_21_fu_1113_p4;

assign closepath_fu_300_p2 = ((tmp_V_fu_286_p4 < 11'd1022) ? 1'b1 : 1'b0);

assign cos_basis_fu_856_p0 = do_cos;

assign cos_basis_fu_856_p3 = ((cos_basis_fu_856_p0[0:0] === 1'b1) ? xor_ln271_fu_851_p2 : tmp_1_reg_1234);

assign fourth_order_double_4_address0 = zext_ln498_fu_660_p1;

assign fourth_order_double_5_address0 = zext_ln498_fu_660_p1;

assign fourth_order_double_6_address0 = zext_ln498_fu_660_p1;

assign fourth_order_double_7_address0 = zext_ln498_fu_660_p1;

assign fourth_order_double_s_address0 = zext_ln498_fu_660_p1;

assign grp_fu_373_p0 = grp_fu_373_p00;

assign grp_fu_373_p00 = ret_V_8_fu_355_p4;

assign grp_fu_373_p1 = grp_fu_373_p10;

assign grp_fu_373_p10 = p_Result_15_fu_339_p3;

assign grp_scaled_fixed2ieee_fu_268_ap_start = grp_scaled_fixed2ieee_fu_268_ap_start_reg;

assign icmp_ln833_1_fu_379_p2 = ((tmp_V_1_reg_1140 == 52'd0) ? 1'b1 : 1'b0);

assign icmp_ln833_2_fu_529_p2 = ((tmp_V_reg_1133 == 11'd2047) ? 1'b1 : 1'b0);

assign icmp_ln833_fu_524_p2 = ((tmp_V_reg_1133 == 11'd0) ? 1'b1 : 1'b0);

assign lhs_V_1_fu_806_p1 = $signed(t1_V_fu_773_p3);

assign or_ln300_fu_1100_p2 = (icmp_ln833_2_reg_1220 | and_ln300_fu_1026_p2);

assign or_ln311_fu_1046_p2 = (select_ln271_fu_1019_p3 | icmp_ln833_2_reg_1220);

assign p_Repl2_3_fu_1066_p3 = ((and_ln300_fu_1026_p2[0:0] === 1'b1) ? and_ln307_fu_1030_p2 : select_ln311_fu_1051_p3);

assign p_Result_15_fu_339_p3 = {{1'd1}, {tmp_V_1_reg_1140}};

assign p_Result_16_fu_448_p3 = {{p_Result_i_i_46_fu_438_p4}, {1'd1}};

assign p_Result_17_fu_466_p3 = {{2'd3}, {p_Result_8_fu_456_p4}};

assign p_Result_18_fu_652_p3 = {{sin_basis_fu_646_p2}, {p_Result_i_fu_596_p4}};

assign p_Result_19_fu_915_p3 = p_Val2_22_fu_911_p1[32'd63];

assign p_Result_20_fu_937_p3 = {{p_Result_s_reg_1127}, {p_Val2_27_reg_1189}};

assign p_Result_21_fu_1113_p4 = {{{p_Repl2_3_fu_1066_p3}, {ret_V_6_fu_1074_p3}}, {ret_V_7_fu_1105_p3}};

integer ap_tvar_int_0;

always @ (p_Result_16_fu_448_p3) begin
    for (ap_tvar_int_0 = 62 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 61 - 0) begin
            p_Result_8_fu_456_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_8_fu_456_p4[ap_tvar_int_0] = p_Result_16_fu_448_p3[61 - ap_tvar_int_0];
        end
    end
end

assign p_Result_i_fu_596_p4 = {{r_V_19_fu_568_p3[62:56]}};

assign p_Result_i_i_46_fu_438_p4 = {{p_Val2_7_fu_431_p3[123:63]}};

assign p_Result_i_i_fu_320_p4 = {{addr_V_fu_312_p3[10:7]}};

assign p_Val2_22_fu_911_p1 = grp_scaled_fixed2ieee_fu_268_ap_return;

assign p_Val2_27_fu_416_p3 = ((closepath_reg_1146[0:0] === 1'b1) ? 3'd0 : trunc_ln_i_reg_1184);

assign p_Val2_7_fu_431_p3 = ((trunc_ln745_fu_422_p1[0:0] === 1'b1) ? Mx_bits_V_1_fu_426_p2 : p_Val2_26_reg_1178);

assign p_Val2_s_fu_274_p1 = t_in;

assign r_V_17_fu_349_p2 = ref_4oPi_table_256_V_q0 << zext_ln744_fu_346_p1;

assign r_V_18_fu_490_p2 = p_Val2_7_fu_431_p3 << zext_ln1253_fu_486_p1;

assign r_V_19_fu_568_p3 = ((isNeg_reg_1208[0:0] === 1'b1) ? r_V_fu_558_p2 : r_V_3_fu_563_p2);

assign r_V_20_fu_624_p0 = r_V_5_fu_620_p1;

assign r_V_20_fu_624_p1 = r_V_5_fu_620_p1;

assign r_V_20_fu_624_p2 = (r_V_20_fu_624_p0 * r_V_20_fu_624_p1);

assign r_V_21_fu_672_p0 = r_V_5_reg_1245;

assign r_V_21_fu_672_p1 = r_V_8_fu_669_p1;

assign r_V_21_fu_672_p2 = (r_V_21_fu_672_p0 * r_V_21_fu_672_p1);

assign r_V_22_fu_687_p0 = r_V_8_fu_669_p1;

assign r_V_22_fu_687_p1 = r_V_8_fu_669_p1;

assign r_V_22_fu_687_p2 = (r_V_22_fu_687_p0 * r_V_22_fu_687_p1);

assign r_V_23_fu_710_p0 = r_V_23_fu_710_p00;

assign r_V_23_fu_710_p00 = B_V_reg_1240;

assign r_V_23_fu_710_p1 = fourth_order_double_5_q0;

assign r_V_23_fu_710_p2 = ($signed({{1'b0}, {r_V_23_fu_710_p0}}) * $signed(r_V_23_fu_710_p1));

assign r_V_24_fu_733_p0 = r_V_24_fu_733_p00;

assign r_V_24_fu_733_p00 = B_squared_V_reg_1250;

assign r_V_24_fu_733_p1 = fourth_order_double_6_q0;

assign r_V_24_fu_733_p2 = ($signed({{1'b0}, {r_V_24_fu_733_p0}}) * $signed(r_V_24_fu_733_p1));

assign r_V_25_fu_786_p0 = r_V_25_fu_786_p00;

assign r_V_25_fu_786_p00 = B_third_power_V_reg_1286;

assign r_V_25_fu_786_p1 = r_V_25_fu_786_p10;

assign r_V_25_fu_786_p10 = fourth_order_double_14_reg_1306;

assign r_V_25_fu_786_p2 = (r_V_25_fu_786_p0 * r_V_25_fu_786_p1);

assign r_V_26_fu_757_p0 = r_V_26_fu_757_p00;

assign r_V_26_fu_757_p00 = B_fourth_power_V_fu_693_p4;

assign r_V_26_fu_757_p1 = r_V_26_fu_757_p10;

assign r_V_26_fu_757_p10 = fourth_order_double_s_q0;

assign r_V_26_fu_757_p2 = (r_V_26_fu_757_p0 * r_V_26_fu_757_p1);

assign r_V_27_fu_883_p0 = ret_V_5_reg_1316;

assign r_V_27_fu_883_p1 = r_V_27_fu_883_p10;

assign r_V_27_fu_883_p10 = select_ln272_1_fu_869_p3;

assign r_V_27_fu_883_p2 = ($signed(r_V_27_fu_883_p0) * $signed({{1'b0}, {r_V_27_fu_883_p1}}));

assign r_V_3_fu_563_p2 = Mx_V_reg_1195 << zext_ln1287_fu_554_p1;

assign r_V_5_fu_620_p1 = B_trunc_V_fu_610_p4;

assign r_V_8_fu_669_p1 = B_squared_V_reg_1250;

assign r_V_fu_558_p2 = Mx_V_reg_1195 >> zext_ln1287_fu_554_p1;

assign ref_4oPi_table_256_V_address0 = zext_ln635_fu_330_p1;

assign ret_V_5_fu_845_p2 = ($signed(sext_ln1146_fu_841_p1) + $signed(add_ln1146_fu_819_p2));

assign ret_V_6_fu_1074_p3 = ((and_ln300_fu_1026_p2[0:0] === 1'b1) ? select_ln307_fu_1034_p3 : select_ln311_1_fu_1059_p3);

assign ret_V_7_fu_1105_p3 = ((or_ln300_fu_1100_p2[0:0] === 1'b1) ? select_ln300_2_fu_1092_p3 : tmp_V_3_fu_933_p1);

assign ret_V_8_fu_355_p4 = {{r_V_17_fu_349_p2[255:86]}};

assign ret_V_fu_904_p2 = ($signed(12'd0) - $signed(rhs_V_fu_900_p1));

assign rhs_V_2_fu_810_p1 = $signed(trunc_ln1_reg_1296);

assign rhs_V_fu_900_p1 = $signed(select_ln272_fu_862_p3);

assign select_ln271_fu_1019_p3 = ((cos_basis_reg_1321[0:0] === 1'b1) ? tmp_fu_943_p18 : tmp_2_fu_981_p18);

assign select_ln272_1_fu_869_p3 = ((cos_basis_fu_856_p3[0:0] === 1'b1) ? 63'd9223372036854775807 : Mx_V_reg_1195);

assign select_ln272_fu_862_p3 = ((cos_basis_fu_856_p3[0:0] === 1'b1) ? 11'd0 : Ex_V_reg_1202);

assign select_ln300_2_fu_1092_p3 = ((xor_ln300_fu_1086_p2[0:0] === 1'b1) ? 52'd4503599627370495 : 52'd0);

assign select_ln307_fu_1034_p0 = do_cos;

assign select_ln307_fu_1034_p3 = ((select_ln307_fu_1034_p0[0:0] === 1'b1) ? 11'd1023 : 11'd0);

assign select_ln311_1_fu_1059_p3 = ((icmp_ln833_2_reg_1220[0:0] === 1'b1) ? 11'd2047 : tmp_V_2_fu_923_p4);

assign select_ln311_fu_1051_p3 = ((or_ln311_fu_1046_p2[0:0] === 1'b1) ? xor_ln311_fu_1041_p2 : p_Result_19_fu_915_p3);

assign select_ln482_fu_409_p3 = ((closepath_reg_1146[0:0] === 1'b1) ? add_ln114_fu_404_p2 : 11'd0);

assign sext_ln1146_fu_841_p1 = $signed(add_ln1146_2_fu_835_p2);

assign sext_ln1311_fu_550_p1 = $signed(ush_fu_543_p3);

assign sext_ln1334_fu_534_p1 = Ex_V_reg_1202;

assign sext_ln657_fu_813_p1 = $signed(trunc_ln662_1_reg_1301);

assign sin_basis_fu_646_p2 = (xor_ln29_fu_640_p2 ^ tmp_1_fu_575_p10);

assign sub_ln1311_fu_537_p2 = ($signed(12'd0) - $signed(sext_ln1334_fu_534_p1));

assign t1_V_fu_773_p3 = {{p_Val2_15_reg_1291}, {4'd0}};

assign tmp_3_fu_792_p4 = {{r_V_25_fu_786_p2[74:38]}};

assign tmp_V_1_fu_296_p1 = p_Val2_s_fu_274_p1[51:0];

assign tmp_V_2_fu_923_p4 = {{p_Val2_22_fu_911_p1[62:52]}};

assign tmp_V_3_fu_933_p1 = p_Val2_22_fu_911_p1[51:0];

assign tmp_V_fu_286_p4 = {{p_Val2_s_fu_274_p1[62:52]}};


always @ (p_Result_17_fu_466_p3) begin
    if (p_Result_17_fu_466_p3[0] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd0;
    end else if (p_Result_17_fu_466_p3[1] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd1;
    end else if (p_Result_17_fu_466_p3[2] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd2;
    end else if (p_Result_17_fu_466_p3[3] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd3;
    end else if (p_Result_17_fu_466_p3[4] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd4;
    end else if (p_Result_17_fu_466_p3[5] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd5;
    end else if (p_Result_17_fu_466_p3[6] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd6;
    end else if (p_Result_17_fu_466_p3[7] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd7;
    end else if (p_Result_17_fu_466_p3[8] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd8;
    end else if (p_Result_17_fu_466_p3[9] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd9;
    end else if (p_Result_17_fu_466_p3[10] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd10;
    end else if (p_Result_17_fu_466_p3[11] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd11;
    end else if (p_Result_17_fu_466_p3[12] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd12;
    end else if (p_Result_17_fu_466_p3[13] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd13;
    end else if (p_Result_17_fu_466_p3[14] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd14;
    end else if (p_Result_17_fu_466_p3[15] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd15;
    end else if (p_Result_17_fu_466_p3[16] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd16;
    end else if (p_Result_17_fu_466_p3[17] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd17;
    end else if (p_Result_17_fu_466_p3[18] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd18;
    end else if (p_Result_17_fu_466_p3[19] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd19;
    end else if (p_Result_17_fu_466_p3[20] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd20;
    end else if (p_Result_17_fu_466_p3[21] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd21;
    end else if (p_Result_17_fu_466_p3[22] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd22;
    end else if (p_Result_17_fu_466_p3[23] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd23;
    end else if (p_Result_17_fu_466_p3[24] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd24;
    end else if (p_Result_17_fu_466_p3[25] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd25;
    end else if (p_Result_17_fu_466_p3[26] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd26;
    end else if (p_Result_17_fu_466_p3[27] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd27;
    end else if (p_Result_17_fu_466_p3[28] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd28;
    end else if (p_Result_17_fu_466_p3[29] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd29;
    end else if (p_Result_17_fu_466_p3[30] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd30;
    end else if (p_Result_17_fu_466_p3[31] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd31;
    end else if (p_Result_17_fu_466_p3[32] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd32;
    end else if (p_Result_17_fu_466_p3[33] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd33;
    end else if (p_Result_17_fu_466_p3[34] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd34;
    end else if (p_Result_17_fu_466_p3[35] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd35;
    end else if (p_Result_17_fu_466_p3[36] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd36;
    end else if (p_Result_17_fu_466_p3[37] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd37;
    end else if (p_Result_17_fu_466_p3[38] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd38;
    end else if (p_Result_17_fu_466_p3[39] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd39;
    end else if (p_Result_17_fu_466_p3[40] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd40;
    end else if (p_Result_17_fu_466_p3[41] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd41;
    end else if (p_Result_17_fu_466_p3[42] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd42;
    end else if (p_Result_17_fu_466_p3[43] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd43;
    end else if (p_Result_17_fu_466_p3[44] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd44;
    end else if (p_Result_17_fu_466_p3[45] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd45;
    end else if (p_Result_17_fu_466_p3[46] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd46;
    end else if (p_Result_17_fu_466_p3[47] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd47;
    end else if (p_Result_17_fu_466_p3[48] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd48;
    end else if (p_Result_17_fu_466_p3[49] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd49;
    end else if (p_Result_17_fu_466_p3[50] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd50;
    end else if (p_Result_17_fu_466_p3[51] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd51;
    end else if (p_Result_17_fu_466_p3[52] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd52;
    end else if (p_Result_17_fu_466_p3[53] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd53;
    end else if (p_Result_17_fu_466_p3[54] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd54;
    end else if (p_Result_17_fu_466_p3[55] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd55;
    end else if (p_Result_17_fu_466_p3[56] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd56;
    end else if (p_Result_17_fu_466_p3[57] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd57;
    end else if (p_Result_17_fu_466_p3[58] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd58;
    end else if (p_Result_17_fu_466_p3[59] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd59;
    end else if (p_Result_17_fu_466_p3[60] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd60;
    end else if (p_Result_17_fu_466_p3[61] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd61;
    end else if (p_Result_17_fu_466_p3[62] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd62;
    end else if (p_Result_17_fu_466_p3[63] == 1'b1) begin
        tmp_i_i_fu_474_p3 = 64'd63;
    end else begin
        tmp_i_i_fu_474_p3 = 64'd64;
    end
end

assign trunc_ln601_fu_335_p1 = addr_V_fu_312_p3[6:0];

assign trunc_ln745_fu_422_p1 = p_Val2_27_fu_416_p3[0:0];

assign ush_fu_543_p3 = ((isNeg_reg_1208[0:0] === 1'b1) ? sub_ln1311_fu_537_p2 : sext_ln1334_fu_534_p1);

assign xor_ln271_fu_851_p2 = (tmp_1_reg_1234 ^ 1'd1);

assign xor_ln29_fu_640_p0 = do_cos;

assign xor_ln29_fu_640_p2 = (xor_ln29_fu_640_p0 ^ 1'd1);

assign xor_ln300_fu_1086_p2 = (1'd1 ^ and_ln300_1_fu_1082_p2);

assign xor_ln311_fu_1041_p2 = (icmp_ln833_2_reg_1220 ^ 1'd1);

assign zext_ln1146_1_fu_831_p1 = add_ln1146_1_fu_825_p2;

assign zext_ln1146_fu_816_p1 = tmp_4_reg_1311;

assign zext_ln1253_fu_486_p1 = Mx_zeros_V_fu_482_p1;

assign zext_ln1287_fu_554_p1 = $unsigned(sext_ln1311_fu_550_p1);

assign zext_ln498_fu_660_p1 = p_Result_18_fu_652_p3;

assign zext_ln635_fu_330_p1 = p_Result_i_i_fu_320_p4;

assign zext_ln655_fu_506_p1 = Mx_zeros_V_fu_482_p1;

assign zext_ln662_fu_802_p1 = tmp_3_fu_792_p4;

assign zext_ln744_fu_346_p1 = trunc_ln601_reg_1157;

always @ (posedge ap_clk) begin
    r_V_5_reg_1245[97:49] <= 49'b0000000000000000000000000000000000000000000000000;
end

endmodule //sin_or_cos_double_s
