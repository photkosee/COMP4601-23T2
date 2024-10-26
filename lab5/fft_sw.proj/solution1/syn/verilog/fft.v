// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fft,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.635000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=16,HLS_SYN_DSP=204,HLS_SYN_FF=9119,HLS_SYN_LUT=17576,HLS_VERSION=2020_1}" *)

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

parameter    ap_ST_fsm_state1 = 56'd1;
parameter    ap_ST_fsm_state2 = 56'd2;
parameter    ap_ST_fsm_state3 = 56'd4;
parameter    ap_ST_fsm_state4 = 56'd8;
parameter    ap_ST_fsm_state5 = 56'd16;
parameter    ap_ST_fsm_state6 = 56'd32;
parameter    ap_ST_fsm_state7 = 56'd64;
parameter    ap_ST_fsm_state8 = 56'd128;
parameter    ap_ST_fsm_state9 = 56'd256;
parameter    ap_ST_fsm_state10 = 56'd512;
parameter    ap_ST_fsm_state11 = 56'd1024;
parameter    ap_ST_fsm_state12 = 56'd2048;
parameter    ap_ST_fsm_state13 = 56'd4096;
parameter    ap_ST_fsm_state14 = 56'd8192;
parameter    ap_ST_fsm_state15 = 56'd16384;
parameter    ap_ST_fsm_state16 = 56'd32768;
parameter    ap_ST_fsm_state17 = 56'd65536;
parameter    ap_ST_fsm_state18 = 56'd131072;
parameter    ap_ST_fsm_state19 = 56'd262144;
parameter    ap_ST_fsm_state20 = 56'd524288;
parameter    ap_ST_fsm_state21 = 56'd1048576;
parameter    ap_ST_fsm_state22 = 56'd2097152;
parameter    ap_ST_fsm_state23 = 56'd4194304;
parameter    ap_ST_fsm_state24 = 56'd8388608;
parameter    ap_ST_fsm_state25 = 56'd16777216;
parameter    ap_ST_fsm_state26 = 56'd33554432;
parameter    ap_ST_fsm_state27 = 56'd67108864;
parameter    ap_ST_fsm_state28 = 56'd134217728;
parameter    ap_ST_fsm_state29 = 56'd268435456;
parameter    ap_ST_fsm_state30 = 56'd536870912;
parameter    ap_ST_fsm_state31 = 56'd1073741824;
parameter    ap_ST_fsm_state32 = 56'd2147483648;
parameter    ap_ST_fsm_state33 = 56'd4294967296;
parameter    ap_ST_fsm_state34 = 56'd8589934592;
parameter    ap_ST_fsm_state35 = 56'd17179869184;
parameter    ap_ST_fsm_state36 = 56'd34359738368;
parameter    ap_ST_fsm_state37 = 56'd68719476736;
parameter    ap_ST_fsm_state38 = 56'd137438953472;
parameter    ap_ST_fsm_state39 = 56'd274877906944;
parameter    ap_ST_fsm_state40 = 56'd549755813888;
parameter    ap_ST_fsm_state41 = 56'd1099511627776;
parameter    ap_ST_fsm_state42 = 56'd2199023255552;
parameter    ap_ST_fsm_state43 = 56'd4398046511104;
parameter    ap_ST_fsm_state44 = 56'd8796093022208;
parameter    ap_ST_fsm_state45 = 56'd17592186044416;
parameter    ap_ST_fsm_state46 = 56'd35184372088832;
parameter    ap_ST_fsm_state47 = 56'd70368744177664;
parameter    ap_ST_fsm_state48 = 56'd140737488355328;
parameter    ap_ST_fsm_state49 = 56'd281474976710656;
parameter    ap_ST_fsm_state50 = 56'd562949953421312;
parameter    ap_ST_fsm_state51 = 56'd1125899906842624;
parameter    ap_ST_fsm_state52 = 56'd2251799813685248;
parameter    ap_ST_fsm_state53 = 56'd4503599627370496;
parameter    ap_ST_fsm_state54 = 56'd9007199254740992;
parameter    ap_ST_fsm_state55 = 56'd18014398509481984;
parameter    ap_ST_fsm_state56 = 56'd36028797018963968;

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

(* fsm_encoding = "none" *) reg   [55:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_253;
wire    ap_CS_fsm_state37;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state51;
reg   [31:0] reg_260;
wire   [31:0] grp_fu_208_p2;
reg   [31:0] reg_267;
wire    ap_CS_fsm_state55;
wire   [31:0] grp_fu_213_p2;
reg   [31:0] reg_273;
wire   [31:0] zext_ln51_fu_295_p1;
reg   [31:0] zext_ln51_reg_375;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln50_fu_283_p2;
reg   [9:0] trunc_ln_reg_381;
wire   [63:0] grp_fu_250_p1;
reg   [63:0] tmp_reg_387;
wire    ap_CS_fsm_state6;
wire   [63:0] grp_fu_245_p2;
reg   [63:0] tmp_2_reg_392;
wire    ap_CS_fsm_state28;
wire   [31:0] numBF_fu_310_p1;
reg   [31:0] numBF_reg_397;
wire    ap_CS_fsm_state30;
wire   [31:0] grp_fu_233_p1;
reg   [31:0] e_reg_402;
wire   [31:0] i_cast_fu_313_p1;
reg   [31:0] i_cast_reg_407;
wire    ap_CS_fsm_state31;
wire   [9:0] j_fu_322_p2;
reg   [9:0] j_reg_415;
wire   [3:0] stage_fu_328_p2;
wire   [0:0] icmp_ln57_fu_317_p2;
wire   [63:0] grp_fu_239_p1;
reg   [63:0] x_assign_reg_425;
wire    ap_CS_fsm_state32;
wire   [63:0] grp_sin_or_cos_double_s_fu_162_ap_return;
reg   [63:0] tmp_i_i_reg_431;
wire    ap_CS_fsm_state33;
wire    grp_sin_or_cos_double_s_fu_162_ap_ready;
wire    grp_sin_or_cos_double_s_fu_162_ap_done;
wire    grp_sin_or_cos_double_s_fu_181_ap_ready;
wire    grp_sin_or_cos_double_s_fu_181_ap_done;
reg    ap_block_state33_on_subcall_done;
wire   [63:0] grp_sin_or_cos_double_s_fu_181_ap_return;
reg   [63:0] tmp_i_i9_reg_436;
reg   [31:0] a_reg_441;
wire    ap_CS_fsm_state34;
reg   [31:0] c_reg_446;
wire    ap_CS_fsm_state35;
wire   [31:0] grp_fu_236_p1;
reg   [31:0] s_reg_452;
reg   [9:0] X_R_addr_reg_461;
wire    ap_CS_fsm_state36;
wire   [0:0] icmp_ln63_fu_344_p2;
reg   [9:0] X_I_addr_reg_466;
reg   [9:0] X_R_addr_1_reg_471;
reg   [9:0] X_I_addr_1_reg_476;
wire   [31:0] i_3_fu_367_p2;
reg   [31:0] i_3_reg_481;
wire   [31:0] grp_fu_217_p2;
reg   [31:0] tmp_7_reg_486;
wire    ap_CS_fsm_state40;
wire   [31:0] grp_fu_221_p2;
reg   [31:0] tmp_8_reg_491;
wire   [31:0] grp_fu_225_p2;
reg   [31:0] tmp_9_reg_496;
wire   [31:0] grp_fu_229_p2;
reg   [31:0] tmp_s_reg_501;
reg   [31:0] tmp_1_reg_506;
wire    ap_CS_fsm_state48;
reg   [31:0] tmp_6_reg_511;
wire    grp_sin_or_cos_double_s_fu_162_ap_start;
wire    grp_sin_or_cos_double_s_fu_162_ap_idle;
wire    grp_sin_or_cos_double_s_fu_162_do_cos;
wire    grp_sin_or_cos_double_s_fu_181_ap_start;
wire    grp_sin_or_cos_double_s_fu_181_ap_idle;
wire    grp_sin_or_cos_double_s_fu_181_do_cos;
wire    grp_bit_reverse_fu_200_ap_start;
wire    grp_bit_reverse_fu_200_ap_done;
wire    grp_bit_reverse_fu_200_ap_idle;
wire    grp_bit_reverse_fu_200_ap_ready;
wire   [9:0] grp_bit_reverse_fu_200_X_R_address0;
wire    grp_bit_reverse_fu_200_X_R_ce0;
wire    grp_bit_reverse_fu_200_X_R_we0;
wire   [31:0] grp_bit_reverse_fu_200_X_R_d0;
wire   [9:0] grp_bit_reverse_fu_200_X_I_address0;
wire    grp_bit_reverse_fu_200_X_I_ce0;
wire    grp_bit_reverse_fu_200_X_I_we0;
wire   [31:0] grp_bit_reverse_fu_200_X_I_d0;
reg   [3:0] stage_0_reg_118;
wire    ap_CS_fsm_state2;
reg   [9:0] i_reg_130;
reg   [31:0] a_0_reg_141;
reg  signed [31:0] i_0_reg_153;
wire    ap_CS_fsm_state56;
reg    grp_sin_or_cos_double_s_fu_162_ap_start_reg;
reg    grp_sin_or_cos_double_s_fu_181_ap_start_reg;
reg    grp_bit_reverse_fu_200_ap_start_reg;
wire  signed [63:0] sext_ln65_fu_355_p1;
wire  signed [63:0] sext_ln67_fu_361_p1;
wire    ap_CS_fsm_state43;
wire    ap_CS_fsm_state49;
wire    ap_CS_fsm_state50;
reg   [31:0] grp_fu_208_p0;
reg   [31:0] grp_fu_208_p1;
wire    ap_CS_fsm_state41;
wire    ap_CS_fsm_state45;
wire    ap_CS_fsm_state52;
reg   [31:0] grp_fu_213_p0;
reg   [31:0] grp_fu_213_p1;
wire    ap_CS_fsm_state38;
reg   [63:0] grp_fu_233_p0;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_250_p0;
wire   [10:0] zext_ln50_fu_279_p1;
wire   [10:0] DFTpts_fu_289_p2;
wire   [21:0] tmp_11_fu_334_p4;
wire   [31:0] i_lower_fu_350_p2;
reg   [1:0] grp_fu_208_opcode;
reg    grp_fu_208_ce;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state47;
wire    ap_CS_fsm_state53;
wire    ap_CS_fsm_state54;
reg   [1:0] grp_fu_213_opcode;
reg   [55:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 56'd1;
#0 grp_sin_or_cos_double_s_fu_162_ap_start_reg = 1'b0;
#0 grp_sin_or_cos_double_s_fu_181_ap_start_reg = 1'b0;
#0 grp_bit_reverse_fu_200_ap_start_reg = 1'b0;
end

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_162(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_162_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_162_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_162_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_162_ap_ready),
    .t_in(x_assign_reg_425),
    .do_cos(grp_sin_or_cos_double_s_fu_162_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_162_ap_return)
);

sin_or_cos_double_s grp_sin_or_cos_double_s_fu_181(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sin_or_cos_double_s_fu_181_ap_start),
    .ap_done(grp_sin_or_cos_double_s_fu_181_ap_done),
    .ap_idle(grp_sin_or_cos_double_s_fu_181_ap_idle),
    .ap_ready(grp_sin_or_cos_double_s_fu_181_ap_ready),
    .t_in(x_assign_reg_425),
    .do_cos(grp_sin_or_cos_double_s_fu_181_do_cos),
    .ap_return(grp_sin_or_cos_double_s_fu_181_ap_return)
);

bit_reverse grp_bit_reverse_fu_200(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_bit_reverse_fu_200_ap_start),
    .ap_done(grp_bit_reverse_fu_200_ap_done),
    .ap_idle(grp_bit_reverse_fu_200_ap_idle),
    .ap_ready(grp_bit_reverse_fu_200_ap_ready),
    .X_R_address0(grp_bit_reverse_fu_200_X_R_address0),
    .X_R_ce0(grp_bit_reverse_fu_200_X_R_ce0),
    .X_R_we0(grp_bit_reverse_fu_200_X_R_we0),
    .X_R_d0(grp_bit_reverse_fu_200_X_R_d0),
    .X_R_q0(X_R_q0),
    .X_I_address0(grp_bit_reverse_fu_200_X_I_address0),
    .X_I_ce0(grp_bit_reverse_fu_200_X_I_ce0),
    .X_I_we0(grp_bit_reverse_fu_200_X_I_we0),
    .X_I_d0(grp_bit_reverse_fu_200_X_I_d0),
    .X_I_q0(X_I_q0)
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
    .din0(grp_fu_208_p0),
    .din1(grp_fu_208_p1),
    .opcode(grp_fu_208_opcode),
    .ce(grp_fu_208_ce),
    .dout(grp_fu_208_p2)
);

fft_faddfsub_32nsibs #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fft_faddfsub_32nsibs_U25(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_213_p0),
    .din1(grp_fu_213_p1),
    .opcode(grp_fu_213_opcode),
    .ce(1'b1),
    .dout(grp_fu_213_p2)
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
    .din0(reg_253),
    .din1(c_reg_446),
    .ce(1'b1),
    .dout(grp_fu_217_p2)
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
    .din0(reg_260),
    .din1(s_reg_452),
    .ce(1'b1),
    .dout(grp_fu_221_p2)
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
    .din0(reg_260),
    .din1(c_reg_446),
    .ce(1'b1),
    .dout(grp_fu_225_p2)
);

fft_fmul_32ns_32njbC #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fft_fmul_32ns_32njbC_U29(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_253),
    .din1(s_reg_452),
    .ce(1'b1),
    .dout(grp_fu_229_p2)
);

fft_fptrunc_64ns_kbM #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
fft_fptrunc_64ns_kbM_U30(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_233_p0),
    .ce(1'b1),
    .dout(grp_fu_233_p1)
);

fft_fptrunc_64ns_kbM #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
fft_fptrunc_64ns_kbM_U31(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_i_i9_reg_436),
    .ce(1'b1),
    .dout(grp_fu_236_p1)
);

fft_fpext_32ns_64lbW #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
fft_fpext_32ns_64lbW_U32(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_0_reg_141),
    .ce(1'b1),
    .dout(grp_fu_239_p1)
);

fft_ddiv_64ns_64nmb6 #(
    .ID( 1 ),
    .NUM_STAGE( 22 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
fft_ddiv_64ns_64nmb6_U33(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(64'd13842132293034190366),
    .din1(tmp_reg_387),
    .ce(1'b1),
    .dout(grp_fu_245_p2)
);

fft_sitodp_32ns_6ncg #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
fft_sitodp_32ns_6ncg_U34(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_250_p0),
    .ce(1'b1),
    .dout(grp_fu_250_p1)
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
        grp_bit_reverse_fu_200_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bit_reverse_fu_200_ap_start_reg <= 1'b1;
        end else if ((grp_bit_reverse_fu_200_ap_ready == 1'b1)) begin
            grp_bit_reverse_fu_200_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_162_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_sin_or_cos_double_s_fu_162_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_162_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_162_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sin_or_cos_double_s_fu_181_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state32)) begin
            grp_sin_or_cos_double_s_fu_181_ap_start_reg <= 1'b1;
        end else if ((grp_sin_or_cos_double_s_fu_181_ap_ready == 1'b1)) begin
            grp_sin_or_cos_double_s_fu_181_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) & (icmp_ln63_fu_344_p2 == 1'd0))) begin
        a_0_reg_141 <= a_reg_441;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        a_0_reg_141 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        i_0_reg_153 <= i_3_reg_481;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        i_0_reg_153 <= i_cast_reg_407;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) & (icmp_ln63_fu_344_p2 == 1'd0))) begin
        i_reg_130 <= j_reg_415;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        i_reg_130 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state31) & (icmp_ln57_fu_317_p2 == 1'd1))) begin
        stage_0_reg_118 <= stage_fu_328_p2;
    end else if (((grp_bit_reverse_fu_200_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        stage_0_reg_118 <= 4'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) & (icmp_ln63_fu_344_p2 == 1'd1))) begin
        X_I_addr_1_reg_476 <= sext_ln67_fu_361_p1;
        X_I_addr_reg_466 <= sext_ln65_fu_355_p1;
        X_R_addr_1_reg_471 <= sext_ln67_fu_361_p1;
        X_R_addr_reg_461 <= sext_ln65_fu_355_p1;
        i_3_reg_481 <= i_3_fu_367_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        a_reg_441 <= grp_fu_208_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        c_reg_446 <= grp_fu_233_p1;
        s_reg_452 <= grp_fu_236_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        e_reg_402 <= grp_fu_233_p1;
        numBF_reg_397[9 : 0] <= numBF_fu_310_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        i_cast_reg_407[9 : 0] <= i_cast_fu_313_p1[9 : 0];
        j_reg_415 <= j_fu_322_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state44))) begin
        reg_253 <= X_R_q0;
        reg_260 <= X_I_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state44))) begin
        reg_267 <= grp_fu_208_p2;
        reg_273 <= grp_fu_213_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        tmp_1_reg_506 <= grp_fu_208_p2;
        tmp_6_reg_511 <= grp_fu_213_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        tmp_2_reg_392 <= grp_fu_245_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        tmp_7_reg_486 <= grp_fu_217_p2;
        tmp_8_reg_491 <= grp_fu_221_p2;
        tmp_9_reg_496 <= grp_fu_225_p2;
        tmp_s_reg_501 <= grp_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state33) & (1'b0 == ap_block_state33_on_subcall_done))) begin
        tmp_i_i9_reg_436 <= grp_sin_or_cos_double_s_fu_181_ap_return;
        tmp_i_i_reg_431 <= grp_sin_or_cos_double_s_fu_162_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_reg_387 <= grp_fu_250_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln50_fu_283_p2 == 1'd0))) begin
        trunc_ln_reg_381 <= {{DFTpts_fu_289_p2[10:1]}};
        zext_ln51_reg_375[10 : 0] <= zext_ln51_fu_295_p1[10 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        x_assign_reg_425 <= grp_fu_239_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        X_I_address0 = X_I_addr_reg_466;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state56))) begin
        X_I_address0 = X_I_addr_1_reg_476;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        X_I_address0 = sext_ln65_fu_355_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_I_address0 = grp_bit_reverse_fu_200_X_I_address0;
    end else begin
        X_I_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state36))) begin
        X_I_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_I_ce0 = grp_bit_reverse_fu_200_X_I_ce0;
    end else begin
        X_I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        X_I_d0 = reg_273;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        X_I_d0 = tmp_6_reg_511;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_I_d0 = grp_bit_reverse_fu_200_X_I_d0;
    end else begin
        X_I_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state56))) begin
        X_I_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_I_we0 = grp_bit_reverse_fu_200_X_I_we0;
    end else begin
        X_I_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        X_R_address0 = X_R_addr_reg_461;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state56))) begin
        X_R_address0 = X_R_addr_1_reg_471;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        X_R_address0 = sext_ln65_fu_355_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_R_address0 = grp_bit_reverse_fu_200_X_R_address0;
    end else begin
        X_R_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state36))) begin
        X_R_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_R_ce0 = grp_bit_reverse_fu_200_X_R_ce0;
    end else begin
        X_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        X_R_d0 = reg_267;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        X_R_d0 = tmp_1_reg_506;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_R_d0 = grp_bit_reverse_fu_200_X_R_d0;
    end else begin
        X_R_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state56))) begin
        X_R_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_R_we0 = grp_bit_reverse_fu_200_X_R_we0;
    end else begin
        X_R_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln50_fu_283_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln50_fu_283_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state44) | ((1'b1 == ap_CS_fsm_state33) & (1'b0 == ap_block_state33_on_subcall_done)))) begin
        grp_fu_208_ce = 1'b1;
    end else begin
        grp_fu_208_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_208_opcode = 2'd1;
    end else if (((1'b1 == ap_CS_fsm_state52) | ((1'b1 == ap_CS_fsm_state31) & (icmp_ln57_fu_317_p2 == 1'd0)))) begin
        grp_fu_208_opcode = 2'd0;
    end else begin
        grp_fu_208_opcode = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state45))) begin
        grp_fu_208_p0 = reg_253;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_208_p0 = tmp_7_reg_486;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_208_p0 = a_0_reg_141;
    end else begin
        grp_fu_208_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state45))) begin
        grp_fu_208_p1 = reg_267;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_208_p1 = tmp_8_reg_491;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_208_p1 = e_reg_402;
    end else begin
        grp_fu_208_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_213_opcode = 2'd1;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state41))) begin
        grp_fu_213_opcode = 2'd0;
    end else begin
        grp_fu_213_opcode = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state45))) begin
        grp_fu_213_p0 = reg_260;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_213_p0 = tmp_9_reg_496;
    end else begin
        grp_fu_213_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state45))) begin
        grp_fu_213_p1 = reg_273;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_213_p1 = tmp_s_reg_501;
    end else begin
        grp_fu_213_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_233_p0 = tmp_i_i_reg_431;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_233_p0 = tmp_2_reg_392;
    end else begin
        grp_fu_233_p0 = 'bx;
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
            if (((grp_bit_reverse_fu_200_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln50_fu_283_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
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
            if (((1'b1 == ap_CS_fsm_state31) & (icmp_ln57_fu_317_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            if (((1'b1 == ap_CS_fsm_state33) & (1'b0 == ap_block_state33_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            if (((1'b1 == ap_CS_fsm_state36) & (icmp_ln63_fu_344_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
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
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign DFTpts_fu_289_p2 = 11'd1 << zext_ln50_fu_279_p1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

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

assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];

assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];

assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];

assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];

assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];

assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];

assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];

assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];

assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];

assign ap_CS_fsm_state49 = ap_CS_fsm[32'd48];

assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];

assign ap_CS_fsm_state51 = ap_CS_fsm[32'd50];

assign ap_CS_fsm_state52 = ap_CS_fsm[32'd51];

assign ap_CS_fsm_state53 = ap_CS_fsm[32'd52];

assign ap_CS_fsm_state54 = ap_CS_fsm[32'd53];

assign ap_CS_fsm_state55 = ap_CS_fsm[32'd54];

assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state33_on_subcall_done = ((grp_sin_or_cos_double_s_fu_181_ap_done == 1'b0) | (grp_sin_or_cos_double_s_fu_162_ap_done == 1'b0));
end

assign grp_bit_reverse_fu_200_ap_start = grp_bit_reverse_fu_200_ap_start_reg;

assign grp_fu_250_p0 = DFTpts_fu_289_p2;

assign grp_sin_or_cos_double_s_fu_162_ap_start = grp_sin_or_cos_double_s_fu_162_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_162_do_cos = 1'd1;

assign grp_sin_or_cos_double_s_fu_181_ap_start = grp_sin_or_cos_double_s_fu_181_ap_start_reg;

assign grp_sin_or_cos_double_s_fu_181_do_cos = 1'd0;

assign i_3_fu_367_p2 = ($signed(zext_ln51_reg_375) + $signed(i_0_reg_153));

assign i_cast_fu_313_p1 = i_reg_130;

assign i_lower_fu_350_p2 = ($signed(i_0_reg_153) + $signed(numBF_reg_397));

assign icmp_ln50_fu_283_p2 = ((stage_0_reg_118 == 4'd11) ? 1'b1 : 1'b0);

assign icmp_ln57_fu_317_p2 = ((i_reg_130 == trunc_ln_reg_381) ? 1'b1 : 1'b0);

assign icmp_ln63_fu_344_p2 = (($signed(tmp_11_fu_334_p4) < $signed(22'd1)) ? 1'b1 : 1'b0);

assign j_fu_322_p2 = (i_reg_130 + 10'd1);

assign numBF_fu_310_p1 = trunc_ln_reg_381;

assign sext_ln65_fu_355_p1 = $signed(i_lower_fu_350_p2);

assign sext_ln67_fu_361_p1 = i_0_reg_153;

assign stage_fu_328_p2 = (stage_0_reg_118 + 4'd1);

assign tmp_11_fu_334_p4 = {{i_0_reg_153[31:10]}};

assign zext_ln50_fu_279_p1 = stage_0_reg_118;

assign zext_ln51_fu_295_p1 = DFTpts_fu_289_p2;

always @ (posedge ap_clk) begin
    zext_ln51_reg_375[31:11] <= 21'b000000000000000000000;
    numBF_reg_397[31:10] <= 22'b0000000000000000000000;
    i_cast_reg_407[31:10] <= 22'b0000000000000000000000;
end

endmodule //fft
