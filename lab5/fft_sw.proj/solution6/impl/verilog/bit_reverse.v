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
        X_R_V_address0,
        X_R_V_ce0,
        X_R_V_we0,
        X_R_V_d0,
        X_R_V_q0,
        X_I_V_address0,
        X_I_V_ce0,
        X_I_V_we0,
        X_I_V_d0,
        X_I_V_q0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] X_R_V_address0;
output   X_R_V_ce0;
output   X_R_V_we0;
output  [21:0] X_R_V_d0;
input  [21:0] X_R_V_q0;
output  [9:0] X_I_V_address0;
output   X_I_V_ce0;
output   X_I_V_we0;
output  [21:0] X_I_V_d0;
input  [21:0] X_I_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] X_R_V_address0;
reg X_R_V_ce0;
reg X_R_V_we0;
reg[9:0] X_I_V_address0;
reg X_I_V_ce0;
reg X_I_V_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] i_fu_88_p2;
reg   [10:0] i_reg_129;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln23_fu_108_p2;
reg   [0:0] icmp_ln23_reg_134;
wire   [0:0] icmp_ln21_fu_82_p2;
reg   [9:0] X_R_V_addr_2_reg_138;
reg   [9:0] X_I_V_addr_2_reg_143;
wire    ap_CS_fsm_state3;
reg   [10:0] input_assign_reg_70;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln26_fu_114_p1;
wire   [63:0] zext_ln25_fu_120_p1;
reg   [9:0] reversed_fu_94_p4;
wire   [10:0] zext_ln9_fu_104_p1;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_assign_reg_70 <= i_reg_129;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        input_assign_reg_70 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln21_fu_82_p2 == 1'd0) & (icmp_ln23_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        X_I_V_addr_2_reg_143 <= zext_ln26_fu_114_p1;
        X_R_V_addr_2_reg_138 <= zext_ln26_fu_114_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_129 <= i_fu_88_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln21_fu_82_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln23_reg_134 <= icmp_ln23_fu_108_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        X_I_V_address0 = X_I_V_addr_2_reg_143;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        X_I_V_address0 = zext_ln25_fu_120_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_I_V_address0 = zext_ln26_fu_114_p1;
    end else begin
        X_I_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        X_I_V_ce0 = 1'b1;
    end else begin
        X_I_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln23_reg_134 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        X_I_V_we0 = 1'b1;
    end else begin
        X_I_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        X_R_V_address0 = X_R_V_addr_2_reg_138;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        X_R_V_address0 = zext_ln25_fu_120_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_R_V_address0 = zext_ln26_fu_114_p1;
    end else begin
        X_R_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        X_R_V_ce0 = 1'b1;
    end else begin
        X_R_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((icmp_ln23_reg_134 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        X_R_V_we0 = 1'b1;
    end else begin
        X_R_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln21_fu_82_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln21_fu_82_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((icmp_ln21_fu_82_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln21_fu_82_p2 == 1'd0) & (icmp_ln23_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign X_I_V_d0 = X_I_V_q0;

assign X_R_V_d0 = X_R_V_q0;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign i_fu_88_p2 = (input_assign_reg_70 + 11'd1);

assign icmp_ln21_fu_82_p2 = ((input_assign_reg_70 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln23_fu_108_p2 = ((input_assign_reg_70 > zext_ln9_fu_104_p1) ? 1'b1 : 1'b0);

integer ap_tvar_int_0;

always @ (input_assign_reg_70) begin
    for (ap_tvar_int_0 = 10 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 9 - 0) begin
            reversed_fu_94_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            reversed_fu_94_p4[ap_tvar_int_0] = input_assign_reg_70[9 - ap_tvar_int_0];
        end
    end
end

assign zext_ln25_fu_120_p1 = input_assign_reg_70;

assign zext_ln26_fu_114_p1 = reversed_fu_94_p4;

assign zext_ln9_fu_104_p1 = reversed_fu_94_p4;

endmodule //bit_reverse
