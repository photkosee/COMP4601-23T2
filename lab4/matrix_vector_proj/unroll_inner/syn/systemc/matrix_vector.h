// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matrix_vector_HH_
#define _matrix_vector_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct matrix_vector : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > M_address0;
    sc_out< sc_logic > M_ce0;
    sc_in< sc_lv<32> > M_q0;
    sc_out< sc_lv<6> > M_address1;
    sc_out< sc_logic > M_ce1;
    sc_in< sc_lv<32> > M_q1;
    sc_out< sc_lv<3> > V_In_address0;
    sc_out< sc_logic > V_In_ce0;
    sc_in< sc_lv<32> > V_In_q0;
    sc_out< sc_lv<3> > V_In_address1;
    sc_out< sc_logic > V_In_ce1;
    sc_in< sc_lv<32> > V_In_q1;
    sc_out< sc_lv<3> > V_Out_address0;
    sc_out< sc_logic > V_Out_ce0;
    sc_out< sc_logic > V_Out_we0;
    sc_out< sc_lv<32> > V_Out_d0;


    // Module declarations
    matrix_vector(sc_module_name name);
    SC_HAS_PROCESS(matrix_vector);

    ~matrix_vector();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > grp_fu_247_p2;
    sc_signal< sc_lv<32> > reg_253;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<4> > i_fu_263_p2;
    sc_signal< sc_lv<4> > i_reg_452;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > tmp_fu_269_p3;
    sc_signal< sc_lv<7> > tmp_reg_457;
    sc_signal< sc_lv<1> > icmp_ln7_fu_257_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > add_ln9_2_fu_359_p2;
    sc_signal< sc_lv<32> > add_ln9_2_reg_497;
    sc_signal< sc_lv<32> > add_ln9_4_reg_512;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > i_0_reg_223;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<64> > zext_ln9_1_fu_277_p1;
    sc_signal< sc_lv<64> > tmp_1_fu_288_p3;
    sc_signal< sc_lv<64> > tmp_2_fu_302_p3;
    sc_signal< sc_lv<64> > tmp_3_fu_316_p3;
    sc_signal< sc_lv<64> > tmp_4_fu_330_p3;
    sc_signal< sc_lv<64> > tmp_5_fu_344_p3;
    sc_signal< sc_lv<64> > tmp_6_fu_370_p3;
    sc_signal< sc_lv<64> > tmp_7_fu_384_p3;
    sc_signal< sc_lv<64> > zext_ln9_fu_393_p1;
    sc_signal< sc_lv<32> > grp_fu_235_p0;
    sc_signal< sc_lv<32> > grp_fu_235_p1;
    sc_signal< sc_lv<32> > grp_fu_241_p0;
    sc_signal< sc_lv<32> > grp_fu_241_p1;
    sc_signal< sc_lv<32> > grp_fu_241_p2;
    sc_signal< sc_lv<32> > grp_fu_235_p2;
    sc_signal< sc_lv<7> > or_ln9_fu_282_p2;
    sc_signal< sc_lv<7> > or_ln9_1_fu_297_p2;
    sc_signal< sc_lv<7> > or_ln9_2_fu_311_p2;
    sc_signal< sc_lv<7> > or_ln9_3_fu_325_p2;
    sc_signal< sc_lv<7> > or_ln9_4_fu_339_p2;
    sc_signal< sc_lv<32> > add_ln9_1_fu_353_p2;
    sc_signal< sc_lv<7> > or_ln9_5_fu_365_p2;
    sc_signal< sc_lv<7> > or_ln9_6_fu_379_p2;
    sc_signal< sc_lv<32> > add_ln9_5_fu_398_p2;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<57> ap_const_lv57_0;
    static const sc_lv<7> ap_const_lv7_2;
    static const sc_lv<7> ap_const_lv7_3;
    static const sc_lv<7> ap_const_lv7_4;
    static const sc_lv<7> ap_const_lv7_5;
    static const sc_lv<7> ap_const_lv7_6;
    static const sc_lv<7> ap_const_lv7_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_M_address0();
    void thread_M_address1();
    void thread_M_ce0();
    void thread_M_ce1();
    void thread_V_In_address0();
    void thread_V_In_address1();
    void thread_V_In_ce0();
    void thread_V_In_ce1();
    void thread_V_Out_address0();
    void thread_V_Out_ce0();
    void thread_V_Out_d0();
    void thread_V_Out_we0();
    void thread_add_ln9_1_fu_353_p2();
    void thread_add_ln9_2_fu_359_p2();
    void thread_add_ln9_5_fu_398_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_235_p0();
    void thread_grp_fu_235_p1();
    void thread_grp_fu_235_p2();
    void thread_grp_fu_241_p0();
    void thread_grp_fu_241_p1();
    void thread_grp_fu_241_p2();
    void thread_grp_fu_247_p2();
    void thread_i_fu_263_p2();
    void thread_icmp_ln7_fu_257_p2();
    void thread_or_ln9_1_fu_297_p2();
    void thread_or_ln9_2_fu_311_p2();
    void thread_or_ln9_3_fu_325_p2();
    void thread_or_ln9_4_fu_339_p2();
    void thread_or_ln9_5_fu_365_p2();
    void thread_or_ln9_6_fu_379_p2();
    void thread_or_ln9_fu_282_p2();
    void thread_tmp_1_fu_288_p3();
    void thread_tmp_2_fu_302_p3();
    void thread_tmp_3_fu_316_p3();
    void thread_tmp_4_fu_330_p3();
    void thread_tmp_5_fu_344_p3();
    void thread_tmp_6_fu_370_p3();
    void thread_tmp_7_fu_384_p3();
    void thread_tmp_fu_269_p3();
    void thread_zext_ln9_1_fu_277_p1();
    void thread_zext_ln9_fu_393_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif