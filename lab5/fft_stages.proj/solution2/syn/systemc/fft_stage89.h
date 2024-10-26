// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fft_stage89_HH_
#define _fft_stage89_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sin_or_cos_double_s.h"

namespace ap_rtl {

struct fft_stage89 : public sc_module {
    // Port declarations 35
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > X_R_V_address0;
    sc_out< sc_logic > X_R_V_ce0;
    sc_in< sc_lv<22> > X_R_V_q0;
    sc_out< sc_lv<10> > X_R_V_address1;
    sc_out< sc_logic > X_R_V_ce1;
    sc_in< sc_lv<22> > X_R_V_q1;
    sc_out< sc_lv<10> > X_I_V_address0;
    sc_out< sc_logic > X_I_V_ce0;
    sc_in< sc_lv<22> > X_I_V_q0;
    sc_out< sc_lv<10> > X_I_V_address1;
    sc_out< sc_logic > X_I_V_ce1;
    sc_in< sc_lv<22> > X_I_V_q1;
    sc_out< sc_lv<10> > Out_R_V_address0;
    sc_out< sc_logic > Out_R_V_ce0;
    sc_out< sc_logic > Out_R_V_we0;
    sc_out< sc_lv<22> > Out_R_V_d0;
    sc_out< sc_lv<10> > Out_R_V_address1;
    sc_out< sc_logic > Out_R_V_ce1;
    sc_out< sc_logic > Out_R_V_we1;
    sc_out< sc_lv<22> > Out_R_V_d1;
    sc_out< sc_lv<10> > Out_I_V_address0;
    sc_out< sc_logic > Out_I_V_ce0;
    sc_out< sc_logic > Out_I_V_we0;
    sc_out< sc_lv<22> > Out_I_V_d0;
    sc_out< sc_lv<10> > Out_I_V_address1;
    sc_out< sc_logic > Out_I_V_ce1;
    sc_out< sc_logic > Out_I_V_we1;
    sc_out< sc_lv<22> > Out_I_V_d1;


    // Module declarations
    fft_stage89(sc_module_name name);
    SC_HAS_PROCESS(fft_stage89);

    ~fft_stage89();

    sc_trace_file* mVcdFile;

    sin_or_cos_double_s* grp_sin_or_cos_double_s_fu_288;
    sin_or_cos_double_s* grp_sin_or_cos_double_s_fu_307;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > i_0_reg_279;
    sc_signal< sc_lv<9> > j_fu_332_p2;
    sc_signal< sc_lv<9> > j_reg_1345;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln885_fu_338_p2;
    sc_signal< sc_lv<1> > icmp_ln885_reg_1350;
    sc_signal< sc_lv<1> > icmp_ln47_fu_326_p2;
    sc_signal< sc_lv<63> > m_s_reg_1355;
    sc_signal< sc_lv<1> > tmp_19_reg_1360;
    sc_signal< sc_lv<11> > trunc_ln893_fu_580_p1;
    sc_signal< sc_lv<11> > trunc_ln893_reg_1365;
    sc_signal< sc_lv<14> > a_V_fu_584_p2;
    sc_signal< sc_lv<14> > a_V_reg_1370;
    sc_signal< sc_lv<64> > select_ln885_fu_635_p3;
    sc_signal< sc_lv<64> > select_ln885_reg_1375;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > grp_sin_or_cos_double_s_fu_288_ap_return;
    sc_signal< sc_lv<64> > v_assign_reg_1381;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_288_ap_ready;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_288_ap_done;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_307_ap_ready;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_307_ap_done;
    sc_signal< bool > ap_block_state4_on_subcall_done;
    sc_signal< sc_lv<64> > grp_sin_or_cos_double_s_fu_307_ap_return;
    sc_signal< sc_lv<64> > v_assign_2_reg_1386;
    sc_signal< sc_lv<32> > zext_ln891_fu_644_p1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<33> > sext_ln1118_fu_1206_p1;
    sc_signal< sc_lv<33> > sext_ln1118_reg_1396;
    sc_signal< sc_lv<33> > sext_ln1118_4_fu_1210_p1;
    sc_signal< sc_lv<33> > sext_ln1118_4_reg_1402;
    sc_signal< sc_lv<1> > icmp_ln53_fu_1224_p2;
    sc_signal< sc_lv<1> > icmp_ln53_reg_1408;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<64> > sext_ln55_fu_1236_p1;
    sc_signal< sc_lv<64> > sext_ln55_reg_1412;
    sc_signal< sc_lv<64> > sext_ln57_fu_1242_p1;
    sc_signal< sc_lv<64> > sext_ln57_reg_1428;
    sc_signal< sc_lv<32> > i_4_fu_1248_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_288_ap_start;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_288_ap_idle;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_288_do_cos;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_307_ap_start;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_307_ap_idle;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_307_do_cos;
    sc_signal< sc_lv<14> > tmp_V_reg_256;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<9> > i_reg_267;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_288_ap_start_reg;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_307_ap_start_reg;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<14> > tmp_V_5_fu_344_p2;
    sc_signal< sc_lv<22> > zext_ln889_fu_350_p1;
    sc_signal< sc_lv<22> > p_Result_s_fu_354_p4;
    sc_signal< sc_lv<32> > p_Result_44_fu_364_p3;
    sc_signal< sc_lv<32> > l_fu_372_p3;
    sc_signal< sc_lv<32> > sub_ln894_fu_380_p2;
    sc_signal< sc_lv<32> > lsb_index_fu_390_p2;
    sc_signal< sc_lv<31> > tmp_fu_396_p4;
    sc_signal< sc_lv<5> > trunc_ln897_fu_412_p1;
    sc_signal< sc_lv<5> > sub_ln897_fu_416_p2;
    sc_signal< sc_lv<22> > zext_ln897_fu_422_p1;
    sc_signal< sc_lv<22> > lshr_ln897_fu_426_p2;
    sc_signal< sc_lv<22> > p_Result_38_fu_432_p2;
    sc_signal< sc_lv<1> > icmp_ln897_fu_406_p2;
    sc_signal< sc_lv<1> > icmp_ln897_1_fu_438_p2;
    sc_signal< sc_lv<1> > tmp_18_fu_450_p3;
    sc_signal< sc_lv<22> > trunc_ln894_fu_386_p1;
    sc_signal< sc_lv<22> > add_ln899_fu_464_p2;
    sc_signal< sc_lv<1> > p_Result_9_fu_470_p3;
    sc_signal< sc_lv<1> > xor_ln899_fu_458_p2;
    sc_signal< sc_lv<1> > and_ln899_fu_478_p2;
    sc_signal< sc_lv<1> > a_fu_444_p2;
    sc_signal< sc_lv<1> > or_ln899_fu_484_p2;
    sc_signal< sc_lv<32> > zext_ln907_2_fu_502_p1;
    sc_signal< sc_lv<32> > add_ln908_fu_512_p2;
    sc_signal< sc_lv<32> > lshr_ln908_fu_518_p2;
    sc_signal< sc_lv<32> > sub_ln908_fu_528_p2;
    sc_signal< sc_lv<64> > m_fu_498_p1;
    sc_signal< sc_lv<64> > zext_ln908_1_fu_534_p1;
    sc_signal< sc_lv<1> > icmp_ln908_fu_506_p2;
    sc_signal< sc_lv<64> > zext_ln908_fu_524_p1;
    sc_signal< sc_lv<64> > shl_ln908_fu_538_p2;
    sc_signal< sc_lv<32> > or_ln_fu_490_p3;
    sc_signal< sc_lv<64> > zext_ln911_fu_552_p1;
    sc_signal< sc_lv<64> > m_7_fu_544_p3;
    sc_signal< sc_lv<64> > m_8_fu_556_p2;
    sc_signal< sc_lv<11> > sub_ln915_fu_600_p2;
    sc_signal< sc_lv<11> > select_ln915_fu_593_p3;
    sc_signal< sc_lv<11> > add_ln915_fu_605_p2;
    sc_signal< sc_lv<64> > m_11_fu_590_p1;
    sc_signal< sc_lv<12> > tmp_5_fu_611_p3;
    sc_signal< sc_lv<64> > p_Result_45_fu_619_p5;
    sc_signal< sc_lv<64> > bitcast_ln729_fu_631_p1;
    sc_signal< sc_lv<64> > ireg_V_fu_648_p1;
    sc_signal< sc_lv<11> > exp_tmp_V_fu_663_p4;
    sc_signal< sc_lv<52> > trunc_ln565_fu_677_p1;
    sc_signal< sc_lv<53> > tmp_6_fu_681_p3;
    sc_signal< sc_lv<54> > p_Result_47_fu_689_p1;
    sc_signal< sc_lv<1> > p_Result_46_fu_655_p3;
    sc_signal< sc_lv<54> > man_V_6_fu_693_p2;
    sc_signal< sc_lv<63> > trunc_ln556_fu_651_p1;
    sc_signal< sc_lv<12> > zext_ln461_1_fu_673_p1;
    sc_signal< sc_lv<12> > F2_fu_713_p2;
    sc_signal< sc_lv<1> > icmp_ln581_1_fu_719_p2;
    sc_signal< sc_lv<12> > add_ln581_1_fu_725_p2;
    sc_signal< sc_lv<12> > sub_ln581_1_fu_731_p2;
    sc_signal< sc_lv<12> > sh_amt_fu_737_p3;
    sc_signal< sc_lv<54> > man_V_7_fu_699_p3;
    sc_signal< sc_lv<32> > sext_ln581_fu_745_p1;
    sc_signal< sc_lv<54> > zext_ln586_1_fu_775_p1;
    sc_signal< sc_lv<54> > ashr_ln586_1_fu_779_p2;
    sc_signal< sc_lv<1> > tmp_21_fu_789_p3;
    sc_signal< sc_lv<22> > trunc_ln583_fu_759_p1;
    sc_signal< sc_lv<22> > sext_ln581_4_fu_749_p1;
    sc_signal< sc_lv<1> > icmp_ln571_1_fu_707_p2;
    sc_signal< sc_lv<1> > icmp_ln582_1_fu_753_p2;
    sc_signal< sc_lv<1> > xor_ln571_fu_811_p2;
    sc_signal< sc_lv<1> > or_ln582_fu_823_p2;
    sc_signal< sc_lv<1> > xor_ln582_fu_829_p2;
    sc_signal< sc_lv<1> > icmp_ln585_1_fu_763_p2;
    sc_signal< sc_lv<1> > and_ln581_fu_835_p2;
    sc_signal< sc_lv<1> > xor_ln585_fu_841_p2;
    sc_signal< sc_lv<1> > or_ln581_fu_859_p2;
    sc_signal< sc_lv<1> > icmp_ln603_1_fu_769_p2;
    sc_signal< sc_lv<1> > xor_ln581_fu_865_p2;
    sc_signal< sc_lv<1> > and_ln603_fu_871_p2;
    sc_signal< sc_lv<22> > shl_ln604_1_fu_805_p2;
    sc_signal< sc_lv<22> > trunc_ln586_fu_785_p1;
    sc_signal< sc_lv<1> > and_ln585_4_fu_853_p2;
    sc_signal< sc_lv<1> > and_ln585_fu_847_p2;
    sc_signal< sc_lv<22> > select_ln588_fu_797_p3;
    sc_signal< sc_lv<1> > and_ln582_fu_817_p2;
    sc_signal< sc_lv<1> > or_ln603_fu_885_p2;
    sc_signal< sc_lv<22> > select_ln603_fu_877_p3;
    sc_signal< sc_lv<22> > select_ln603_8_fu_891_p3;
    sc_signal< sc_lv<1> > or_ln603_6_fu_899_p2;
    sc_signal< sc_lv<1> > or_ln603_7_fu_913_p2;
    sc_signal< sc_lv<22> > select_ln603_9_fu_905_p3;
    sc_signal< sc_lv<64> > ireg_V_2_fu_927_p1;
    sc_signal< sc_lv<11> > exp_tmp_V_2_fu_942_p4;
    sc_signal< sc_lv<52> > trunc_ln565_2_fu_956_p1;
    sc_signal< sc_lv<53> > tmp_9_fu_960_p3;
    sc_signal< sc_lv<54> > p_Result_49_fu_968_p1;
    sc_signal< sc_lv<1> > p_Result_48_fu_934_p3;
    sc_signal< sc_lv<54> > man_V_9_fu_972_p2;
    sc_signal< sc_lv<63> > trunc_ln556_2_fu_930_p1;
    sc_signal< sc_lv<12> > zext_ln461_fu_952_p1;
    sc_signal< sc_lv<12> > F2_2_fu_992_p2;
    sc_signal< sc_lv<1> > icmp_ln581_fu_998_p2;
    sc_signal< sc_lv<12> > add_ln581_fu_1004_p2;
    sc_signal< sc_lv<12> > sub_ln581_fu_1010_p2;
    sc_signal< sc_lv<12> > sh_amt_2_fu_1016_p3;
    sc_signal< sc_lv<54> > man_V_10_fu_978_p3;
    sc_signal< sc_lv<32> > sext_ln581_5_fu_1024_p1;
    sc_signal< sc_lv<54> > zext_ln586_fu_1054_p1;
    sc_signal< sc_lv<54> > ashr_ln586_fu_1058_p2;
    sc_signal< sc_lv<1> > tmp_23_fu_1068_p3;
    sc_signal< sc_lv<22> > trunc_ln583_2_fu_1038_p1;
    sc_signal< sc_lv<22> > sext_ln581_6_fu_1028_p1;
    sc_signal< sc_lv<1> > icmp_ln571_fu_986_p2;
    sc_signal< sc_lv<1> > icmp_ln582_fu_1032_p2;
    sc_signal< sc_lv<1> > xor_ln571_2_fu_1090_p2;
    sc_signal< sc_lv<1> > or_ln582_2_fu_1102_p2;
    sc_signal< sc_lv<1> > xor_ln582_2_fu_1108_p2;
    sc_signal< sc_lv<1> > icmp_ln585_fu_1042_p2;
    sc_signal< sc_lv<1> > and_ln581_2_fu_1114_p2;
    sc_signal< sc_lv<1> > xor_ln585_2_fu_1120_p2;
    sc_signal< sc_lv<1> > or_ln581_2_fu_1138_p2;
    sc_signal< sc_lv<1> > icmp_ln603_fu_1048_p2;
    sc_signal< sc_lv<1> > xor_ln581_2_fu_1144_p2;
    sc_signal< sc_lv<1> > and_ln603_2_fu_1150_p2;
    sc_signal< sc_lv<22> > shl_ln604_fu_1084_p2;
    sc_signal< sc_lv<22> > trunc_ln586_2_fu_1064_p1;
    sc_signal< sc_lv<1> > and_ln585_6_fu_1132_p2;
    sc_signal< sc_lv<1> > and_ln585_5_fu_1126_p2;
    sc_signal< sc_lv<22> > select_ln588_2_fu_1076_p3;
    sc_signal< sc_lv<1> > and_ln582_2_fu_1096_p2;
    sc_signal< sc_lv<1> > or_ln603_8_fu_1164_p2;
    sc_signal< sc_lv<22> > select_ln603_11_fu_1156_p3;
    sc_signal< sc_lv<22> > select_ln603_12_fu_1170_p3;
    sc_signal< sc_lv<1> > or_ln603_9_fu_1178_p2;
    sc_signal< sc_lv<1> > or_ln603_10_fu_1192_p2;
    sc_signal< sc_lv<22> > select_ln603_13_fu_1184_p3;
    sc_signal< sc_lv<22> > c_V_fu_919_p3;
    sc_signal< sc_lv<22> > s_V_fu_1198_p3;
    sc_signal< sc_lv<22> > tmp_24_fu_1214_p4;
    sc_signal< sc_lv<32> > i_lower_fu_1230_p2;
    sc_signal< sc_lv<22> > mul_ln700_fu_1262_p0;
    sc_signal< sc_lv<22> > mul_ln700_fu_1262_p1;
    sc_signal< sc_lv<33> > sext_ln1118_5_fu_1254_p1;
    sc_signal< sc_lv<22> > mul_ln1193_fu_1267_p0;
    sc_signal< sc_lv<22> > mul_ln1193_fu_1267_p1;
    sc_signal< sc_lv<33> > sext_ln1118_6_fu_1258_p1;
    sc_signal< sc_lv<33> > mul_ln700_fu_1262_p2;
    sc_signal< sc_lv<33> > mul_ln1193_fu_1267_p2;
    sc_signal< sc_lv<33> > ret_V_fu_1272_p2;
    sc_signal< sc_lv<22> > mul_ln700_2_fu_1288_p0;
    sc_signal< sc_lv<22> > mul_ln700_2_fu_1288_p1;
    sc_signal< sc_lv<22> > mul_ln1192_fu_1293_p0;
    sc_signal< sc_lv<22> > mul_ln1192_fu_1293_p1;
    sc_signal< sc_lv<33> > mul_ln1192_fu_1293_p2;
    sc_signal< sc_lv<33> > mul_ln700_2_fu_1288_p2;
    sc_signal< sc_lv<33> > ret_V_14_fu_1298_p2;
    sc_signal< sc_lv<22> > temp_R_V_fu_1278_p4;
    sc_signal< sc_lv<22> > temp_I_V_fu_1304_p4;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_pp0_stage0;
    static const sc_lv<7> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<10> ap_const_lv10_3FF;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_FFFFFFCB;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<5> ap_const_lv5_C;
    static const sc_lv<22> ap_const_lv22_3FFFFF;
    static const sc_lv<22> ap_const_lv22_0;
    static const sc_lv<22> ap_const_lv22_3FFFCB;
    static const sc_lv<32> ap_const_lv32_FFFFFFCA;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<14> ap_const_lv14_3FE6;
    static const sc_lv<11> ap_const_lv11_3FF;
    static const sc_lv<11> ap_const_lv11_3FE;
    static const sc_lv<11> ap_const_lv11_B;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<54> ap_const_lv54_0;
    static const sc_lv<63> ap_const_lv63_0;
    static const sc_lv<12> ap_const_lv12_433;
    static const sc_lv<12> ap_const_lv12_B;
    static const sc_lv<12> ap_const_lv12_FF5;
    static const sc_lv<12> ap_const_lv12_36;
    static const sc_lv<12> ap_const_lv12_16;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<22> ap_const_lv22_1;
    static const sc_lv<32> ap_const_lv32_100;
    static const sc_lv<32> ap_const_lv32_200;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_20;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_F2_2_fu_992_p2();
    void thread_F2_fu_713_p2();
    void thread_Out_I_V_address0();
    void thread_Out_I_V_address1();
    void thread_Out_I_V_ce0();
    void thread_Out_I_V_ce1();
    void thread_Out_I_V_d0();
    void thread_Out_I_V_d1();
    void thread_Out_I_V_we0();
    void thread_Out_I_V_we1();
    void thread_Out_R_V_address0();
    void thread_Out_R_V_address1();
    void thread_Out_R_V_ce0();
    void thread_Out_R_V_ce1();
    void thread_Out_R_V_d0();
    void thread_Out_R_V_d1();
    void thread_Out_R_V_we0();
    void thread_Out_R_V_we1();
    void thread_X_I_V_address0();
    void thread_X_I_V_address1();
    void thread_X_I_V_ce0();
    void thread_X_I_V_ce1();
    void thread_X_R_V_address0();
    void thread_X_R_V_address1();
    void thread_X_R_V_ce0();
    void thread_X_R_V_ce1();
    void thread_a_V_fu_584_p2();
    void thread_a_fu_444_p2();
    void thread_add_ln581_1_fu_725_p2();
    void thread_add_ln581_fu_1004_p2();
    void thread_add_ln899_fu_464_p2();
    void thread_add_ln908_fu_512_p2();
    void thread_add_ln915_fu_605_p2();
    void thread_and_ln581_2_fu_1114_p2();
    void thread_and_ln581_fu_835_p2();
    void thread_and_ln582_2_fu_1096_p2();
    void thread_and_ln582_fu_817_p2();
    void thread_and_ln585_4_fu_853_p2();
    void thread_and_ln585_5_fu_1126_p2();
    void thread_and_ln585_6_fu_1132_p2();
    void thread_and_ln585_fu_847_p2();
    void thread_and_ln603_2_fu_1150_p2();
    void thread_and_ln603_fu_871_p2();
    void thread_and_ln899_fu_478_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state4_on_subcall_done();
    void thread_ap_block_state6_pp0_stage0_iter0();
    void thread_ap_block_state7_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state6();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_ashr_ln586_1_fu_779_p2();
    void thread_ashr_ln586_fu_1058_p2();
    void thread_bitcast_ln729_fu_631_p1();
    void thread_c_V_fu_919_p3();
    void thread_exp_tmp_V_2_fu_942_p4();
    void thread_exp_tmp_V_fu_663_p4();
    void thread_grp_sin_or_cos_double_s_fu_288_ap_start();
    void thread_grp_sin_or_cos_double_s_fu_288_do_cos();
    void thread_grp_sin_or_cos_double_s_fu_307_ap_start();
    void thread_grp_sin_or_cos_double_s_fu_307_do_cos();
    void thread_i_4_fu_1248_p2();
    void thread_i_lower_fu_1230_p2();
    void thread_icmp_ln47_fu_326_p2();
    void thread_icmp_ln53_fu_1224_p2();
    void thread_icmp_ln571_1_fu_707_p2();
    void thread_icmp_ln571_fu_986_p2();
    void thread_icmp_ln581_1_fu_719_p2();
    void thread_icmp_ln581_fu_998_p2();
    void thread_icmp_ln582_1_fu_753_p2();
    void thread_icmp_ln582_fu_1032_p2();
    void thread_icmp_ln585_1_fu_763_p2();
    void thread_icmp_ln585_fu_1042_p2();
    void thread_icmp_ln603_1_fu_769_p2();
    void thread_icmp_ln603_fu_1048_p2();
    void thread_icmp_ln885_fu_338_p2();
    void thread_icmp_ln897_1_fu_438_p2();
    void thread_icmp_ln897_fu_406_p2();
    void thread_icmp_ln908_fu_506_p2();
    void thread_ireg_V_2_fu_927_p1();
    void thread_ireg_V_fu_648_p1();
    void thread_j_fu_332_p2();
    void thread_l_fu_372_p3();
    void thread_lsb_index_fu_390_p2();
    void thread_lshr_ln897_fu_426_p2();
    void thread_lshr_ln908_fu_518_p2();
    void thread_m_11_fu_590_p1();
    void thread_m_7_fu_544_p3();
    void thread_m_8_fu_556_p2();
    void thread_m_fu_498_p1();
    void thread_man_V_10_fu_978_p3();
    void thread_man_V_6_fu_693_p2();
    void thread_man_V_7_fu_699_p3();
    void thread_man_V_9_fu_972_p2();
    void thread_mul_ln1192_fu_1293_p0();
    void thread_mul_ln1192_fu_1293_p1();
    void thread_mul_ln1192_fu_1293_p2();
    void thread_mul_ln1193_fu_1267_p0();
    void thread_mul_ln1193_fu_1267_p1();
    void thread_mul_ln1193_fu_1267_p2();
    void thread_mul_ln700_2_fu_1288_p0();
    void thread_mul_ln700_2_fu_1288_p1();
    void thread_mul_ln700_2_fu_1288_p2();
    void thread_mul_ln700_fu_1262_p0();
    void thread_mul_ln700_fu_1262_p1();
    void thread_mul_ln700_fu_1262_p2();
    void thread_or_ln581_2_fu_1138_p2();
    void thread_or_ln581_fu_859_p2();
    void thread_or_ln582_2_fu_1102_p2();
    void thread_or_ln582_fu_823_p2();
    void thread_or_ln603_10_fu_1192_p2();
    void thread_or_ln603_6_fu_899_p2();
    void thread_or_ln603_7_fu_913_p2();
    void thread_or_ln603_8_fu_1164_p2();
    void thread_or_ln603_9_fu_1178_p2();
    void thread_or_ln603_fu_885_p2();
    void thread_or_ln899_fu_484_p2();
    void thread_or_ln_fu_490_p3();
    void thread_p_Result_38_fu_432_p2();
    void thread_p_Result_44_fu_364_p3();
    void thread_p_Result_45_fu_619_p5();
    void thread_p_Result_46_fu_655_p3();
    void thread_p_Result_47_fu_689_p1();
    void thread_p_Result_48_fu_934_p3();
    void thread_p_Result_49_fu_968_p1();
    void thread_p_Result_9_fu_470_p3();
    void thread_p_Result_s_fu_354_p4();
    void thread_ret_V_14_fu_1298_p2();
    void thread_ret_V_fu_1272_p2();
    void thread_s_V_fu_1198_p3();
    void thread_select_ln588_2_fu_1076_p3();
    void thread_select_ln588_fu_797_p3();
    void thread_select_ln603_11_fu_1156_p3();
    void thread_select_ln603_12_fu_1170_p3();
    void thread_select_ln603_13_fu_1184_p3();
    void thread_select_ln603_8_fu_891_p3();
    void thread_select_ln603_9_fu_905_p3();
    void thread_select_ln603_fu_877_p3();
    void thread_select_ln885_fu_635_p3();
    void thread_select_ln915_fu_593_p3();
    void thread_sext_ln1118_4_fu_1210_p1();
    void thread_sext_ln1118_5_fu_1254_p1();
    void thread_sext_ln1118_6_fu_1258_p1();
    void thread_sext_ln1118_fu_1206_p1();
    void thread_sext_ln55_fu_1236_p1();
    void thread_sext_ln57_fu_1242_p1();
    void thread_sext_ln581_4_fu_749_p1();
    void thread_sext_ln581_5_fu_1024_p1();
    void thread_sext_ln581_6_fu_1028_p1();
    void thread_sext_ln581_fu_745_p1();
    void thread_sh_amt_2_fu_1016_p3();
    void thread_sh_amt_fu_737_p3();
    void thread_shl_ln604_1_fu_805_p2();
    void thread_shl_ln604_fu_1084_p2();
    void thread_shl_ln908_fu_538_p2();
    void thread_sub_ln581_1_fu_731_p2();
    void thread_sub_ln581_fu_1010_p2();
    void thread_sub_ln894_fu_380_p2();
    void thread_sub_ln897_fu_416_p2();
    void thread_sub_ln908_fu_528_p2();
    void thread_sub_ln915_fu_600_p2();
    void thread_temp_I_V_fu_1304_p4();
    void thread_temp_R_V_fu_1278_p4();
    void thread_tmp_18_fu_450_p3();
    void thread_tmp_21_fu_789_p3();
    void thread_tmp_23_fu_1068_p3();
    void thread_tmp_24_fu_1214_p4();
    void thread_tmp_5_fu_611_p3();
    void thread_tmp_6_fu_681_p3();
    void thread_tmp_9_fu_960_p3();
    void thread_tmp_V_5_fu_344_p2();
    void thread_tmp_fu_396_p4();
    void thread_trunc_ln556_2_fu_930_p1();
    void thread_trunc_ln556_fu_651_p1();
    void thread_trunc_ln565_2_fu_956_p1();
    void thread_trunc_ln565_fu_677_p1();
    void thread_trunc_ln583_2_fu_1038_p1();
    void thread_trunc_ln583_fu_759_p1();
    void thread_trunc_ln586_2_fu_1064_p1();
    void thread_trunc_ln586_fu_785_p1();
    void thread_trunc_ln893_fu_580_p1();
    void thread_trunc_ln894_fu_386_p1();
    void thread_trunc_ln897_fu_412_p1();
    void thread_xor_ln571_2_fu_1090_p2();
    void thread_xor_ln571_fu_811_p2();
    void thread_xor_ln581_2_fu_1144_p2();
    void thread_xor_ln581_fu_865_p2();
    void thread_xor_ln582_2_fu_1108_p2();
    void thread_xor_ln582_fu_829_p2();
    void thread_xor_ln585_2_fu_1120_p2();
    void thread_xor_ln585_fu_841_p2();
    void thread_xor_ln899_fu_458_p2();
    void thread_zext_ln461_1_fu_673_p1();
    void thread_zext_ln461_fu_952_p1();
    void thread_zext_ln586_1_fu_775_p1();
    void thread_zext_ln586_fu_1054_p1();
    void thread_zext_ln889_fu_350_p1();
    void thread_zext_ln891_fu_644_p1();
    void thread_zext_ln897_fu_422_p1();
    void thread_zext_ln907_2_fu_502_p1();
    void thread_zext_ln908_1_fu_534_p1();
    void thread_zext_ln908_fu_524_p1();
    void thread_zext_ln911_fu_552_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
