# This script segment is generated automatically by AutoPilot

set id 9
set name fft_streaming_muldEe
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 13
set in0_signed 1
set in1_width 22
set in1_signed 1
set out_width 33
set exp i0*i1
set arg_lists {i0 {13 1 +} i1 {22 1 +} p {33 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 10
set name fft_streaming_maceOg
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 12
set in0_signed 1
set in1_width 22
set in1_signed 1
set in2_width 33
set in2_signed 1
set out_width 33
set exp i0*i1+i2
set arg_lists {i0 {12 1 +} i1 {22 1 +} m {33 1 -} i2 {33 1 +} p {33 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 11
set name fft_streaming_macfYi
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 13
set in0_signed 1
set in1_width 22
set in1_signed 1
set in2_width 33
set in2_signed 1
set out_width 33
set exp i0*i1+i2
set arg_lists {i0 {13 1 +} i1 {22 1 +} m {33 1 +} i2 {33 1 +} p {33 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 12
set name fft_streaming_mulg8j
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 12
set in0_signed 1
set in1_width 22
set in1_signed 1
set out_width 33
set exp i0*i1
set arg_lists {i0 {12 1 +} i1 {22 1 +} p {33 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 17
set hasByteEnable 0
set MemName fft_stage_127_W_rbkb
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 13
set AddrRange 512
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "0100000000000" "0011111111111" "0011111111111" "0011111111111" "0011111111111" "0011111111111" "0011111111110" "0011111111110" "0011111111101" "0011111111100" "0011111111100" "0011111111011" "0011111111010" "0011111111001" "0011111111000" "0011111110111" "0011111110110" "0011111110100" "0011111110011" "0011111110010" "0011111110000" "0011111101111" "0011111101101" "0011111101011" "0011111101001" "0011111100111" "0011111100101" "0011111100011" "0011111100001" "0011111011111" "0011111011101" "0011111011011" "0011111011000" "0011111010110" "0011111010011" "0011111010000" "0011111001110" "0011111001011" "0011111001000" "0011111000101" "0011111000010" "0011110111111" "0011110111100" "0011110111001" "0011110110101" "0011110110010" "0011110101110" "0011110101011" "0011110100111" "0011110100100" "0011110100000" "0011110011100" "0011110011000" "0011110010100" "0011110010000" "0011110001100" "0011110001000" "0011110000100" "0011101111111" "0011101111011" "0011101110110" "0011101110010" "0011101101101" "0011101101000" "0011101100100" "0011101011111" "0011101011010" "0011101010101" "0011101010000" "0011101001011" "0011101000101" "0011101000000" "0011100111011" "0011100110101" "0011100110000" "0011100101010" "0011100100101" "0011100011111" "0011100011001" "0011100010100" "0011100001110" "0011100001000" "0011100000010" "0011011111100" "0011011110101" "0011011101111" "0011011101001" "0011011100011" "0011011011100" "0011011010110" "0011011001111" "0011011001000" "0011011000010" "0011010111011" "0011010110100" "0011010101101" "0011010100110" "0011010011111" "0011010011000" "0011010010001" "0011010001010" "0011010000011" "0011001111011" "0011001110100" "0011001101100" "0011001100101" "0011001011101" "0011001010110" "0011001001110" "0011001000110" "0011000111110" "0011000110111" "0011000101111" "0011000100111" "0011000011111" "0011000010110" "0011000001110" "0011000000110" "0010111111110" "0010111110101" "0010111101101" "0010111100101" "0010111011100" "0010111010011" "0010111001011" "0010111000010" "0010110111001" "0010110110001" "0010110101000" "0010110011111" "0010110010110" "0010110001101" "0010110000100" "0010101111011" "0010101110001" "0010101101000" "0010101011111" "0010101010110" "0010101001100" "0010101000011" "0010100111001" "0010100110000" "0010100100110" "0010100011100" "0010100010011" "0010100001001" "0010011111111" "0010011110101" "0010011101011" "0010011100010" "0010011011000" "0010011001110" "0010011000011" "0010010111001" "0010010101111" "0010010100101" "0010010011011" "0010010010000" "0010010000110" "0010001111100" "0010001110001" "0010001100111" "0010001011100" "0010001010010" "0010001000111" "0010000111101" "0010000110010" "0010000100111" "0010000011100" "0010000010010" "0010000000111" "0001111111100" "0001111110001" "0001111100110" "0001111011011" "0001111010000" "0001111000101" "0001110111010" "0001110101111" "0001110100100" "0001110011000" "0001110001101" "0001110000010" "0001101110110" "0001101101011" "0001101100000" "0001101010100" "0001101001001" "0001100111101" "0001100110010" "0001100100110" "0001100011011" "0001100001111" "0001100000100" "0001011111000" "0001011101100" "0001011100001" "0001011010101" "0001011001001" "0001010111101" "0001010110001" "0001010100110" "0001010011010" "0001010001110" "0001010000010" "0001001110110" "0001001101010" "0001001011110" "0001001010010" "0001001000110" "0001000111010" "0001000101110" "0001000100010" "0001000010110" "0001000001001" "0000111111101" "0000111110001" "0000111100101" "0000111011001" "0000111001100" "0000111000000" "0000110110100" "0000110101000" "0000110011011" "0000110001111" "0000110000011" "0000101110110" "0000101101010" "0000101011110" "0000101010001" "0000101000101" "0000100111000" "0000100101100" "0000100100000" "0000100010011" "0000100000111" "0000011111010" "0000011101110" "0000011100001" "0000011010101" "0000011001000" "0000010111100" "0000010101111" "0000010100011" "0000010010110" "0000010001010" "0000001111101" "0000001110001" "0000001100100" "0000001010111" "0000001001011" "0000000111110" "0000000110010" "0000000100101" "0000000011001" "0000000001100" "0000000000000" "1111111110011" "1111111100110" "1111111011010" "1111111001101" "1111111000001" "1111110110100" "1111110101000" "1111110011011" "1111110001110" "1111110000010" "1111101110101" "1111101101001" "1111101011100" "1111101010000" "1111101000011" "1111100110111" "1111100101010" "1111100011110" "1111100010001" "1111100000101" "1111011111000" "1111011101100" "1111011011111" "1111011010011" "1111011000111" "1111010111010" "1111010101110" "1111010100001" "1111010010101" "1111010001001" "1111001111100" "1111001110000" "1111001100100" "1111001010111" "1111001001011" "1111000111111" "1111000110011" "1111000100110" "1111000011010" "1111000001110" "1111000000010" "1110111110110" "1110111101001" "1110111011101" "1110111010001" "1110111000101" "1110110111001" "1110110101101" "1110110100001" "1110110010101" "1110110001001" "1110101111101" "1110101110001" "1110101100101" "1110101011001" "1110101001110" "1110101000010" "1110100110110" "1110100101010" "1110100011110" "1110100010011" "1110100000111" "1110011111011" "1110011110000" "1110011100100" "1110011011001" "1110011001101" "1110011000010" "1110010110110" "1110010101011" "1110010011111" "1110010010100" "1110010001001" "1110001111101" "1110001110010" "1110001100111" "1110001011011" "1110001010000" "1110001000101" "1110000111010" "1110000101111" "1110000100100" "1110000011001" "1110000001110" "1110000000011" "1101111111000" "1101111101101" "1101111100011" "1101111011000" "1101111001101" "1101111000010" "1101110111000" "1101110101101" "1101110100011" "1101110011000" "1101110001110" "1101110000011" "1101101111001" "1101101101111" "1101101100100" "1101101011010" "1101101010000" "1101101000110" "1101100111100" "1101100110001" "1101100100111" "1101100011101" "1101100010100" "1101100001010" "1101100000000" "1101011110110" "1101011101100" "1101011100011" "1101011011001" "1101011001111" "1101011000110" "1101010111100" "1101010110011" "1101010101001" "1101010100000" "1101010010111" "1101010001110" "1101010000100" "1101001111011" "1101001110010" "1101001101001" "1101001100000" "1101001010111" "1101001001110" "1101001000110" "1101000111101" "1101000110100" "1101000101100" "1101000100011" "1101000011010" "1101000010010" "1101000001010" "1101000000001" "1100111111001" "1100111110001" "1100111101001" "1100111100000" "1100111011000" "1100111010000" "1100111001000" "1100111000001" "1100110111001" "1100110110001" "1100110101001" "1100110100010" "1100110011010" "1100110010011" "1100110001011" "1100110000100" "1100101111100" "1100101110101" "1100101101110" "1100101100111" "1100101100000" "1100101011001" "1100101010010" "1100101001011" "1100101000100" "1100100111101" "1100100110111" "1100100110000" "1100100101001" "1100100100011" "1100100011100" "1100100010110" "1100100010000" "1100100001010" "1100100000011" "1100011111101" "1100011110111" "1100011110001" "1100011101011" "1100011100110" "1100011100000" "1100011011010" "1100011010101" "1100011001111" "1100011001010" "1100011000100" "1100010111111" "1100010111010" "1100010110100" "1100010101111" "1100010101010" "1100010100101" "1100010100000" "1100010011011" "1100010010111" "1100010010010" "1100010001101" "1100010001001" "1100010000100" "1100010000000" "1100001111011" "1100001110111" "1100001110011" "1100001101111" "1100001101011" "1100001100111" "1100001100011" "1100001011111" "1100001011011" "1100001011000" "1100001010100" "1100001010001" "1100001001101" "1100001001010" "1100001000110" "1100001000011" "1100001000000" "1100000111101" "1100000111010" "1100000110111" "1100000110100" "1100000110001" "1100000101111" "1100000101100" "1100000101001" "1100000100111" "1100000100100" "1100000100010" "1100000100000" "1100000011110" "1100000011100" "1100000011010" "1100000011000" "1100000010110" "1100000010100" "1100000010010" "1100000010000" "1100000001111" "1100000001101" "1100000001100" "1100000001011" "1100000001001" "1100000001000" "1100000000111" "1100000000110" "1100000000101" "1100000000100" "1100000000011" "1100000000011" "1100000000010" "1100000000001" "1100000000001" "1100000000000" "1100000000000" "1100000000000" "1100000000000" "1100000000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 18
set hasByteEnable 0
set MemName fft_stage_127_W_icud
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 12
set AddrRange 512
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "000000000000" "111111110011" "111111100110" "111111011010" "111111001101" "111111000001" "111110110100" "111110101000" "111110011011" "111110001110" "111110000010" "111101110101" "111101101001" "111101011100" "111101010000" "111101000011" "111100110111" "111100101010" "111100011110" "111100010001" "111100000101" "111011111000" "111011101100" "111011011111" "111011010011" "111011000111" "111010111010" "111010101110" "111010100001" "111010010101" "111010001001" "111001111100" "111001110000" "111001100100" "111001010111" "111001001011" "111000111111" "111000110011" "111000100110" "111000011010" "111000001110" "111000000010" "110111110110" "110111101001" "110111011101" "110111010001" "110111000101" "110110111001" "110110101101" "110110100001" "110110010101" "110110001001" "110101111101" "110101110001" "110101100101" "110101011001" "110101001110" "110101000010" "110100110110" "110100101010" "110100011110" "110100010011" "110100000111" "110011111011" "110011110000" "110011100100" "110011011001" "110011001101" "110011000010" "110010110110" "110010101011" "110010011111" "110010010100" "110010001001" "110001111101" "110001110010" "110001100111" "110001011011" "110001010000" "110001000101" "110000111010" "110000101111" "110000100100" "110000011001" "110000001110" "110000000011" "101111111000" "101111101101" "101111100011" "101111011000" "101111001101" "101111000010" "101110111000" "101110101101" "101110100011" "101110011000" "101110001110" "101110000011" "101101111001" "101101101111" "101101100100" "101101011010" "101101010000" "101101000110" "101100111100" "101100110001" "101100100111" "101100011101" "101100010100" "101100001010" "101100000000" "101011110110" "101011101100" "101011100011" "101011011001" "101011001111" "101011000110" "101010111100" "101010110011" "101010101001" "101010100000" "101010010111" "101010001110" "101010000100" "101001111011" "101001110010" "101001101001" "101001100000" "101001010111" "101001001110" "101001000110" "101000111101" "101000110100" "101000101100" "101000100011" "101000011010" "101000010010" "101000001010" "101000000001" "100111111001" "100111110001" "100111101001" "100111100000" "100111011000" "100111010000" "100111001000" "100111000001" "100110111001" "100110110001" "100110101001" "100110100010" "100110011010" "100110010011" "100110001011" "100110000100" "100101111100" "100101110101" "100101101110" "100101100111" "100101100000" "100101011001" "100101010010" "100101001011" "100101000100" "100100111101" "100100110111" "100100110000" "100100101001" "100100100011" "100100011100" "100100010110" "100100010000" "100100001010" "100100000011" "100011111101" "100011110111" "100011110001" "100011101011" "100011100110" "100011100000" "100011011010" "100011010101" "100011001111" "100011001010" "100011000100" "100010111111" "100010111010" "100010110100" "100010101111" "100010101010" "100010100101" "100010100000" "100010011011" "100010010111" "100010010010" "100010001101" "100010001001" "100010000100" "100010000000" "100001111011" "100001110111" "100001110011" "100001101111" "100001101011" "100001100111" "100001100011" "100001011111" "100001011011" "100001011000" "100001010100" "100001010001" "100001001101" "100001001010" "100001000110" "100001000011" "100001000000" "100000111101" "100000111010" "100000110111" "100000110100" "100000110001" "100000101111" "100000101100" "100000101001" "100000100111" "100000100100" "100000100010" "100000100000" "100000011110" "100000011100" "100000011010" "100000011000" "100000010110" "100000010100" "100000010010" "100000010000" "100000001111" "100000001101" "100000001100" "100000001011" "100000001001" "100000001000" "100000000111" "100000000110" "100000000101" "100000000100" "100000000011" "100000000011" "100000000010" "100000000001" "100000000001" "100000000000" "100000000000" "100000000000" "100000000000" "100000000000" "100000000000" "100000000000" "100000000000" "100000000000" "100000000000" "100000000000" "100000000001" "100000000001" "100000000010" "100000000011" "100000000011" "100000000100" "100000000101" "100000000110" "100000000111" "100000001000" "100000001001" "100000001011" "100000001100" "100000001101" "100000001111" "100000010000" "100000010010" "100000010100" "100000010110" "100000011000" "100000011010" "100000011100" "100000011110" "100000100000" "100000100010" "100000100100" "100000100111" "100000101001" "100000101100" "100000101111" "100000110001" "100000110100" "100000110111" "100000111010" "100000111101" "100001000000" "100001000011" "100001000110" "100001001010" "100001001101" "100001010001" "100001010100" "100001011000" "100001011011" "100001011111" "100001100011" "100001100111" "100001101011" "100001101111" "100001110011" "100001110111" "100001111011" "100010000000" "100010000100" "100010001001" "100010001101" "100010010010" "100010010111" "100010011011" "100010100000" "100010100101" "100010101010" "100010101111" "100010110100" "100010111010" "100010111111" "100011000100" "100011001010" "100011001111" "100011010101" "100011011010" "100011100000" "100011100110" "100011101011" "100011110001" "100011110111" "100011111101" "100100000011" "100100001010" "100100010000" "100100010110" "100100011100" "100100100011" "100100101001" "100100110000" "100100110111" "100100111101" "100101000100" "100101001011" "100101010010" "100101011001" "100101100000" "100101100111" "100101101110" "100101110101" "100101111100" "100110000100" "100110001011" "100110010011" "100110011010" "100110100010" "100110101001" "100110110001" "100110111001" "100111000001" "100111001000" "100111010000" "100111011000" "100111100000" "100111101001" "100111110001" "100111111001" "101000000001" "101000001010" "101000010010" "101000011010" "101000100011" "101000101100" "101000110100" "101000111101" "101001000110" "101001001110" "101001010111" "101001100000" "101001101001" "101001110010" "101001111011" "101010000100" "101010001110" "101010010111" "101010100000" "101010101001" "101010110011" "101010111100" "101011000110" "101011001111" "101011011001" "101011100011" "101011101100" "101011110110" "101100000000" "101100001010" "101100010100" "101100011101" "101100100111" "101100110001" "101100111100" "101101000110" "101101010000" "101101011010" "101101100100" "101101101111" "101101111001" "101110000011" "101110001110" "101110011000" "101110100011" "101110101101" "101110111000" "101111000010" "101111001101" "101111011000" "101111100011" "101111101101" "101111111000" "110000000011" "110000001110" "110000011001" "110000100100" "110000101111" "110000111010" "110001000101" "110001010000" "110001011011" "110001100111" "110001110010" "110001111101" "110010001001" "110010010100" "110010011111" "110010101011" "110010110110" "110011000010" "110011001101" "110011011001" "110011100100" "110011110000" "110011111011" "110100000111" "110100010011" "110100011110" "110100101010" "110100110110" "110101000010" "110101001110" "110101011001" "110101100101" "110101110001" "110101111101" "110110001001" "110110010101" "110110100001" "110110101101" "110110111001" "110111000101" "110111010001" "110111011101" "110111101001" "110111110110" "111000000010" "111000001110" "111000011010" "111000100110" "111000110011" "111000111111" "111001001011" "111001010111" "111001100100" "111001110000" "111001111100" "111010001001" "111010010101" "111010100001" "111010101110" "111010111010" "111011000111" "111011010011" "111011011111" "111011101100" "111011111000" "111100000101" "111100010001" "111100011110" "111100101010" "111100110111" "111101000011" "111101010000" "111101011100" "111101101001" "111101110101" "111110000010" "111110001110" "111110011011" "111110101000" "111110110100" "111111000001" "111111001101" "111111011010" "111111100110" "111111110011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name X_R_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_R_1_V \
    op interface \
    ports { X_R_1_V_address0 { O 10 vector } X_R_1_V_ce0 { O 1 bit } X_R_1_V_q0 { I 22 vector } X_R_1_V_address1 { O 10 vector } X_R_1_V_ce1 { O 1 bit } X_R_1_V_q1 { I 22 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_R_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name X_I_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_I_1_V \
    op interface \
    ports { X_I_1_V_address0 { O 10 vector } X_I_1_V_ce0 { O 1 bit } X_I_1_V_q0 { I 22 vector } X_I_1_V_address1 { O 10 vector } X_I_1_V_ce1 { O 1 bit } X_I_1_V_q1 { I 22 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_I_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name Out_R_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Out_R_2_V \
    op interface \
    ports { Out_R_2_V_address0 { O 10 vector } Out_R_2_V_ce0 { O 1 bit } Out_R_2_V_we0 { O 1 bit } Out_R_2_V_d0 { O 22 vector } Out_R_2_V_address1 { O 10 vector } Out_R_2_V_ce1 { O 1 bit } Out_R_2_V_we1 { O 1 bit } Out_R_2_V_d1 { O 22 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Out_R_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name Out_I_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Out_I_2_V \
    op interface \
    ports { Out_I_2_V_address0 { O 10 vector } Out_I_2_V_ce0 { O 1 bit } Out_I_2_V_we0 { O 1 bit } Out_I_2_V_d0 { O 22 vector } Out_I_2_V_address1 { O 10 vector } Out_I_2_V_ce1 { O 1 bit } Out_I_2_V_we1 { O 1 bit } Out_I_2_V_d1 { O 22 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Out_I_2_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


