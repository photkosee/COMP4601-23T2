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
	{ X_R_V int 22 regular {array 1024 { 1 3 } 1 1 }  }
	{ X_I_V int 22 regular {array 1024 { 1 3 } 1 1 }  }
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "51", "80", "109", "138", "167", "196", "225", "254", "283"],
		"CDFG" : "fft_streaming",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "559604", "EstimateLatencyMax" : "568812",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "21", "Name" : "bit_reverse_U0"}],
		"OutputProcess" : [
			{"ID" : "283", "Name" : "fft_stage90_U0"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "bit_reverse_U0", "Port" : "X_R_V"}]},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "bit_reverse_U0", "Port" : "X_I_V"}]},
			{"Name" : "OUT_R_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "283", "SubInstance" : "fft_stage90_U0", "Port" : "Out_R_V"}]},
			{"Name" : "OUT_I_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "283", "SubInstance" : "fft_stage90_U0", "Port" : "Out_I_V"}]},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "fft_stage89_U0", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "22", "SubInstance" : "fft_stage81_U0", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "138", "SubInstance" : "fft_stage85_U0", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "167", "SubInstance" : "fft_stage86_U0", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "51", "SubInstance" : "fft_stage82_U0", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "196", "SubInstance" : "fft_stage87_U0", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "283", "SubInstance" : "fft_stage90_U0", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "109", "SubInstance" : "fft_stage84_U0", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "225", "SubInstance" : "fft_stage88_U0", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "80", "SubInstance" : "fft_stage83_U0", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "fft_stage89_U0", "Port" : "fourth_order_double_4"},
					{"ID" : "22", "SubInstance" : "fft_stage81_U0", "Port" : "fourth_order_double_4"},
					{"ID" : "138", "SubInstance" : "fft_stage85_U0", "Port" : "fourth_order_double_4"},
					{"ID" : "167", "SubInstance" : "fft_stage86_U0", "Port" : "fourth_order_double_4"},
					{"ID" : "51", "SubInstance" : "fft_stage82_U0", "Port" : "fourth_order_double_4"},
					{"ID" : "196", "SubInstance" : "fft_stage87_U0", "Port" : "fourth_order_double_4"},
					{"ID" : "283", "SubInstance" : "fft_stage90_U0", "Port" : "fourth_order_double_4"},
					{"ID" : "109", "SubInstance" : "fft_stage84_U0", "Port" : "fourth_order_double_4"},
					{"ID" : "225", "SubInstance" : "fft_stage88_U0", "Port" : "fourth_order_double_4"},
					{"ID" : "80", "SubInstance" : "fft_stage83_U0", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "fft_stage89_U0", "Port" : "fourth_order_double_5"},
					{"ID" : "22", "SubInstance" : "fft_stage81_U0", "Port" : "fourth_order_double_5"},
					{"ID" : "138", "SubInstance" : "fft_stage85_U0", "Port" : "fourth_order_double_5"},
					{"ID" : "167", "SubInstance" : "fft_stage86_U0", "Port" : "fourth_order_double_5"},
					{"ID" : "51", "SubInstance" : "fft_stage82_U0", "Port" : "fourth_order_double_5"},
					{"ID" : "196", "SubInstance" : "fft_stage87_U0", "Port" : "fourth_order_double_5"},
					{"ID" : "283", "SubInstance" : "fft_stage90_U0", "Port" : "fourth_order_double_5"},
					{"ID" : "109", "SubInstance" : "fft_stage84_U0", "Port" : "fourth_order_double_5"},
					{"ID" : "225", "SubInstance" : "fft_stage88_U0", "Port" : "fourth_order_double_5"},
					{"ID" : "80", "SubInstance" : "fft_stage83_U0", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "fft_stage89_U0", "Port" : "fourth_order_double_6"},
					{"ID" : "22", "SubInstance" : "fft_stage81_U0", "Port" : "fourth_order_double_6"},
					{"ID" : "138", "SubInstance" : "fft_stage85_U0", "Port" : "fourth_order_double_6"},
					{"ID" : "167", "SubInstance" : "fft_stage86_U0", "Port" : "fourth_order_double_6"},
					{"ID" : "51", "SubInstance" : "fft_stage82_U0", "Port" : "fourth_order_double_6"},
					{"ID" : "196", "SubInstance" : "fft_stage87_U0", "Port" : "fourth_order_double_6"},
					{"ID" : "283", "SubInstance" : "fft_stage90_U0", "Port" : "fourth_order_double_6"},
					{"ID" : "109", "SubInstance" : "fft_stage84_U0", "Port" : "fourth_order_double_6"},
					{"ID" : "225", "SubInstance" : "fft_stage88_U0", "Port" : "fourth_order_double_6"},
					{"ID" : "80", "SubInstance" : "fft_stage83_U0", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "fft_stage89_U0", "Port" : "fourth_order_double_7"},
					{"ID" : "22", "SubInstance" : "fft_stage81_U0", "Port" : "fourth_order_double_7"},
					{"ID" : "138", "SubInstance" : "fft_stage85_U0", "Port" : "fourth_order_double_7"},
					{"ID" : "167", "SubInstance" : "fft_stage86_U0", "Port" : "fourth_order_double_7"},
					{"ID" : "51", "SubInstance" : "fft_stage82_U0", "Port" : "fourth_order_double_7"},
					{"ID" : "196", "SubInstance" : "fft_stage87_U0", "Port" : "fourth_order_double_7"},
					{"ID" : "283", "SubInstance" : "fft_stage90_U0", "Port" : "fourth_order_double_7"},
					{"ID" : "109", "SubInstance" : "fft_stage84_U0", "Port" : "fourth_order_double_7"},
					{"ID" : "225", "SubInstance" : "fft_stage88_U0", "Port" : "fourth_order_double_7"},
					{"ID" : "80", "SubInstance" : "fft_stage83_U0", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "fft_stage89_U0", "Port" : "fourth_order_double_s"},
					{"ID" : "22", "SubInstance" : "fft_stage81_U0", "Port" : "fourth_order_double_s"},
					{"ID" : "138", "SubInstance" : "fft_stage85_U0", "Port" : "fourth_order_double_s"},
					{"ID" : "167", "SubInstance" : "fft_stage86_U0", "Port" : "fourth_order_double_s"},
					{"ID" : "51", "SubInstance" : "fft_stage82_U0", "Port" : "fourth_order_double_s"},
					{"ID" : "196", "SubInstance" : "fft_stage87_U0", "Port" : "fourth_order_double_s"},
					{"ID" : "283", "SubInstance" : "fft_stage90_U0", "Port" : "fourth_order_double_s"},
					{"ID" : "109", "SubInstance" : "fft_stage84_U0", "Port" : "fourth_order_double_s"},
					{"ID" : "225", "SubInstance" : "fft_stage88_U0", "Port" : "fourth_order_double_s"},
					{"ID" : "80", "SubInstance" : "fft_stage83_U0", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_R_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_I_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_R_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_I_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_R_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_I_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_R_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_I_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_R_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_I_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_R_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_I_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_R_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_I_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_R_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_I_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_R_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_I_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage10_R_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage10_I_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bit_reverse_U0", "Parent" : "0",
		"CDFG" : "bit_reverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2049", "EstimateLatencyMax" : "3073",
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
			{"Name" : "OUT_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "2"}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0", "Parent" : "0", "Child" : ["23", "37"],
		"CDFG" : "fft_stage81",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "546", "EstimateLatencyMax" : "554",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_287"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_306"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "1"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "2"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "3"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "4"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "37", "SubInstance" : "grp_sin_or_cos_double_s_fu_306", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_4"},
					{"ID" : "37", "SubInstance" : "grp_sin_or_cos_double_s_fu_306", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_5"},
					{"ID" : "37", "SubInstance" : "grp_sin_or_cos_double_s_fu_306", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_6"},
					{"ID" : "37", "SubInstance" : "grp_sin_or_cos_double_s_fu_306", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_7"},
					{"ID" : "37", "SubInstance" : "grp_sin_or_cos_double_s_fu_306", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_sin_or_cos_double_s_fu_287", "Port" : "fourth_order_double_s"},
					{"ID" : "37", "SubInstance" : "grp_sin_or_cos_double_s_fu_306", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287", "Parent" : "22", "Child" : ["24", "25", "26", "27", "28", "29", "30", "33", "34", "35", "36"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.ref_4oPi_table_256_V_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.fourth_order_double_4_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.fourth_order_double_5_U", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.fourth_order_double_6_U", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.fourth_order_double_7_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.fourth_order_double_s_U", "Parent" : "23"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.grp_scaled_fixed2ieee_fu_268", "Parent" : "23", "Child" : ["31", "32"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.fft_streaming_mulibs_U9", "Parent" : "23"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.fft_streaming_muxjbC_U10", "Parent" : "23"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.fft_streaming_muxkbM_U11", "Parent" : "23"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_287.fft_streaming_muxkbM_U12", "Parent" : "23"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306", "Parent" : "22", "Child" : ["38", "39", "40", "41", "42", "43", "44", "47", "48", "49", "50"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.ref_4oPi_table_256_V_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.fourth_order_double_4_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.fourth_order_double_5_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.fourth_order_double_6_U", "Parent" : "37"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.fourth_order_double_7_U", "Parent" : "37"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.fourth_order_double_s_U", "Parent" : "37"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.grp_scaled_fixed2ieee_fu_268", "Parent" : "37", "Child" : ["45", "46"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.fft_streaming_mulibs_U9", "Parent" : "37"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.fft_streaming_muxjbC_U10", "Parent" : "37"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.fft_streaming_muxkbM_U11", "Parent" : "37"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage81_U0.grp_sin_or_cos_double_s_fu_306.fft_streaming_muxkbM_U12", "Parent" : "37"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0", "Parent" : "0", "Child" : ["52", "66"],
		"CDFG" : "fft_stage82",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1091", "EstimateLatencyMax" : "1107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_290"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_309"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "3"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "4"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "5"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "6"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "66", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_4"},
					{"ID" : "66", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_5"},
					{"ID" : "66", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_6"},
					{"ID" : "66", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_7"},
					{"ID" : "66", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_s"},
					{"ID" : "66", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290", "Parent" : "51", "Child" : ["53", "54", "55", "56", "57", "58", "59", "62", "63", "64", "65"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.ref_4oPi_table_256_V_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_4_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_5_U", "Parent" : "52"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_6_U", "Parent" : "52"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_7_U", "Parent" : "52"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_s_U", "Parent" : "52"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268", "Parent" : "52", "Child" : ["60", "61"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_mulibs_U9", "Parent" : "52"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxjbC_U10", "Parent" : "52"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U11", "Parent" : "52"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U12", "Parent" : "52"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309", "Parent" : "51", "Child" : ["67", "68", "69", "70", "71", "72", "73", "76", "77", "78", "79"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.ref_4oPi_table_256_V_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_4_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_5_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_6_U", "Parent" : "66"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_7_U", "Parent" : "66"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_s_U", "Parent" : "66"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268", "Parent" : "66", "Child" : ["74", "75"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_mulibs_U9", "Parent" : "66"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxjbC_U10", "Parent" : "66"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U11", "Parent" : "66"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage82_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U12", "Parent" : "66"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0", "Parent" : "0", "Child" : ["81", "95"],
		"CDFG" : "fft_stage83",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2181", "EstimateLatencyMax" : "2213",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_290"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_309"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "5"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "6"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "7"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "8"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "95", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_4"},
					{"ID" : "95", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_5"},
					{"ID" : "95", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_6"},
					{"ID" : "95", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_7"},
					{"ID" : "95", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_s"},
					{"ID" : "95", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290", "Parent" : "80", "Child" : ["82", "83", "84", "85", "86", "87", "88", "91", "92", "93", "94"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.ref_4oPi_table_256_V_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_4_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_5_U", "Parent" : "81"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_6_U", "Parent" : "81"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_7_U", "Parent" : "81"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_s_U", "Parent" : "81"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268", "Parent" : "81", "Child" : ["89", "90"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "88"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_mulibs_U9", "Parent" : "81"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxjbC_U10", "Parent" : "81"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U11", "Parent" : "81"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U12", "Parent" : "81"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309", "Parent" : "80", "Child" : ["96", "97", "98", "99", "100", "101", "102", "105", "106", "107", "108"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.ref_4oPi_table_256_V_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_4_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_5_U", "Parent" : "95"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_6_U", "Parent" : "95"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_7_U", "Parent" : "95"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_s_U", "Parent" : "95"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268", "Parent" : "95", "Child" : ["103", "104"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_mulibs_U9", "Parent" : "95"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxjbC_U10", "Parent" : "95"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U11", "Parent" : "95"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage83_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U12", "Parent" : "95"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0", "Parent" : "0", "Child" : ["110", "124"],
		"CDFG" : "fft_stage84",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4361", "EstimateLatencyMax" : "4425",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_290"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_309"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "7"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "8"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "138", "DependentChan" : "9"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "138", "DependentChan" : "10"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "124", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_4"},
					{"ID" : "124", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_5"},
					{"ID" : "124", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_6"},
					{"ID" : "124", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_7"},
					{"ID" : "124", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_s"},
					{"ID" : "124", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290", "Parent" : "109", "Child" : ["111", "112", "113", "114", "115", "116", "117", "120", "121", "122", "123"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.ref_4oPi_table_256_V_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_4_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_5_U", "Parent" : "110"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_6_U", "Parent" : "110"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_7_U", "Parent" : "110"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_s_U", "Parent" : "110"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268", "Parent" : "110", "Child" : ["118", "119"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "117"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_mulibs_U9", "Parent" : "110"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxjbC_U10", "Parent" : "110"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U11", "Parent" : "110"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U12", "Parent" : "110"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309", "Parent" : "109", "Child" : ["125", "126", "127", "128", "129", "130", "131", "134", "135", "136", "137"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.ref_4oPi_table_256_V_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_4_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_5_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_6_U", "Parent" : "124"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_7_U", "Parent" : "124"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_s_U", "Parent" : "124"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268", "Parent" : "124", "Child" : ["132", "133"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "131"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_mulibs_U9", "Parent" : "124"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxjbC_U10", "Parent" : "124"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U11", "Parent" : "124"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage84_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U12", "Parent" : "124"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0", "Parent" : "0", "Child" : ["139", "153"],
		"CDFG" : "fft_stage85",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8721", "EstimateLatencyMax" : "8849",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_288"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_307"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "9"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "10"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "11"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "12"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "139", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_4"},
					{"ID" : "139", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_5"},
					{"ID" : "139", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_6"},
					{"ID" : "139", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_7"},
					{"ID" : "139", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_s"},
					{"ID" : "139", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288", "Parent" : "138", "Child" : ["140", "141", "142", "143", "144", "145", "146", "149", "150", "151", "152"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.ref_4oPi_table_256_V_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_4_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_5_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_6_U", "Parent" : "139"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_7_U", "Parent" : "139"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_s_U", "Parent" : "139"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268", "Parent" : "139", "Child" : ["147", "148"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "146"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_mulibs_U9", "Parent" : "139"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxjbC_U10", "Parent" : "139"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxkbM_U11", "Parent" : "139"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxkbM_U12", "Parent" : "139"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307", "Parent" : "138", "Child" : ["154", "155", "156", "157", "158", "159", "160", "163", "164", "165", "166"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.ref_4oPi_table_256_V_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_4_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_5_U", "Parent" : "153"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_6_U", "Parent" : "153"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_7_U", "Parent" : "153"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_s_U", "Parent" : "153"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268", "Parent" : "153", "Child" : ["161", "162"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_mulibs_U9", "Parent" : "153"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxjbC_U10", "Parent" : "153"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxkbM_U11", "Parent" : "153"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage85_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxkbM_U12", "Parent" : "153"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0", "Parent" : "0", "Child" : ["168", "182"],
		"CDFG" : "fft_stage86",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17441", "EstimateLatencyMax" : "17697",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_288"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_307"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "138", "DependentChan" : "11"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "138", "DependentChan" : "12"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "13"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "196", "DependentChan" : "14"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "182", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_4"},
					{"ID" : "182", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_5"},
					{"ID" : "182", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_6"},
					{"ID" : "182", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_7"},
					{"ID" : "182", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_s"},
					{"ID" : "182", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288", "Parent" : "167", "Child" : ["169", "170", "171", "172", "173", "174", "175", "178", "179", "180", "181"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.ref_4oPi_table_256_V_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_4_U", "Parent" : "168"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_5_U", "Parent" : "168"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_6_U", "Parent" : "168"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_7_U", "Parent" : "168"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_s_U", "Parent" : "168"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268", "Parent" : "168", "Child" : ["176", "177"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "175"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_mulibs_U9", "Parent" : "168"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxjbC_U10", "Parent" : "168"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxkbM_U11", "Parent" : "168"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxkbM_U12", "Parent" : "168"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307", "Parent" : "167", "Child" : ["183", "184", "185", "186", "187", "188", "189", "192", "193", "194", "195"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.ref_4oPi_table_256_V_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_4_U", "Parent" : "182"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_5_U", "Parent" : "182"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_6_U", "Parent" : "182"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_7_U", "Parent" : "182"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_s_U", "Parent" : "182"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268", "Parent" : "182", "Child" : ["190", "191"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "189"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "189"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_mulibs_U9", "Parent" : "182"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxjbC_U10", "Parent" : "182"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxkbM_U11", "Parent" : "182"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage86_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxkbM_U12", "Parent" : "182"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0", "Parent" : "0", "Child" : ["197", "211"],
		"CDFG" : "fft_stage87",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34881", "EstimateLatencyMax" : "35393",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_290"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_309"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "13"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "14"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "15"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "225", "DependentChan" : "16"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "211", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_4"},
					{"ID" : "211", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_5"},
					{"ID" : "211", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_6"},
					{"ID" : "211", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_7"},
					{"ID" : "211", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_s"},
					{"ID" : "211", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290", "Parent" : "196", "Child" : ["198", "199", "200", "201", "202", "203", "204", "207", "208", "209", "210"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.ref_4oPi_table_256_V_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_4_U", "Parent" : "197"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_5_U", "Parent" : "197"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_6_U", "Parent" : "197"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_7_U", "Parent" : "197"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_s_U", "Parent" : "197"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268", "Parent" : "197", "Child" : ["205", "206"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "204"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_mulibs_U9", "Parent" : "197"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxjbC_U10", "Parent" : "197"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U11", "Parent" : "197"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U12", "Parent" : "197"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309", "Parent" : "196", "Child" : ["212", "213", "214", "215", "216", "217", "218", "221", "222", "223", "224"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.ref_4oPi_table_256_V_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_4_U", "Parent" : "211"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_5_U", "Parent" : "211"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_6_U", "Parent" : "211"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_7_U", "Parent" : "211"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_s_U", "Parent" : "211"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268", "Parent" : "211", "Child" : ["219", "220"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_mulibs_U9", "Parent" : "211"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxjbC_U10", "Parent" : "211"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U11", "Parent" : "211"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage87_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U12", "Parent" : "211"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0", "Parent" : "0", "Child" : ["226", "240"],
		"CDFG" : "fft_stage88",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69761", "EstimateLatencyMax" : "70785",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_290"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_309"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "15"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "196", "DependentChan" : "16"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "17"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "254", "DependentChan" : "18"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "240", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_4"},
					{"ID" : "240", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_5"},
					{"ID" : "240", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_6"},
					{"ID" : "240", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_7"},
					{"ID" : "240", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_s"},
					{"ID" : "240", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290", "Parent" : "225", "Child" : ["227", "228", "229", "230", "231", "232", "233", "236", "237", "238", "239"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.ref_4oPi_table_256_V_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_4_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_5_U", "Parent" : "226"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_6_U", "Parent" : "226"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_7_U", "Parent" : "226"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.fourth_order_double_s_U", "Parent" : "226"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268", "Parent" : "226", "Child" : ["234", "235"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "233"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_mulibs_U9", "Parent" : "226"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxjbC_U10", "Parent" : "226"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U11", "Parent" : "226"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U12", "Parent" : "226"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309", "Parent" : "225", "Child" : ["241", "242", "243", "244", "245", "246", "247", "250", "251", "252", "253"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.ref_4oPi_table_256_V_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_4_U", "Parent" : "240"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_5_U", "Parent" : "240"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_6_U", "Parent" : "240"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_7_U", "Parent" : "240"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.fourth_order_double_s_U", "Parent" : "240"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268", "Parent" : "240", "Child" : ["248", "249"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "247"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_mulibs_U9", "Parent" : "240"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxjbC_U10", "Parent" : "240"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U11", "Parent" : "240"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage88_U0.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U12", "Parent" : "240"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0", "Parent" : "0", "Child" : ["255", "269"],
		"CDFG" : "fft_stage89",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "139521", "EstimateLatencyMax" : "141569",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_288"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_307"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "17"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "225", "DependentChan" : "18"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "283", "DependentChan" : "19"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "283", "DependentChan" : "20"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "255", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_4"},
					{"ID" : "255", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_5"},
					{"ID" : "255", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_6"},
					{"ID" : "255", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_7"},
					{"ID" : "255", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_s"},
					{"ID" : "255", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288", "Parent" : "254", "Child" : ["256", "257", "258", "259", "260", "261", "262", "265", "266", "267", "268"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.ref_4oPi_table_256_V_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_4_U", "Parent" : "255"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_5_U", "Parent" : "255"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_6_U", "Parent" : "255"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_7_U", "Parent" : "255"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_s_U", "Parent" : "255"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268", "Parent" : "255", "Child" : ["263", "264"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "262"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_mulibs_U9", "Parent" : "255"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxjbC_U10", "Parent" : "255"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxkbM_U11", "Parent" : "255"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxkbM_U12", "Parent" : "255"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307", "Parent" : "254", "Child" : ["270", "271", "272", "273", "274", "275", "276", "279", "280", "281", "282"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.ref_4oPi_table_256_V_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_4_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_5_U", "Parent" : "269"},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_6_U", "Parent" : "269"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_7_U", "Parent" : "269"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_s_U", "Parent" : "269"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268", "Parent" : "269", "Child" : ["277", "278"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_mulibs_U9", "Parent" : "269"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxjbC_U10", "Parent" : "269"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxkbM_U11", "Parent" : "269"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage89_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxkbM_U12", "Parent" : "269"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0", "Parent" : "0", "Child" : ["284", "298"],
		"CDFG" : "fft_stage90",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "279041", "EstimateLatencyMax" : "283137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_288"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_307"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "19"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "254", "DependentChan" : "20"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "284", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_4"},
					{"ID" : "284", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_5"},
					{"ID" : "284", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_6"},
					{"ID" : "284", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_7"},
					{"ID" : "284", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_sin_or_cos_double_s_fu_307", "Port" : "fourth_order_double_s"},
					{"ID" : "284", "SubInstance" : "grp_sin_or_cos_double_s_fu_288", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288", "Parent" : "283", "Child" : ["285", "286", "287", "288", "289", "290", "291", "294", "295", "296", "297"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.ref_4oPi_table_256_V_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_4_U", "Parent" : "284"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_5_U", "Parent" : "284"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_6_U", "Parent" : "284"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_7_U", "Parent" : "284"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.fourth_order_double_s_U", "Parent" : "284"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268", "Parent" : "284", "Child" : ["292", "293"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_mulibs_U9", "Parent" : "284"},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxjbC_U10", "Parent" : "284"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxkbM_U11", "Parent" : "284"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_288.fft_streaming_muxkbM_U12", "Parent" : "284"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307", "Parent" : "283", "Child" : ["299", "300", "301", "302", "303", "304", "305", "308", "309", "310", "311"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_268"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.ref_4oPi_table_256_V_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_4_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_5_U", "Parent" : "298"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_6_U", "Parent" : "298"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_7_U", "Parent" : "298"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.fourth_order_double_s_U", "Parent" : "298"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268", "Parent" : "298", "Child" : ["306", "307"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "305"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_mulibs_U9", "Parent" : "298"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxjbC_U10", "Parent" : "298"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxkbM_U11", "Parent" : "298"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_stage90_U0.grp_sin_or_cos_double_s_fu_307.fft_streaming_muxkbM_U12", "Parent" : "298"}]}


set ArgLastReadFirstWriteLatency {
	fft_streaming {
		X_R_V {Type I LastRead 2 FirstWrite -1}
		X_I_V {Type I LastRead 2 FirstWrite -1}
		OUT_R_V {Type O LastRead -1 FirstWrite 6}
		OUT_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	bit_reverse {
		X_R_V {Type I LastRead 2 FirstWrite -1}
		X_I_V {Type I LastRead 2 FirstWrite -1}
		OUT_R_V {Type O LastRead -1 FirstWrite 2}
		OUT_I_V {Type O LastRead -1 FirstWrite 2}}
	fft_stage81 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	fft_stage82 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	fft_stage83 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	fft_stage84 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	fft_stage85 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	fft_stage86 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	fft_stage87 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	fft_stage88 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	fft_stage89 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	fft_stage90 {
		X_R_V {Type I LastRead 6 FirstWrite -1}
		X_I_V {Type I LastRead 6 FirstWrite -1}
		Out_R_V {Type O LastRead -1 FirstWrite 6}
		Out_I_V {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 4 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_4 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_5 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_6 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_7 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_s {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "559604", "Max" : "568812"}
	, {"Name" : "Interval", "Min" : "279042", "Max" : "283138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	X_R_V { ap_memory {  { X_R_V_address0 mem_address 1 10 }  { X_R_V_ce0 mem_ce 1 1 }  { X_R_V_d0 mem_din 1 22 }  { X_R_V_q0 mem_dout 0 22 }  { X_R_V_we0 mem_we 1 1 }  { X_R_V_address1 mem_address 1 10 }  { X_R_V_ce1 mem_ce 1 1 }  { X_R_V_d1 mem_din 1 22 }  { X_R_V_q1 mem_dout 0 22 }  { X_R_V_we1 mem_we 1 1 } } }
	X_I_V { ap_memory {  { X_I_V_address0 mem_address 1 10 }  { X_I_V_ce0 mem_ce 1 1 }  { X_I_V_d0 mem_din 1 22 }  { X_I_V_q0 mem_dout 0 22 }  { X_I_V_we0 mem_we 1 1 }  { X_I_V_address1 mem_address 1 10 }  { X_I_V_ce1 mem_ce 1 1 }  { X_I_V_d1 mem_din 1 22 }  { X_I_V_q1 mem_dout 0 22 }  { X_I_V_we1 mem_we 1 1 } } }
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
