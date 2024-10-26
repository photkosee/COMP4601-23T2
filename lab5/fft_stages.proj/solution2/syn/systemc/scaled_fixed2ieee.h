// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _scaled_fixed2ieee_HH_
#define _scaled_fixed2ieee_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "scaled_fixed2ieeebkb.h"
#include "scaled_fixed2ieee_c.h"

namespace ap_rtl {

struct scaled_fixed2ieee : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<63> > in_V;
    sc_in< sc_lv<12> > prescale;
    sc_out< sc_lv<64> > ap_return;


    // Module declarations
    scaled_fixed2ieee(sc_module_name name);
    SC_HAS_PROCESS(scaled_fixed2ieee);

    ~scaled_fixed2ieee();

    sc_trace_file* mVcdFile;

    scaled_fixed2ieeebkb* out_bits_V_U;
    scaled_fixed2ieee_c* c_U;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<2> > i_fu_243_p2;
    sc_signal< sc_lv<2> > i_reg_607;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > out_bits_V_addr_1_reg_612;
    sc_signal< sc_lv<1> > icmp_ln423_fu_237_p2;
    sc_signal< sc_lv<3> > i_1_fu_405_p2;
    sc_signal< sc_lv<3> > i_1_reg_620;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > zext_ln435_fu_411_p1;
    sc_signal< sc_lv<64> > zext_ln435_reg_625;
    sc_signal< sc_lv<1> > icmp_ln434_fu_399_p2;
    sc_signal< sc_lv<1> > icmp_ln441_fu_435_p2;
    sc_signal< sc_lv<1> > icmp_ln441_reg_635;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > i_2_fu_441_p2;
    sc_signal< sc_lv<3> > i_2_reg_639;
    sc_signal< sc_lv<32> > shift_fu_452_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<63> > r_V_30_fu_497_p3;
    sc_signal< sc_lv<2> > out_bits_V_address0;
    sc_signal< sc_logic > out_bits_V_ce0;
    sc_signal< sc_lv<4> > out_bits_V_we0;
    sc_signal< sc_lv<32> > out_bits_V_d0;
    sc_signal< sc_lv<32> > out_bits_V_q0;
    sc_signal< sc_lv<2> > c_address0;
    sc_signal< sc_logic > c_ce0;
    sc_signal< sc_logic > c_we0;
    sc_signal< sc_lv<32> > c_d0;
    sc_signal< sc_lv<32> > c_q0;
    sc_signal< sc_lv<2> > i_0_reg_161;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<3> > i1_0_reg_173;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<63> > p_0119_0_reg_184;
    sc_signal< sc_lv<1> > icmp_ln444_fu_506_p2;
    sc_signal< sc_lv<32> > shift_0_reg_194;
    sc_signal< sc_lv<3> > i2_0_reg_206;
    sc_signal< sc_lv<63> > ap_phi_mux_p_Val2_4_in_phi_fu_220_p4;
    sc_signal< sc_lv<63> > p_Val2_4_in_reg_217;
    sc_signal< sc_lv<32> > ap_phi_mux_shift_1_phi_fu_230_p4;
    sc_signal< sc_lv<32> > shift_1_reg_227;
    sc_signal< sc_lv<64> > zext_ln424_fu_249_p1;
    sc_signal< sc_lv<64> > zext_ln442_fu_447_p1;
    sc_signal< sc_lv<32> > tmp_fu_257_p3;
    sc_signal< sc_lv<32> > p_Result_2_fu_386_p5;
    sc_signal< sc_lv<15> > trunc_ln566_fu_254_p1;
    sc_signal< sc_lv<6> > shl_ln_fu_266_p3;
    sc_signal< sc_lv<6> > sub_ln425_fu_280_p2;
    sc_signal< sc_lv<6> > sub_ln424_fu_274_p2;
    sc_signal< sc_lv<1> > icmp_ln566_fu_286_p2;
    sc_signal< sc_lv<6> > sub_ln566_fu_301_p2;
    sc_signal< sc_lv<6> > sub_ln566_2_fu_313_p2;
    sc_signal< sc_lv<63> > tmp_8_fu_292_p4;
    sc_signal< sc_lv<6> > sub_ln566_1_fu_307_p2;
    sc_signal< sc_lv<6> > select_ln566_fu_319_p3;
    sc_signal< sc_lv<6> > select_ln566_2_fu_334_p3;
    sc_signal< sc_lv<6> > sub_ln566_3_fu_342_p2;
    sc_signal< sc_lv<63> > select_ln566_1_fu_327_p3;
    sc_signal< sc_lv<63> > zext_ln566_fu_348_p1;
    sc_signal< sc_lv<63> > zext_ln566_1_fu_352_p1;
    sc_signal< sc_lv<63> > lshr_ln566_fu_356_p2;
    sc_signal< sc_lv<63> > lshr_ln566_1_fu_362_p2;
    sc_signal< sc_lv<63> > p_Result_s_fu_368_p2;
    sc_signal< sc_lv<16> > trunc_ln169_fu_374_p1;
    sc_signal< sc_lv<17> > tmp_2_fu_378_p3;
    sc_signal< sc_lv<32> > p_Result_22_fu_416_p4;
    sc_signal< sc_lv<1> > isNeg_fu_459_p3;
    sc_signal< sc_lv<32> > sub_ln1311_fu_467_p2;
    sc_signal< sc_lv<32> > ush_fu_473_p3;
    sc_signal< sc_lv<63> > zext_ln1287_fu_481_p1;
    sc_signal< sc_lv<63> > r_V_fu_485_p2;
    sc_signal< sc_lv<63> > r_V_28_fu_491_p2;
    sc_signal< sc_lv<12> > sub_ln452_fu_512_p2;
    sc_signal< sc_lv<32> > sext_ln452_fu_517_p1;
    sc_signal< sc_lv<32> > newexp_fu_521_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_527_p3;
    sc_signal< sc_lv<1> > icmp_ln1452_fu_535_p2;
    sc_signal< sc_lv<1> > or_ln453_fu_540_p2;
    sc_signal< sc_lv<52> > phitmp1_fu_550_p4;
    sc_signal< sc_lv<11> > empty_fu_546_p1;
    sc_signal< sc_lv<11> > out_exp_V_fu_568_p3;
    sc_signal< sc_lv<52> > significand_V_fu_560_p3;
    sc_signal< sc_lv<64> > p_Result_23_fu_576_p4;
    sc_signal< sc_lv<64> > bitcast_ln512_fu_586_p1;
    sc_signal< sc_lv<64> > ap_return_preg;
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
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<17> ap_const_lv17_10000;
    static const sc_lv<6> ap_const_lv6_3E;
    static const sc_lv<6> ap_const_lv6_2F;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<63> ap_const_lv63_7FFFFFFFFFFFFFFF;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<12> ap_const_lv12_3FF;
    static const sc_lv<63> ap_const_lv63_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<52> ap_const_lv52_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_p_Val2_4_in_phi_fu_220_p4();
    void thread_ap_phi_mux_shift_1_phi_fu_230_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_bitcast_ln512_fu_586_p1();
    void thread_c_address0();
    void thread_c_ce0();
    void thread_c_d0();
    void thread_c_we0();
    void thread_empty_fu_546_p1();
    void thread_i_1_fu_405_p2();
    void thread_i_2_fu_441_p2();
    void thread_i_fu_243_p2();
    void thread_icmp_ln1452_fu_535_p2();
    void thread_icmp_ln423_fu_237_p2();
    void thread_icmp_ln434_fu_399_p2();
    void thread_icmp_ln441_fu_435_p2();
    void thread_icmp_ln444_fu_506_p2();
    void thread_icmp_ln566_fu_286_p2();
    void thread_isNeg_fu_459_p3();
    void thread_lshr_ln566_1_fu_362_p2();
    void thread_lshr_ln566_fu_356_p2();
    void thread_newexp_fu_521_p2();
    void thread_or_ln453_fu_540_p2();
    void thread_out_bits_V_address0();
    void thread_out_bits_V_ce0();
    void thread_out_bits_V_d0();
    void thread_out_bits_V_we0();
    void thread_out_exp_V_fu_568_p3();
    void thread_p_Result_22_fu_416_p4();
    void thread_p_Result_23_fu_576_p4();
    void thread_p_Result_2_fu_386_p5();
    void thread_p_Result_s_fu_368_p2();
    void thread_phitmp1_fu_550_p4();
    void thread_r_V_28_fu_491_p2();
    void thread_r_V_30_fu_497_p3();
    void thread_r_V_fu_485_p2();
    void thread_select_ln566_1_fu_327_p3();
    void thread_select_ln566_2_fu_334_p3();
    void thread_select_ln566_fu_319_p3();
    void thread_sext_ln452_fu_517_p1();
    void thread_shift_fu_452_p2();
    void thread_shl_ln_fu_266_p3();
    void thread_significand_V_fu_560_p3();
    void thread_sub_ln1311_fu_467_p2();
    void thread_sub_ln424_fu_274_p2();
    void thread_sub_ln425_fu_280_p2();
    void thread_sub_ln452_fu_512_p2();
    void thread_sub_ln566_1_fu_307_p2();
    void thread_sub_ln566_2_fu_313_p2();
    void thread_sub_ln566_3_fu_342_p2();
    void thread_sub_ln566_fu_301_p2();
    void thread_tmp_10_fu_527_p3();
    void thread_tmp_2_fu_378_p3();
    void thread_tmp_8_fu_292_p4();
    void thread_tmp_fu_257_p3();
    void thread_trunc_ln169_fu_374_p1();
    void thread_trunc_ln566_fu_254_p1();
    void thread_ush_fu_473_p3();
    void thread_zext_ln1287_fu_481_p1();
    void thread_zext_ln424_fu_249_p1();
    void thread_zext_ln435_fu_411_p1();
    void thread_zext_ln442_fu_447_p1();
    void thread_zext_ln566_1_fu_352_p1();
    void thread_zext_ln566_fu_348_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
