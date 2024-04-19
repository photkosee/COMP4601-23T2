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


    // Module declarations
    fir(sc_module_name name);
    SC_HAS_PROCESS(fir);

    ~fir();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    fir_shift_reg* shift_reg_U;
    fir_c1* c1_U;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > shift_reg_address0;
    sc_signal< sc_logic > shift_reg_ce0;
    sc_signal< sc_logic > shift_reg_we0;
    sc_signal< sc_lv<32> > shift_reg_d0;
    sc_signal< sc_lv<32> > shift_reg_q0;
    sc_signal< sc_lv<4> > shift_reg_address1;
    sc_signal< sc_logic > shift_reg_ce1;
    sc_signal< sc_logic > shift_reg_we1;
    sc_signal< sc_lv<32> > shift_reg_d1;
    sc_signal< sc_lv<32> > shift_reg_q1;
    sc_signal< sc_lv<4> > c1_address0;
    sc_signal< sc_logic > c1_ce0;
    sc_signal< sc_lv<10> > c1_q0;
    sc_signal< sc_lv<32> > i_0_0_cast_fu_227_p1;
    sc_signal< sc_lv<32> > i_0_0_cast_reg_468;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln17_fu_231_p2;
    sc_signal< sc_lv<1> > icmp_ln17_reg_473;
    sc_signal< sc_lv<4> > shift_reg_addr_reg_477;
    sc_signal< sc_lv<1> > icmp_ln17_1_fu_248_p2;
    sc_signal< sc_lv<1> > icmp_ln17_1_reg_483;
    sc_signal< sc_lv<4> > shift_reg_addr_8_reg_487;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln17_2_fu_273_p2;
    sc_signal< sc_lv<1> > icmp_ln17_2_reg_492;
    sc_signal< sc_lv<4> > shift_reg_addr_9_reg_496;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > trunc_ln18_fu_294_p1;
    sc_signal< sc_lv<4> > trunc_ln18_reg_502;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln17_3_fu_304_p2;
    sc_signal< sc_lv<1> > icmp_ln17_3_reg_510;
    sc_signal< sc_lv<4> > shift_reg_addr_3_reg_514;
    sc_signal< sc_lv<1> > icmp_ln17_4_fu_330_p2;
    sc_signal< sc_lv<1> > icmp_ln17_4_reg_520;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > shift_reg_addr_4_reg_524;
    sc_signal< sc_lv<1> > icmp_ln17_5_fu_356_p2;
    sc_signal< sc_lv<1> > icmp_ln17_5_reg_530;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > shift_reg_addr_5_reg_534;
    sc_signal< sc_lv<1> > icmp_ln17_6_fu_382_p2;
    sc_signal< sc_lv<1> > icmp_ln17_6_reg_540;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > shift_reg_addr_6_reg_544;
    sc_signal< sc_lv<1> > icmp_ln17_7_fu_403_p2;
    sc_signal< sc_lv<1> > icmp_ln17_7_reg_550;
    sc_signal< sc_lv<5> > add_ln18_7_fu_408_p2;
    sc_signal< sc_lv<5> > add_ln18_7_reg_554;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > tmp_fu_427_p3;
    sc_signal< sc_lv<5> > i_fu_441_p2;
    sc_signal< sc_lv<5> > i_reg_577;
    sc_signal< sc_lv<32> > acc_fu_457_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<5> > i_0_0_reg_191;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > acc_0_reg_203;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<5> > i_1_reg_216;
    sc_signal< sc_lv<64> > zext_ln18_fu_243_p1;
    sc_signal< sc_lv<64> > zext_ln18_1_fu_254_p1;
    sc_signal< sc_lv<64> > zext_ln18_2_fu_268_p1;
    sc_signal< sc_lv<64> > zext_ln18_3_fu_289_p1;
    sc_signal< sc_lv<64> > zext_ln18_4_fu_320_p1;
    sc_signal< sc_lv<64> > zext_ln18_5_fu_346_p1;
    sc_signal< sc_lv<64> > zext_ln18_6_fu_372_p1;
    sc_signal< sc_lv<64> > zext_ln18_7_fu_398_p1;
    sc_signal< sc_lv<64> > zext_ln18_8_fu_418_p1;
    sc_signal< sc_lv<64> > zext_ln25_fu_435_p1;
    sc_signal< sc_lv<5> > add_ln18_fu_237_p2;
    sc_signal< sc_lv<5> > add_ln18_1_fu_258_p2;
    sc_signal< sc_lv<32> > sext_ln18_fu_264_p1;
    sc_signal< sc_lv<5> > add_ln18_2_fu_279_p2;
    sc_signal< sc_lv<32> > sext_ln18_1_fu_285_p1;
    sc_signal< sc_lv<4> > add_ln18_8_fu_298_p2;
    sc_signal< sc_lv<5> > add_ln18_3_fu_310_p2;
    sc_signal< sc_lv<32> > sext_ln18_2_fu_316_p1;
    sc_signal< sc_lv<4> > add_ln18_9_fu_325_p2;
    sc_signal< sc_lv<5> > add_ln18_4_fu_336_p2;
    sc_signal< sc_lv<32> > sext_ln18_3_fu_342_p1;
    sc_signal< sc_lv<4> > add_ln18_10_fu_351_p2;
    sc_signal< sc_lv<5> > add_ln18_5_fu_362_p2;
    sc_signal< sc_lv<32> > sext_ln18_4_fu_368_p1;
    sc_signal< sc_lv<4> > add_ln18_11_fu_377_p2;
    sc_signal< sc_lv<5> > add_ln18_6_fu_388_p2;
    sc_signal< sc_lv<32> > sext_ln18_5_fu_394_p1;
    sc_signal< sc_lv<32> > sext_ln18_6_fu_414_p1;
    sc_signal< sc_lv<32> > sext_ln24_fu_423_p1;
    sc_signal< sc_lv<32> > mul_ln25_fu_451_p0;
    sc_signal< sc_lv<10> > mul_ln25_fu_451_p1;
    sc_signal< sc_lv<32> > mul_ln25_fu_451_p2;
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
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<5> ap_const_lv5_A;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<5> ap_const_lv5_1E;
    static const sc_lv<5> ap_const_lv5_1D;
    static const sc_lv<4> ap_const_lv4_D;
    static const sc_lv<5> ap_const_lv5_1C;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<5> ap_const_lv5_1B;
    static const sc_lv<4> ap_const_lv4_B;
    static const sc_lv<5> ap_const_lv5_1A;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<5> ap_const_lv5_18;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_acc_fu_457_p2();
    void thread_add_ln18_10_fu_351_p2();
    void thread_add_ln18_11_fu_377_p2();
    void thread_add_ln18_1_fu_258_p2();
    void thread_add_ln18_2_fu_279_p2();
    void thread_add_ln18_3_fu_310_p2();
    void thread_add_ln18_4_fu_336_p2();
    void thread_add_ln18_5_fu_362_p2();
    void thread_add_ln18_6_fu_388_p2();
    void thread_add_ln18_7_fu_408_p2();
    void thread_add_ln18_8_fu_298_p2();
    void thread_add_ln18_9_fu_325_p2();
    void thread_add_ln18_fu_237_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c1_address0();
    void thread_c1_ce0();
    void thread_i_0_0_cast_fu_227_p1();
    void thread_i_fu_441_p2();
    void thread_icmp_ln17_1_fu_248_p2();
    void thread_icmp_ln17_2_fu_273_p2();
    void thread_icmp_ln17_3_fu_304_p2();
    void thread_icmp_ln17_4_fu_330_p2();
    void thread_icmp_ln17_5_fu_356_p2();
    void thread_icmp_ln17_6_fu_382_p2();
    void thread_icmp_ln17_7_fu_403_p2();
    void thread_icmp_ln17_fu_231_p2();
    void thread_mul_ln25_fu_451_p0();
    void thread_mul_ln25_fu_451_p1();
    void thread_mul_ln25_fu_451_p2();
    void thread_sext_ln18_1_fu_285_p1();
    void thread_sext_ln18_2_fu_316_p1();
    void thread_sext_ln18_3_fu_342_p1();
    void thread_sext_ln18_4_fu_368_p1();
    void thread_sext_ln18_5_fu_394_p1();
    void thread_sext_ln18_6_fu_414_p1();
    void thread_sext_ln18_fu_264_p1();
    void thread_sext_ln24_fu_423_p1();
    void thread_shift_reg_address0();
    void thread_shift_reg_address1();
    void thread_shift_reg_ce0();
    void thread_shift_reg_ce1();
    void thread_shift_reg_d0();
    void thread_shift_reg_d1();
    void thread_shift_reg_we0();
    void thread_shift_reg_we1();
    void thread_tmp_fu_427_p3();
    void thread_trunc_ln18_fu_294_p1();
    void thread_y();
    void thread_y_ap_vld();
    void thread_zext_ln18_1_fu_254_p1();
    void thread_zext_ln18_2_fu_268_p1();
    void thread_zext_ln18_3_fu_289_p1();
    void thread_zext_ln18_4_fu_320_p1();
    void thread_zext_ln18_5_fu_346_p1();
    void thread_zext_ln18_6_fu_372_p1();
    void thread_zext_ln18_7_fu_398_p1();
    void thread_zext_ln18_8_fu_418_p1();
    void thread_zext_ln18_fu_243_p1();
    void thread_zext_ln25_fu_435_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
