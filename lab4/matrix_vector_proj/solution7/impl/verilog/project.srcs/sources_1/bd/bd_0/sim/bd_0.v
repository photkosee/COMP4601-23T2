//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Jun 21 14:44:58 2023
//Host        : LAPTOP-HIKTNO12 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (M_0_address0,
    M_0_address1,
    M_0_ce0,
    M_0_ce1,
    M_0_q0,
    M_0_q1,
    M_1_address0,
    M_1_address1,
    M_1_ce0,
    M_1_ce1,
    M_1_q0,
    M_1_q1,
    V_In_0_address0,
    V_In_0_address1,
    V_In_0_ce0,
    V_In_0_ce1,
    V_In_0_q0,
    V_In_0_q1,
    V_In_1_address0,
    V_In_1_address1,
    V_In_1_ce0,
    V_In_1_ce1,
    V_In_1_q0,
    V_In_1_q1,
    V_Out_address0,
    V_Out_ce0,
    V_Out_d0,
    V_Out_we0,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_0_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_0_ADDRESS0, LAYERED_METADATA undef" *) output [4:0]M_0_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_0_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_0_ADDRESS1, LAYERED_METADATA undef" *) output [4:0]M_0_address1;
  output M_0_ce0;
  output M_0_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_0_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_0_Q0, LAYERED_METADATA undef" *) input [31:0]M_0_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_0_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_0_Q1, LAYERED_METADATA undef" *) input [31:0]M_0_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_1_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_1_ADDRESS0, LAYERED_METADATA undef" *) output [4:0]M_1_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_1_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_1_ADDRESS1, LAYERED_METADATA undef" *) output [4:0]M_1_address1;
  output M_1_ce0;
  output M_1_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_1_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_1_Q0, LAYERED_METADATA undef" *) input [31:0]M_1_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_1_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_1_Q1, LAYERED_METADATA undef" *) input [31:0]M_1_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_IN_0_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_IN_0_ADDRESS0, LAYERED_METADATA undef" *) output [1:0]V_In_0_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_IN_0_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_IN_0_ADDRESS1, LAYERED_METADATA undef" *) output [1:0]V_In_0_address1;
  output V_In_0_ce0;
  output V_In_0_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_IN_0_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_IN_0_Q0, LAYERED_METADATA undef" *) input [31:0]V_In_0_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_IN_0_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_IN_0_Q1, LAYERED_METADATA undef" *) input [31:0]V_In_0_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_IN_1_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_IN_1_ADDRESS0, LAYERED_METADATA undef" *) output [1:0]V_In_1_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_IN_1_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_IN_1_ADDRESS1, LAYERED_METADATA undef" *) output [1:0]V_In_1_address1;
  output V_In_1_ce0;
  output V_In_1_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_IN_1_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_IN_1_Q0, LAYERED_METADATA undef" *) input [31:0]V_In_1_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_IN_1_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_IN_1_Q1, LAYERED_METADATA undef" *) input [31:0]V_In_1_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_OUT_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_OUT_ADDRESS0, LAYERED_METADATA undef" *) output [2:0]V_Out_address0;
  output V_Out_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.V_OUT_D0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.V_OUT_D0, LAYERED_METADATA undef" *) output [31:0]V_Out_d0;
  output V_Out_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 125000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;

  wire [31:0]M_0_q0_0_1;
  wire [31:0]M_0_q1_0_1;
  wire [31:0]M_1_q0_0_1;
  wire [31:0]M_1_q1_0_1;
  wire [31:0]V_In_0_q0_0_1;
  wire [31:0]V_In_0_q1_0_1;
  wire [31:0]V_In_1_q0_0_1;
  wire [31:0]V_In_1_q1_0_1;
  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire [4:0]hls_inst_M_0_address0;
  wire [4:0]hls_inst_M_0_address1;
  wire hls_inst_M_0_ce0;
  wire hls_inst_M_0_ce1;
  wire [4:0]hls_inst_M_1_address0;
  wire [4:0]hls_inst_M_1_address1;
  wire hls_inst_M_1_ce0;
  wire hls_inst_M_1_ce1;
  wire [1:0]hls_inst_V_In_0_address0;
  wire [1:0]hls_inst_V_In_0_address1;
  wire hls_inst_V_In_0_ce0;
  wire hls_inst_V_In_0_ce1;
  wire [1:0]hls_inst_V_In_1_address0;
  wire [1:0]hls_inst_V_In_1_address1;
  wire hls_inst_V_In_1_ce0;
  wire hls_inst_V_In_1_ce1;
  wire [2:0]hls_inst_V_Out_address0;
  wire hls_inst_V_Out_ce0;
  wire [31:0]hls_inst_V_Out_d0;
  wire hls_inst_V_Out_we0;

  assign M_0_address0[4:0] = hls_inst_M_0_address0;
  assign M_0_address1[4:0] = hls_inst_M_0_address1;
  assign M_0_ce0 = hls_inst_M_0_ce0;
  assign M_0_ce1 = hls_inst_M_0_ce1;
  assign M_0_q0_0_1 = M_0_q0[31:0];
  assign M_0_q1_0_1 = M_0_q1[31:0];
  assign M_1_address0[4:0] = hls_inst_M_1_address0;
  assign M_1_address1[4:0] = hls_inst_M_1_address1;
  assign M_1_ce0 = hls_inst_M_1_ce0;
  assign M_1_ce1 = hls_inst_M_1_ce1;
  assign M_1_q0_0_1 = M_1_q0[31:0];
  assign M_1_q1_0_1 = M_1_q1[31:0];
  assign V_In_0_address0[1:0] = hls_inst_V_In_0_address0;
  assign V_In_0_address1[1:0] = hls_inst_V_In_0_address1;
  assign V_In_0_ce0 = hls_inst_V_In_0_ce0;
  assign V_In_0_ce1 = hls_inst_V_In_0_ce1;
  assign V_In_0_q0_0_1 = V_In_0_q0[31:0];
  assign V_In_0_q1_0_1 = V_In_0_q1[31:0];
  assign V_In_1_address0[1:0] = hls_inst_V_In_1_address0;
  assign V_In_1_address1[1:0] = hls_inst_V_In_1_address1;
  assign V_In_1_ce0 = hls_inst_V_In_1_ce0;
  assign V_In_1_ce1 = hls_inst_V_In_1_ce1;
  assign V_In_1_q0_0_1 = V_In_1_q0[31:0];
  assign V_In_1_q1_0_1 = V_In_1_q1[31:0];
  assign V_Out_address0[2:0] = hls_inst_V_Out_address0;
  assign V_Out_ce0 = hls_inst_V_Out_ce0;
  assign V_Out_d0[31:0] = hls_inst_V_Out_d0;
  assign V_Out_we0 = hls_inst_V_Out_we0;
  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_0_1 = ap_rst;
  bd_0_hls_inst_0 hls_inst
       (.M_0_address0(hls_inst_M_0_address0),
        .M_0_address1(hls_inst_M_0_address1),
        .M_0_ce0(hls_inst_M_0_ce0),
        .M_0_ce1(hls_inst_M_0_ce1),
        .M_0_q0(M_0_q0_0_1),
        .M_0_q1(M_0_q1_0_1),
        .M_1_address0(hls_inst_M_1_address0),
        .M_1_address1(hls_inst_M_1_address1),
        .M_1_ce0(hls_inst_M_1_ce0),
        .M_1_ce1(hls_inst_M_1_ce1),
        .M_1_q0(M_1_q0_0_1),
        .M_1_q1(M_1_q1_0_1),
        .V_In_0_address0(hls_inst_V_In_0_address0),
        .V_In_0_address1(hls_inst_V_In_0_address1),
        .V_In_0_ce0(hls_inst_V_In_0_ce0),
        .V_In_0_ce1(hls_inst_V_In_0_ce1),
        .V_In_0_q0(V_In_0_q0_0_1),
        .V_In_0_q1(V_In_0_q1_0_1),
        .V_In_1_address0(hls_inst_V_In_1_address0),
        .V_In_1_address1(hls_inst_V_In_1_address1),
        .V_In_1_ce0(hls_inst_V_In_1_ce0),
        .V_In_1_ce1(hls_inst_V_In_1_ce1),
        .V_In_1_q0(V_In_1_q0_0_1),
        .V_In_1_q1(V_In_1_q1_0_1),
        .V_Out_address0(hls_inst_V_Out_address0),
        .V_Out_ce0(hls_inst_V_Out_ce0),
        .V_Out_d0(hls_inst_V_Out_d0),
        .V_Out_we0(hls_inst_V_Out_we0),
        .ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start));
endmodule
