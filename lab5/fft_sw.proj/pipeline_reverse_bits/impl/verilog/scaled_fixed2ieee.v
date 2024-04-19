// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module scaled_fixed2ieee (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_V,
        prescale,
        ap_return
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
parameter    ap_const_lv32_0 = 32'd0;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [62:0] in_V;
input  [11:0] prescale;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] ap_return;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] out_bits_2_V_load_reg_685;
wire    ap_CS_fsm_state2;
reg   [31:0] out_bits_2_V_1_load_reg_691;
reg   [31:0] out_bits_2_V_2_load_reg_697;
wire   [1:0] i_fu_234_p2;
reg   [1:0] i_reg_706;
wire   [15:0] trunc_ln169_fu_348_p1;
reg   [15:0] trunc_ln169_reg_711;
wire   [0:0] icmp_ln423_fu_228_p2;
wire   [31:0] p_Result_22_fu_363_p5;
reg   [31:0] p_Result_22_reg_740;
wire   [2:0] i_1_fu_415_p2;
wire    ap_CS_fsm_state4;
wire   [2:0] i_2_fu_479_p2;
wire    ap_CS_fsm_state5;
wire   [31:0] shift_fu_515_p2;
wire   [0:0] icmp_ln441_fu_473_p2;
wire   [62:0] r_V_30_fu_560_p3;
wire   [1:0] ap_phi_mux_i_0_phi_fu_138_p4;
reg   [1:0] i_0_reg_134;
wire    ap_CS_fsm_state3;
reg   [31:0] p_Val2_s_reg_146;
reg   [2:0] i1_0_reg_157;
wire   [0:0] icmp_ln434_fu_409_p2;
reg   [62:0] p_0119_0_reg_168;
wire   [0:0] icmp_ln444_fu_569_p2;
reg   [31:0] shift_0_reg_177;
reg   [2:0] i2_0_reg_188;
reg   [62:0] ap_phi_mux_p_Val2_36_phi_fu_202_p4;
reg   [31:0] ap_phi_mux_shift_1_phi_fu_212_p4;
reg   [31:0] out_bits_2_V_fu_94;
wire   [31:0] out_bits_0_V_fu_382_p5;
reg   [31:0] out_bits_2_V_1_fu_98;
reg   [31:0] out_bits_2_V_2_fu_102;
reg   [31:0] c_3_fu_106;
reg   [31:0] c_0_fu_445_p3;
wire   [1:0] trunc_ln510_fu_421_p1;
reg   [31:0] c_3_1_fu_110;
reg   [31:0] c_3_2_fu_114;
reg   [31:0] c_3_3_fu_118;
wire   [5:0] shl_ln_fu_240_p3;
wire   [5:0] sub_ln425_fu_254_p2;
wire   [5:0] sub_ln424_fu_248_p2;
wire   [0:0] icmp_ln566_fu_260_p2;
wire   [5:0] sub_ln566_fu_275_p2;
wire   [5:0] sub_ln566_2_fu_287_p2;
reg   [62:0] tmp_fu_266_p4;
wire   [5:0] sub_ln566_1_fu_281_p2;
wire   [5:0] select_ln566_fu_293_p3;
wire   [5:0] select_ln566_2_fu_308_p3;
wire   [5:0] sub_ln566_3_fu_316_p2;
wire   [62:0] select_ln566_1_fu_301_p3;
wire   [62:0] zext_ln566_fu_322_p1;
wire   [62:0] zext_ln566_1_fu_326_p1;
wire   [62:0] lshr_ln566_fu_330_p2;
wire   [62:0] lshr_ln566_1_fu_336_p2;
wire   [62:0] p_Result_s_fu_342_p2;
wire   [14:0] trunc_ln566_fu_352_p1;
wire   [15:0] tmp_1_fu_355_p3;
wire   [16:0] tmp_3_fu_375_p3;
wire   [1:0] p_Val2_31_fu_425_p5;
wire   [31:0] p_Val2_31_fu_425_p6;
reg   [31:0] p_Result_23_fu_435_p4;
wire   [1:0] sh_assign_fu_501_p5;
wire   [31:0] sh_assign_fu_501_p6;
wire   [0:0] isNeg_fu_522_p3;
wire   [31:0] sub_ln1311_fu_530_p2;
wire   [31:0] ush_fu_536_p3;
wire   [62:0] zext_ln1287_fu_544_p1;
wire   [62:0] r_V_fu_548_p2;
wire   [62:0] r_V_28_fu_554_p2;
wire   [11:0] sub_ln452_fu_575_p2;
wire  signed [31:0] sext_ln452_fu_580_p1;
wire   [31:0] newexp_fu_584_p2;
wire   [0:0] tmp_9_fu_590_p3;
wire   [0:0] icmp_ln1452_fu_598_p2;
wire   [0:0] or_ln453_fu_603_p2;
wire   [51:0] phitmp1_fu_613_p4;
wire   [10:0] empty_fu_609_p1;
wire   [10:0] out_exp_V_fu_631_p3;
wire   [51:0] significand_V_fu_623_p3;
wire   [63:0] p_Result_24_fu_639_p4;
wire   [63:0] bitcast_ln512_fu_649_p1;
reg   [63:0] ap_return_preg;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_return_preg = 64'd0;
end

fft_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
fft_mux_42_32_1_1_U2(
    .din0(out_bits_2_V_load_reg_685),
    .din1(out_bits_2_V_1_load_reg_691),
    .din2(out_bits_2_V_2_load_reg_697),
    .din3(p_Result_22_reg_740),
    .din4(p_Val2_31_fu_425_p5),
    .dout(p_Val2_31_fu_425_p6)
);

fft_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
fft_mux_42_32_1_1_U3(
    .din0(c_3_1_fu_110),
    .din1(c_3_2_fu_114),
    .din2(c_3_3_fu_118),
    .din3(c_3_fu_106),
    .din4(sh_assign_fu_501_p5),
    .dout(sh_assign_fu_501_p6)
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
                ap_return_preg[0] <= 1'b0;
        ap_return_preg[1] <= 1'b0;
        ap_return_preg[2] <= 1'b0;
        ap_return_preg[3] <= 1'b0;
        ap_return_preg[4] <= 1'b0;
        ap_return_preg[5] <= 1'b0;
        ap_return_preg[6] <= 1'b0;
        ap_return_preg[7] <= 1'b0;
        ap_return_preg[8] <= 1'b0;
        ap_return_preg[9] <= 1'b0;
        ap_return_preg[10] <= 1'b0;
        ap_return_preg[11] <= 1'b0;
        ap_return_preg[12] <= 1'b0;
        ap_return_preg[13] <= 1'b0;
        ap_return_preg[14] <= 1'b0;
        ap_return_preg[15] <= 1'b0;
        ap_return_preg[16] <= 1'b0;
        ap_return_preg[17] <= 1'b0;
        ap_return_preg[18] <= 1'b0;
        ap_return_preg[19] <= 1'b0;
        ap_return_preg[20] <= 1'b0;
        ap_return_preg[21] <= 1'b0;
        ap_return_preg[22] <= 1'b0;
        ap_return_preg[23] <= 1'b0;
        ap_return_preg[24] <= 1'b0;
        ap_return_preg[25] <= 1'b0;
        ap_return_preg[26] <= 1'b0;
        ap_return_preg[27] <= 1'b0;
        ap_return_preg[28] <= 1'b0;
        ap_return_preg[29] <= 1'b0;
        ap_return_preg[30] <= 1'b0;
        ap_return_preg[31] <= 1'b0;
        ap_return_preg[32] <= 1'b0;
        ap_return_preg[33] <= 1'b0;
        ap_return_preg[34] <= 1'b0;
        ap_return_preg[35] <= 1'b0;
        ap_return_preg[36] <= 1'b0;
        ap_return_preg[37] <= 1'b0;
        ap_return_preg[38] <= 1'b0;
        ap_return_preg[39] <= 1'b0;
        ap_return_preg[40] <= 1'b0;
        ap_return_preg[41] <= 1'b0;
        ap_return_preg[42] <= 1'b0;
        ap_return_preg[43] <= 1'b0;
        ap_return_preg[44] <= 1'b0;
        ap_return_preg[45] <= 1'b0;
        ap_return_preg[46] <= 1'b0;
        ap_return_preg[47] <= 1'b0;
        ap_return_preg[48] <= 1'b0;
        ap_return_preg[49] <= 1'b0;
        ap_return_preg[50] <= 1'b0;
        ap_return_preg[51] <= 1'b0;
        ap_return_preg[52] <= 1'b0;
        ap_return_preg[53] <= 1'b0;
        ap_return_preg[54] <= 1'b0;
        ap_return_preg[55] <= 1'b0;
        ap_return_preg[56] <= 1'b0;
        ap_return_preg[57] <= 1'b0;
        ap_return_preg[58] <= 1'b0;
        ap_return_preg[59] <= 1'b0;
        ap_return_preg[60] <= 1'b0;
        ap_return_preg[61] <= 1'b0;
        ap_return_preg[62] <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln441_fu_473_p2 == 1'd1) | (icmp_ln444_fu_569_p2 == 1'd0)))) begin
                        ap_return_preg[62 : 0] <= bitcast_ln512_fu_649_p1[62 : 0];
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln434_fu_409_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i1_0_reg_157 <= i_1_fu_415_p2;
    end else if (((icmp_ln423_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i1_0_reg_157 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln434_fu_409_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i2_0_reg_188 <= 3'd0;
    end else if (((icmp_ln444_fu_569_p2 == 1'd1) & (icmp_ln441_fu_473_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        i2_0_reg_188 <= i_2_fu_479_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_reg_134 <= i_reg_706;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_134 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln434_fu_409_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        p_0119_0_reg_168 <= in_V;
    end else if (((icmp_ln444_fu_569_p2 == 1'd1) & (icmp_ln441_fu_473_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        p_0119_0_reg_168 <= r_V_30_fu_560_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln423_fu_228_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        if ((ap_phi_mux_i_0_phi_fu_138_p4 == 2'd0)) begin
            p_Val2_s_reg_146 <= out_bits_2_V_fu_94;
        end else if ((~(ap_phi_mux_i_0_phi_fu_138_p4 == 2'd0) & ~(ap_phi_mux_i_0_phi_fu_138_p4 == 2'd1))) begin
            p_Val2_s_reg_146 <= out_bits_2_V_2_fu_102;
        end else if ((ap_phi_mux_i_0_phi_fu_138_p4 == 2'd1)) begin
            p_Val2_s_reg_146 <= out_bits_2_V_1_fu_98;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln434_fu_409_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        shift_0_reg_177 <= 32'd0;
    end else if (((icmp_ln444_fu_569_p2 == 1'd1) & (icmp_ln441_fu_473_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        shift_0_reg_177 <= shift_fu_515_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln510_fu_421_p1 == 2'd0) & (icmp_ln434_fu_409_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        c_3_1_fu_110 <= c_0_fu_445_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln510_fu_421_p1 == 2'd1) & (icmp_ln434_fu_409_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        c_3_2_fu_114 <= c_0_fu_445_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln434_fu_409_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4) & (trunc_ln510_fu_421_p1 == 2'd2))) begin
        c_3_3_fu_118 <= c_0_fu_445_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln434_fu_409_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4) & (trunc_ln510_fu_421_p1 == 2'd3))) begin
        c_3_fu_106 <= c_0_fu_445_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_706 <= i_fu_234_p2;
        out_bits_2_V_1_load_reg_691 <= out_bits_2_V_1_fu_98;
        out_bits_2_V_2_load_reg_697 <= out_bits_2_V_2_fu_102;
        out_bits_2_V_load_reg_685 <= out_bits_2_V_fu_94;
    end
end

always @ (posedge ap_clk) begin
    if (((i_0_reg_134 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        out_bits_2_V_1_fu_98 <= out_bits_0_V_fu_382_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((~(i_0_reg_134 == 2'd1) & ~(i_0_reg_134 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        out_bits_2_V_2_fu_102 <= out_bits_0_V_fu_382_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((i_0_reg_134 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        out_bits_2_V_fu_94 <= out_bits_0_V_fu_382_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln423_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_Result_22_reg_740 <= p_Result_22_fu_363_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln423_fu_228_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        trunc_ln169_reg_711 <= trunc_ln169_fu_348_p1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & ((icmp_ln441_fu_473_p2 == 1'd1) | (icmp_ln444_fu_569_p2 == 1'd0))) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if (((icmp_ln441_fu_473_p2 == 1'd0) & (icmp_ln444_fu_569_p2 == 1'd0))) begin
            ap_phi_mux_p_Val2_36_phi_fu_202_p4 = r_V_30_fu_560_p3;
        end else if ((icmp_ln441_fu_473_p2 == 1'd1)) begin
            ap_phi_mux_p_Val2_36_phi_fu_202_p4 = p_0119_0_reg_168;
        end else begin
            ap_phi_mux_p_Val2_36_phi_fu_202_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_p_Val2_36_phi_fu_202_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if (((icmp_ln441_fu_473_p2 == 1'd0) & (icmp_ln444_fu_569_p2 == 1'd0))) begin
            ap_phi_mux_shift_1_phi_fu_212_p4 = shift_fu_515_p2;
        end else if ((icmp_ln441_fu_473_p2 == 1'd1)) begin
            ap_phi_mux_shift_1_phi_fu_212_p4 = shift_0_reg_177;
        end else begin
            ap_phi_mux_shift_1_phi_fu_212_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_shift_1_phi_fu_212_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln441_fu_473_p2 == 1'd1) | (icmp_ln444_fu_569_p2 == 1'd0)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln441_fu_473_p2 == 1'd1) | (icmp_ln444_fu_569_p2 == 1'd0)))) begin
        ap_return = bitcast_ln512_fu_649_p1;
    end else begin
        ap_return = ap_return_preg;
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
            if (((icmp_ln423_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln434_fu_409_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln441_fu_473_p2 == 1'd1) | (icmp_ln444_fu_569_p2 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_phi_mux_i_0_phi_fu_138_p4 = i_0_reg_134;

assign bitcast_ln512_fu_649_p1 = p_Result_24_fu_639_p4;


always @ (p_Result_23_fu_435_p4) begin
    if (p_Result_23_fu_435_p4[0] == 1'b1) begin
        c_0_fu_445_p3 = 32'd0;
    end else if (p_Result_23_fu_435_p4[1] == 1'b1) begin
        c_0_fu_445_p3 = 32'd1;
    end else if (p_Result_23_fu_435_p4[2] == 1'b1) begin
        c_0_fu_445_p3 = 32'd2;
    end else if (p_Result_23_fu_435_p4[3] == 1'b1) begin
        c_0_fu_445_p3 = 32'd3;
    end else if (p_Result_23_fu_435_p4[4] == 1'b1) begin
        c_0_fu_445_p3 = 32'd4;
    end else if (p_Result_23_fu_435_p4[5] == 1'b1) begin
        c_0_fu_445_p3 = 32'd5;
    end else if (p_Result_23_fu_435_p4[6] == 1'b1) begin
        c_0_fu_445_p3 = 32'd6;
    end else if (p_Result_23_fu_435_p4[7] == 1'b1) begin
        c_0_fu_445_p3 = 32'd7;
    end else if (p_Result_23_fu_435_p4[8] == 1'b1) begin
        c_0_fu_445_p3 = 32'd8;
    end else if (p_Result_23_fu_435_p4[9] == 1'b1) begin
        c_0_fu_445_p3 = 32'd9;
    end else if (p_Result_23_fu_435_p4[10] == 1'b1) begin
        c_0_fu_445_p3 = 32'd10;
    end else if (p_Result_23_fu_435_p4[11] == 1'b1) begin
        c_0_fu_445_p3 = 32'd11;
    end else if (p_Result_23_fu_435_p4[12] == 1'b1) begin
        c_0_fu_445_p3 = 32'd12;
    end else if (p_Result_23_fu_435_p4[13] == 1'b1) begin
        c_0_fu_445_p3 = 32'd13;
    end else if (p_Result_23_fu_435_p4[14] == 1'b1) begin
        c_0_fu_445_p3 = 32'd14;
    end else if (p_Result_23_fu_435_p4[15] == 1'b1) begin
        c_0_fu_445_p3 = 32'd15;
    end else if (p_Result_23_fu_435_p4[16] == 1'b1) begin
        c_0_fu_445_p3 = 32'd16;
    end else if (p_Result_23_fu_435_p4[17] == 1'b1) begin
        c_0_fu_445_p3 = 32'd17;
    end else if (p_Result_23_fu_435_p4[18] == 1'b1) begin
        c_0_fu_445_p3 = 32'd18;
    end else if (p_Result_23_fu_435_p4[19] == 1'b1) begin
        c_0_fu_445_p3 = 32'd19;
    end else if (p_Result_23_fu_435_p4[20] == 1'b1) begin
        c_0_fu_445_p3 = 32'd20;
    end else if (p_Result_23_fu_435_p4[21] == 1'b1) begin
        c_0_fu_445_p3 = 32'd21;
    end else if (p_Result_23_fu_435_p4[22] == 1'b1) begin
        c_0_fu_445_p3 = 32'd22;
    end else if (p_Result_23_fu_435_p4[23] == 1'b1) begin
        c_0_fu_445_p3 = 32'd23;
    end else if (p_Result_23_fu_435_p4[24] == 1'b1) begin
        c_0_fu_445_p3 = 32'd24;
    end else if (p_Result_23_fu_435_p4[25] == 1'b1) begin
        c_0_fu_445_p3 = 32'd25;
    end else if (p_Result_23_fu_435_p4[26] == 1'b1) begin
        c_0_fu_445_p3 = 32'd26;
    end else if (p_Result_23_fu_435_p4[27] == 1'b1) begin
        c_0_fu_445_p3 = 32'd27;
    end else if (p_Result_23_fu_435_p4[28] == 1'b1) begin
        c_0_fu_445_p3 = 32'd28;
    end else if (p_Result_23_fu_435_p4[29] == 1'b1) begin
        c_0_fu_445_p3 = 32'd29;
    end else if (p_Result_23_fu_435_p4[30] == 1'b1) begin
        c_0_fu_445_p3 = 32'd30;
    end else if (p_Result_23_fu_435_p4[31] == 1'b1) begin
        c_0_fu_445_p3 = 32'd31;
    end else begin
        c_0_fu_445_p3 = 32'd32;
    end
end

assign empty_fu_609_p1 = newexp_fu_584_p2[10:0];

assign i_1_fu_415_p2 = (i1_0_reg_157 + 3'd1);

assign i_2_fu_479_p2 = (i2_0_reg_188 + 3'd1);

assign i_fu_234_p2 = (i_0_reg_134 + 2'd1);

assign icmp_ln1452_fu_598_p2 = ((in_V == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln423_fu_228_p2 = ((i_0_reg_134 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln434_fu_409_p2 = ((i1_0_reg_157 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln441_fu_473_p2 = ((i2_0_reg_188 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln444_fu_569_p2 = ((sh_assign_fu_501_p6 == 32'd16) ? 1'b1 : 1'b0);

assign icmp_ln566_fu_260_p2 = ((sub_ln425_fu_254_p2 > sub_ln424_fu_248_p2) ? 1'b1 : 1'b0);

assign isNeg_fu_522_p3 = sh_assign_fu_501_p6[32'd31];

assign lshr_ln566_1_fu_336_p2 = 63'd9223372036854775807 >> zext_ln566_1_fu_326_p1;

assign lshr_ln566_fu_330_p2 = select_ln566_1_fu_301_p3 >> zext_ln566_fu_322_p1;

assign newexp_fu_584_p2 = ($signed(sext_ln452_fu_580_p1) - $signed(ap_phi_mux_shift_1_phi_fu_212_p4));

assign or_ln453_fu_603_p2 = (tmp_9_fu_590_p3 | icmp_ln1452_fu_598_p2);

assign out_bits_0_V_fu_382_p5 = {{tmp_3_fu_375_p3}, {p_Val2_s_reg_146[14:0]}};

assign out_exp_V_fu_631_p3 = ((or_ln453_fu_603_p2[0:0] === 1'b1) ? 11'd0 : empty_fu_609_p1);

assign p_Result_22_fu_363_p5 = {{tmp_1_fu_355_p3}, {ap_const_lv32_0[15:0]}};

integer ap_tvar_int_0;

always @ (p_Val2_31_fu_425_p6) begin
    for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 0) begin
            p_Result_23_fu_435_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_23_fu_435_p4[ap_tvar_int_0] = p_Val2_31_fu_425_p6[31 - ap_tvar_int_0];
        end
    end
end

assign p_Result_24_fu_639_p4 = {{{{1'd0}, {out_exp_V_fu_631_p3}}}, {significand_V_fu_623_p3}};

assign p_Result_s_fu_342_p2 = (lshr_ln566_fu_330_p2 & lshr_ln566_1_fu_336_p2);

assign p_Val2_31_fu_425_p5 = i1_0_reg_157[1:0];

assign phitmp1_fu_613_p4 = {{ap_phi_mux_p_Val2_36_phi_fu_202_p4[61:10]}};

assign r_V_28_fu_554_p2 = p_0119_0_reg_168 << zext_ln1287_fu_544_p1;

assign r_V_30_fu_560_p3 = ((isNeg_fu_522_p3[0:0] === 1'b1) ? r_V_fu_548_p2 : r_V_28_fu_554_p2);

assign r_V_fu_548_p2 = $signed(p_0119_0_reg_168) >>> zext_ln1287_fu_544_p1;

assign select_ln566_1_fu_301_p3 = ((icmp_ln566_fu_260_p2[0:0] === 1'b1) ? tmp_fu_266_p4 : in_V);

assign select_ln566_2_fu_308_p3 = ((icmp_ln566_fu_260_p2[0:0] === 1'b1) ? sub_ln566_1_fu_281_p2 : sub_ln425_fu_254_p2);

assign select_ln566_fu_293_p3 = ((icmp_ln566_fu_260_p2[0:0] === 1'b1) ? sub_ln566_fu_275_p2 : sub_ln566_2_fu_287_p2);

assign sext_ln452_fu_580_p1 = $signed(sub_ln452_fu_575_p2);

assign sh_assign_fu_501_p5 = i2_0_reg_188[1:0];

assign shift_fu_515_p2 = (sh_assign_fu_501_p6 + shift_0_reg_177);

assign shl_ln_fu_240_p3 = {{i_0_reg_134}, {4'd0}};

assign significand_V_fu_623_p3 = ((or_ln453_fu_603_p2[0:0] === 1'b1) ? 52'd0 : phitmp1_fu_613_p4);

assign sub_ln1311_fu_530_p2 = (32'd0 - sh_assign_fu_501_p6);

assign sub_ln424_fu_248_p2 = ($signed(6'd62) - $signed(shl_ln_fu_240_p3));

assign sub_ln425_fu_254_p2 = ($signed(6'd47) - $signed(shl_ln_fu_240_p3));

assign sub_ln452_fu_575_p2 = (12'd1023 - prescale);

assign sub_ln566_1_fu_281_p2 = ($signed(6'd62) - $signed(sub_ln425_fu_254_p2));

assign sub_ln566_2_fu_287_p2 = (sub_ln424_fu_248_p2 - sub_ln425_fu_254_p2);

assign sub_ln566_3_fu_316_p2 = ($signed(6'd62) - $signed(select_ln566_fu_293_p3));

assign sub_ln566_fu_275_p2 = (sub_ln425_fu_254_p2 - sub_ln424_fu_248_p2);

assign tmp_1_fu_355_p3 = {{trunc_ln566_fu_352_p1}, {1'd1}};

assign tmp_3_fu_375_p3 = {{trunc_ln169_reg_711}, {1'd1}};

assign tmp_9_fu_590_p3 = newexp_fu_584_p2[32'd31];

integer ap_tvar_int_1;

always @ (in_V) begin
    for (ap_tvar_int_1 = 63 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 62 - 0) begin
            tmp_fu_266_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_fu_266_p4[ap_tvar_int_1] = in_V[62 - ap_tvar_int_1];
        end
    end
end

assign trunc_ln169_fu_348_p1 = p_Result_s_fu_342_p2[15:0];

assign trunc_ln510_fu_421_p1 = i1_0_reg_157[1:0];

assign trunc_ln566_fu_352_p1 = in_V[14:0];

assign ush_fu_536_p3 = ((isNeg_fu_522_p3[0:0] === 1'b1) ? sub_ln1311_fu_530_p2 : sh_assign_fu_501_p6);

assign zext_ln1287_fu_544_p1 = ush_fu_536_p3;

assign zext_ln566_1_fu_326_p1 = sub_ln566_3_fu_316_p2;

assign zext_ln566_fu_322_p1 = select_ln566_2_fu_308_p3;

always @ (posedge ap_clk) begin
    ap_return_preg[63] <= 1'b0;
end

endmodule //scaled_fixed2ieee
