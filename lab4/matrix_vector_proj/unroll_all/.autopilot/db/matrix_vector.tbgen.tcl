set moduleName matrix_vector
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
set C_modelName {matrix_vector}
set C_modelType { void 0 }
set C_modelArgList {
	{ M int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ V_In int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ V_Out int 32 regular {array 8 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "M", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "V_In", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_In","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "V_Out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "V_Out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ M_address0 sc_out sc_lv 6 signal 0 } 
	{ M_ce0 sc_out sc_logic 1 signal 0 } 
	{ M_q0 sc_in sc_lv 32 signal 0 } 
	{ M_address1 sc_out sc_lv 6 signal 0 } 
	{ M_ce1 sc_out sc_logic 1 signal 0 } 
	{ M_q1 sc_in sc_lv 32 signal 0 } 
	{ V_In_address0 sc_out sc_lv 3 signal 1 } 
	{ V_In_ce0 sc_out sc_logic 1 signal 1 } 
	{ V_In_q0 sc_in sc_lv 32 signal 1 } 
	{ V_In_address1 sc_out sc_lv 3 signal 1 } 
	{ V_In_ce1 sc_out sc_logic 1 signal 1 } 
	{ V_In_q1 sc_in sc_lv 32 signal 1 } 
	{ V_Out_address0 sc_out sc_lv 3 signal 2 } 
	{ V_Out_ce0 sc_out sc_logic 1 signal 2 } 
	{ V_Out_we0 sc_out sc_logic 1 signal 2 } 
	{ V_Out_d0 sc_out sc_lv 32 signal 2 } 
	{ V_Out_address1 sc_out sc_lv 3 signal 2 } 
	{ V_Out_ce1 sc_out sc_logic 1 signal 2 } 
	{ V_Out_we1 sc_out sc_logic 1 signal 2 } 
	{ V_Out_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "M_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "M", "role": "address0" }} , 
 	{ "name": "M_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "ce0" }} , 
 	{ "name": "M_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "q0" }} , 
 	{ "name": "M_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "M", "role": "address1" }} , 
 	{ "name": "M_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "ce1" }} , 
 	{ "name": "M_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "q1" }} , 
 	{ "name": "V_In_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "V_In", "role": "address0" }} , 
 	{ "name": "V_In_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_In", "role": "ce0" }} , 
 	{ "name": "V_In_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In", "role": "q0" }} , 
 	{ "name": "V_In_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "V_In", "role": "address1" }} , 
 	{ "name": "V_In_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_In", "role": "ce1" }} , 
 	{ "name": "V_In_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_In", "role": "q1" }} , 
 	{ "name": "V_Out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "V_Out", "role": "address0" }} , 
 	{ "name": "V_Out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_Out", "role": "ce0" }} , 
 	{ "name": "V_Out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_Out", "role": "we0" }} , 
 	{ "name": "V_Out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_Out", "role": "d0" }} , 
 	{ "name": "V_Out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "V_Out", "role": "address1" }} , 
 	{ "name": "V_Out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_Out", "role": "ce1" }} , 
 	{ "name": "V_Out_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V_Out", "role": "we1" }} , 
 	{ "name": "V_Out_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V_Out", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "matrix_vector",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "M", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "V_In", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "V_Out", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	matrix_vector {
		M {Type I LastRead 32 FirstWrite -1}
		V_In {Type I LastRead 8 FirstWrite -1}
		V_Out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33", "Max" : "33"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	M { ap_memory {  { M_address0 mem_address 1 6 }  { M_ce0 mem_ce 1 1 }  { M_q0 mem_dout 0 32 }  { M_address1 MemPortADDR2 1 6 }  { M_ce1 MemPortCE2 1 1 }  { M_q1 MemPortDOUT2 0 32 } } }
	V_In { ap_memory {  { V_In_address0 mem_address 1 3 }  { V_In_ce0 mem_ce 1 1 }  { V_In_q0 mem_dout 0 32 }  { V_In_address1 MemPortADDR2 1 3 }  { V_In_ce1 MemPortCE2 1 1 }  { V_In_q1 MemPortDOUT2 0 32 } } }
	V_Out { ap_memory {  { V_Out_address0 mem_address 1 3 }  { V_Out_ce0 mem_ce 1 1 }  { V_Out_we0 mem_we 1 1 }  { V_Out_d0 mem_din 1 32 }  { V_Out_address1 MemPortADDR2 1 3 }  { V_Out_ce1 MemPortCE2 1 1 }  { V_Out_we1 MemPortWE2 1 1 }  { V_Out_d1 MemPortDIN2 1 32 } } }
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
