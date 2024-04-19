set moduleName fft_streaming
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fft_streaming}
set C_modelType { void 0 }
set C_modelArgList {
	{ X_R_V int 22 regular {array 1024 { 1 1 } 1 1 }  }
	{ X_I_V int 22 regular {array 1024 { 1 1 } 1 1 }  }
	{ OUT_R_V int 22 regular {array 1024 { 0 0 } 0 1 }  }
	{ OUT_I_V int 22 regular {array 1024 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X_R_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READONLY", "bitSlice":[{"low":0,"up":21,"cElement": [{"cName": "X_R.V","cData": "int22","bit_use": { "low": 0,"up": 21},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "X_I_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READONLY", "bitSlice":[{"low":0,"up":21,"cElement": [{"cName": "X_I.V","cData": "int22","bit_use": { "low": 0,"up": 21},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "OUT_R_V", "interface" : "memory", "bitwidth" : 22, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":21,"cElement": [{"cName": "OUT_R.V","cData": "int22","bit_use": { "low": 0,"up": 21},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "OUT_I_V", "interface" : "memory", "bitwidth" : 22, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":21,"cElement": [{"cName": "OUT_I.V","cData": "int22","bit_use": { "low": 0,"up": 21},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ X_R_V_address0 sc_out sc_lv 10 signal 0 } 
	{ X_R_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ X_R_V_d0 sc_out sc_lv 22 signal 0 } 
	{ X_R_V_q0 sc_in sc_lv 22 signal 0 } 
	{ X_R_V_we0 sc_out sc_logic 1 signal 0 } 
	{ X_R_V_address1 sc_out sc_lv 10 signal 0 } 
	{ X_R_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ X_R_V_d1 sc_out sc_lv 22 signal 0 } 
	{ X_R_V_q1 sc_in sc_lv 22 signal 0 } 
	{ X_R_V_we1 sc_out sc_logic 1 signal 0 } 
	{ X_I_V_address0 sc_out sc_lv 10 signal 1 } 
	{ X_I_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ X_I_V_d0 sc_out sc_lv 22 signal 1 } 
	{ X_I_V_q0 sc_in sc_lv 22 signal 1 } 
	{ X_I_V_we0 sc_out sc_logic 1 signal 1 } 
	{ X_I_V_address1 sc_out sc_lv 10 signal 1 } 
	{ X_I_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ X_I_V_d1 sc_out sc_lv 22 signal 1 } 
	{ X_I_V_q1 sc_in sc_lv 22 signal 1 } 
	{ X_I_V_we1 sc_out sc_logic 1 signal 1 } 
	{ OUT_R_V_address0 sc_out sc_lv 10 signal 2 } 
	{ OUT_R_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_V_d0 sc_out sc_lv 22 signal 2 } 
	{ OUT_R_V_q0 sc_in sc_lv 22 signal 2 } 
	{ OUT_R_V_we0 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_V_address1 sc_out sc_lv 10 signal 2 } 
	{ OUT_R_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_V_d1 sc_out sc_lv 22 signal 2 } 
	{ OUT_R_V_q1 sc_in sc_lv 22 signal 2 } 
	{ OUT_R_V_we1 sc_out sc_logic 1 signal 2 } 
	{ OUT_I_V_address0 sc_out sc_lv 10 signal 3 } 
	{ OUT_I_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_V_d0 sc_out sc_lv 22 signal 3 } 
	{ OUT_I_V_q0 sc_in sc_lv 22 signal 3 } 
	{ OUT_I_V_we0 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_V_address1 sc_out sc_lv 10 signal 3 } 
	{ OUT_I_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_V_d1 sc_out sc_lv 22 signal 3 } 
	{ OUT_I_V_q1 sc_in sc_lv 22 signal 3 } 
	{ OUT_I_V_we1 sc_out sc_logic 1 signal 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "X_R_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R_V", "role": "address0" }} , 
 	{ "name": "X_R_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "ce0" }} , 
 	{ "name": "X_R_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "d0" }} , 
 	{ "name": "X_R_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "q0" }} , 
 	{ "name": "X_R_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "we0" }} , 
 	{ "name": "X_R_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R_V", "role": "address1" }} , 
 	{ "name": "X_R_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "ce1" }} , 
 	{ "name": "X_R_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "d1" }} , 
 	{ "name": "X_R_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "q1" }} , 
 	{ "name": "X_R_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "we1" }} , 
 	{ "name": "X_I_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I_V", "role": "address0" }} , 
 	{ "name": "X_I_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "ce0" }} , 
 	{ "name": "X_I_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "d0" }} , 
 	{ "name": "X_I_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "q0" }} , 
 	{ "name": "X_I_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "we0" }} , 
 	{ "name": "X_I_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I_V", "role": "address1" }} , 
 	{ "name": "X_I_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "ce1" }} , 
 	{ "name": "X_I_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "d1" }} , 
 	{ "name": "X_I_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "q1" }} , 
 	{ "name": "X_I_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "we1" }} , 
 	{ "name": "OUT_R_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "address0" }} , 
 	{ "name": "OUT_R_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "ce0" }} , 
 	{ "name": "OUT_R_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "d0" }} , 
 	{ "name": "OUT_R_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "q0" }} , 
 	{ "name": "OUT_R_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "we0" }} , 
 	{ "name": "OUT_R_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "address1" }} , 
 	{ "name": "OUT_R_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "ce1" }} , 
 	{ "name": "OUT_R_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "d1" }} , 
 	{ "name": "OUT_R_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "q1" }} , 
 	{ "name": "OUT_R_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "we1" }} , 
 	{ "name": "OUT_I_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "address0" }} , 
 	{ "name": "OUT_I_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "ce0" }} , 
 	{ "name": "OUT_I_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "d0" }} , 
 	{ "name": "OUT_I_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "q0" }} , 
 	{ "name": "OUT_I_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "we0" }} , 
 	{ "name": "OUT_I_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "address1" }} , 
 	{ "name": "OUT_I_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "ce1" }} , 
 	{ "name": "OUT_I_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "d1" }} , 
 	{ "name": "OUT_I_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "q1" }} , 
 	{ "name": "OUT_I_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "we1" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "30", "37", "44", "51", "58", "65", "72", "79"],
		"CDFG" : "fft_streaming",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7209", "EstimateLatencyMax" : "7209",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "21", "Name" : "bit_reverse25_U0"}],
		"OutputProcess" : [
			{"ID" : "79", "Name" : "fft_stage35_U0"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "bit_reverse25_U0", "Port" : "X_R_V"}]},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "bit_reverse25_U0", "Port" : "X_I_V"}]},
			{"Name" : "OUT_R_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "fft_stage35_U0", "Port" : "Out_R_V"}]},
			{"Name" : "OUT_I_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "fft_stage35_U0", "Port" : "Out_I_V"}]},
			{"Name" : "W_real_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "fft_stage_127_U0", "Port" : "W_real_V"}]},
			{"Name" : "W_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "fft_stage_127_U0", "Port" : "W_imag_V"}]},
			{"Name" : "W_real_V55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "fft_stage_128_U0", "Port" : "W_real_V55"}]},
			{"Name" : "W_imag_V47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "fft_stage_128_U0", "Port" : "W_imag_V47"}]},
			{"Name" : "W_real_V56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fft_stage_129_U0", "Port" : "W_real_V56"}]},
			{"Name" : "W_imag_V48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "fft_stage_129_U0", "Port" : "W_imag_V48"}]},
			{"Name" : "W_real_V57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fft_stage_130_U0", "Port" : "W_real_V57"}]},
			{"Name" : "W_imag_V49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fft_stage_130_U0", "Port" : "W_imag_V49"}]},
			{"Name" : "W_real_V58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "fft_stage_131_U0", "Port" : "W_real_V58"}]},
			{"Name" : "W_imag_V50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "fft_stage_131_U0", "Port" : "W_imag_V50"}]},
			{"Name" : "W_real_V59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "fft_stage_132_U0", "Port" : "W_real_V59"}]},
			{"Name" : "W_imag_V51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "fft_stage_132_U0", "Port" : "W_imag_V51"}]},
			{"Name" : "W_real_V60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "fft_stage_133_U0", "Port" : "W_real_V60"}]},
			{"Name" : "W_imag_V52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "fft_stage_133_U0", "Port" : "W_imag_V52"}]},
			{"Name" : "W_real_V61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "fft_stage_134_U0", "Port" : "W_real_V61"}]},
			{"Name" : "W_imag_V53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "fft_stage_134_U0", "Port" : "W_imag_V53"}]},
			{"Name" : "W_real_V62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "fft_stage35_U0", "Port" : "W_real_V62"}]},
			{"Name" : "W_imag_V54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "fft_stage35_U0", "Port" : "W_imag_V54"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_3_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_4_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_5_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_6_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_7_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_8_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_R_9_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_0_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_1_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_2_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_3_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_4_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_5_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_6_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_7_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_8_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage_I_9_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bit_reverse25_U0", "Parent" : "0",
		"CDFG" : "bit_reverse25",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "1"},
			{"Name" : "OUT_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "11"}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_126_U0", "Parent" : "0",
		"CDFG" : "fft_stage_126",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "1"},
			{"Name" : "X_I_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "11"},
			{"Name" : "Out_R_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "2"},
			{"Name" : "Out_I_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "12"}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_127_U0", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29"],
		"CDFG" : "fft_stage_127",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "2"},
			{"Name" : "X_I_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "12"},
			{"Name" : "Out_R_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "3"},
			{"Name" : "Out_I_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "13"},
			{"Name" : "W_real_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_127_U0.W_real_V_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_127_U0.W_imag_V_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_127_U0.fft_streaming_muldEe_U9", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_127_U0.fft_streaming_maceOg_U10", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_127_U0.fft_streaming_macfYi_U11", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_127_U0.fft_streaming_mulg8j_U12", "Parent" : "23"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_128_U0", "Parent" : "0", "Child" : ["31", "32", "33", "34", "35", "36"],
		"CDFG" : "fft_stage_128",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "3"},
			{"Name" : "X_I_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "13"},
			{"Name" : "Out_R_3_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "4"},
			{"Name" : "Out_I_3_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "14"},
			{"Name" : "W_real_V55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag_V47", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_128_U0.W_real_V55_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_128_U0.W_imag_V47_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_128_U0.fft_streaming_muldEe_U23", "Parent" : "30"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_128_U0.fft_streaming_maceOg_U24", "Parent" : "30"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_128_U0.fft_streaming_macfYi_U25", "Parent" : "30"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_128_U0.fft_streaming_mulg8j_U26", "Parent" : "30"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_129_U0", "Parent" : "0", "Child" : ["38", "39", "40", "41", "42", "43"],
		"CDFG" : "fft_stage_129",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "4"},
			{"Name" : "X_I_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "14"},
			{"Name" : "Out_R_4_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "5"},
			{"Name" : "Out_I_4_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "15"},
			{"Name" : "W_real_V56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag_V48", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_129_U0.W_real_V56_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_129_U0.W_imag_V48_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_129_U0.fft_streaming_muldEe_U31", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_129_U0.fft_streaming_maceOg_U32", "Parent" : "37"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_129_U0.fft_streaming_macfYi_U33", "Parent" : "37"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_129_U0.fft_streaming_mulg8j_U34", "Parent" : "37"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_130_U0", "Parent" : "0", "Child" : ["45", "46", "47", "48", "49", "50"],
		"CDFG" : "fft_stage_130",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "5"},
			{"Name" : "X_I_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "15"},
			{"Name" : "Out_R_5_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "6"},
			{"Name" : "Out_I_5_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "16"},
			{"Name" : "W_real_V57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag_V49", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_130_U0.W_real_V57_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_130_U0.W_imag_V49_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_130_U0.fft_streaming_muldEe_U39", "Parent" : "44"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_130_U0.fft_streaming_maceOg_U40", "Parent" : "44"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_130_U0.fft_streaming_macfYi_U41", "Parent" : "44"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_130_U0.fft_streaming_mulg8j_U42", "Parent" : "44"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_131_U0", "Parent" : "0", "Child" : ["52", "53", "54", "55", "56", "57"],
		"CDFG" : "fft_stage_131",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "6"},
			{"Name" : "X_I_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "16"},
			{"Name" : "Out_R_6_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "7"},
			{"Name" : "Out_I_6_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "17"},
			{"Name" : "W_real_V58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag_V50", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_131_U0.W_real_V58_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_131_U0.W_imag_V50_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_131_U0.fft_streaming_muldEe_U47", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_131_U0.fft_streaming_maceOg_U48", "Parent" : "51"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_131_U0.fft_streaming_macfYi_U49", "Parent" : "51"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_131_U0.fft_streaming_mulg8j_U50", "Parent" : "51"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_132_U0", "Parent" : "0", "Child" : ["59", "60", "61", "62", "63", "64"],
		"CDFG" : "fft_stage_132",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "7"},
			{"Name" : "X_I_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "17"},
			{"Name" : "Out_R_7_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "8"},
			{"Name" : "Out_I_7_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "18"},
			{"Name" : "W_real_V59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag_V51", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_132_U0.W_real_V59_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_132_U0.W_imag_V51_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_132_U0.fft_streaming_muldEe_U55", "Parent" : "58"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_132_U0.fft_streaming_maceOg_U56", "Parent" : "58"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_132_U0.fft_streaming_macfYi_U57", "Parent" : "58"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_132_U0.fft_streaming_mulg8j_U58", "Parent" : "58"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_133_U0", "Parent" : "0", "Child" : ["66", "67", "68", "69", "70", "71"],
		"CDFG" : "fft_stage_133",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "8"},
			{"Name" : "X_I_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "18"},
			{"Name" : "Out_R_8_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "9"},
			{"Name" : "Out_I_8_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "19"},
			{"Name" : "W_real_V60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag_V52", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_133_U0.W_real_V60_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_133_U0.W_imag_V52_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_133_U0.fft_streaming_muldEe_U63", "Parent" : "65"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_133_U0.fft_streaming_maceOg_U64", "Parent" : "65"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_133_U0.fft_streaming_macfYi_U65", "Parent" : "65"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_133_U0.fft_streaming_mulg8j_U66", "Parent" : "65"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage_134_U0", "Parent" : "0", "Child" : ["73", "74", "75", "76", "77", "78"],
		"CDFG" : "fft_stage_134",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "9"},
			{"Name" : "X_I_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "19"},
			{"Name" : "Out_R_9_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "10"},
			{"Name" : "Out_I_9_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "20"},
			{"Name" : "W_real_V61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag_V53", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_134_U0.W_real_V61_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_134_U0.W_imag_V53_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_134_U0.fft_streaming_muldEe_U71", "Parent" : "72"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_134_U0.fft_streaming_maceOg_U72", "Parent" : "72"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_134_U0.fft_streaming_macfYi_U73", "Parent" : "72"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage_134_U0.fft_streaming_mulg8j_U74", "Parent" : "72"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage35_U0", "Parent" : "0", "Child" : ["80", "81", "82", "83", "84", "85"],
		"CDFG" : "fft_stage35",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_V9", "Type" : "Memory", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "10"},
			{"Name" : "X_I_V18", "Type" : "Memory", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "20"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "W_real_V62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag_V54", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage35_U0.W_real_V62_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage35_U0.W_imag_V54_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage35_U0.fft_streaming_mulxdS_U79", "Parent" : "79"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage35_U0.fft_streaming_macyd2_U80", "Parent" : "79"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage35_U0.fft_streaming_maczec_U81", "Parent" : "79"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage35_U0.fft_streaming_mulAem_U82", "Parent" : "79"}]}


set ArgLastReadFirstWriteLatency {
	fft_streaming {
		X_R_V {Type I LastRead 2 FirstWrite -1}
		X_I_V {Type I LastRead 2 FirstWrite -1}
		OUT_R_V {Type O LastRead -1 FirstWrite 3}
		OUT_I_V {Type O LastRead -1 FirstWrite 3}
		W_real_V {Type I LastRead -1 FirstWrite -1}
		W_imag_V {Type I LastRead -1 FirstWrite -1}
		W_real_V55 {Type I LastRead -1 FirstWrite -1}
		W_imag_V47 {Type I LastRead -1 FirstWrite -1}
		W_real_V56 {Type I LastRead -1 FirstWrite -1}
		W_imag_V48 {Type I LastRead -1 FirstWrite -1}
		W_real_V57 {Type I LastRead -1 FirstWrite -1}
		W_imag_V49 {Type I LastRead -1 FirstWrite -1}
		W_real_V58 {Type I LastRead -1 FirstWrite -1}
		W_imag_V50 {Type I LastRead -1 FirstWrite -1}
		W_real_V59 {Type I LastRead -1 FirstWrite -1}
		W_imag_V51 {Type I LastRead -1 FirstWrite -1}
		W_real_V60 {Type I LastRead -1 FirstWrite -1}
		W_imag_V52 {Type I LastRead -1 FirstWrite -1}
		W_real_V61 {Type I LastRead -1 FirstWrite -1}
		W_imag_V53 {Type I LastRead -1 FirstWrite -1}
		W_real_V62 {Type I LastRead -1 FirstWrite -1}
		W_imag_V54 {Type I LastRead -1 FirstWrite -1}}
	bit_reverse25 {
		X_R_V {Type I LastRead 2 FirstWrite -1}
		X_I_V {Type I LastRead 2 FirstWrite -1}
		OUT_R_V {Type O LastRead -1 FirstWrite 2}
		OUT_I_V {Type O LastRead -1 FirstWrite 2}}
	fft_stage_126 {
		X_R_0_V {Type I LastRead 2 FirstWrite -1}
		X_I_0_V {Type I LastRead 2 FirstWrite -1}
		Out_R_1_V {Type O LastRead -1 FirstWrite 2}
		Out_I_1_V {Type O LastRead -1 FirstWrite 2}}
	fft_stage_127 {
		X_R_1_V {Type I LastRead 2 FirstWrite -1}
		X_I_1_V {Type I LastRead 3 FirstWrite -1}
		Out_R_2_V {Type O LastRead -1 FirstWrite 3}
		Out_I_2_V {Type O LastRead -1 FirstWrite 3}
		W_real_V {Type I LastRead -1 FirstWrite -1}
		W_imag_V {Type I LastRead -1 FirstWrite -1}}
	fft_stage_128 {
		X_R_2_V {Type I LastRead 2 FirstWrite -1}
		X_I_2_V {Type I LastRead 3 FirstWrite -1}
		Out_R_3_V {Type O LastRead -1 FirstWrite 3}
		Out_I_3_V {Type O LastRead -1 FirstWrite 3}
		W_real_V55 {Type I LastRead -1 FirstWrite -1}
		W_imag_V47 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_129 {
		X_R_3_V {Type I LastRead 2 FirstWrite -1}
		X_I_3_V {Type I LastRead 3 FirstWrite -1}
		Out_R_4_V {Type O LastRead -1 FirstWrite 3}
		Out_I_4_V {Type O LastRead -1 FirstWrite 3}
		W_real_V56 {Type I LastRead -1 FirstWrite -1}
		W_imag_V48 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_130 {
		X_R_4_V {Type I LastRead 2 FirstWrite -1}
		X_I_4_V {Type I LastRead 3 FirstWrite -1}
		Out_R_5_V {Type O LastRead -1 FirstWrite 3}
		Out_I_5_V {Type O LastRead -1 FirstWrite 3}
		W_real_V57 {Type I LastRead -1 FirstWrite -1}
		W_imag_V49 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_131 {
		X_R_5_V {Type I LastRead 2 FirstWrite -1}
		X_I_5_V {Type I LastRead 3 FirstWrite -1}
		Out_R_6_V {Type O LastRead -1 FirstWrite 3}
		Out_I_6_V {Type O LastRead -1 FirstWrite 3}
		W_real_V58 {Type I LastRead -1 FirstWrite -1}
		W_imag_V50 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_132 {
		X_R_6_V {Type I LastRead 2 FirstWrite -1}
		X_I_6_V {Type I LastRead 3 FirstWrite -1}
		Out_R_7_V {Type O LastRead -1 FirstWrite 3}
		Out_I_7_V {Type O LastRead -1 FirstWrite 3}
		W_real_V59 {Type I LastRead -1 FirstWrite -1}
		W_imag_V51 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_133 {
		X_R_7_V {Type I LastRead 2 FirstWrite -1}
		X_I_7_V {Type I LastRead 3 FirstWrite -1}
		Out_R_8_V {Type O LastRead -1 FirstWrite 3}
		Out_I_8_V {Type O LastRead -1 FirstWrite 3}
		W_real_V60 {Type I LastRead -1 FirstWrite -1}
		W_imag_V52 {Type I LastRead -1 FirstWrite -1}}
	fft_stage_134 {
		X_R_8_V {Type I LastRead 2 FirstWrite -1}
		X_I_8_V {Type I LastRead 3 FirstWrite -1}
		Out_R_9_V {Type O LastRead -1 FirstWrite 3}
		Out_I_9_V {Type O LastRead -1 FirstWrite 3}
		W_real_V61 {Type I LastRead -1 FirstWrite -1}
		W_imag_V53 {Type I LastRead -1 FirstWrite -1}}
	fft_stage35 {
		X_R_V9 {Type I LastRead 2 FirstWrite -1}
		X_I_V18 {Type I LastRead 3 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 3}
		Out_I_V {Type O LastRead -1 FirstWrite 3}
		W_real_V62 {Type I LastRead -1 FirstWrite -1}
		W_imag_V54 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7209", "Max" : "7209"}
	, {"Name" : "Interval", "Min" : "2051", "Max" : "2051"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	X_R_V { ap_memory {  { X_R_V_address0 mem_address 1 10 }  { X_R_V_ce0 mem_ce 1 1 }  { X_R_V_d0 mem_din 1 22 }  { X_R_V_q0 mem_dout 0 22 }  { X_R_V_we0 mem_we 1 1 }  { X_R_V_address1 MemPortADDR2 1 10 }  { X_R_V_ce1 MemPortCE2 1 1 }  { X_R_V_d1 mem_din 1 22 }  { X_R_V_q1 MemPortDOUT2 0 22 }  { X_R_V_we1 mem_we 1 1 } } }
	X_I_V { ap_memory {  { X_I_V_address0 mem_address 1 10 }  { X_I_V_ce0 mem_ce 1 1 }  { X_I_V_d0 mem_din 1 22 }  { X_I_V_q0 mem_dout 0 22 }  { X_I_V_we0 mem_we 1 1 }  { X_I_V_address1 MemPortADDR2 1 10 }  { X_I_V_ce1 MemPortCE2 1 1 }  { X_I_V_d1 mem_din 1 22 }  { X_I_V_q1 MemPortDOUT2 0 22 }  { X_I_V_we1 mem_we 1 1 } } }
	OUT_R_V { ap_memory {  { OUT_R_V_address0 mem_address 1 10 }  { OUT_R_V_ce0 mem_ce 1 1 }  { OUT_R_V_d0 mem_din 1 22 }  { OUT_R_V_q0 mem_dout 0 22 }  { OUT_R_V_we0 mem_we 1 1 }  { OUT_R_V_address1 MemPortADDR2 1 10 }  { OUT_R_V_ce1 MemPortCE2 1 1 }  { OUT_R_V_d1 MemPortDIN2 1 22 }  { OUT_R_V_q1 mem_dout 0 22 }  { OUT_R_V_we1 MemPortWE2 1 1 } } }
	OUT_I_V { ap_memory {  { OUT_I_V_address0 mem_address 1 10 }  { OUT_I_V_ce0 mem_ce 1 1 }  { OUT_I_V_d0 mem_din 1 22 }  { OUT_I_V_q0 mem_dout 0 22 }  { OUT_I_V_we0 mem_we 1 1 }  { OUT_I_V_address1 MemPortADDR2 1 10 }  { OUT_I_V_ce1 MemPortCE2 1 1 }  { OUT_I_V_d1 MemPortDIN2 1 22 }  { OUT_I_V_q1 mem_dout 0 22 }  { OUT_I_V_we1 MemPortWE2 1 1 } } }
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
