set moduleName fft
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
set C_modelName {fft}
set C_modelType { void 0 }
set C_modelArgList {
	{ X_R_V int 22 regular {array 1024 { 2 2 } 1 1 }  }
	{ X_I_V int 22 regular {array 1024 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X_R_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":21,"cElement": [{"cName": "X_R.V","cData": "int22","bit_use": { "low": 0,"up": 21},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "X_I_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":21,"cElement": [{"cName": "X_I.V","cData": "int22","bit_use": { "low": 0,"up": 21},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ X_R_V_address0 sc_out sc_lv 10 signal 0 } 
	{ X_R_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ X_R_V_we0 sc_out sc_logic 1 signal 0 } 
	{ X_R_V_d0 sc_out sc_lv 22 signal 0 } 
	{ X_R_V_q0 sc_in sc_lv 22 signal 0 } 
	{ X_R_V_address1 sc_out sc_lv 10 signal 0 } 
	{ X_R_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ X_R_V_we1 sc_out sc_logic 1 signal 0 } 
	{ X_R_V_d1 sc_out sc_lv 22 signal 0 } 
	{ X_R_V_q1 sc_in sc_lv 22 signal 0 } 
	{ X_I_V_address0 sc_out sc_lv 10 signal 1 } 
	{ X_I_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ X_I_V_we0 sc_out sc_logic 1 signal 1 } 
	{ X_I_V_d0 sc_out sc_lv 22 signal 1 } 
	{ X_I_V_q0 sc_in sc_lv 22 signal 1 } 
	{ X_I_V_address1 sc_out sc_lv 10 signal 1 } 
	{ X_I_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ X_I_V_we1 sc_out sc_logic 1 signal 1 } 
	{ X_I_V_d1 sc_out sc_lv 22 signal 1 } 
	{ X_I_V_q1 sc_in sc_lv 22 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "X_R_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R_V", "role": "address0" }} , 
 	{ "name": "X_R_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "ce0" }} , 
 	{ "name": "X_R_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "we0" }} , 
 	{ "name": "X_R_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "d0" }} , 
 	{ "name": "X_R_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "q0" }} , 
 	{ "name": "X_R_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R_V", "role": "address1" }} , 
 	{ "name": "X_R_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "ce1" }} , 
 	{ "name": "X_R_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_V", "role": "we1" }} , 
 	{ "name": "X_R_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "d1" }} , 
 	{ "name": "X_R_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_R_V", "role": "q1" }} , 
 	{ "name": "X_I_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I_V", "role": "address0" }} , 
 	{ "name": "X_I_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "ce0" }} , 
 	{ "name": "X_I_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "we0" }} , 
 	{ "name": "X_I_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "d0" }} , 
 	{ "name": "X_I_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "q0" }} , 
 	{ "name": "X_I_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I_V", "role": "address1" }} , 
 	{ "name": "X_I_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "ce1" }} , 
 	{ "name": "X_I_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_V", "role": "we1" }} , 
 	{ "name": "X_I_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "d1" }} , 
 	{ "name": "X_I_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "X_I_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "15", "29", "30", "31"],
		"CDFG" : "fft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "378171", "EstimateLatencyMax" : "379915",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state34_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_300", "FromInitialSV" : "33", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_309", "FromFinalSV" : "34", "FromAddress" : "X_R_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state35_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_319", "ToInitialSV" : "34", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_319", "ToFinalSV" : "34", "ToAddress" : "X_R_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state34_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_300", "FromInitialSV" : "33", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_309", "FromFinalSV" : "34", "FromAddress" : "X_R_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state38_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_330", "ToInitialSV" : "37", "ToFinalState" : "ap_enable_state38_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_330", "ToFinalSV" : "37", "ToAddress" : "X_R_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state34_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_302", "FromInitialSV" : "33", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_311", "FromFinalSV" : "34", "FromAddress" : "X_I_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_326", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state36_pp0_iter0_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_326", "ToFinalSV" : "35", "ToAddress" : "X_I_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state34_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_302", "FromInitialSV" : "33", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_311", "FromFinalSV" : "34", "FromAddress" : "X_I_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state39_pp0_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_338", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_338", "ToFinalSV" : "38", "ToAddress" : "X_I_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state34_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_305", "FromInitialSV" : "33", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_317", "FromFinalSV" : "34", "FromAddress" : "X_R_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state35_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_319", "ToInitialSV" : "34", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_319", "ToFinalSV" : "34", "ToAddress" : "X_R_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state34_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_305", "FromInitialSV" : "33", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_317", "FromFinalSV" : "34", "FromAddress" : "X_R_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state38_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_330", "ToInitialSV" : "37", "ToFinalState" : "ap_enable_state38_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_330", "ToFinalSV" : "37", "ToAddress" : "X_R_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state35_pp0_iter0_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_319", "FromInitialSV" : "34", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_319", "FromFinalSV" : "34", "FromAddress" : "X_R_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state34_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_300", "ToInitialSV" : "33", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_309", "ToFinalSV" : "34", "ToAddress" : "X_R_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state34_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state35_pp0_iter0_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_319", "FromInitialSV" : "34", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_319", "FromFinalSV" : "34", "FromAddress" : "X_R_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state34_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_305", "ToInitialSV" : "33", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_317", "ToFinalSV" : "34", "ToAddress" : "X_R_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state34_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state35_pp0_iter0_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_319", "FromInitialSV" : "34", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_319", "FromFinalSV" : "34", "FromAddress" : "X_R_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_327", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state37_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_328", "ToFinalSV" : "36", "ToAddress" : "X_R_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state35_pp0_iter0_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_319", "FromInitialSV" : "34", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_319", "FromFinalSV" : "34", "FromAddress" : "X_R_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state38_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_330", "ToInitialSV" : "37", "ToFinalState" : "ap_enable_state38_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_330", "ToFinalSV" : "37", "ToAddress" : "X_R_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state34_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_307", "FromInitialSV" : "33", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_320", "FromFinalSV" : "34", "FromAddress" : "X_I_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_326", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state36_pp0_iter0_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_326", "ToFinalSV" : "35", "ToAddress" : "X_I_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state34_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_307", "FromInitialSV" : "33", "FromFinalState" : "ap_enable_state35_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_320", "FromFinalSV" : "34", "FromAddress" : "X_I_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state39_pp0_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_338", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_338", "ToFinalSV" : "38", "ToAddress" : "X_I_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_326", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state36_pp0_iter0_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_326", "FromFinalSV" : "35", "FromAddress" : "X_I_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state34_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_302", "ToInitialSV" : "33", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_311", "ToFinalSV" : "34", "ToAddress" : "X_I_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state34_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_326", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state36_pp0_iter0_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_326", "FromFinalSV" : "35", "FromAddress" : "X_I_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state34_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_307", "ToInitialSV" : "33", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_320", "ToFinalSV" : "34", "ToAddress" : "X_I_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state34_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_326", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state36_pp0_iter0_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_326", "FromFinalSV" : "35", "FromAddress" : "X_I_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state38_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_331", "ToInitialSV" : "37", "ToFinalState" : "ap_enable_state39_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_336", "ToFinalSV" : "38", "ToAddress" : "X_I_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_326", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state36_pp0_iter0_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_326", "FromFinalSV" : "35", "FromAddress" : "X_I_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state39_pp0_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_338", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_338", "ToFinalSV" : "38", "ToAddress" : "X_I_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_327", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state37_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_328", "FromFinalSV" : "36", "FromAddress" : "X_R_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state35_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_319", "ToInitialSV" : "34", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_319", "ToFinalSV" : "34", "ToAddress" : "X_R_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state35_pp0_iter0_stage1", "ap_enable_state38_pp0_iter1_stage1"]},
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_327", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state37_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_328", "FromFinalSV" : "36", "FromAddress" : "X_R_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state38_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_330", "ToInitialSV" : "37", "ToFinalState" : "ap_enable_state38_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_330", "ToFinalSV" : "37", "ToAddress" : "X_R_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state38_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_330", "FromInitialSV" : "37", "FromFinalState" : "ap_enable_state38_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_330", "FromFinalSV" : "37", "FromAddress" : "X_R_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state34_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_300", "ToInitialSV" : "33", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_309", "ToFinalSV" : "34", "ToAddress" : "X_R_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state34_pp0_iter0_stage0", "ap_enable_state37_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state38_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_330", "FromInitialSV" : "37", "FromFinalState" : "ap_enable_state38_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_330", "FromFinalSV" : "37", "FromAddress" : "X_R_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state34_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_305", "ToInitialSV" : "33", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_317", "ToFinalSV" : "34", "ToAddress" : "X_R_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state34_pp0_iter0_stage0", "ap_enable_state37_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state38_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_330", "FromInitialSV" : "37", "FromFinalState" : "ap_enable_state38_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_330", "FromFinalSV" : "37", "FromAddress" : "X_R_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state35_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_319", "ToInitialSV" : "34", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_319", "ToFinalSV" : "34", "ToAddress" : "X_R_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state35_pp0_iter0_stage1", "ap_enable_state38_pp0_iter1_stage1"]},
			{"FromInitialState" : "ap_enable_state38_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_330", "FromInitialSV" : "37", "FromFinalState" : "ap_enable_state38_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_330", "FromFinalSV" : "37", "FromAddress" : "X_R_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_327", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state37_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_328", "ToFinalSV" : "36", "ToAddress" : "X_R_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state36_pp0_iter0_stage2", "ap_enable_state39_pp0_iter1_stage2"]},
			{"FromInitialState" : "ap_enable_state38_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_331", "FromInitialSV" : "37", "FromFinalState" : "ap_enable_state39_pp0_iter1_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_336", "FromFinalSV" : "38", "FromAddress" : "X_I_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_326", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state36_pp0_iter0_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_326", "ToFinalSV" : "35", "ToAddress" : "X_I_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state36_pp0_iter0_stage2", "ap_enable_state39_pp0_iter1_stage2"]},
			{"FromInitialState" : "ap_enable_state38_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_331", "FromInitialSV" : "37", "FromFinalState" : "ap_enable_state39_pp0_iter1_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_336", "FromFinalSV" : "38", "FromAddress" : "X_I_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state39_pp0_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_338", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_338", "ToFinalSV" : "38", "ToAddress" : "X_I_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state39_pp0_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_338", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter1_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_338", "FromFinalSV" : "38", "FromAddress" : "X_I_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state34_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_302", "ToInitialSV" : "33", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_311", "ToFinalSV" : "34", "ToAddress" : "X_I_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state34_pp0_iter0_stage0", "ap_enable_state37_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state39_pp0_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_338", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter1_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_338", "FromFinalSV" : "38", "FromAddress" : "X_I_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state34_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_307", "ToInitialSV" : "33", "ToFinalState" : "ap_enable_state35_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_320", "ToFinalSV" : "34", "ToAddress" : "X_I_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state34_pp0_iter0_stage0", "ap_enable_state37_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state39_pp0_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_338", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter1_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_338", "FromFinalSV" : "38", "FromAddress" : "X_I_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_326", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state36_pp0_iter0_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_326", "ToFinalSV" : "35", "ToAddress" : "X_I_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state36_pp0_iter0_stage2", "ap_enable_state39_pp0_iter1_stage2"]},
			{"FromInitialState" : "ap_enable_state39_pp0_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_338", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter1_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_338", "FromFinalSV" : "38", "FromAddress" : "X_I_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state38_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_331", "ToInitialSV" : "37", "ToFinalState" : "ap_enable_state39_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_336", "ToFinalSV" : "38", "ToAddress" : "X_I_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state38_pp0_iter1_stage1"]}],
		"WaitState" : [
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_262"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_281"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bit_reverse_fu_300"}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_bit_reverse_fu_300", "Port" : "X_R_V"}]},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_bit_reverse_fu_300", "Port" : "X_I_V"}]},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_262", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_281", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_262", "Port" : "fourth_order_double_4"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_281", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_262", "Port" : "fourth_order_double_5"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_281", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_262", "Port" : "fourth_order_double_6"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_281", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_262", "Port" : "fourth_order_double_7"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_281", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_262", "Port" : "fourth_order_double_s"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_281", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "11", "12", "13", "14"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "25",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.ref_4oPi_table_256_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.fourth_order_double_4_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.fourth_order_double_5_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.fourth_order_double_6_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.fourth_order_double_7_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.fourth_order_double_s_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.grp_scaled_fixed2ieee_fu_268", "Parent" : "1", "Child" : ["9", "10"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.grp_scaled_fixed2ieee_fu_268.fft_mux_42_32_1_1_U3", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.grp_scaled_fixed2ieee_fu_268.fft_mux_42_32_1_1_U4", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.fft_mul_170ns_53nhbi_U8", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.fft_mux_83_1_1_1_U9", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.fft_mux_164_1_1_1_U10", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_262.fft_mux_164_1_1_1_U11", "Parent" : "1"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281", "Parent" : "0", "Child" : ["16", "17", "18", "19", "20", "21", "22", "25", "26", "27", "28"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "25",
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
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.ref_4oPi_table_256_V_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.fourth_order_double_4_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.fourth_order_double_5_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.fourth_order_double_6_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.fourth_order_double_7_U", "Parent" : "15"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.fourth_order_double_s_U", "Parent" : "15"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.grp_scaled_fixed2ieee_fu_268", "Parent" : "15", "Child" : ["23", "24"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.grp_scaled_fixed2ieee_fu_268.fft_mux_42_32_1_1_U3", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.grp_scaled_fixed2ieee_fu_268.fft_mux_42_32_1_1_U4", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.fft_mul_170ns_53nhbi_U8", "Parent" : "15"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.fft_mux_83_1_1_1_U9", "Parent" : "15"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.fft_mux_164_1_1_1_U10", "Parent" : "15"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_281.fft_mux_164_1_1_1_U11", "Parent" : "15"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bit_reverse_fu_300", "Parent" : "0",
		"CDFG" : "bit_reverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2049", "EstimateLatencyMax" : "3073",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_ddiv_64ns_64nibs_U24", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_sitodp_32ns_6jbC_U25", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft {
		X_R_V {Type IO LastRead 35 FirstWrite 2}
		X_I_V {Type IO LastRead 37 FirstWrite 2}
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
	bit_reverse {
		X_R_V {Type IO LastRead 2 FirstWrite 2}
		X_I_V {Type IO LastRead 2 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "378171", "Max" : "379915"}
	, {"Name" : "Interval", "Min" : "378172", "Max" : "379916"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	X_R_V { ap_memory {  { X_R_V_address0 mem_address 1 10 }  { X_R_V_ce0 mem_ce 1 1 }  { X_R_V_we0 mem_we 1 1 }  { X_R_V_d0 mem_din 1 22 }  { X_R_V_q0 mem_dout 0 22 }  { X_R_V_address1 MemPortADDR2 1 10 }  { X_R_V_ce1 MemPortCE2 1 1 }  { X_R_V_we1 MemPortWE2 1 1 }  { X_R_V_d1 MemPortDIN2 1 22 }  { X_R_V_q1 MemPortDOUT2 0 22 } } }
	X_I_V { ap_memory {  { X_I_V_address0 mem_address 1 10 }  { X_I_V_ce0 mem_ce 1 1 }  { X_I_V_we0 mem_we 1 1 }  { X_I_V_d0 mem_din 1 22 }  { X_I_V_q0 mem_dout 0 22 }  { X_I_V_address1 MemPortADDR2 1 10 }  { X_I_V_ce1 MemPortCE2 1 1 }  { X_I_V_we1 MemPortWE2 1 1 }  { X_I_V_d1 MemPortDIN2 1 22 }  { X_I_V_q1 MemPortDOUT2 0 22 } } }
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
