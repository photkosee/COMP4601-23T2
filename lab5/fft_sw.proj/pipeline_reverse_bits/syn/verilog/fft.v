// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fft,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.635000,HLS_SYN_LAT=2590804,HLS_SYN_TPT=none,HLS_SYN_MEM=16,HLS_SYN_DSP=204,HLS_SYN_FF=9058,HLS_SYN_LUT=17416,HLS_VERSION=2020_1}" *)

module fft (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        X_R_address0,
        X_R_ce0,
        X_R_we0,
        X_R_d0,
        X_R_q0,
        X_I_address0,
        X_I_ce0,
        X_I_we0,
        X_I_d0,
        X_I_q0
);

parameter    ap_ST_fsm_state1 = 58'd1;
parameter    ap_ST_fsm_state2 = 58'd2;
parameter    ap_ST_fsm_state3 = 58'd4;
parameter    ap_ST_fsm_state4 = 58'd8;
parameter    ap_ST_fsm_state5 = 58'd16;
parameter    ap_ST_fsm_state6 = 58'd32;
parameter    ap_ST_fsm_state7 = 58'd64;
parameter    ap_ST_fsm_state8 = 58'd128;
parameter    ap_ST_fsm_state9 = 58'd256;
parameter    ap_ST_fsm_state10 = 58'd512;
parameter    ap_ST_fsm_state11 = 58'd1024;
parameter    ap_ST_fsm_state12 = 58'd2048;
parameter    ap_ST_fsm_state13 = 58'd4096;
parameter    ap_ST_fsm_state14 = 58'd8192;
parameter    ap_ST_fsm_state15 = 58'd16384;
parameter    ap_ST_fsm_state16 = 58'd32768;
parameter    ap_ST_fsm_state17 = 58'd65536;
parameter    ap_ST_fsm_state18 = 58'd131072;
parameter    ap_ST_fsm_state19 = 58'd262144;
parameter    ap_ST_fsm_state20 = 58'd524288;
parameter    ap_ST_fsm_state21 = 58'd1048576;
parameter    ap_ST_fsm_state22 = 58'd2097152;
parameter    ap_ST_fsm_state23 = 58'd4194304;
parameter    ap_ST_fsm_state24 = 58'd8388608;
parameter    ap_ST_fsm_state25 = 58'd16777216;
parameter    ap_ST_fsm_state26 = 58'd33554432;
parameter    ap_ST_fsm_state27 = 58'd67108864;
parameter    ap_ST_fsm_state28 = 58'd134217728;
parameter    ap_ST_fsm_state29 = 58'd268435456;
parameter    ap_ST_fsm_state30 = 58'd536870912;
parameter    ap_ST_fsm_state31 = 58'd1073741824;
parameter    ap_ST_fsm_state32 = 58'd2147483648;
parameter    ap_ST_fsm_state33 = 58'd4294967296;
parameter    ap_ST_fsm_state34 = 58'd8589934592;
parameter    ap_ST_fsm_state35 = 58'd17179869184;
parameter    ap_ST_fsm_state36 = 58'd34359738368;
parameter    ap_ST_fsm_state37 = 58'd68719476736;
parameter    ap_ST_fsm_state38 = 58'd137438953472;
parameter    ap_ST_fsm_state39 = 58'd274877906944;
parameter    ap_ST_fsm_state40 = 58'd549755813888;
parameter    ap_ST_fsm_state41 = 58'd1099511627776;
parameter    ap_ST_fsm_state42 = 58'd2199023255552;
parameter    ap_ST_fsm_state43 = 58'd4398046511104;
parameter    ap_ST_fsm_state44 = 58'd8796093022208;
parameter    ap_ST_fsm_state45 = 58'd17592186044416;
parameter    ap_ST_fsm_state46 = 58'd35184372088832;
parameter    ap_ST_fsm_state47 = 58'd70368744177664;
parameter    ap_ST_fsm_state48 = 58'd140737488355328;
parameter    ap_ST_fsm_state49 = 58'd281474976710656;
parameter    ap_ST_fsm_state50 = 58'd562949953421312;
parameter    ap_ST_fsm_state51 = 58'd1125899906842624;
parameter    ap_ST_fsm_state52 = 58'd2251799813685248;
parameter    ap_ST_fsm_state53 = 58'd4503599627370496;
parameter    ap_ST_fsm_state54 = 58'd9007199254740992;
parameter    ap_ST_fsm_state55 = 58'd18014398509481984;
parameter    ap_ST_fsm_state56 = 58'd36028797018963968;
parameter    ap_ST_fsm_state57 = 58'd72057594037927936;
parameter    ap_ST_fsm_state58 = 58'd144115188075855872;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] X_R_address0;
output   X_R_ce0;
output   X_R_we0;
output  [31:0] X_R_d0;
input  [31:0] X_R_q0;
output  [9:0] X_I_address0;
output   X_I_ce0;
output   X_I_we0;
output  [31:0] X_I_d0;
input  [31:0] X_I_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] X_R_address0;
reg X_R_ce0;
reg X_R_we0;
reg[31:0] X_R_d0;
reg[9:0] X_I_address0;
reg X_I_ce0;
reg X_I_we0;
reg[31:0] X_I_d0;

(* fsm_encoding = "none" *) reg   [57:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_307;
wire    ap_CS_fsm_state39;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state53;
reg   [31:0] reg_314;
wire   [31:0] grp_fu_262_p2;
reg   [31:0] reg_321;
wire    ap_CS_fsm_state57;
wire   [31:0] grp_fu_267_p2;
reg   [31:0] reg_327;
wire   [10:0] i_3_fu_339_p2;
reg   [10:0] i_3_reg_463;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln23_fu_349_p2;
reg   [0:0] icmp_ln23_reg_468;
wire   [0:0] icmp_ln21_fu_333_p2;
reg   [9:0] X_R_addr_3_reg_472;
reg   [9:0] X_I_addr_3_reg_477;
wire    ap_CS_fsm_state3;
wire   [31:0] zext_ln51_fu_383_p1;
reg   [31:0] zext_ln51_reg_495;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln50_fu_371_p2;
reg   [9:0] trunc_ln_reg_501;
wire   [63:0] grp_fu_304_p1;
reg   [63:0] tmp_reg_507;
wire    ap_CS_fsm_state8;
wire   [63:0] grp_fu_299_p2;
reg   [63:0] tmp_2_reg_512;
wire    ap_CS_fsm_state30;
wire   [31:0] numBF_fu_398_p1;
reg   [31:0] numBF_reg_517;
wire    ap_CS_fsm_state32;
wire   [31:0] grp_fu_287_p1;
reg   [31:0] e_reg_522;
wire   [31:0] zext_ln57_fu_401_p1;
reg   [31:0] zext_ln57_reg_527;
wire    ap_CS_fsm_state33;
wire   [9:0] j_fu_410_p2;
reg   [9:0] j_reg_535;
wire   [3:0] stage_fu_416_p2;
wire   [0:0] icmp_ln57_fu_405_p2;
wire   [63:0] grp_fu_293_p1;
reg   [63:0] x_assign_reg_545;
wire    ap_CS_fsm_state34;
wire   [63:0] grp_sin_or_cos_double_s_fu_218_ap_return;
reg   [63:0] tmp_i_i_reg_551;
wire    ap_CS_fsm_state35;
wire    grp_sin_or_cos_double_s_fu_218_ap_ready;
wire    grp_sin_or_cos_double_s_fu_218_ap_done;
wire    grp_sin_or_cos_double_s_fu_237_ap_ready;
wire    grp_sin_or_cos_double_s_fu_237_ap_done;
reg    ap_block_state35_on_subcall_done;
wire   [63:0] grp_sin_or_cos_double_s_fu_237_ap_return;
reg   [63:0] tmp_i_i9_reg_556;
reg   [31:0] a_reg_561;
wire    ap_CS_fsm_state36;
reg   [31:0] c_reg_566;
wire    ap_CS_fsm_state37;
wire   [31:0] grp_fu_290_p1;
reg   [31:0] s_reg_572;
reg   [9:0] X_R_addr_reg_581;
wire    ap_CS_fsm_state38;
wire   [0:0] icmp_ln63_fu_432_p2;
reg   [9:0] X_I_addr_reg_586;
reg   [9:0] X_R_addr_1_reg_591;
reg   [9:0] X_I_addr_1_reg_596;
wire   [31:0] i_4_fu_455_p2;
reg   [31:0] i_4_reg_601;
wire   [31:0] grp_fu_271_p2;
reg   [31:0] tmp_7_reg_606;
wire    ap_CS_fsm_state42;
wire   [31:0] grp_fu_275_p2;
reg   [31:0] tmp_8_reg_611;
wire   [31:0] grp_fu_279_p2;
reg   [31:0] tmp_9_reg_616;
wire   [31:0] grp_fu_283_p2;
reg   [31:0] tmp_s_reg_621;
reg   [31:0] tmp_1_reg_626;
wire    ap_CS_fsm_state50;
reg   [31:0] tmp_6_reg_631;
wire    grp_sin_or_cos_double_s_fu_218_ap_start;
wire    grp_sin_or_cos_double_s_fu_218_ap_idle;
wire    grp_sin_or_cos_double_s_fu_218_do_cos;
wire    grp_sin_or_cos_double_s_fu_237_ap_start;
wire    grp_sin_or_cos_double_s_fu_237_ap_idle;
wire    grp_sin_or_cos_double_s_fu_237_do_cos;
wire    reversed_reverse_bits_fu_256_ap_ready;
wire   [9:0] reversed_reverse_bits_fu_256_ap_return;
reg   [10:0] i_0_i_reg_162;
wire    ap_CS_fsm_state4;
reg   [3:0] stage_0_reg_174;
reg   [9:0] i_reg_186;
reg   [31:0] a_0_reg_197;
reg  signed [31:0] i_0_reg_209;
wire    ap_CS_fsm_state58;
reg    grp_sin_or_cos_double_s_fu_218_ap_start_reg;
reg    grp_sin_or_cos_double_s_fu_237_ap_start_reg;
wire   [63:0] zext_ln26_fu_355_p1;
wire   [63:0] zext_ln25_fu_361_p1;
wire  signed [63:0] sext_ln65_fu_443_p1;
wire  signed [63:0] sext_ln67_fu_449_p1;
wire    ap_CS_fsm_state45;
wire    ap_CS_fsm_state51;
wire    ap_CS_fsm_state52;
reg   [31:0] grp_fu_262_p0;
reg   [31:0] grp_fu_262_p1;
wire    ap_CS_fsm_state43;
wire    ap_CS_fsm_state47;
wire    ap_CS_fsm_state54;
reg   [31:0] grp_fu_267_p0;
reg   [31:0] grp_fu_267_p1;
wire    ap_CS_fsm_state40;
reg   [63:0] grp_fu_287_p0;
wire    ap_CS_fsm_state31;
wire    ap_CS_fsm_state9;
wire   [31:0] grp_fu_304_p0;
wire   [10:0] zext_ln22_fu_345_p1;
wire   [10:0] zext_ln50_fu_367_p1;
wire   [10:0] DFTpts_fu_377_p2;
wire   [21:0] tmp_12_fu_422_p4;
wire   [31:0] i_lower_fu_438_p2;
reg   [1:0] grp_fu_262_opcode;
reg    grp_fu_262_ce;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state48;
wire    ap_CS_fsm_state49;
wire    ap_CS_fsm_state55;
wire    ap_CS_fsm_state56;
reg   [1:0] grp_fu_267_opcode;
reg   [57:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 58'd1;
#0 grp_sin_or_cos_double_s_fu_218_ap_start_reg = 1'b0;
#0 grp_sin_or_cos_double_s_fu_237_ap_start_reg = 1'b0;
end

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_218(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_218_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_218_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_218_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_218_ap_ready),
    .t_in(x_assign_reg_545),
    .do_cos(grp_sin_or_cos_double_s_fu_218_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_218_ap_return)
);

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_237(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_237_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_237_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_237_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_237_ap_ready),
    .t_in(x_assign_reg_545),
    .do_cos(grp_sin_or_cos_double_s_fu_237_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_237_ap_return)
);

reverse_bits reversed_reverse_bits_fu_256(
    .ap_ready(reversed_reverse_bits_fu_256_ap_ready),
    .input_r(i_0_i_reg_162),
    .ap_return(reversed_reverse_bits_fu_256_ap_return)
);

fft_faddfsub_32nsibs #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fft_faddfsub_32nsibs_U23(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_262_p0),
    .din1(grp_fu_262_p1),
    .opcode(grp_fu_262_opcode),
    .ce(grp_fu_262_ce),
    .dout(grp_fu_262_p2)
);

fft_faddfsub_32nsibs #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fft_faddfsub_32nsibs_U24(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_267_p0),
    .din1(grp_fu_267_p1),
    .opcode(grp_fu_267_opcode),
    .ce(1'b1),
    .dout(grp_fu_267_p2)
);

fft_fmul_32ns_32njbC #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fft_fmul_32ns_32njbC_U25(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_307),
    .din1(c_reg_566),
    .ce(1'b1),
    .dout(grp_fu_271_p2)
);

fft_fmul_32ns_32njbC #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fft_fmul_32ns_32njbC_U26(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_314),
    .din1(s_reg_572),
    .ce(1'b1),
    .dout(grp_fu_275_p2)
);

fft_fmul_32ns_32njbC #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fft_fmul_32ns_32njbC_U27(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_314),
    .din1(c_reg_566),
    .ce(1'b1),
    .dout(grp_fu_279_p2)
);

fft_fmul_32ns_32njbC #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fft_fmul_32ns_32njbC_U28(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_307),
    .din1(s_reg_572),
    .ce(1'b1),
    .dout(grp_fu_283_p2)
);

fft_fptrunc_64ns_kbM #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
fft_fptrunc_64ns_kbM_U29(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_287_p0),
    .ce(1'b1),
    .dout(grp_fu_287_p1)
);

fft_fptrunc_64ns_kbM #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
fft_fptrunc_64ns_kbM_U30(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_i_i9_reg_556),
    .ce(1'b1),
    .dout(grp_fu_290_p1)
);

fft_fpext_32ns_64lbW #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
fft_fpext_32ns_64lbW_U31(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_0_reg_197),
    .ce(1'b1),
    .dout(grp_fu_293_p1)
);

fft_ddiv_64ns_64nmb6 #(
    .ID( 1 ),
    .NUM_STAGE( 22 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
fft_ddiv_64ns_64nmb6_U32(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(64'd13842132293034190366),
    .din1(tmp_reg_507),
    .ce(1'b1),
    .dout(grp_fu_299_p2)
);

fft_sitodp_32ns_6ncg #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
fft_sitodp_32ns_6ncg_U33(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_304_p0),
    .ce(1'b1),
    .dout(grp_fu_304_p1)
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
        grp_sin_or_cos_double_s_fu_218_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state34)) begin
            grp_sin_or_cos_double_s_fu_218_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_218_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_218_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_237_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state34)) begin
            grp_sin_or_cos_double_s_fu_237_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_237_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_237_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state38) & (icmp_ln63_fu_432_p2 == 1'd0))) begin
        a_0_reg_197 <= a_reg_561;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        a_0_reg_197 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_0_i_reg_162 <= i_3_reg_463;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_reg_162 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        i_0_reg_209 <= i_4_reg_601;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        i_0_reg_209 <= zext_ln57_reg_527;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state38) & (icmp_ln63_fu_432_p2 == 1'd0))) begin
        i_reg_186 <= j_reg_535;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        i_reg_186 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln21_fu_333_p2 == 1'd1))) begin
        stage_0_reg_174 <= 4'd1;
    end else if (((1'b1 == ap_CS_fsm_state33) & (icmp_ln57_fu_405_p2 == 1'd1))) begin
        stage_0_reg_174 <= stage_fu_416_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state38) & (icmp_ln63_fu_432_p2 == 1'd1))) begin
        X_I_addr_1_reg_596 <= sext_ln67_fu_449_p1;
        X_I_addr_reg_586 <= sext_ln65_fu_443_p1;
        X_R_addr_1_reg_591 <= sext_ln67_fu_449_p1;
        X_R_addr_reg_581 <= sext_ln65_fu_443_p1;
        i_4_reg_601 <= i_4_fu_455_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln21_fu_333_p2 == 1'd0) & (icmp_ln23_fu_349_p2 == 1'd0))) begin
        X_I_addr_3_reg_477 <= zext_ln26_fu_355_p1;
        X_R_addr_3_reg_472 <= zext_ln26_fu_355_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        a_reg_561 <= grp_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        c_reg_566 <= grp_fu_287_p1;
        s_reg_572 <= grp_fu_290_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        e_reg_522 <= grp_fu_287_p1;
        numBF_reg_517[9 : 0] <= numBF_fu_398_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_3_reg_463 <= i_3_fu_339_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln21_fu_333_p2 == 1'd0))) begin
        icmp_ln23_reg_468 <= icmp_ln23_fu_349_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        j_reg_535 <= j_fu_410_p2;
        zext_ln57_reg_527[9 : 0] <= zext_ln57_fu_401_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state46))) begin
        reg_307 <= X_R_q0;
        reg_314 <= X_I_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state46))) begin
        reg_321 <= grp_fu_262_p2;
        reg_327 <= grp_fu_267_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        tmp_1_reg_626 <= grp_fu_262_p2;
        tmp_6_reg_631 <= grp_fu_267_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        tmp_2_reg_512 <= grp_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        tmp_7_reg_606 <= grp_fu_271_p2;
        tmp_8_reg_611 <= grp_fu_275_p2;
        tmp_9_reg_616 <= grp_fu_279_p2;
        tmp_s_reg_621 <= grp_fu_283_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state35_on_subcall_done) & (1'b1 == ap_CS_fsm_state35))) begin
        tmp_i_i9_reg_556 <= grp_sin_or_cos_double_s_fu_237_ap_return;
        tmp_i_i_reg_551 <= grp_sin_or_cos_double_s_fu_218_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_reg_507 <= grp_fu_304_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln50_fu_371_p2 == 1'd0))) begin
        trunc_ln_reg_501 <= {{DFTpts_fu_377_p2[10:1]}};
        zext_ln51_reg_495[10 : 0] <= zext_ln51_fu_383_p1[10 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        x_assign_reg_545 <= grp_fu_293_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        X_I_address0 = X_I_addr_reg_586;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state58))) begin
        X_I_address0 = X_I_addr_1_reg_596;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        X_I_address0 = sext_ln65_fu_443_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_I_address0 = X_I_addr_3_reg_477;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        X_I_address0 = zext_ln25_fu_361_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_I_address0 = zext_ln26_fu_355_p1;
    end else begin
        X_I_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        X_I_ce0 = 1'b1;
    end else begin
        X_I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        X_I_d0 = reg_327;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        X_I_d0 = tmp_6_reg_631;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        X_I_d0 = X_I_q0;
    end else begin
        X_I_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln23_reg_468 == 1'd0)))) begin
        X_I_we0 = 1'b1;
    end else begin
        X_I_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        X_R_address0 = X_R_addr_reg_581;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state58))) begin
        X_R_address0 = X_R_addr_1_reg_591;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        X_R_address0 = sext_ln65_fu_443_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_R_address0 = X_R_addr_3_reg_472;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        X_R_address0 = zext_ln25_fu_361_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_R_address0 = zext_ln26_fu_355_p1;
    end else begin
        X_R_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        X_R_ce0 = 1'b1;
    end else begin
        X_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        X_R_d0 = reg_321;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        X_R_d0 = tmp_1_reg_626;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        X_R_d0 = X_R_q0;
    end else begin
        X_R_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln23_reg_468 == 1'd0)))) begin
        X_R_we0 = 1'b1;
    end else begin
        X_R_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln50_fu_371_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln50_fu_371_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state46) | ((1'b0 == ap_block_state35_on_subcall_done) & (1'b1 == ap_CS_fsm_state35)))) begin
        grp_fu_262_ce = 1'b1;
    end else begin
        grp_fu_262_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state43))) begin
        grp_fu_262_opcode = 2'd1;
    end else if (((1'b1 == ap_CS_fsm_state54) | ((1'b1 == ap_CS_fsm_state33) & (icmp_ln57_fu_405_p2 == 1'd0)))) begin
        grp_fu_262_opcode = 2'd0;
    end else begin
        grp_fu_262_opcode = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state47))) begin
        grp_fu_262_p0 = reg_307;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_262_p0 = tmp_7_reg_606;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_262_p0 = a_0_reg_197;
    end else begin
        grp_fu_262_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state47))) begin
        grp_fu_262_p1 = reg_321;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_262_p1 = tmp_8_reg_611;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_262_p1 = e_reg_522;
    end else begin
        grp_fu_262_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_267_opcode = 2'd1;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state43))) begin
        grp_fu_267_opcode = 2'd0;
    end else begin
        grp_fu_267_opcode = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state47))) begin
        grp_fu_267_p0 = reg_314;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_267_p0 = tmp_9_reg_616;
    end else begin
        grp_fu_267_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state47))) begin
        grp_fu_267_p1 = reg_327;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_267_p1 = tmp_s_reg_621;
    end else begin
        grp_fu_267_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_287_p0 = tmp_i_i_reg_551;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_287_p0 = tmp_2_reg_512;
    end else begin
        grp_fu_287_p0 = 'bx;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln21_fu_333_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln21_fu_333_p2 == 1'd0) & (icmp_ln23_fu_349_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln50_fu_371_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
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
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            if (((1'b1 == ap_CS_fsm_state33) & (icmp_ln57_fu_405_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            if (((1'b0 == ap_block_state35_on_subcall_done) & (1'b1 == ap_CS_fsm_state35))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            if (((1'b1 == ap_CS_fsm_state38) & (icmp_ln63_fu_432_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state39;
            end
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign DFTpts_fu_377_p2 = 11'd1 << zext_ln50_fu_367_p1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];

assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];

assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];

assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];

assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];

assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];

assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];

assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];

assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];

assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];

assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];

assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];

assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];

assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];

assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];

assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];

assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];

assign ap_CS_fsm_state49 = ap_CS_fsm[32'd48];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];

assign ap_CS_fsm_state51 = ap_CS_fsm[32'd50];

assign ap_CS_fsm_state52 = ap_CS_fsm[32'd51];

assign ap_CS_fsm_state53 = ap_CS_fsm[32'd52];

assign ap_CS_fsm_state54 = ap_CS_fsm[32'd53];

assign ap_CS_fsm_state55 = ap_CS_fsm[32'd54];

assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];

assign ap_CS_fsm_state57 = ap_CS_fsm[32'd56];

assign ap_CS_fsm_state58 = ap_CS_fsm[32'd57];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state35_on_subcall_done = ((grp_sin_or_cos_double_s_fu_237_ap_done == 1'b0) | (grp_sin_or_cos_double_s_fu_218_ap_done == 1'b0));
end

assign grp_fu_304_p0 = DFTpts_fu_377_p2;

assign grp_sin_or_cos_double_s_fu_218_ap_start = grp_sin_or_cos_double_s_fu_218_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_218_do_cos = 1'd1;

assign grp_sin_or_cos_double_s_fu_237_ap_start = grp_sin_or_cos_double_s_fu_237_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_237_do_cos = 1'd0;

assign i_3_fu_339_p2 = (i_0_i_reg_162 + 11'd1);

assign i_4_fu_455_p2 = ($signed(zext_ln51_reg_495) + $signed(i_0_reg_209));

assign i_lower_fu_438_p2 = ($signed(i_0_reg_209) + $signed(numBF_reg_517));

assign icmp_ln21_fu_333_p2 = ((i_0_i_reg_162 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln23_fu_349_p2 = ((i_0_i_reg_162 > zext_ln22_fu_345_p1) ? 1'b1 : 1'b0);

assign icmp_ln50_fu_371_p2 = ((stage_0_reg_174 == 4'd11) ? 1'b1 : 1'b0);

assign icmp_ln57_fu_405_p2 = ((i_reg_186 == trunc_ln_reg_501) ? 1'b1 : 1'b0);

assign icmp_ln63_fu_432_p2 = (($signed(tmp_12_fu_422_p4) < $signed(22'd1)) ? 1'b1 : 1'b0);

assign j_fu_410_p2 = (i_reg_186 + 10'd1);

assign numBF_fu_398_p1 = trunc_ln_reg_501;

assign sext_ln65_fu_443_p1 = $signed(i_lower_fu_438_p2);

assign sext_ln67_fu_449_p1 = i_0_reg_209;

assign stage_fu_416_p2 = (stage_0_reg_174 + 4'd1);

assign tmp_12_fu_422_p4 = {{i_0_reg_209[31:10]}};

assign zext_ln22_fu_345_p1 = reversed_reverse_bits_fu_256_ap_return;

assign zext_ln25_fu_361_p1 = i_0_i_reg_162;

assign zext_ln26_fu_355_p1 = reversed_reverse_bits_fu_256_ap_return;

assign zext_ln50_fu_367_p1 = stage_0_reg_174;

assign zext_ln51_fu_383_p1 = DFTpts_fu_377_p2;

assign zext_ln57_fu_401_p1 = i_reg_186;

always @ (posedge ap_clk) begin
    zext_ln51_reg_495[31:11] <= 21'b000000000000000000000;
    numBF_reg_517[31:10] <= 22'b0000000000000000000000;
    zext_ln57_reg_527[31:10] <= 22'b0000000000000000000000;
end

endmodule //fft