// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=1.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.199000,HLS_SYN_LAT=106,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=986,HLS_SYN_LUT=286,HLS_VERSION=2020_1}" *)

module fir (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y,
        y_ap_vld,
        x
);

parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_state2 = 20'd2;
parameter    ap_ST_fsm_state3 = 20'd4;
parameter    ap_ST_fsm_state4 = 20'd8;
parameter    ap_ST_fsm_state5 = 20'd16;
parameter    ap_ST_fsm_state6 = 20'd32;
parameter    ap_ST_fsm_state7 = 20'd64;
parameter    ap_ST_fsm_state8 = 20'd128;
parameter    ap_ST_fsm_state9 = 20'd256;
parameter    ap_ST_fsm_state10 = 20'd512;
parameter    ap_ST_fsm_state11 = 20'd1024;
parameter    ap_ST_fsm_state12 = 20'd2048;
parameter    ap_ST_fsm_state13 = 20'd4096;
parameter    ap_ST_fsm_state14 = 20'd8192;
parameter    ap_ST_fsm_state15 = 20'd16384;
parameter    ap_ST_fsm_state16 = 20'd32768;
parameter    ap_ST_fsm_state17 = 20'd65536;
parameter    ap_ST_fsm_state18 = 20'd131072;
parameter    ap_ST_fsm_state19 = 20'd262144;
parameter    ap_ST_fsm_state20 = 20'd524288;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] y;
output   y_ap_vld;
input  [31:0] x;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_ap_vld;

(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [3:0] shift_reg_address0;
reg    shift_reg_ce0;
reg    shift_reg_we0;
reg   [31:0] shift_reg_d0;
wire   [31:0] shift_reg_q0;
wire   [3:0] c1_address0;
reg    c1_ce0;
wire   [9:0] c1_q0;
wire   [4:0] grp_fu_127_p2;
reg   [4:0] reg_134;
wire    ap_CS_fsm_state8;
wire   [0:0] tmp_fu_149_p3;
wire   [0:0] icmp_ln17_fu_157_p2;
wire    ap_CS_fsm_state18;
wire   [31:0] grp_fu_139_p2;
reg   [31:0] mul_ln18_reg_192;
wire    ap_CS_fsm_state7;
wire  signed [31:0] sext_ln16_fu_145_p1;
reg  signed [31:0] sext_ln16_reg_197;
reg   [0:0] icmp_ln17_reg_205;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln21_1_fu_168_p1;
reg   [63:0] zext_ln21_1_reg_214;
reg  signed [31:0] shift_reg_load_reg_224;
wire    ap_CS_fsm_state10;
reg  signed [9:0] c1_load_reg_230;
wire    ap_CS_fsm_state11;
wire   [31:0] grp_fu_175_p2;
reg   [31:0] mul_ln22_reg_240;
wire    ap_CS_fsm_state17;
wire   [31:0] grp_fu_180_p2;
wire    ap_CS_fsm_state20;
reg   [31:0] acc_0_reg_92;
wire  signed [4:0] ap_phi_mux_i_0_phi_fu_109_p4;
reg  signed [4:0] i_0_reg_105;
reg   [31:0] p_pn_reg_117;
wire   [63:0] zext_ln21_fu_163_p1;
reg  signed [4:0] grp_fu_127_p0;
wire   [6:0] grp_fu_139_p1;
wire    ap_CS_fsm_state19;
reg   [19:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 20'd1;
end

fir_shift_reg #(
    .DataWidth( 32 ),
    .AddressRange( 11 ),
    .AddressWidth( 4 ))
shift_reg_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(shift_reg_address0),
    .ce0(shift_reg_ce0),
    .we0(shift_reg_we0),
    .d0(shift_reg_d0),
    .q0(shift_reg_q0)
);

fir_c1 #(
    .DataWidth( 10 ),
    .AddressRange( 11 ),
    .AddressWidth( 4 ))
c1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(c1_address0),
    .ce0(c1_ce0),
    .q0(c1_q0)
);

fir_mul_32s_7ns_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 7 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_7ns_3bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(x),
    .din1(grp_fu_139_p1),
    .ce(1'b1),
    .dout(grp_fu_139_p2)
);

fir_mul_32s_10s_3cud #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_10s_3cud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_load_reg_224),
    .din1(c1_load_reg_230),
    .ce(1'b1),
    .dout(grp_fu_175_p2)
);

fir_add_32ns_32nsdEe #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_add_32ns_32nsdEe_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_pn_reg_117),
    .din1(acc_0_reg_92),
    .ce(1'b1),
    .dout(grp_fu_180_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        acc_0_reg_92 <= grp_fu_180_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        acc_0_reg_92 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        i_0_reg_105 <= reg_134;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i_0_reg_105 <= 5'd10;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_205 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        p_pn_reg_117 <= mul_ln22_reg_240;
    end else if (((icmp_ln17_fu_157_p2 == 1'd1) & (tmp_fu_149_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        p_pn_reg_117 <= mul_ln18_reg_192;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c1_load_reg_230 <= c1_q0;
        shift_reg_load_reg_224 <= shift_reg_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_149_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        icmp_ln17_reg_205 <= icmp_ln17_fu_157_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        mul_ln18_reg_192 <= grp_fu_139_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        mul_ln22_reg_240 <= grp_fu_175_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) | ((icmp_ln17_fu_157_p2 == 1'd0) & (tmp_fu_149_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        reg_134 <= grp_fu_127_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sext_ln16_reg_197 <= sext_ln16_fu_145_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        zext_ln21_1_reg_214[31 : 0] <= zext_ln21_1_fu_168_p1[31 : 0];
    end
end

always @ (*) begin
    if (((tmp_fu_149_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
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
    if (((tmp_fu_149_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        c1_ce0 = 1'b1;
    end else begin
        c1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_127_p0 = i_0_reg_105;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_127_p0 = ap_phi_mux_i_0_phi_fu_109_p4;
    end else begin
        grp_fu_127_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        shift_reg_address0 = zext_ln21_1_reg_214;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        shift_reg_address0 = zext_ln21_fu_163_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        shift_reg_address0 = 4'd0;
    end else begin
        shift_reg_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9))) begin
        shift_reg_ce0 = 1'b1;
    end else begin
        shift_reg_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        shift_reg_d0 = shift_reg_load_reg_224;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        shift_reg_d0 = x;
    end else begin
        shift_reg_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((icmp_ln17_fu_157_p2 == 1'd1) & (tmp_fu_149_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        shift_reg_we0 = 1'b1;
    end else begin
        shift_reg_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_149_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        y_ap_vld = 1'b1;
    end else begin
        y_ap_vld = 1'b0;
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
            if (((tmp_fu_149_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln17_fu_157_p2 == 1'd1) & (tmp_fu_149_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_phi_mux_i_0_phi_fu_109_p4 = i_0_reg_105;

assign c1_address0 = zext_ln21_1_fu_168_p1;

assign grp_fu_127_p2 = ($signed(grp_fu_127_p0) + $signed(5'd31));

assign grp_fu_139_p1 = 32'd53;

assign icmp_ln17_fu_157_p2 = ((i_0_reg_105 == 5'd0) ? 1'b1 : 1'b0);

assign sext_ln16_fu_145_p1 = i_0_reg_105;

assign tmp_fu_149_p3 = i_0_reg_105[32'd4];

assign y = acc_0_reg_92;

assign zext_ln21_1_fu_168_p1 = $unsigned(sext_ln16_reg_197);

assign zext_ln21_fu_163_p1 = reg_134;

always @ (posedge ap_clk) begin
    zext_ln21_1_reg_214[63:32] <= 32'b00000000000000000000000000000000;
end

endmodule //fir
