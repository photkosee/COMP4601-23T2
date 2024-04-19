// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fir_HH_
#define _fir_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fir_mul_32s_7ns_3bkb.h"
#include "fir_mul_32s_10s_3cud.h"
#include "fir_shift_reg.h"
#include "fir_c1.h"

namespace ap_rtl {

struct fir : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > y;
    sc_out< sc_logic > y_ap_vld;
    sc_in< sc_lv<32> > x;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    fir(sc_module_name name);
    SC_HAS_PROCESS(fir);

    ~fir();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    fir_shift_reg* shift_reg_U;
    fir_c1* c1_U;
    fir_mul_32s_7ns_3bkb<1,5,32,7,32>* fir_mul_32s_7ns_3bkb_U1;
    fir_mul_32s_10s_3cud<1,5,32,10,32>* fir_mul_32s_10s_3cud_U2;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > shift_reg_address0;
    sc_signal< sc_logic > shift_reg_ce0;
    sc_signal< sc_logic > shift_reg_we0;
    sc_signal< sc_lv<32> > shift_reg_d0;
    sc_signal< sc_lv<32> > shift_reg_q0;
    sc_signal< sc_lv<4> > c1_address0;
    sc_signal< sc_logic > c1_ce0;
    sc_signal< sc_lv<10> > c1_q0;
    sc_signal< sc_lv<32> > grp_fu_134_p2;
    sc_signal< sc_lv<32> > mul_ln18_reg_188;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln17_fu_152_p2;
    sc_signal< sc_lv<1> > icmp_ln17_reg_196;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > tmp_fu_144_p3;
    sc_signal< sc_lv<64> > zext_ln21_1_fu_163_p1;
    sc_signal< sc_lv<64> > zext_ln21_1_reg_205;
    sc_signal< sc_lv<32> > shift_reg_load_reg_215;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<10> > c1_load_reg_220;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > grp_fu_171_p2;
    sc_signal< sc_lv<32> > mul_ln22_reg_230;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > acc_fu_176_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<5> > grp_fu_127_p2;
    sc_signal< sc_lv<32> > acc_0_reg_93;
    sc_signal< sc_lv<5> > ap_phi_mux_i_0_phi_fu_110_p4;
    sc_signal< sc_lv<5> > i_0_reg_106;
    sc_signal< sc_lv<32> > ap_phi_mux_p_pn_phi_fu_121_p4;
    sc_signal< sc_lv<32> > p_pn_reg_118;
    sc_signal< sc_lv<64> > zext_ln21_fu_158_p1;
    sc_signal< sc_lv<5> > grp_fu_127_p0;
    sc_signal< sc_lv<7> > grp_fu_134_p1;
    sc_signal< sc_lv<32> > sext_ln16_fu_140_p1;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<5> ap_const_lv5_A;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<32> ap_const_lv32_35;
    static const sc_lv<5> ap_const_lv5_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_acc_fu_176_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_i_0_phi_fu_110_p4();
    void thread_ap_phi_mux_p_pn_phi_fu_121_p4();
    void thread_ap_ready();
    void thread_c1_address0();
    void thread_c1_ce0();
    void thread_grp_fu_127_p0();
    void thread_grp_fu_127_p2();
    void thread_grp_fu_134_p1();
    void thread_icmp_ln17_fu_152_p2();
    void thread_sext_ln16_fu_140_p1();
    void thread_shift_reg_address0();
    void thread_shift_reg_ce0();
    void thread_shift_reg_d0();
    void thread_shift_reg_we0();
    void thread_tmp_fu_144_p3();
    void thread_y();
    void thread_y_ap_vld();
    void thread_zext_ln21_1_fu_163_p1();
    void thread_zext_ln21_fu_158_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
