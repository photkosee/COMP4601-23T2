// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cordic,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.744500,HLS_SYN_LAT=65,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=86,HLS_SYN_LUT=295,HLS_VERSION=2020_1}" *)

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
input  [11:0] theta_V;
output  [11:0] s_V;
output   s_V_ap_vld;
output  [11:0] c_V;
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
wire   [9:0] cordic_phase_V_q0;
wire   [5:0] j_fu_126_p2;
reg   [5:0] j_reg_228;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_144_p3;
reg   [0:0] tmp_reg_233;
wire   [0:0] icmp_ln17_fu_120_p2;
wire   [11:0] current_sin_V_2_fu_181_p3;
reg   [11:0] current_sin_V_2_reg_243;
wire   [11:0] current_cos_V_2_fu_189_p3;
reg   [11:0] current_cos_V_2_reg_248;
wire   [11:0] select_ln1496_fu_213_p3;
wire    ap_CS_fsm_state3;
reg   [11:0] p_Val2_4_reg_71;
reg   [11:0] p_Val2_2_reg_81;
reg   [11:0] p_Val2_s_reg_93;
reg   [5:0] ush_reg_105;
wire   [63:0] zext_ln30_fu_164_p1;
wire   [11:0] zext_ln17_fu_116_p1;
wire   [11:0] r_V_1_fu_138_p2;
wire   [11:0] r_V_fu_132_p2;
wire   [11:0] current_sin_V_1_fu_175_p2;
wire   [11:0] current_sin_V_fu_158_p2;
wire   [11:0] current_cos_V_1_fu_169_p2;
wire   [11:0] current_cos_V_fu_152_p2;
wire   [11:0] zext_ln1265_fu_197_p1;
wire   [11:0] add_ln703_fu_207_p2;
wire   [11:0] sub_ln703_fu_201_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

cordic_cordic_phabkb #(
    .DataWidth( 10 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
cordic_phase_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(cordic_phase_V_address0),
    .ce0(cordic_phase_V_ce0),
    .q0(cordic_phase_V_q0)
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
        p_Val2_2_reg_81 <= current_sin_V_2_reg_243;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Val2_2_reg_81 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Val2_4_reg_71 <= select_ln1496_fu_213_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Val2_4_reg_71 <= theta_V;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_Val2_s_reg_93 <= current_cos_V_2_reg_248;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Val2_s_reg_93 <= 12'd621;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ush_reg_105 <= j_reg_228;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ush_reg_105 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln17_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        current_cos_V_2_reg_248 <= current_cos_V_2_fu_189_p3;
        current_sin_V_2_reg_243 <= current_sin_V_2_fu_181_p3;
        tmp_reg_233 <= p_Val2_4_reg_71[32'd11];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        j_reg_228 <= j_fu_126_p2;
    end
end

always @ (*) begin
    if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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

assign add_ln703_fu_207_p2 = (zext_ln1265_fu_197_p1 + p_Val2_4_reg_71);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign c_V = p_Val2_s_reg_93;

assign cordic_phase_V_address0 = zext_ln30_fu_164_p1;

assign current_cos_V_1_fu_169_p2 = (r_V_1_fu_138_p2 + p_Val2_s_reg_93);

assign current_cos_V_2_fu_189_p3 = ((tmp_fu_144_p3[0:0] === 1'b1) ? current_cos_V_1_fu_169_p2 : current_cos_V_fu_152_p2);

assign current_cos_V_fu_152_p2 = (p_Val2_s_reg_93 - r_V_1_fu_138_p2);

assign current_sin_V_1_fu_175_p2 = (p_Val2_2_reg_81 - r_V_fu_132_p2);

assign current_sin_V_2_fu_181_p3 = ((tmp_fu_144_p3[0:0] === 1'b1) ? current_sin_V_1_fu_175_p2 : current_sin_V_fu_158_p2);

assign current_sin_V_fu_158_p2 = (r_V_fu_132_p2 + p_Val2_2_reg_81);

assign icmp_ln17_fu_120_p2 = ((ush_reg_105 == 6'd32) ? 1'b1 : 1'b0);

assign j_fu_126_p2 = (ush_reg_105 + 6'd1);

assign r_V_1_fu_138_p2 = $signed(p_Val2_2_reg_81) >>> zext_ln17_fu_116_p1;

assign r_V_fu_132_p2 = $signed(p_Val2_s_reg_93) >>> zext_ln17_fu_116_p1;

assign s_V = p_Val2_2_reg_81;

assign select_ln1496_fu_213_p3 = ((tmp_reg_233[0:0] === 1'b1) ? add_ln703_fu_207_p2 : sub_ln703_fu_201_p2);

assign sub_ln703_fu_201_p2 = (p_Val2_4_reg_71 - zext_ln1265_fu_197_p1);

assign tmp_fu_144_p3 = p_Val2_4_reg_71[32'd11];

assign zext_ln1265_fu_197_p1 = cordic_phase_V_q0;

assign zext_ln17_fu_116_p1 = ush_reg_105;

assign zext_ln30_fu_164_p1 = ush_reg_105;

endmodule //cordic
