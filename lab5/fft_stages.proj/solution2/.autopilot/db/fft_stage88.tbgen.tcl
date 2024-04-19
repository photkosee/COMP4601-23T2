set moduleName fft_stage88
set isTopModule 0
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
set C_modelName {fft_stage88}
set C_modelType { void 0 }
set C_modelArgList {
	{ X_R_V int 22 regular {array 1024 { 1 1 } 1 1 }  }
	{ X_I_V int 22 regular {array 1024 { 1 1 } 1 1 }  }
	{ Out_R_V int 22 regular {array 1024 { 0 0 } 0 1 }  }
	{ Out_I_V int 22 regular {array 1024 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X_R_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "Out_R_V", "interface" : "memory", "bitwidth" : 22, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Out_I_V", "interface" : "memory", "bitwidth" : 22, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ X_R_V_address0 sc_out sc_lv 10 signal 0 } 
	{ X_R_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ X_R_V_q0 sc_in sc_lv 22 signal 0 } 
	{ X_R_V_address1 sc_out sc_lv 10 signal 0 } 
	{ X_R_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ X_R_V_q1 sc_in sc_lv 22 signal 0 } 
	{ X_I_V_address0 sc_out sc_lv 10 signal 1 } 
	{ X_I_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ X_I_V_q0 sc_in sc_lv 22 signal 1 } 
	{ X_I_V_address1 sc_out sc_lv 10 signal 1 } 
	{ X_I_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ X_I_V_q1 sc_in sc_lv 22 signal 1 } 
	{ Out_R_V_address0 sc_out sc_lv 10 signal 2 } 
	{ Out_R_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ Out_R_V_we0 sc_out sc_logic 1 signal 2 } 
	{ Out_R_V_d0 sc_out sc_lv 22 signal 2 } 
	{ Out_R_V_address1 sc_out sc_lv 10 signal 2 } 
	{ Out_R_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ Out_R_V_we1 sc_out sc_logic 1 signal 2 } 
	{ Out_R_V_d1 sc_out sc_lv 22 signal 2 } 
	{ Out_I_V_address0 sc_out sc_lv 10 signal 3 } 
	{ Out_I_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ Out_I_V_we0 sc_out sc_logic 1 signal 3 } 
	{ Out_I_V_d0 sc_out sc_lv 22 signal 3 } 
	{ Out_I_V_address1 sc_out sc_lv 10 signal 3 } 
	{ Out_I_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ Out_I_V_we1 sc_out sc_logic 1 signal 3 } 
	{ Out_I_V_d1 sc_out sc_lv 22 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "X_R_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R_V", "role": "address0" }} , 
 	{ "name": "X_R_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "ce0" }} , 
 	{ "name": "X_R_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "q0" }} , 
 	{ "name": "X_R_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R_V", "role": "address1" }} , 
 	{ "name": "X_R_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "ce1" }} , 
 	{ "name": "X_R_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "q1" }} , 
 	{ "name": "X_I_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I_V", "role": "address0" }} , 
 	{ "name": "X_I_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "ce0" }} , 
 	{ "name": "X_I_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "q0" }} , 
 	{ "name": "X_I_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I_V", "role": "address1" }} , 
 	{ "name": "X_I_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "ce1" }} , 
 	{ "name": "X_I_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "q1" }} , 
 	{ "name": "Out_R_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Out_R_V", "role": "address0" }} , 
 	{ "name": "Out_R_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_R_V", "role": "ce0" }} , 
 	{ "name": "Out_R_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_R_V", "role": "we0" }} , 
 	{ "name": "Out_R_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "Out_R_V", "role": "d0" }} , 
 	{ "name": "Out_R_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Out_R_V", "role": "address1" }} , 
 	{ "name": "Out_R_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_R_V", "role": "ce1" }} , 
 	{ "name": "Out_R_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_R_V", "role": "we1" }} , 
 	{ "name": "Out_R_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "Out_R_V", "role": "d1" }} , 
 	{ "name": "Out_I_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Out_I_V", "role": "address0" }} , 
 	{ "name": "Out_I_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_I_V", "role": "ce0" }} , 
 	{ "name": "Out_I_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_I_V", "role": "we0" }} , 
 	{ "name": "Out_I_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "Out_I_V", "role": "d0" }} , 
 	{ "name": "Out_I_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Out_I_V", "role": "address1" }} , 
 	{ "name": "Out_I_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_I_V", "role": "ce1" }} , 
 	{ "name": "Out_I_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_I_V", "role": "we1" }} , 
 	{ "name": "Out_I_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "Out_I_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "15"],
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
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "Out_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "Out_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_4"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_5"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_6"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_7"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_290", "Port" : "fourth_order_double_s"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_309", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "11", "12", "13", "14"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.ref_4oPi_table_256_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.fourth_order_double_4_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.fourth_order_double_5_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.fourth_order_double_6_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.fourth_order_double_7_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.fourth_order_double_s_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268", "Parent" : "1", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.fft_streaming_mulibs_U9", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxjbC_U10", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U11", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_290.fft_streaming_muxkbM_U12", "Parent" : "1"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309", "Parent" : "0", "Child" : ["16", "17", "18", "19", "20", "21", "22", "25", "26", "27", "28"],
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
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.ref_4oPi_table_256_V_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.fourth_order_double_4_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.fourth_order_double_5_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.fourth_order_double_6_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.fourth_order_double_7_U", "Parent" : "15"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.fourth_order_double_s_U", "Parent" : "15"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268", "Parent" : "15", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.out_bits_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.grp_scaled_fixed2ieee_fu_268.c_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.fft_streaming_mulibs_U9", "Parent" : "15"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxjbC_U10", "Parent" : "15"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U11", "Parent" : "15"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_309.fft_streaming_muxkbM_U12", "Parent" : "15"}]}


set ArgLastReadFirstWriteLatency {
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
		prescale {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "69761", "Max" : "70785"}
	, {"Name" : "Interval", "Min" : "69761", "Max" : "70785"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	X_R_V { ap_memory {  { X_R_V_address0 mem_address 1 10 }  { X_R_V_ce0 mem_ce 1 1 }  { X_R_V_q0 mem_dout 0 22 }  { X_R_V_address1 MemPortADDR2 1 10 }  { X_R_V_ce1 MemPortCE2 1 1 }  { X_R_V_q1 MemPortDOUT2 0 22 } } }
	X_I_V { ap_memory {  { X_I_V_address0 mem_address 1 10 }  { X_I_V_ce0 mem_ce 1 1 }  { X_I_V_q0 mem_dout 0 22 }  { X_I_V_address1 MemPortADDR2 1 10 }  { X_I_V_ce1 MemPortCE2 1 1 }  { X_I_V_q1 MemPortDOUT2 0 22 } } }
	Out_R_V { ap_memory {  { Out_R_V_address0 mem_address 1 10 }  { Out_R_V_ce0 mem_ce 1 1 }  { Out_R_V_we0 mem_we 1 1 }  { Out_R_V_d0 mem_din 1 22 }  { Out_R_V_address1 MemPortADDR2 1 10 }  { Out_R_V_ce1 MemPortCE2 1 1 }  { Out_R_V_we1 MemPortWE2 1 1 }  { Out_R_V_d1 MemPortDIN2 1 22 } } }
	Out_I_V { ap_memory {  { Out_I_V_address0 mem_address 1 10 }  { Out_I_V_ce0 mem_ce 1 1 }  { Out_I_V_we0 mem_we 1 1 }  { Out_I_V_d0 mem_din 1 22 }  { Out_I_V_address1 MemPortADDR2 1 10 }  { Out_I_V_ce1 MemPortCE2 1 1 }  { Out_I_V_we1 MemPortWE2 1 1 }  { Out_I_V_d1 MemPortDIN2 1 22 } } }
}
