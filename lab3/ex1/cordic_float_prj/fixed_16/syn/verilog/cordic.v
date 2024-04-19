// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cordic,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.302750,HLS_SYN_LAT=65,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=142,HLS_SYN_LUT=357,HLS_VERSION=2020_1}" *)

module cordic (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        theta_V,
        s_V,
        s_V_ap_vld,
        c_V,
        c_V_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] theta_V;
output  [15:0] s_V;
output   s_V_ap_vld;
output  [15:0] c_V;
output   c_V_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_V_ap_vld;
reg c_V_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] cordic_phase_V_address0;
reg    cordic_phase_V_ce0;
wire   [13:0] cordic_phase_V_q0;
wire   [5:0] j_fu_153_p2;
reg   [5:0] j_reg_355;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_159_p3;
reg   [0:0] tmp_reg_360;
wire   [0:0] icmp_ln18_fu_147_p2;
wire   [15:0] current_cos_V_fu_233_p2;
reg   [15:0] current_cos_V_reg_365;
wire   [15:0] current_sin_V_fu_239_p2;
reg   [15:0] current_sin_V_reg_370;
wire   [15:0] factor_V_fu_298_p3;
reg   [15:0] factor_V_reg_380;
wire   [15:0] sub_ln703_fu_327_p2;
wire    ap_CS_fsm_state3;
reg   [15:0] p_Val2_6_reg_91;
reg  signed [15:0] t_V_reg_101;
reg  signed [15:0] p_Val2_4_reg_112;
reg  signed [15:0] p_Val2_2_reg_124;
reg   [5:0] j_0_reg_136;
wire   [63:0] zext_ln31_fu_245_p1;
wire  signed [16:0] sext_ln1116_fu_167_p1;
wire   [16:0] sub_ln1118_fu_171_p2;
wire  signed [16:0] r_V_fu_177_p3;
wire  signed [29:0] r_V_4_fu_333_p2;
wire  signed [16:0] sext_ln1116_2_fu_202_p1;
wire   [16:0] sub_ln1118_1_fu_206_p2;
wire  signed [16:0] r_V_2_fu_212_p3;
wire  signed [29:0] r_V_5_fu_340_p2;
wire   [15:0] sin_shift_V_fu_224_p4;
wire   [15:0] cos_shift_V_fu_193_p4;
wire  signed [16:0] sext_ln1148_fu_250_p1;
wire   [16:0] sub_ln1148_fu_262_p2;
wire   [14:0] trunc_ln1148_2_fu_278_p4;
wire   [15:0] trunc_ln1148_1_fu_268_p4;
wire   [0:0] tmp_1_fu_254_p3;
wire   [15:0] sub_ln1148_1_fu_292_p2;
wire  signed [15:0] sext_ln1148_1_fu_288_p1;
wire   [14:0] zext_ln703_fu_306_p1;
wire   [14:0] sub_ln703_2_fu_310_p2;
wire   [14:0] select_ln703_fu_316_p3;
wire  signed [15:0] sext_ln703_fu_323_p1;
wire  signed [15:0] r_V_4_fu_333_p1;
wire  signed [29:0] sext_ln1118_fu_189_p1;
wire  signed [15:0] r_V_5_fu_340_p1;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

cordic_cordic_phabkb #(
    .DataWidth( 14 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
cordic_phase_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(cordic_phase_V_address0),
    .ce0(cordic_phase_V_ce0),
    .q0(cordic_phase_V_q0)
);

cordic_mul_mul_17cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 30 ))
cordic_mul_mul_17cud_U1(
    .din0(r_V_fu_177_p3),
    .din1(r_V_4_fu_333_p1),
    .dout(r_V_4_fu_333_p2)
);

cordic_mul_mul_17cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 30 ))
cordic_mul_mul_17cud_U2(
    .din0(r_V_2_fu_212_p3),
    .din1(r_V_5_fu_340_p1),
    .dout(r_V_5_fu_340_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_0_reg_136 <= j_reg_355;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_136 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Val2_2_reg_124 <= current_cos_V_reg_365;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Val2_2_reg_124 <= 16'd9949;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Val2_4_reg_112 <= current_sin_V_reg_370;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Val2_4_reg_112 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Val2_6_reg_91 <= sub_ln703_fu_327_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Val2_6_reg_91 <= theta_V;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        t_V_reg_101 <= factor_V_reg_380;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_101 <= 16'd16384;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        current_cos_V_reg_365 <= current_cos_V_fu_233_p2;
        current_sin_V_reg_370 <= current_sin_V_fu_239_p2;
        factor_V_reg_380 <= factor_V_fu_298_p3;
        tmp_reg_360 <= p_Val2_6_reg_91[32'd15];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        j_reg_355 <= j_fu_153_p2;
    end
end

always @ (*) begin
    if (((icmp_ln18_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln18_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln18_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        c_V_ap_vld = 1'b1;
    end else begin
        c_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cordic_phase_V_ce0 = 1'b1;
    end else begin
        cordic_phase_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln18_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_V_ap_vld = 1'b1;
    end else begin
        s_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln18_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign c_V = p_Val2_2_reg_124;

assign cordic_phase_V_address0 = zext_ln31_fu_245_p1;

assign cos_shift_V_fu_193_p4 = {{r_V_4_fu_333_p2[29:14]}};

assign current_cos_V_fu_233_p2 = ($signed(p_Val2_2_reg_124) - $signed(sin_shift_V_fu_224_p4));

assign current_sin_V_fu_239_p2 = ($signed(cos_shift_V_fu_193_p4) + $signed(p_Val2_4_reg_112));

assign factor_V_fu_298_p3 = ((tmp_1_fu_254_p3[0:0] === 1'b1) ? sub_ln1148_1_fu_292_p2 : sext_ln1148_1_fu_288_p1);

assign icmp_ln18_fu_147_p2 = ((j_0_reg_136 == 6'd32) ? 1'b1 : 1'b0);

assign j_fu_153_p2 = (j_0_reg_136 + 6'd1);

assign r_V_2_fu_212_p3 = ((tmp_fu_159_p3[0:0] === 1'b1) ? sub_ln1118_1_fu_206_p2 : sext_ln1116_2_fu_202_p1);

assign r_V_4_fu_333_p1 = sext_ln1118_fu_189_p1;

assign r_V_5_fu_340_p1 = sext_ln1118_fu_189_p1;

assign r_V_fu_177_p3 = ((tmp_fu_159_p3[0:0] === 1'b1) ? sub_ln1118_fu_171_p2 : sext_ln1116_fu_167_p1);

assign s_V = p_Val2_4_reg_112;

assign select_ln703_fu_316_p3 = ((tmp_reg_360[0:0] === 1'b1) ? sub_ln703_2_fu_310_p2 : zext_ln703_fu_306_p1);

assign sext_ln1116_2_fu_202_p1 = p_Val2_4_reg_112;

assign sext_ln1116_fu_167_p1 = p_Val2_2_reg_124;

assign sext_ln1118_fu_189_p1 = t_V_reg_101;

assign sext_ln1148_1_fu_288_p1 = $signed(trunc_ln1148_2_fu_278_p4);

assign sext_ln1148_fu_250_p1 = t_V_reg_101;

assign sext_ln703_fu_323_p1 = $signed(select_ln703_fu_316_p3);

assign sin_shift_V_fu_224_p4 = {{r_V_5_fu_340_p2[29:14]}};

assign sub_ln1118_1_fu_206_p2 = ($signed(17'd0) - $signed(sext_ln1116_2_fu_202_p1));

assign sub_ln1118_fu_171_p2 = ($signed(17'd0) - $signed(sext_ln1116_fu_167_p1));

assign sub_ln1148_1_fu_292_p2 = (16'd0 - trunc_ln1148_1_fu_268_p4);

assign sub_ln1148_fu_262_p2 = ($signed(17'd0) - $signed(sext_ln1148_fu_250_p1));

assign sub_ln703_2_fu_310_p2 = (15'd0 - zext_ln703_fu_306_p1);

assign sub_ln703_fu_327_p2 = ($signed(p_Val2_6_reg_91) - $signed(sext_ln703_fu_323_p1));

assign tmp_1_fu_254_p3 = t_V_reg_101[32'd15];

assign tmp_fu_159_p3 = p_Val2_6_reg_91[32'd15];

assign trunc_ln1148_1_fu_268_p4 = {{sub_ln1148_fu_262_p2[16:1]}};

assign trunc_ln1148_2_fu_278_p4 = {{t_V_reg_101[15:1]}};

assign zext_ln31_fu_245_p1 = j_0_reg_136;

assign zext_ln703_fu_306_p1 = cordic_phase_V_q0;

endmodule //cordic