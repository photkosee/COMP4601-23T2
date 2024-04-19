#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("M_address0", 6, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("M_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("M_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("V_In_address0", 3, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("V_In_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("V_In_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("V_Out_address0", 3, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("V_Out_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("V_Out_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("V_Out_d0", 32, hls_out, 2, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "matrix_vector";
