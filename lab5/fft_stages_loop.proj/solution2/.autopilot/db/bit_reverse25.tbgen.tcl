set moduleName bit_reverse25
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
set C_modelName {bit_reverse25}
set C_modelType { void 0 }
set C_modelArgList {
	{ X_R_V int 22 regular {array 1024 { 1 1 } 1 1 }  }
	{ X_I_V int 22 regular {array 1024 { 1 1 } 1 1 }  }
	{ OUT_R_V int 22 regular {array 1024 { 0 0 } 0 1 }  }
	{ OUT_I_V int 22 regular {array 1024 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X_R_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_V", "interface" : "memory", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_R_V", "interface" : "memory", "bitwidth" : 22, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_V", "interface" : "memory", "bitwidth" : 22, "direction" : "WRITEONLY"} ]}
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
	{ OUT_R_V_address0 sc_out sc_lv 10 signal 2 } 
	{ OUT_R_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_V_we0 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_V_d0 sc_out sc_lv 22 signal 2 } 
	{ OUT_R_V_address1 sc_out sc_lv 10 signal 2 } 
	{ OUT_R_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_V_we1 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_V_d1 sc_out sc_lv 22 signal 2 } 
	{ OUT_I_V_address0 sc_out sc_lv 10 signal 3 } 
	{ OUT_I_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_V_we0 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_V_d0 sc_out sc_lv 22 signal 3 } 
	{ OUT_I_V_address1 sc_out sc_lv 10 signal 3 } 
	{ OUT_I_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_V_we1 sc_out sc_logic 1 signal 3 } 
	{ OUT_I_V_d1 sc_out sc_lv 22 signal 3 } 
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
 	{ "name": "OUT_R_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "address0" }} , 
 	{ "name": "OUT_R_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "ce0" }} , 
 	{ "name": "OUT_R_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "we0" }} , 
 	{ "name": "OUT_R_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "d0" }} , 
 	{ "name": "OUT_R_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "address1" }} , 
 	{ "name": "OUT_R_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "ce1" }} , 
 	{ "name": "OUT_R_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "we1" }} , 
 	{ "name": "OUT_R_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_R_V", "role": "d1" }} , 
 	{ "name": "OUT_I_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "address0" }} , 
 	{ "name": "OUT_I_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "ce0" }} , 
 	{ "name": "OUT_I_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "we0" }} , 
 	{ "name": "OUT_I_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "d0" }} , 
 	{ "name": "OUT_I_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "address1" }} , 
 	{ "name": "OUT_I_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "ce1" }} , 
 	{ "name": "OUT_I_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "we1" }} , 
 	{ "name": "OUT_I_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "OUT_I_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "bit_reverse25",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_26", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_26", "FromFinalSV" : "2", "FromAddress" : "OUT_R_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_37", "ToFinalSV" : "3", "ToAddress" : "OUT_R_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(fft_stages_loop.cpp:25:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_31", "FromFinalSV" : "2", "FromAddress" : "OUT_I_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_40", "ToFinalSV" : "3", "ToAddress" : "OUT_I_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(fft_stages_loop.cpp:25:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_37", "FromFinalSV" : "3", "FromAddress" : "OUT_R_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_26", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_26", "ToFinalSV" : "2", "ToAddress" : "OUT_R_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(fft_stages_loop.cpp:25:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter1_stage0", "ap_enable_state4_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_40", "FromFinalSV" : "3", "FromAddress" : "OUT_I_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_31", "ToFinalSV" : "2", "ToAddress" : "OUT_I_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(fft_stages_loop.cpp:25:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter1_stage0", "ap_enable_state4_pp0_iter2_stage0"]}],
		"Port" : [
			{"Name" : "X_R_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_R_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "OUT_I_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]}]}


set ArgLastReadFirstWriteLatency {
	bit_reverse25 {
		X_R_V {Type I LastRead 2 FirstWrite -1}
		X_I_V {Type I LastRead 2 FirstWrite -1}
		OUT_R_V {Type O LastRead -1 FirstWrite 2}
		OUT_I_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1027", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "1027", "Max" : "1027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	X_R_V { ap_memory {  { X_R_V_address0 mem_address 1 10 }  { X_R_V_ce0 mem_ce 1 1 }  { X_R_V_q0 mem_dout 0 22 }  { X_R_V_address1 MemPortADDR2 1 10 }  { X_R_V_ce1 MemPortCE2 1 1 }  { X_R_V_q1 MemPortDOUT2 0 22 } } }
	X_I_V { ap_memory {  { X_I_V_address0 mem_address 1 10 }  { X_I_V_ce0 mem_ce 1 1 }  { X_I_V_q0 mem_dout 0 22 }  { X_I_V_address1 MemPortADDR2 1 10 }  { X_I_V_ce1 MemPortCE2 1 1 }  { X_I_V_q1 MemPortDOUT2 0 22 } } }
	OUT_R_V { ap_memory {  { OUT_R_V_address0 mem_address 1 10 }  { OUT_R_V_ce0 mem_ce 1 1 }  { OUT_R_V_we0 mem_we 1 1 }  { OUT_R_V_d0 mem_din 1 22 }  { OUT_R_V_address1 MemPortADDR2 1 10 }  { OUT_R_V_ce1 MemPortCE2 1 1 }  { OUT_R_V_we1 MemPortWE2 1 1 }  { OUT_R_V_d1 MemPortDIN2 1 22 } } }
	OUT_I_V { ap_memory {  { OUT_I_V_address0 mem_address 1 10 }  { OUT_I_V_ce0 mem_ce 1 1 }  { OUT_I_V_we0 mem_we 1 1 }  { OUT_I_V_d0 mem_din 1 22 }  { OUT_I_V_address1 MemPortADDR2 1 10 }  { OUT_I_V_ce1 MemPortCE2 1 1 }  { OUT_I_V_we1 MemPortWE2 1 1 }  { OUT_I_V_d1 MemPortDIN2 1 22 } } }
}
