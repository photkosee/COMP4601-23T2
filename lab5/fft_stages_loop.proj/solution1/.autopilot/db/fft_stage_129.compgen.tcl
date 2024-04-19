# This script segment is generated automatically by AutoPilot

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
    id 35 \
    name X_R_3_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_R_3_V \
    op interface \
    ports { X_R_3_V_address0 { O 10 vector } X_R_3_V_ce0 { O 1 bit } X_R_3_V_q0 { I 22 vector } X_R_3_V_address1 { O 10 vector } X_R_3_V_ce1 { O 1 bit } X_R_3_V_q1 { I 22 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_R_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name X_I_3_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_I_3_V \
    op interface \
    ports { X_I_3_V_address0 { O 10 vector } X_I_3_V_ce0 { O 1 bit } X_I_3_V_q0 { I 22 vector } X_I_3_V_address1 { O 10 vector } X_I_3_V_ce1 { O 1 bit } X_I_3_V_q1 { I 22 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_I_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name Out_R_4_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Out_R_4_V \
    op interface \
    ports { Out_R_4_V_address0 { O 10 vector } Out_R_4_V_ce0 { O 1 bit } Out_R_4_V_we0 { O 1 bit } Out_R_4_V_d0 { O 22 vector } Out_R_4_V_address1 { O 10 vector } Out_R_4_V_ce1 { O 1 bit } Out_R_4_V_we1 { O 1 bit } Out_R_4_V_d1 { O 22 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Out_R_4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name Out_I_4_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Out_I_4_V \
    op interface \
    ports { Out_I_4_V_address0 { O 10 vector } Out_I_4_V_ce0 { O 1 bit } Out_I_4_V_we0 { O 1 bit } Out_I_4_V_d0 { O 22 vector } Out_I_4_V_address1 { O 10 vector } Out_I_4_V_ce1 { O 1 bit } Out_I_4_V_we1 { O 1 bit } Out_I_4_V_d1 { O 22 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Out_I_4_V'"
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


