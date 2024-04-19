// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bit_reverse25 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        X_R_V_address0,
        X_R_V_ce0,
        X_R_V_q0,
        X_R_V_address1,
        X_R_V_ce1,
        X_R_V_q1,
        X_I_V_address0,
        X_I_V_ce0,
        X_I_V_q0,
        X_I_V_address1,
        X_I_V_ce1,
        X_I_V_q1,
        OUT_R_V_address0,
        OUT_R_V_ce0,
        OUT_R_V_we0,
        OUT_R_V_d0,
        OUT_R_V_address1,
        OUT_R_V_ce1,
        OUT_R_V_we1,
        OUT_R_V_d1,
        OUT_I_V_address0,
        OUT_I_V_ce0,
        OUT_I_V_we0,
        OUT_I_V_d0,
        OUT_I_V_address1,
        OUT_I_V_ce1,
        OUT_I_V_we1,
        OUT_I_V_d1
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] X_R_V_address0;
output   X_R_V_ce0;
input  [21:0] X_R_V_q0;
output  [9:0] X_R_V_address1;
output   X_R_V_ce1;
input  [21:0] X_R_V_q1;
output  [9:0] X_I_V_address0;
output   X_I_V_ce0;
input  [21:0] X_I_V_q0;
output  [9:0] X_I_V_address1;
output   X_I_V_ce1;
input  [21:0] X_I_V_q1;
output  [9:0] OUT_R_V_address0;
output   OUT_R_V_ce0;
output   OUT_R_V_we0;
output  [21:0] OUT_R_V_d0;
output  [9:0] OUT_R_V_address1;
output   OUT_R_V_ce1;
output   OUT_R_V_we1;
output  [21:0] OUT_R_V_d1;
output  [9:0] OUT_I_V_address0;
output   OUT_I_V_ce0;
output   OUT_I_V_we0;
output  [21:0] OUT_I_V_d0;
output  [9:0] OUT_I_V_address1;
output   OUT_I_V_ce1;
output   OUT_I_V_we1;
output  [21:0] OUT_I_V_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg X_R_V_ce0;
reg X_R_V_ce1;
reg X_I_V_ce0;
reg X_I_V_ce1;
reg OUT_R_V_ce0;
reg OUT_R_V_we0;
reg OUT_R_V_ce1;
reg OUT_R_V_we1;
reg OUT_I_V_ce0;
reg OUT_I_V_we0;
reg OUT_I_V_ce1;
reg OUT_I_V_we1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [10:0] input_assign_reg_146;
wire   [0:0] icmp_ln24_fu_158_p2;
reg   [0:0] icmp_ln24_reg_204;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] i_fu_164_p2;
reg   [10:0] i_reg_208;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln26_fu_184_p2;
reg   [0:0] icmp_ln26_reg_213;
reg   [0:0] icmp_ln26_reg_213_pp0_iter1_reg;
wire   [63:0] zext_ln29_fu_190_p1;
reg   [63:0] zext_ln29_reg_217;
reg   [63:0] zext_ln29_reg_217_pp0_iter1_reg;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg   [10:0] ap_phi_mux_input_assign_phi_fu_150_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_196_p1;
reg   [9:0] reversed_fu_170_p4;
wire   [10:0] zext_ln11_fu_180_p1;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_block_pp0;
reg    ap_enable_operation_26;
reg    ap_enable_state3_pp0_iter1_stage0;
reg    ap_enable_operation_37;
reg    ap_enable_state4_pp0_iter2_stage0;
reg    ap_enable_operation_31;
reg    ap_enable_operation_40;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln24_reg_204 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        input_assign_reg_146 <= i_reg_208;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        input_assign_reg_146 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_208 <= i_fu_164_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln24_reg_204 <= icmp_ln24_fu_158_p2;
        icmp_ln26_reg_213_pp0_iter1_reg <= icmp_ln26_reg_213;
        zext_ln29_reg_217_pp0_iter1_reg[9 : 0] <= zext_ln29_reg_217[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln24_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln26_reg_213 <= icmp_ln26_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_fu_184_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln24_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln29_reg_217[9 : 0] <= zext_ln29_fu_190_p1[9 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        OUT_I_V_ce0 = 1'b1;
    end else begin
        OUT_I_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OUT_I_V_ce1 = 1'b1;
    end else begin
        OUT_I_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln26_reg_213 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        OUT_I_V_we0 = 1'b1;
    end else begin
        OUT_I_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln26_reg_213_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OUT_I_V_we1 = 1'b1;
    end else begin
        OUT_I_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        OUT_R_V_ce0 = 1'b1;
    end else begin
        OUT_R_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OUT_R_V_ce1 = 1'b1;
    end else begin
        OUT_R_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln26_reg_213 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        OUT_R_V_we0 = 1'b1;
    end else begin
        OUT_R_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln26_reg_213_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OUT_R_V_we1 = 1'b1;
    end else begin
        OUT_R_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_I_V_ce0 = 1'b1;
    end else begin
        X_I_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        X_I_V_ce1 = 1'b1;
    end else begin
        X_I_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_R_V_ce0 = 1'b1;
    end else begin
        X_R_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        X_R_V_ce1 = 1'b1;
    end else begin
        X_R_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln24_fu_158_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln24_reg_204 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_input_assign_phi_fu_150_p4 = i_reg_208;
    end else begin
        ap_phi_mux_input_assign_phi_fu_150_p4 = input_assign_reg_146;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln24_fu_158_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln24_fu_158_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OUT_I_V_address0 = zext_ln28_fu_196_p1;

assign OUT_I_V_address1 = zext_ln29_reg_217_pp0_iter1_reg;

assign OUT_I_V_d0 = X_I_V_q0;

assign OUT_I_V_d1 = X_I_V_q1;

assign OUT_R_V_address0 = zext_ln28_fu_196_p1;

assign OUT_R_V_address1 = zext_ln29_reg_217_pp0_iter1_reg;

assign OUT_R_V_d0 = X_R_V_q0;

assign OUT_R_V_d1 = X_R_V_q1;

assign X_I_V_address0 = zext_ln29_fu_190_p1;

assign X_I_V_address1 = zext_ln28_fu_196_p1;

assign X_R_V_address0 = zext_ln29_fu_190_p1;

assign X_R_V_address1 = zext_ln28_fu_196_p1;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_26 = (icmp_ln26_reg_213 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_31 = (icmp_ln26_reg_213 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_37 = (icmp_ln26_reg_213_pp0_iter1_reg == 1'd0);
end

always @ (*) begin
    ap_enable_operation_40 = (icmp_ln26_reg_213_pp0_iter1_reg == 1'd0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_enable_state3_pp0_iter1_stage0 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_enable_state4_pp0_iter2_stage0 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign i_fu_164_p2 = (ap_phi_mux_input_assign_phi_fu_150_p4 + 11'd1);

assign icmp_ln24_fu_158_p2 = ((ap_phi_mux_input_assign_phi_fu_150_p4 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln26_fu_184_p2 = ((ap_phi_mux_input_assign_phi_fu_150_p4 > zext_ln11_fu_180_p1) ? 1'b1 : 1'b0);

integer ap_tvar_int_0;

always @ (ap_phi_mux_input_assign_phi_fu_150_p4) begin
    for (ap_tvar_int_0 = 10 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 9 - 0) begin
            reversed_fu_170_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            reversed_fu_170_p4[ap_tvar_int_0] = ap_phi_mux_input_assign_phi_fu_150_p4[9 - ap_tvar_int_0];
        end
    end
end

assign zext_ln11_fu_180_p1 = reversed_fu_170_p4;

assign zext_ln28_fu_196_p1 = input_assign_reg_146;

assign zext_ln29_fu_190_p1 = reversed_fu_170_p4;

always @ (posedge ap_clk) begin
    zext_ln29_reg_217[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln29_reg_217_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end

endmodule //bit_reverse25