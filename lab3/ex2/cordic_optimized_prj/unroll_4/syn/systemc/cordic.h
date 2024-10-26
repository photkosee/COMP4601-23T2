// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _cordic_HH_
#define _cordic_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "cordic_cordic_phabkb.h"

namespace ap_rtl {

struct cordic : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<12> > theta_V;
    sc_out< sc_lv<12> > s_V;
    sc_out< sc_logic > s_V_ap_vld;
    sc_out< sc_lv<12> > c_V;
    sc_out< sc_logic > c_V_ap_vld;


    // Module declarations
    cordic(sc_module_name name);
    SC_HAS_PROCESS(cordic);

    ~cordic();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    cordic_cordic_phabkb* cordic_phase_V_U;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > cordic_phase_V_address0;
    sc_signal< sc_logic > cordic_phase_V_ce0;
    sc_signal< sc_lv<10> > cordic_phase_V_q0;
    sc_signal< sc_lv<6> > cordic_phase_V_address1;
    sc_signal< sc_logic > cordic_phase_V_ce1;
    sc_signal< sc_lv<10> > cordic_phase_V_q1;
    sc_signal< sc_lv<6> > cordic_phase_V_address2;
    sc_signal< sc_logic > cordic_phase_V_ce2;
    sc_signal< sc_lv<10> > cordic_phase_V_q2;
    sc_signal< sc_lv<6> > cordic_phase_V_address3;
    sc_signal< sc_logic > cordic_phase_V_ce3;
    sc_signal< sc_lv<10> > cordic_phase_V_q3;
    sc_signal< sc_lv<1> > tmp_fu_184_p3;
    sc_signal< sc_lv<1> > tmp_reg_566;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln17_fu_166_p2;
    sc_signal< sc_lv<12> > select_ln1496_fu_221_p3;
    sc_signal< sc_lv<12> > select_ln1496_reg_576;
    sc_signal< sc_lv<12> > select_ln1496_1_fu_229_p3;
    sc_signal< sc_lv<12> > select_ln1496_1_reg_583;
    sc_signal< sc_lv<5> > or_ln17_fu_241_p2;
    sc_signal< sc_lv<5> > or_ln17_reg_590;
    sc_signal< sc_lv<5> > or_ln17_1_fu_252_p2;
    sc_signal< sc_lv<5> > or_ln17_1_reg_600;
    sc_signal< sc_lv<5> > or_ln17_2_fu_263_p2;
    sc_signal< sc_lv<5> > or_ln17_2_reg_610;
    sc_signal< sc_lv<6> > add_ln17_fu_274_p2;
    sc_signal< sc_lv<6> > add_ln17_reg_620;
    sc_signal< sc_lv<12> > select_ln1496_9_fu_534_p3;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<12> > select_ln1496_10_fu_542_p3;
    sc_signal< sc_lv<12> > select_ln1496_11_fu_550_p3;
    sc_signal< sc_lv<12> > theta_V_buf_0_0_reg_117;
    sc_signal< sc_lv<12> > p_Val2_2_0_reg_127;
    sc_signal< sc_lv<12> > p_Val2_0_reg_139;
    sc_signal< sc_lv<6> > sh_assign_0_reg_151;
    sc_signal< sc_lv<64> > zext_ln30_fu_204_p1;
    sc_signal< sc_lv<64> > zext_ln30_1_fu_247_p1;
    sc_signal< sc_lv<64> > zext_ln30_2_fu_258_p1;
    sc_signal< sc_lv<64> > zext_ln30_3_fu_269_p1;
    sc_signal< sc_lv<12> > sh_assign_0_cast4_fu_162_p1;
    sc_signal< sc_lv<12> > ashr_ln1333_1_fu_178_p2;
    sc_signal< sc_lv<12> > ashr_ln1333_fu_172_p2;
    sc_signal< sc_lv<12> > sub_ln703_5_fu_215_p2;
    sc_signal< sc_lv<12> > add_ln703_fu_198_p2;
    sc_signal< sc_lv<12> > add_ln703_4_fu_209_p2;
    sc_signal< sc_lv<12> > sub_ln703_fu_192_p2;
    sc_signal< sc_lv<5> > empty_2_fu_237_p1;
    sc_signal< sc_lv<12> > zext_ln1265_fu_280_p1;
    sc_signal< sc_lv<12> > add_ln703_5_fu_290_p2;
    sc_signal< sc_lv<12> > sub_ln703_4_fu_284_p2;
    sc_signal< sc_lv<12> > zext_ln17_fu_303_p1;
    sc_signal< sc_lv<12> > select_ln1496_2_fu_296_p3;
    sc_signal< sc_lv<12> > ashr_ln1333_5_fu_311_p2;
    sc_signal< sc_lv<12> > ashr_ln1333_4_fu_306_p2;
    sc_signal< sc_lv<12> > zext_ln1265_1_fu_334_p1;
    sc_signal< sc_lv<1> > tmp_1_fu_316_p3;
    sc_signal< sc_lv<12> > sub_ln703_7_fu_349_p2;
    sc_signal< sc_lv<12> > add_ln703_6_fu_329_p2;
    sc_signal< sc_lv<12> > add_ln703_7_fu_344_p2;
    sc_signal< sc_lv<12> > sub_ln703_6_fu_324_p2;
    sc_signal< sc_lv<12> > add_ln703_1_fu_354_p2;
    sc_signal< sc_lv<12> > sub_ln703_1_fu_338_p2;
    sc_signal< sc_lv<12> > select_ln1496_4_fu_368_p3;
    sc_signal< sc_lv<12> > zext_ln17_1_fu_384_p1;
    sc_signal< sc_lv<12> > select_ln1496_3_fu_360_p3;
    sc_signal< sc_lv<12> > select_ln1496_5_fu_376_p3;
    sc_signal< sc_lv<12> > ashr_ln1333_6_fu_393_p2;
    sc_signal< sc_lv<12> > ashr_ln1333_2_fu_387_p2;
    sc_signal< sc_lv<12> > zext_ln1265_2_fu_419_p1;
    sc_signal< sc_lv<1> > tmp_2_fu_399_p3;
    sc_signal< sc_lv<12> > sub_ln703_9_fu_435_p2;
    sc_signal< sc_lv<12> > add_ln703_8_fu_413_p2;
    sc_signal< sc_lv<12> > add_ln703_9_fu_429_p2;
    sc_signal< sc_lv<12> > sub_ln703_8_fu_407_p2;
    sc_signal< sc_lv<12> > add_ln703_2_fu_441_p2;
    sc_signal< sc_lv<12> > sub_ln703_2_fu_423_p2;
    sc_signal< sc_lv<12> > select_ln1496_7_fu_455_p3;
    sc_signal< sc_lv<12> > zext_ln17_2_fu_471_p1;
    sc_signal< sc_lv<12> > select_ln1496_6_fu_447_p3;
    sc_signal< sc_lv<12> > select_ln1496_8_fu_463_p3;
    sc_signal< sc_lv<12> > ashr_ln1333_7_fu_480_p2;
    sc_signal< sc_lv<12> > ashr_ln1333_3_fu_474_p2;
    sc_signal< sc_lv<12> > zext_ln1265_3_fu_506_p1;
    sc_signal< sc_lv<1> > tmp_3_fu_486_p3;
    sc_signal< sc_lv<12> > sub_ln703_11_fu_522_p2;
    sc_signal< sc_lv<12> > add_ln703_10_fu_500_p2;
    sc_signal< sc_lv<12> > add_ln703_11_fu_516_p2;
    sc_signal< sc_lv<12> > sub_ln703_10_fu_494_p2;
    sc_signal< sc_lv<12> > add_ln703_3_fu_528_p2;
    sc_signal< sc_lv<12> > sub_ln703_3_fu_510_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<12> ap_const_lv12_26D;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<6> ap_const_lv6_4;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln17_fu_274_p2();
    void thread_add_ln703_10_fu_500_p2();
    void thread_add_ln703_11_fu_516_p2();
    void thread_add_ln703_1_fu_354_p2();
    void thread_add_ln703_2_fu_441_p2();
    void thread_add_ln703_3_fu_528_p2();
    void thread_add_ln703_4_fu_209_p2();
    void thread_add_ln703_5_fu_290_p2();
    void thread_add_ln703_6_fu_329_p2();
    void thread_add_ln703_7_fu_344_p2();
    void thread_add_ln703_8_fu_413_p2();
    void thread_add_ln703_9_fu_429_p2();
    void thread_add_ln703_fu_198_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ashr_ln1333_1_fu_178_p2();
    void thread_ashr_ln1333_2_fu_387_p2();
    void thread_ashr_ln1333_3_fu_474_p2();
    void thread_ashr_ln1333_4_fu_306_p2();
    void thread_ashr_ln1333_5_fu_311_p2();
    void thread_ashr_ln1333_6_fu_393_p2();
    void thread_ashr_ln1333_7_fu_480_p2();
    void thread_ashr_ln1333_fu_172_p2();
    void thread_c_V();
    void thread_c_V_ap_vld();
    void thread_cordic_phase_V_address0();
    void thread_cordic_phase_V_address1();
    void thread_cordic_phase_V_address2();
    void thread_cordic_phase_V_address3();
    void thread_cordic_phase_V_ce0();
    void thread_cordic_phase_V_ce1();
    void thread_cordic_phase_V_ce2();
    void thread_cordic_phase_V_ce3();
    void thread_empty_2_fu_237_p1();
    void thread_icmp_ln17_fu_166_p2();
    void thread_or_ln17_1_fu_252_p2();
    void thread_or_ln17_2_fu_263_p2();
    void thread_or_ln17_fu_241_p2();
    void thread_s_V();
    void thread_s_V_ap_vld();
    void thread_select_ln1496_10_fu_542_p3();
    void thread_select_ln1496_11_fu_550_p3();
    void thread_select_ln1496_1_fu_229_p3();
    void thread_select_ln1496_2_fu_296_p3();
    void thread_select_ln1496_3_fu_360_p3();
    void thread_select_ln1496_4_fu_368_p3();
    void thread_select_ln1496_5_fu_376_p3();
    void thread_select_ln1496_6_fu_447_p3();
    void thread_select_ln1496_7_fu_455_p3();
    void thread_select_ln1496_8_fu_463_p3();
    void thread_select_ln1496_9_fu_534_p3();
    void thread_select_ln1496_fu_221_p3();
    void thread_sh_assign_0_cast4_fu_162_p1();
    void thread_sub_ln703_10_fu_494_p2();
    void thread_sub_ln703_11_fu_522_p2();
    void thread_sub_ln703_1_fu_338_p2();
    void thread_sub_ln703_2_fu_423_p2();
    void thread_sub_ln703_3_fu_510_p2();
    void thread_sub_ln703_4_fu_284_p2();
    void thread_sub_ln703_5_fu_215_p2();
    void thread_sub_ln703_6_fu_324_p2();
    void thread_sub_ln703_7_fu_349_p2();
    void thread_sub_ln703_8_fu_407_p2();
    void thread_sub_ln703_9_fu_435_p2();
    void thread_sub_ln703_fu_192_p2();
    void thread_tmp_1_fu_316_p3();
    void thread_tmp_2_fu_399_p3();
    void thread_tmp_3_fu_486_p3();
    void thread_tmp_fu_184_p3();
    void thread_zext_ln1265_1_fu_334_p1();
    void thread_zext_ln1265_2_fu_419_p1();
    void thread_zext_ln1265_3_fu_506_p1();
    void thread_zext_ln1265_fu_280_p1();
    void thread_zext_ln17_1_fu_384_p1();
    void thread_zext_ln17_2_fu_471_p1();
    void thread_zext_ln17_fu_303_p1();
    void thread_zext_ln30_1_fu_247_p1();
    void thread_zext_ln30_2_fu_258_p1();
    void thread_zext_ln30_3_fu_269_p1();
    void thread_zext_ln30_fu_204_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
