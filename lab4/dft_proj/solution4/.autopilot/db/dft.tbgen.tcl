set moduleName dft
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dft}
set C_modelType { void 0 }
set C_modelArgList {
	{ sample_real_V int 16 regular {array 256 { 2 3 } 1 1 }  }
	{ sample_imag_V int 16 regular {array 256 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sample_real_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "sample_real.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "sample_imag_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "sample_imag.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sample_real_V_address0 sc_out sc_lv 8 signal 0 } 
	{ sample_real_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ sample_real_V_we0 sc_out sc_logic 1 signal 0 } 
	{ sample_real_V_d0 sc_out sc_lv 16 signal 0 } 
	{ sample_real_V_q0 sc_in sc_lv 16 signal 0 } 
	{ sample_imag_V_address0 sc_out sc_lv 8 signal 1 } 
	{ sample_imag_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ sample_imag_V_we0 sc_out sc_logic 1 signal 1 } 
	{ sample_imag_V_d0 sc_out sc_lv 16 signal 1 } 
	{ sample_imag_V_q0 sc_in sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sample_real_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sample_real_V", "role": "address0" }} , 
 	{ "name": "sample_real_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sample_real_V", "role": "ce0" }} , 
 	{ "name": "sample_real_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sample_real_V", "role": "we0" }} , 
 	{ "name": "sample_real_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sample_real_V", "role": "d0" }} , 
 	{ "name": "sample_real_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sample_real_V", "role": "q0" }} , 
 	{ "name": "sample_imag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sample_imag_V", "role": "address0" }} , 
 	{ "name": "sample_imag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sample_imag_V", "role": "ce0" }} , 
 	{ "name": "sample_imag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sample_imag_V", "role": "we0" }} , 
 	{ "name": "sample_imag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sample_imag_V", "role": "d0" }} , 
 	{ "name": "sample_imag_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sample_imag_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "dft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138754", "EstimateLatencyMax" : "138754",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sample_real_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sample_imag_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_292", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_292", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_292", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_292", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_292", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_sin_or_cos_double_s_fu_292", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_real_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_imag_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.ref_4oPi_table_256_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.fourth_order_double_4_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.fourth_order_double_5_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.fourth_order_double_6_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.fourth_order_double_7_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.fourth_order_double_s_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.dft_mul_170ns_53nhbi_U1", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.dft_mux_83_1_1_1_U2", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.dft_mux_164_1_1_1_U3", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_292.dft_mux_164_1_1_1_U4", "Parent" : "3"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dft_dmul_64ns_64nibs_U17", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dft_sitodp_32ns_6jbC_U18", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dft_mul_mul_16s_9kbM_U19", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dft_mul_mul_16s_1lbW_U20", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dft_mul_mul_16s_1lbW_U21", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dft_mac_mulsub_16mb6_U22", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dft_mac_muladd_16ncg_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dft {
		sample_real_V {Type IO LastRead 26 FirstWrite 3}
		sample_imag_V {Type IO LastRead 26 FirstWrite 3}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "138754", "Max" : "138754"}
	, {"Name" : "Interval", "Min" : "138755", "Max" : "138755"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sample_real_V { ap_memory {  { sample_real_V_address0 mem_address 1 8 }  { sample_real_V_ce0 mem_ce 1 1 }  { sample_real_V_we0 mem_we 1 1 }  { sample_real_V_d0 mem_din 1 16 }  { sample_real_V_q0 mem_dout 0 16 } } }
	sample_imag_V { ap_memory {  { sample_imag_V_address0 mem_address 1 8 }  { sample_imag_V_ce0 mem_ce 1 1 }  { sample_imag_V_we0 mem_we 1 1 }  { sample_imag_V_d0 mem_din 1 16 }  { sample_imag_V_q0 mem_dout 0 16 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
