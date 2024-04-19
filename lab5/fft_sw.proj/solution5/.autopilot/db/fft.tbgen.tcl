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
	{ X_R float 32 regular {array 1024 { 2 1 } 1 1 }  }
	{ X_I float 32 regular {array 1024 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X_R", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "X_R","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "X_I", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "X_I","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ X_R_address0 sc_out sc_lv 10 signal 0 } 
	{ X_R_ce0 sc_out sc_logic 1 signal 0 } 
	{ X_R_we0 sc_out sc_logic 1 signal 0 } 
	{ X_R_d0 sc_out sc_lv 32 signal 0 } 
	{ X_R_q0 sc_in sc_lv 32 signal 0 } 
	{ X_R_address1 sc_out sc_lv 10 signal 0 } 
	{ X_R_ce1 sc_out sc_logic 1 signal 0 } 
	{ X_R_q1 sc_in sc_lv 32 signal 0 } 
	{ X_I_address0 sc_out sc_lv 10 signal 1 } 
	{ X_I_ce0 sc_out sc_logic 1 signal 1 } 
	{ X_I_we0 sc_out sc_logic 1 signal 1 } 
	{ X_I_d0 sc_out sc_lv 32 signal 1 } 
	{ X_I_q0 sc_in sc_lv 32 signal 1 } 
	{ X_I_address1 sc_out sc_lv 10 signal 1 } 
	{ X_I_ce1 sc_out sc_logic 1 signal 1 } 
	{ X_I_we1 sc_out sc_logic 1 signal 1 } 
	{ X_I_d1 sc_out sc_lv 32 signal 1 } 
	{ X_I_q1 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "X_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R", "role": "address0" }} , 
 	{ "name": "X_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "ce0" }} , 
 	{ "name": "X_R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "we0" }} , 
 	{ "name": "X_R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "d0" }} , 
 	{ "name": "X_R_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "q0" }} , 
 	{ "name": "X_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R", "role": "address1" }} , 
 	{ "name": "X_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "ce1" }} , 
 	{ "name": "X_R_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "q1" }} , 
 	{ "name": "X_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I", "role": "address0" }} , 
 	{ "name": "X_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "ce0" }} , 
 	{ "name": "X_I_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "we0" }} , 
 	{ "name": "X_I_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "d0" }} , 
 	{ "name": "X_I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "q0" }} , 
 	{ "name": "X_I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I", "role": "address1" }} , 
 	{ "name": "X_I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "ce1" }} , 
 	{ "name": "X_I_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "we1" }} , 
 	{ "name": "X_I_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "d1" }} , 
 	{ "name": "X_I_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "15", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "fft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "383221", "EstimateLatencyMax" : "384965",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_144", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state37_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_151", "FromFinalSV" : "36", "FromAddress" : "X_R_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state49_pp0_iter4_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "48", "ToFinalState" : "ap_enable_state49_pp0_iter4_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_184", "ToFinalSV" : "48", "ToAddress" : "X_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_144", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state37_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_151", "FromFinalSV" : "36", "FromAddress" : "X_R_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state56_pp0_iter6_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter7", "ToInitialOperation" : "ap_enable_operation_195", "ToInitialSV" : "55", "ToFinalState" : "ap_enable_state56_pp0_iter6_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_195", "ToFinalSV" : "55", "ToAddress" : "X_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_146", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state37_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_152", "FromFinalSV" : "36", "FromAddress" : "X_I_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state50_pp0_iter4_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "49", "ToFinalState" : "ap_enable_state50_pp0_iter4_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "49", "ToAddress" : "X_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state36_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_146", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state37_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_152", "FromFinalSV" : "36", "FromAddress" : "X_I_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state61_pp0_iter8_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_204", "ToInitialSV" : "60", "ToFinalState" : "ap_enable_state61_pp0_iter8_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter8", "ToFinalOperation" : "ap_enable_operation_204", "ToFinalSV" : "60", "ToAddress" : "X_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state42_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_168", "FromInitialSV" : "41", "FromFinalState" : "ap_enable_state43_pp0_iter2_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_172", "FromFinalSV" : "42", "FromAddress" : "X_R_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state49_pp0_iter4_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "48", "ToFinalState" : "ap_enable_state49_pp0_iter4_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_184", "ToFinalSV" : "48", "ToAddress" : "X_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state42_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_168", "FromInitialSV" : "41", "FromFinalState" : "ap_enable_state43_pp0_iter2_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_172", "FromFinalSV" : "42", "FromAddress" : "X_R_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state56_pp0_iter6_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter7", "ToInitialOperation" : "ap_enable_operation_195", "ToInitialSV" : "55", "ToFinalState" : "ap_enable_state56_pp0_iter6_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_195", "ToFinalSV" : "55", "ToAddress" : "X_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state42_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_169", "FromInitialSV" : "41", "FromFinalState" : "ap_enable_state43_pp0_iter2_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_173", "FromFinalSV" : "42", "FromAddress" : "X_I_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state50_pp0_iter4_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "49", "ToFinalState" : "ap_enable_state50_pp0_iter4_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "49", "ToAddress" : "X_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state42_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_169", "FromInitialSV" : "41", "FromFinalState" : "ap_enable_state43_pp0_iter2_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_173", "FromFinalSV" : "42", "FromAddress" : "X_I_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state61_pp0_iter8_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_204", "ToInitialSV" : "60", "ToFinalState" : "ap_enable_state61_pp0_iter8_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter8", "ToFinalOperation" : "ap_enable_operation_204", "ToFinalSV" : "60", "ToAddress" : "X_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state49_pp0_iter4_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "48", "FromFinalState" : "ap_enable_state49_pp0_iter4_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_184", "FromFinalSV" : "48", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_144", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state37_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_151", "ToFinalSV" : "36", "ToAddress" : "X_R_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state36_pp0_iter0_stage0", "ap_enable_state42_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state49_pp0_iter4_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "48", "FromFinalState" : "ap_enable_state49_pp0_iter4_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_184", "FromFinalSV" : "48", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state42_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_168", "ToInitialSV" : "41", "ToFinalState" : "ap_enable_state43_pp0_iter2_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_172", "ToFinalSV" : "42", "ToAddress" : "X_R_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state42_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state49_pp0_iter4_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "48", "FromFinalState" : "ap_enable_state49_pp0_iter4_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_184", "FromFinalSV" : "48", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state50_pp0_iter4_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_187", "ToInitialSV" : "49", "ToFinalState" : "ap_enable_state51_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_188", "ToFinalSV" : "50", "ToAddress" : "X_R_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state49_pp0_iter4_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "48", "FromFinalState" : "ap_enable_state49_pp0_iter4_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_184", "FromFinalSV" : "48", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state56_pp0_iter6_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter7", "ToInitialOperation" : "ap_enable_operation_195", "ToInitialSV" : "55", "ToFinalState" : "ap_enable_state56_pp0_iter6_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_195", "ToFinalSV" : "55", "ToAddress" : "X_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state50_pp0_iter4_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "49", "FromFinalState" : "ap_enable_state50_pp0_iter4_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "49", "FromAddress" : "X_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_146", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state37_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_152", "ToFinalSV" : "36", "ToAddress" : "X_I_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state36_pp0_iter0_stage0", "ap_enable_state42_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state50_pp0_iter4_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "49", "FromFinalState" : "ap_enable_state50_pp0_iter4_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "49", "FromAddress" : "X_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state42_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_169", "ToInitialSV" : "41", "ToFinalState" : "ap_enable_state43_pp0_iter2_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_173", "ToFinalSV" : "42", "ToAddress" : "X_I_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state42_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state50_pp0_iter4_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "49", "FromFinalState" : "ap_enable_state50_pp0_iter4_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "49", "FromAddress" : "X_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state52_pp0_iter5_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter6", "ToInitialOperation" : "ap_enable_operation_190", "ToInitialSV" : "51", "ToFinalState" : "ap_enable_state53_pp0_iter5_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_192", "ToFinalSV" : "52", "ToAddress" : "X_I_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state50_pp0_iter4_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "49", "FromFinalState" : "ap_enable_state50_pp0_iter4_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "49", "FromAddress" : "X_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state61_pp0_iter8_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_204", "ToInitialSV" : "60", "ToFinalState" : "ap_enable_state61_pp0_iter8_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter8", "ToFinalOperation" : "ap_enable_operation_204", "ToFinalSV" : "60", "ToAddress" : "X_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state50_pp0_iter4_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_187", "FromInitialSV" : "49", "FromFinalState" : "ap_enable_state51_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_188", "FromFinalSV" : "50", "FromAddress" : "X_R_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state49_pp0_iter4_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "48", "ToFinalState" : "ap_enable_state49_pp0_iter4_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_184", "ToFinalSV" : "48", "ToAddress" : "X_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state49_pp0_iter4_stage1", "ap_enable_state52_pp0_iter5_stage1"]},
			{"FromInitialState" : "ap_enable_state50_pp0_iter4_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_187", "FromInitialSV" : "49", "FromFinalState" : "ap_enable_state51_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_188", "FromFinalSV" : "50", "FromAddress" : "X_R_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state56_pp0_iter6_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter7", "ToInitialOperation" : "ap_enable_operation_195", "ToInitialSV" : "55", "ToFinalState" : "ap_enable_state56_pp0_iter6_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_195", "ToFinalSV" : "55", "ToAddress" : "X_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state52_pp0_iter5_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_190", "FromInitialSV" : "51", "FromFinalState" : "ap_enable_state53_pp0_iter5_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_192", "FromFinalSV" : "52", "FromAddress" : "X_I_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state50_pp0_iter4_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "49", "ToFinalState" : "ap_enable_state50_pp0_iter4_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "49", "ToAddress" : "X_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state50_pp0_iter4_stage2", "ap_enable_state53_pp0_iter5_stage2"]},
			{"FromInitialState" : "ap_enable_state52_pp0_iter5_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_190", "FromInitialSV" : "51", "FromFinalState" : "ap_enable_state53_pp0_iter5_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_192", "FromFinalSV" : "52", "FromAddress" : "X_I_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state61_pp0_iter8_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_204", "ToInitialSV" : "60", "ToFinalState" : "ap_enable_state61_pp0_iter8_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter8", "ToFinalOperation" : "ap_enable_operation_204", "ToFinalSV" : "60", "ToAddress" : "X_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state56_pp0_iter6_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_195", "FromInitialSV" : "55", "FromFinalState" : "ap_enable_state56_pp0_iter6_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_195", "FromFinalSV" : "55", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_144", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state37_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_151", "ToFinalSV" : "36", "ToAddress" : "X_R_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state36_pp0_iter0_stage0", "ap_enable_state42_pp0_iter2_stage0", "ap_enable_state51_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state56_pp0_iter6_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_195", "FromInitialSV" : "55", "FromFinalState" : "ap_enable_state56_pp0_iter6_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_195", "FromFinalSV" : "55", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state42_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_168", "ToInitialSV" : "41", "ToFinalState" : "ap_enable_state43_pp0_iter2_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_172", "ToFinalSV" : "42", "ToAddress" : "X_R_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state42_pp0_iter2_stage0", "ap_enable_state51_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state56_pp0_iter6_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_195", "FromInitialSV" : "55", "FromFinalState" : "ap_enable_state56_pp0_iter6_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_195", "FromFinalSV" : "55", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state49_pp0_iter4_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "48", "ToFinalState" : "ap_enable_state49_pp0_iter4_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_184", "ToFinalSV" : "48", "ToAddress" : "X_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state49_pp0_iter4_stage1", "ap_enable_state52_pp0_iter5_stage1"]},
			{"FromInitialState" : "ap_enable_state56_pp0_iter6_stage2", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_195", "FromInitialSV" : "55", "FromFinalState" : "ap_enable_state56_pp0_iter6_stage2", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_195", "FromFinalSV" : "55", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state50_pp0_iter4_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_187", "ToInitialSV" : "49", "ToFinalState" : "ap_enable_state51_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_188", "ToFinalSV" : "50", "ToAddress" : "X_R_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state50_pp0_iter4_stage2", "ap_enable_state53_pp0_iter5_stage2", "ap_enable_state56_pp0_iter6_stage2"]},
			{"FromInitialState" : "ap_enable_state61_pp0_iter8_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_204", "FromInitialSV" : "60", "FromFinalState" : "ap_enable_state61_pp0_iter8_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter8", "FromFinalOperation" : "ap_enable_operation_204", "FromFinalSV" : "60", "FromAddress" : "X_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state36_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_146", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state37_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_152", "ToFinalSV" : "36", "ToAddress" : "X_I_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state36_pp0_iter0_stage0", "ap_enable_state42_pp0_iter2_stage0", "ap_enable_state51_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state61_pp0_iter8_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_204", "FromInitialSV" : "60", "FromFinalState" : "ap_enable_state61_pp0_iter8_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter8", "FromFinalOperation" : "ap_enable_operation_204", "FromFinalSV" : "60", "FromAddress" : "X_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state42_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_169", "ToInitialSV" : "41", "ToFinalState" : "ap_enable_state43_pp0_iter2_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_173", "ToFinalSV" : "42", "ToAddress" : "X_I_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state42_pp0_iter2_stage0", "ap_enable_state51_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state61_pp0_iter8_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_204", "FromInitialSV" : "60", "FromFinalState" : "ap_enable_state61_pp0_iter8_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter8", "FromFinalOperation" : "ap_enable_operation_204", "FromFinalSV" : "60", "FromAddress" : "X_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state50_pp0_iter4_stage2", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "49", "ToFinalState" : "ap_enable_state50_pp0_iter4_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "49", "ToAddress" : "X_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state50_pp0_iter4_stage2", "ap_enable_state53_pp0_iter5_stage2", "ap_enable_state56_pp0_iter6_stage2"]},
			{"FromInitialState" : "ap_enable_state61_pp0_iter8_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_204", "FromInitialSV" : "60", "FromFinalState" : "ap_enable_state61_pp0_iter8_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter8", "FromFinalOperation" : "ap_enable_operation_204", "FromFinalSV" : "60", "FromAddress" : "X_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state52_pp0_iter5_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter6", "ToInitialOperation" : "ap_enable_operation_190", "ToInitialSV" : "51", "ToFinalState" : "ap_enable_state53_pp0_iter5_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_192", "ToFinalSV" : "52", "ToAddress" : "X_I_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "3", "Pragma" : "(fft_sw.cpp:64:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state52_pp0_iter5_stage1", "ap_enable_state61_pp0_iter8_stage1"]}],
		"WaitState" : [
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_179"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sin_or_cos_double_s_fu_198"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bit_reverse_fu_217"}],
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_bit_reverse_fu_217", "Port" : "X_R"}]},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_bit_reverse_fu_217", "Port" : "X_I"}]},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_179", "Port" : "ref_4oPi_table_256_V"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_198", "Port" : "ref_4oPi_table_256_V"}]},
			{"Name" : "fourth_order_double_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_179", "Port" : "fourth_order_double_4"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_198", "Port" : "fourth_order_double_4"}]},
			{"Name" : "fourth_order_double_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_179", "Port" : "fourth_order_double_5"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_198", "Port" : "fourth_order_double_5"}]},
			{"Name" : "fourth_order_double_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_179", "Port" : "fourth_order_double_6"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_198", "Port" : "fourth_order_double_6"}]},
			{"Name" : "fourth_order_double_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_179", "Port" : "fourth_order_double_7"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_198", "Port" : "fourth_order_double_7"}]},
			{"Name" : "fourth_order_double_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_179", "Port" : "fourth_order_double_s"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_double_s_fu_198", "Port" : "fourth_order_double_s"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "11", "12", "13", "14"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.ref_4oPi_table_256_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.fourth_order_double_4_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.fourth_order_double_5_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.fourth_order_double_6_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.fourth_order_double_7_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.fourth_order_double_s_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.grp_scaled_fixed2ieee_fu_268", "Parent" : "1", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.grp_scaled_fixed2ieee_fu_268.fft_mux_42_32_1_1_U3", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.grp_scaled_fixed2ieee_fu_268.fft_mux_42_32_1_1_U4", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.fft_mul_170ns_53nhbi_U8", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.fft_mux_83_1_1_1_U9", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.fft_mux_164_1_1_1_U10", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_179.fft_mux_164_1_1_1_U11", "Parent" : "1"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198", "Parent" : "0", "Child" : ["16", "17", "18", "19", "20", "21", "22", "25", "26", "27", "28"],
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
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.ref_4oPi_table_256_V_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.fourth_order_double_4_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.fourth_order_double_5_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.fourth_order_double_6_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.fourth_order_double_7_U", "Parent" : "15"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.fourth_order_double_s_U", "Parent" : "15"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.grp_scaled_fixed2ieee_fu_268", "Parent" : "15", "Child" : ["23", "24"],
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
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.grp_scaled_fixed2ieee_fu_268.fft_mux_42_32_1_1_U3", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.grp_scaled_fixed2ieee_fu_268.fft_mux_42_32_1_1_U4", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.fft_mul_170ns_53nhbi_U8", "Parent" : "15"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.fft_mux_83_1_1_1_U9", "Parent" : "15"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.fft_mux_164_1_1_1_U10", "Parent" : "15"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_198.fft_mux_164_1_1_1_U11", "Parent" : "15"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bit_reverse_fu_217", "Parent" : "0",
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
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_faddfsub_32nsibs_U24", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_faddfsub_32nsibs_U25", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_fmul_32ns_32njbC_U26", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_fmul_32ns_32njbC_U27", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_fptrunc_64ns_kbM_U28", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_fptrunc_64ns_kbM_U29", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_fpext_32ns_64lbW_U30", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_ddiv_64ns_64nmb6_U31", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_sitodp_32ns_6ncg_U32", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft {
		X_R {Type IO LastRead 49 FirstWrite 2}
		X_I {Type IO LastRead 51 FirstWrite 2}
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
		X_R {Type IO LastRead 2 FirstWrite 2}
		X_I {Type IO LastRead 2 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "383221", "Max" : "384965"}
	, {"Name" : "Interval", "Min" : "383222", "Max" : "384966"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	X_R { ap_memory {  { X_R_address0 mem_address 1 10 }  { X_R_ce0 mem_ce 1 1 }  { X_R_we0 mem_we 1 1 }  { X_R_d0 mem_din 1 32 }  { X_R_q0 mem_dout 0 32 }  { X_R_address1 MemPortADDR2 1 10 }  { X_R_ce1 MemPortCE2 1 1 }  { X_R_q1 MemPortDOUT2 0 32 } } }
	X_I { ap_memory {  { X_I_address0 mem_address 1 10 }  { X_I_ce0 mem_ce 1 1 }  { X_I_we0 mem_we 1 1 }  { X_I_d0 mem_din 1 32 }  { X_I_q0 mem_dout 0 32 }  { X_I_address1 MemPortADDR2 1 10 }  { X_I_ce1 MemPortCE2 1 1 }  { X_I_we1 MemPortWE2 1 1 }  { X_I_d1 MemPortDIN2 1 32 }  { X_I_q1 MemPortDOUT2 0 32 } } }
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
