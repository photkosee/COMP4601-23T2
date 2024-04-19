// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bit_reverse (
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

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

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
reg[9:0] X_I_address0;
reg X_I_ce0;
reg X_I_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] trunc_ln21_fu_127_p1;
wire    ap_CS_fsm_state2;
wire   [31:0] zext_ln21_fu_131_p1;
reg   [31:0] zext_ln21_reg_211;
wire   [10:0] i_4_fu_141_p2;
reg   [10:0] i_4_reg_219;
wire   [3:0] i_fu_153_p2;
wire    ap_CS_fsm_state3;
wire   [31:0] rev_fu_167_p3;
wire   [0:0] icmp_ln8_fu_147_p2;
wire   [9:0] zext_ln10_fu_185_p1;
wire   [0:0] icmp_ln23_fu_189_p2;
reg   [0:0] icmp_ln23_reg_242;
reg   [9:0] X_R_addr_2_reg_246;
reg   [9:0] X_I_addr_2_reg_251;
wire    ap_CS_fsm_state4;
reg   [10:0] input_assign_reg_84;
wire    ap_CS_fsm_state5;
reg   [31:0] reversed_reg_96;
wire   [0:0] icmp_ln21_fu_135_p2;
reg   [3:0] i_0_i_reg_107;
reg   [9:0] p_0_i_reg_118;
wire   [63:0] zext_ln26_fu_194_p1;
wire   [63:0] zext_ln25_fu_200_p1;
wire   [30:0] trunc_ln9_fu_159_p1;
wire   [0:0] trunc_ln8_fu_163_p1;
wire   [8:0] input_assign_1_fu_175_p4;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_i_reg_107 <= i_fu_153_p2;
    end else if (((icmp_ln21_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_reg_107 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_assign_reg_84 <= i_4_reg_219;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        input_assign_reg_84 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        p_0_i_reg_118 <= zext_ln10_fu_185_p1;
    end else if (((icmp_ln21_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_0_i_reg_118 <= trunc_ln21_fu_127_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        reversed_reg_96 <= rev_fu_167_p3;
    end else if (((icmp_ln21_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        reversed_reg_96 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln23_fu_189_p2 == 1'd0) & (icmp_ln8_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        X_I_addr_2_reg_251 <= zext_ln26_fu_194_p1;
        X_R_addr_2_reg_246 <= zext_ln26_fu_194_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_4_reg_219 <= i_4_fu_141_p2;
        zext_ln21_reg_211[10 : 0] <= zext_ln21_fu_131_p1[10 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        icmp_ln23_reg_242 <= icmp_ln23_fu_189_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        X_I_address0 = X_I_addr_2_reg_251;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_I_address0 = zext_ln25_fu_200_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        X_I_address0 = zext_ln26_fu_194_p1;
    end else begin
        X_I_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        X_I_ce0 = 1'b1;
    end else begin
        X_I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((icmp_ln23_reg_242 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        X_I_we0 = 1'b1;
    end else begin
        X_I_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        X_R_address0 = X_R_addr_2_reg_246;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        X_R_address0 = zext_ln25_fu_200_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        X_R_address0 = zext_ln26_fu_194_p1;
    end else begin
        X_R_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        X_R_ce0 = 1'b1;
    end else begin
        X_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((icmp_ln23_reg_242 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        X_R_we0 = 1'b1;
    end else begin
        X_R_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln21_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln21_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((icmp_ln21_fu_135_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln23_fu_189_p2 == 1'd1) & (icmp_ln8_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if (((icmp_ln23_fu_189_p2 == 1'd0) & (icmp_ln8_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign X_I_d0 = X_I_q0;

assign X_R_d0 = X_R_q0;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign i_4_fu_141_p2 = (11'd1 + input_assign_reg_84);

assign i_fu_153_p2 = (i_0_i_reg_107 + 4'd1);

assign icmp_ln21_fu_135_p2 = ((input_assign_reg_84 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln23_fu_189_p2 = ((zext_ln21_reg_211 > reversed_reg_96) ? 1'b1 : 1'b0);

assign icmp_ln8_fu_147_p2 = ((i_0_i_reg_107 == 4'd10) ? 1'b1 : 1'b0);

assign input_assign_1_fu_175_p4 = {{p_0_i_reg_118[9:1]}};

assign rev_fu_167_p3 = {{trunc_ln9_fu_159_p1}, {trunc_ln8_fu_163_p1}};

assign trunc_ln21_fu_127_p1 = input_assign_reg_84[9:0];

assign trunc_ln8_fu_163_p1 = p_0_i_reg_118[0:0];

assign trunc_ln9_fu_159_p1 = reversed_reg_96[30:0];

assign zext_ln10_fu_185_p1 = input_assign_1_fu_175_p4;

assign zext_ln21_fu_131_p1 = input_assign_reg_84;

assign zext_ln25_fu_200_p1 = input_assign_reg_84;

assign zext_ln26_fu_194_p1 = reversed_reg_96;

always @ (posedge ap_clk) begin
    zext_ln21_reg_211[31:11] <= 21'b000000000000000000000;
end

endmodule //bit_reverse
