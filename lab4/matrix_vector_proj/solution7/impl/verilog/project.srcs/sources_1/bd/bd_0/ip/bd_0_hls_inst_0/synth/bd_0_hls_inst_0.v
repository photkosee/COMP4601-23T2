// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:matrix_vector:1.0
// IP Revision: 2113085144

(* X_CORE_INFO = "matrix_vector,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,matrix_vector,{}" *)
(* CORE_GENERATION_INFO = "bd_0_hls_inst_0,matrix_vector,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=matrix_vector,x_ipVersion=1.0,x_ipCoreRevision=2113085144,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  M_0_ce0,
  M_0_ce1,
  M_1_ce0,
  M_1_ce1,
  V_In_0_ce0,
  V_In_0_ce1,
  V_In_1_ce0,
  V_In_1_ce1,
  V_Out_ce0,
  V_Out_we0,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  M_0_address0,
  M_0_q0,
  M_0_address1,
  M_0_q1,
  M_1_address0,
  M_1_q0,
  M_1_address1,
  M_1_q1,
  V_In_0_address0,
  V_In_0_q0,
  V_In_0_address1,
  V_In_0_q1,
  V_In_1_address0,
  V_In_1_q0,
  V_In_1_address1,
  V_In_1_q1,
  V_Out_address0,
  V_Out_d0
);

output wire M_0_ce0;
output wire M_0_ce1;
output wire M_1_ce0;
output wire M_1_ce1;
output wire V_In_0_ce0;
output wire V_In_0_ce1;
output wire V_In_1_ce0;
output wire V_In_1_ce1;
output wire V_Out_ce0;
output wire V_Out_we0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 125000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_0_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 M_0_address0 DATA" *)
output wire [4 : 0] M_0_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_0_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 M_0_q0 DATA" *)
input wire [31 : 0] M_0_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_0_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 M_0_address1 DATA" *)
output wire [4 : 0] M_0_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_0_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 M_0_q1 DATA" *)
input wire [31 : 0] M_0_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_1_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 M_1_address0 DATA" *)
output wire [4 : 0] M_1_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_1_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 M_1_q0 DATA" *)
input wire [31 : 0] M_1_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_1_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 M_1_address1 DATA" *)
output wire [4 : 0] M_1_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_1_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 M_1_q1 DATA" *)
input wire [31 : 0] M_1_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_In_0_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_In_0_address0 DATA" *)
output wire [1 : 0] V_In_0_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_In_0_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_In_0_q0 DATA" *)
input wire [31 : 0] V_In_0_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_In_0_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_In_0_address1 DATA" *)
output wire [1 : 0] V_In_0_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_In_0_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_In_0_q1 DATA" *)
input wire [31 : 0] V_In_0_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_In_1_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_In_1_address0 DATA" *)
output wire [1 : 0] V_In_1_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_In_1_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_In_1_q0 DATA" *)
input wire [31 : 0] V_In_1_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_In_1_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_In_1_address1 DATA" *)
output wire [1 : 0] V_In_1_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_In_1_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_In_1_q1 DATA" *)
input wire [31 : 0] V_In_1_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_Out_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_Out_address0 DATA" *)
output wire [2 : 0] V_Out_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME V_Out_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 V_Out_d0 DATA" *)
output wire [31 : 0] V_Out_d0;

  matrix_vector inst (
    .M_0_ce0(M_0_ce0),
    .M_0_ce1(M_0_ce1),
    .M_1_ce0(M_1_ce0),
    .M_1_ce1(M_1_ce1),
    .V_In_0_ce0(V_In_0_ce0),
    .V_In_0_ce1(V_In_0_ce1),
    .V_In_1_ce0(V_In_1_ce0),
    .V_In_1_ce1(V_In_1_ce1),
    .V_Out_ce0(V_Out_ce0),
    .V_Out_we0(V_Out_we0),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .M_0_address0(M_0_address0),
    .M_0_q0(M_0_q0),
    .M_0_address1(M_0_address1),
    .M_0_q1(M_0_q1),
    .M_1_address0(M_1_address0),
    .M_1_q0(M_1_q0),
    .M_1_address1(M_1_address1),
    .M_1_q1(M_1_q1),
    .V_In_0_address0(V_In_0_address0),
    .V_In_0_q0(V_In_0_q0),
    .V_In_0_address1(V_In_0_address1),
    .V_In_0_q1(V_In_0_q1),
    .V_In_1_address0(V_In_1_address0),
    .V_In_1_q0(V_In_1_q0),
    .V_In_1_address1(V_In_1_address1),
    .V_In_1_q1(V_In_1_q1),
    .V_Out_address0(V_Out_address0),
    .V_Out_d0(V_Out_d0)
  );
endmodule
