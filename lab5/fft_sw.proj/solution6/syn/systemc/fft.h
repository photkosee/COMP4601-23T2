// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fft_HH_
#define _fft_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sin_or_cos_double_s.h"
#include "bit_reverse.h"
#include "fft_ddiv_64ns_64nibs.h"
#include "fft_sitodp_32ns_6jbC.h"

namespace ap_rtl {

struct fft : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > X_R_V_address0;
    sc_out< sc_logic > X_R_V_ce0;
    sc_out< sc_logic > X_R_V_we0;
    sc_out< sc_lv<22> > X_R_V_d0;
    sc_in< sc_lv<22> > X_R_V_q0;
    sc_out< sc_lv<10> > X_R_V_address1;
    sc_out< sc_logic > X_R_V_ce1;
    sc_out< sc_logic > X_R_V_we1;
    sc_out< sc_lv<22> > X_R_V_d1;
    sc_in< sc_lv<22> > X_R_V_q1;
    sc_out< sc_lv<10> > X_I_V_address0;
    sc_out< sc_logic > X_I_V_ce0;
    sc_out< sc_logic > X_I_V_we0;
    sc_out< sc_lv<22> > X_I_V_d0;
    sc_in< sc_lv<22> > X_I_V_q0;
    sc_out< sc_lv<10> > X_I_V_address1;
    sc_out< sc_logic > X_I_V_ce1;
    sc_out< sc_logic > X_I_V_we1;
    sc_out< sc_lv<22> > X_I_V_d1;
    sc_in< sc_lv<22> > X_I_V_q1;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<64> > ap_var_for_const0;


    // Module declarations
    fft(sc_module_name name);
    SC_HAS_PROCESS(fft);

    ~fft();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sin_or_cos_double_s* grp_sin_or_cos_double_s_fu_262;
    sin_or_cos_double_s* grp_sin_or_cos_double_s_fu_281;
    bit_reverse* grp_bit_reverse_fu_300;
    fft_ddiv_64ns_64nibs<1,22,64,64,64>* fft_ddiv_64ns_64nibs_U24;
    fft_sitodp_32ns_6jbC<1,4,32,64>* fft_sitodp_32ns_6jbC_U25;
    sc_signal< sc_lv<37> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > i_0_reg_253;
    sc_signal< sc_lv<32> > zext_ln51_fu_332_p1;
    sc_signal< sc_lv<32> > zext_ln51_reg_1655;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln50_fu_316_p2;
    sc_signal< sc_lv<10> > trunc_ln_reg_1661;
    sc_signal< sc_lv<64> > grp_fu_313_p1;
    sc_signal< sc_lv<64> > tmp_reg_1667;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > grp_fu_308_p2;
    sc_signal< sc_lv<64> > v_assign_reg_1672;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<32> > numBF_fu_347_p1;
    sc_signal< sc_lv<32> > numBF_reg_1677;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_lv<22> > e_V_fu_621_p3;
    sc_signal< sc_lv<22> > e_V_reg_1682;
    sc_signal< sc_lv<10> > j_fu_634_p2;
    sc_signal< sc_lv<10> > j_reg_1690;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_lv<1> > icmp_ln885_fu_640_p2;
    sc_signal< sc_lv<1> > icmp_ln885_reg_1695;
    sc_signal< sc_lv<1> > icmp_ln57_fu_629_p2;
    sc_signal< sc_lv<1> > p_Result_32_fu_646_p3;
    sc_signal< sc_lv<1> > p_Result_32_reg_1700;
    sc_signal< sc_lv<63> > m_5_reg_1705;
    sc_signal< sc_lv<1> > tmp_15_reg_1710;
    sc_signal< sc_lv<11> > trunc_ln893_fu_894_p1;
    sc_signal< sc_lv<11> > trunc_ln893_reg_1715;
    sc_signal< sc_lv<22> > a_V_fu_898_p2;
    sc_signal< sc_lv<22> > a_V_reg_1720;
    sc_signal< sc_lv<4> > stage_fu_903_p2;
    sc_signal< sc_lv<64> > select_ln885_fu_953_p3;
    sc_signal< sc_lv<64> > select_ln885_reg_1730;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<64> > grp_sin_or_cos_double_s_fu_262_ap_return;
    sc_signal< sc_lv<64> > v_assign_1_reg_1736;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_262_ap_ready;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_262_ap_done;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_281_ap_ready;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_281_ap_done;
    sc_signal< bool > ap_block_state32_on_subcall_done;
    sc_signal< sc_lv<64> > grp_sin_or_cos_double_s_fu_281_ap_return;
    sc_signal< sc_lv<64> > v_assign_2_reg_1741;
    sc_signal< sc_lv<32> > zext_ln891_fu_962_p1;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_lv<33> > sext_ln1118_1_fu_1524_p1;
    sc_signal< sc_lv<33> > sext_ln1118_1_reg_1751;
    sc_signal< sc_lv<33> > sext_ln1118_3_fu_1528_p1;
    sc_signal< sc_lv<33> > sext_ln1118_3_reg_1757;
    sc_signal< sc_lv<1> > icmp_ln63_fu_1542_p2;
    sc_signal< sc_lv<1> > icmp_ln63_reg_1763;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state34_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state37_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln63_reg_1763_pp0_iter1_reg;
    sc_signal< sc_lv<10> > X_R_V_addr_reg_1767;
    sc_signal< sc_lv<10> > X_I_V_addr_reg_1772;
    sc_signal< sc_lv<10> > X_R_V_addr_1_reg_1778;
    sc_signal< sc_lv<10> > X_R_V_addr_1_reg_1778_pp0_iter1_reg;
    sc_signal< sc_lv<10> > X_I_V_addr_1_reg_1784;
    sc_signal< sc_lv<10> > X_I_V_addr_1_reg_1784_pp0_iter1_reg;
    sc_signal< sc_lv<32> > i_3_fu_1565_p2;
    sc_signal< sc_lv<32> > i_3_reg_1790;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<33> > sext_ln1118_fu_1570_p1;
    sc_signal< sc_lv<33> > sext_ln1118_reg_1795;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state35_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state38_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<33> > sext_ln1118_2_fu_1574_p1;
    sc_signal< sc_lv<33> > sext_ln1118_2_reg_1800;
    sc_signal< sc_lv<22> > temp_R_V_fu_1594_p4;
    sc_signal< sc_lv<22> > temp_R_V_reg_1805;
    sc_signal< sc_lv<22> > p_Val2_51_reg_1810;
    sc_signal< sc_lv<22> > temp_I_V_fu_1625_p4;
    sc_signal< sc_lv<22> > temp_I_V_reg_1815;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state36_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state39_pp0_stage2_iter1;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<22> > add_ln703_fu_1641_p2;
    sc_signal< sc_lv<22> > add_ln703_reg_1820;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state34;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_262_ap_start;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_262_ap_idle;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_262_do_cos;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_281_ap_start;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_281_ap_idle;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_281_do_cos;
    sc_signal< sc_logic > grp_bit_reverse_fu_300_ap_start;
    sc_signal< sc_logic > grp_bit_reverse_fu_300_ap_done;
    sc_signal< sc_logic > grp_bit_reverse_fu_300_ap_idle;
    sc_signal< sc_logic > grp_bit_reverse_fu_300_ap_ready;
    sc_signal< sc_lv<10> > grp_bit_reverse_fu_300_X_R_V_address0;
    sc_signal< sc_logic > grp_bit_reverse_fu_300_X_R_V_ce0;
    sc_signal< sc_logic > grp_bit_reverse_fu_300_X_R_V_we0;
    sc_signal< sc_lv<22> > grp_bit_reverse_fu_300_X_R_V_d0;
    sc_signal< sc_lv<10> > grp_bit_reverse_fu_300_X_I_V_address0;
    sc_signal< sc_logic > grp_bit_reverse_fu_300_X_I_V_ce0;
    sc_signal< sc_logic > grp_bit_reverse_fu_300_X_I_V_we0;
    sc_signal< sc_lv<22> > grp_bit_reverse_fu_300_X_I_V_d0;
    sc_signal< sc_lv<4> > stage_0_reg_218;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<22> > tmp_V_6_reg_230;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_lv<10> > i_reg_241;
    sc_signal< sc_lv<32> > ap_phi_mux_i_0_phi_fu_256_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_262_ap_start_reg;
    sc_signal< sc_logic > grp_sin_or_cos_double_s_fu_281_ap_start_reg;
    sc_signal< sc_logic > grp_bit_reverse_fu_300_ap_start_reg;
    sc_signal< sc_lv<64> > sext_ln65_fu_1553_p1;
    sc_signal< sc_lv<64> > sext_ln67_fu_1559_p1;
    sc_signal< sc_lv<22> > sub_ln703_fu_1604_p2;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<22> > add_ln703_1_fu_1646_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_313_p0;
    sc_signal< sc_lv<11> > zext_ln50_fu_322_p1;
    sc_signal< sc_lv<11> > DFTpts_fu_326_p2;
    sc_signal< sc_lv<64> > ireg_V_fu_350_p1;
    sc_signal< sc_lv<11> > exp_tmp_V_fu_365_p4;
    sc_signal< sc_lv<52> > trunc_ln565_fu_379_p1;
    sc_signal< sc_lv<53> > tmp_9_fu_383_p3;
    sc_signal< sc_lv<54> > p_Result_31_fu_391_p1;
    sc_signal< sc_lv<1> > p_Result_30_fu_357_p3;
    sc_signal< sc_lv<54> > man_V_1_fu_395_p2;
    sc_signal< sc_lv<63> > trunc_ln556_fu_353_p1;
    sc_signal< sc_lv<12> > zext_ln461_fu_375_p1;
    sc_signal< sc_lv<12> > F2_fu_415_p2;
    sc_signal< sc_lv<1> > icmp_ln581_fu_421_p2;
    sc_signal< sc_lv<12> > add_ln581_fu_427_p2;
    sc_signal< sc_lv<12> > sub_ln581_fu_433_p2;
    sc_signal< sc_lv<12> > sh_amt_fu_439_p3;
    sc_signal< sc_lv<54> > man_V_2_fu_401_p3;
    sc_signal< sc_lv<32> > sext_ln581_fu_447_p1;
    sc_signal< sc_lv<54> > zext_ln586_fu_473_p1;
    sc_signal< sc_lv<54> > ashr_ln586_fu_477_p2;
    sc_signal< sc_lv<1> > tmp_11_fu_487_p3;
    sc_signal< sc_lv<22> > trunc_ln583_fu_457_p1;
    sc_signal< sc_lv<22> > sext_ln581cast_fu_503_p1;
    sc_signal< sc_lv<1> > icmp_ln571_fu_409_p2;
    sc_signal< sc_lv<1> > icmp_ln582_fu_451_p2;
    sc_signal< sc_lv<1> > xor_ln571_fu_513_p2;
    sc_signal< sc_lv<1> > or_ln582_fu_525_p2;
    sc_signal< sc_lv<1> > xor_ln582_fu_531_p2;
    sc_signal< sc_lv<1> > icmp_ln585_fu_461_p2;
    sc_signal< sc_lv<1> > and_ln581_fu_537_p2;
    sc_signal< sc_lv<1> > xor_ln585_fu_543_p2;
    sc_signal< sc_lv<1> > or_ln581_fu_561_p2;
    sc_signal< sc_lv<1> > icmp_ln603_fu_467_p2;
    sc_signal< sc_lv<1> > xor_ln581_fu_567_p2;
    sc_signal< sc_lv<1> > and_ln603_fu_573_p2;
    sc_signal< sc_lv<22> > shl_ln604_fu_507_p2;
    sc_signal< sc_lv<22> > trunc_ln586_fu_483_p1;
    sc_signal< sc_lv<1> > and_ln585_1_fu_555_p2;
    sc_signal< sc_lv<1> > and_ln585_fu_549_p2;
    sc_signal< sc_lv<22> > select_ln588_fu_495_p3;
    sc_signal< sc_lv<1> > and_ln582_fu_519_p2;
    sc_signal< sc_lv<1> > or_ln603_fu_587_p2;
    sc_signal< sc_lv<22> > select_ln603_fu_579_p3;
    sc_signal< sc_lv<22> > select_ln603_1_fu_593_p3;
    sc_signal< sc_lv<1> > or_ln603_1_fu_601_p2;
    sc_signal< sc_lv<1> > or_ln603_2_fu_615_p2;
    sc_signal< sc_lv<22> > select_ln603_2_fu_607_p3;
    sc_signal< sc_lv<22> > tmp_V_fu_654_p2;
    sc_signal< sc_lv<22> > tmp_V_7_fu_660_p3;
    sc_signal< sc_lv<22> > p_Result_3_fu_668_p4;
    sc_signal< sc_lv<32> > p_Result_33_fu_678_p3;
    sc_signal< sc_lv<32> > l_fu_686_p3;
    sc_signal< sc_lv<32> > sub_ln894_fu_694_p2;
    sc_signal< sc_lv<32> > lsb_index_fu_704_p2;
    sc_signal< sc_lv<31> > tmp_13_fu_710_p4;
    sc_signal< sc_lv<5> > trunc_ln897_fu_726_p1;
    sc_signal< sc_lv<5> > sub_ln897_fu_730_p2;
    sc_signal< sc_lv<22> > zext_ln897_fu_736_p1;
    sc_signal< sc_lv<22> > lshr_ln897_fu_740_p2;
    sc_signal< sc_lv<22> > p_Result_s_fu_746_p2;
    sc_signal< sc_lv<1> > icmp_ln897_fu_720_p2;
    sc_signal< sc_lv<1> > icmp_ln897_1_fu_752_p2;
    sc_signal< sc_lv<1> > tmp_14_fu_764_p3;
    sc_signal< sc_lv<22> > trunc_ln894_fu_700_p1;
    sc_signal< sc_lv<22> > add_ln899_fu_778_p2;
    sc_signal< sc_lv<1> > p_Result_6_fu_784_p3;
    sc_signal< sc_lv<1> > xor_ln899_fu_772_p2;
    sc_signal< sc_lv<1> > and_ln899_fu_792_p2;
    sc_signal< sc_lv<1> > a_fu_758_p2;
    sc_signal< sc_lv<1> > or_ln899_fu_798_p2;
    sc_signal< sc_lv<32> > zext_ln907_1_fu_816_p1;
    sc_signal< sc_lv<32> > add_ln908_fu_826_p2;
    sc_signal< sc_lv<32> > lshr_ln908_fu_832_p2;
    sc_signal< sc_lv<32> > sub_ln908_fu_842_p2;
    sc_signal< sc_lv<64> > m_fu_812_p1;
    sc_signal< sc_lv<64> > zext_ln908_1_fu_848_p1;
    sc_signal< sc_lv<1> > icmp_ln908_fu_820_p2;
    sc_signal< sc_lv<64> > zext_ln908_fu_838_p1;
    sc_signal< sc_lv<64> > shl_ln908_fu_852_p2;
    sc_signal< sc_lv<32> > or_ln_fu_804_p3;
    sc_signal< sc_lv<64> > zext_ln911_fu_866_p1;
    sc_signal< sc_lv<64> > m_1_fu_858_p3;
    sc_signal< sc_lv<64> > m_2_fu_870_p2;
    sc_signal< sc_lv<11> > sub_ln915_fu_919_p2;
    sc_signal< sc_lv<11> > select_ln915_fu_912_p3;
    sc_signal< sc_lv<11> > add_ln915_fu_924_p2;
    sc_signal< sc_lv<64> > m_6_fu_909_p1;
    sc_signal< sc_lv<12> > tmp_2_fu_930_p3;
    sc_signal< sc_lv<64> > p_Result_34_fu_937_p5;
    sc_signal< sc_lv<64> > bitcast_ln729_fu_949_p1;
    sc_signal< sc_lv<64> > ireg_V_1_fu_966_p1;
    sc_signal< sc_lv<11> > exp_tmp_V_1_fu_981_p4;
    sc_signal< sc_lv<52> > trunc_ln565_1_fu_995_p1;
    sc_signal< sc_lv<53> > tmp_3_fu_999_p3;
    sc_signal< sc_lv<54> > p_Result_36_fu_1007_p1;
    sc_signal< sc_lv<1> > p_Result_35_fu_973_p3;
    sc_signal< sc_lv<54> > man_V_4_fu_1011_p2;
    sc_signal< sc_lv<63> > trunc_ln556_1_fu_969_p1;
    sc_signal< sc_lv<12> > zext_ln461_1_fu_991_p1;
    sc_signal< sc_lv<12> > F2_1_fu_1031_p2;
    sc_signal< sc_lv<1> > icmp_ln581_1_fu_1037_p2;
    sc_signal< sc_lv<12> > add_ln581_1_fu_1043_p2;
    sc_signal< sc_lv<12> > sub_ln581_1_fu_1049_p2;
    sc_signal< sc_lv<12> > sh_amt_1_fu_1055_p3;
    sc_signal< sc_lv<54> > man_V_5_fu_1017_p3;
    sc_signal< sc_lv<32> > sext_ln581_1_fu_1063_p1;
    sc_signal< sc_lv<54> > zext_ln586_1_fu_1089_p1;
    sc_signal< sc_lv<54> > ashr_ln586_1_fu_1093_p2;
    sc_signal< sc_lv<1> > tmp_17_fu_1103_p3;
    sc_signal< sc_lv<22> > trunc_ln583_1_fu_1073_p1;
    sc_signal< sc_lv<22> > sext_ln581_1cast_fu_1119_p1;
    sc_signal< sc_lv<1> > icmp_ln571_1_fu_1025_p2;
    sc_signal< sc_lv<1> > icmp_ln582_1_fu_1067_p2;
    sc_signal< sc_lv<1> > xor_ln571_1_fu_1129_p2;
    sc_signal< sc_lv<1> > or_ln582_1_fu_1141_p2;
    sc_signal< sc_lv<1> > xor_ln582_1_fu_1147_p2;
    sc_signal< sc_lv<1> > icmp_ln585_1_fu_1077_p2;
    sc_signal< sc_lv<1> > and_ln581_1_fu_1153_p2;
    sc_signal< sc_lv<1> > xor_ln585_1_fu_1159_p2;
    sc_signal< sc_lv<1> > or_ln581_1_fu_1177_p2;
    sc_signal< sc_lv<1> > icmp_ln603_1_fu_1083_p2;
    sc_signal< sc_lv<1> > xor_ln581_1_fu_1183_p2;
    sc_signal< sc_lv<1> > and_ln603_1_fu_1189_p2;
    sc_signal< sc_lv<22> > shl_ln604_1_fu_1123_p2;
    sc_signal< sc_lv<22> > trunc_ln586_1_fu_1099_p1;
    sc_signal< sc_lv<1> > and_ln585_3_fu_1171_p2;
    sc_signal< sc_lv<1> > and_ln585_2_fu_1165_p2;
    sc_signal< sc_lv<22> > select_ln588_1_fu_1111_p3;
    sc_signal< sc_lv<1> > and_ln582_1_fu_1135_p2;
    sc_signal< sc_lv<1> > or_ln603_3_fu_1203_p2;
    sc_signal< sc_lv<22> > select_ln603_4_fu_1195_p3;
    sc_signal< sc_lv<22> > select_ln603_5_fu_1209_p3;
    sc_signal< sc_lv<1> > or_ln603_4_fu_1217_p2;
    sc_signal< sc_lv<1> > or_ln603_5_fu_1231_p2;
    sc_signal< sc_lv<22> > select_ln603_6_fu_1223_p3;
    sc_signal< sc_lv<64> > ireg_V_2_fu_1245_p1;
    sc_signal< sc_lv<11> > exp_tmp_V_2_fu_1260_p4;
    sc_signal< sc_lv<52> > trunc_ln565_2_fu_1274_p1;
    sc_signal< sc_lv<53> > tmp_6_fu_1278_p3;
    sc_signal< sc_lv<54> > p_Result_38_fu_1286_p1;
    sc_signal< sc_lv<1> > p_Result_37_fu_1252_p3;
    sc_signal< sc_lv<54> > man_V_7_fu_1290_p2;
    sc_signal< sc_lv<63> > trunc_ln556_2_fu_1248_p1;
    sc_signal< sc_lv<12> > zext_ln461_2_fu_1270_p1;
    sc_signal< sc_lv<12> > F2_2_fu_1310_p2;
    sc_signal< sc_lv<1> > icmp_ln581_2_fu_1316_p2;
    sc_signal< sc_lv<12> > add_ln581_2_fu_1322_p2;
    sc_signal< sc_lv<12> > sub_ln581_2_fu_1328_p2;
    sc_signal< sc_lv<12> > sh_amt_2_fu_1334_p3;
    sc_signal< sc_lv<54> > man_V_8_fu_1296_p3;
    sc_signal< sc_lv<32> > sext_ln581_2_fu_1342_p1;
    sc_signal< sc_lv<54> > zext_ln586_2_fu_1368_p1;
    sc_signal< sc_lv<54> > ashr_ln586_2_fu_1372_p2;
    sc_signal< sc_lv<1> > tmp_19_fu_1382_p3;
    sc_signal< sc_lv<22> > trunc_ln583_2_fu_1352_p1;
    sc_signal< sc_lv<22> > sext_ln581_2cast_fu_1398_p1;
    sc_signal< sc_lv<1> > icmp_ln571_2_fu_1304_p2;
    sc_signal< sc_lv<1> > icmp_ln582_2_fu_1346_p2;
    sc_signal< sc_lv<1> > xor_ln571_2_fu_1408_p2;
    sc_signal< sc_lv<1> > or_ln582_2_fu_1420_p2;
    sc_signal< sc_lv<1> > xor_ln582_2_fu_1426_p2;
    sc_signal< sc_lv<1> > icmp_ln585_2_fu_1356_p2;
    sc_signal< sc_lv<1> > and_ln581_2_fu_1432_p2;
    sc_signal< sc_lv<1> > xor_ln585_2_fu_1438_p2;
    sc_signal< sc_lv<1> > or_ln581_2_fu_1456_p2;
    sc_signal< sc_lv<1> > icmp_ln603_2_fu_1362_p2;
    sc_signal< sc_lv<1> > xor_ln581_2_fu_1462_p2;
    sc_signal< sc_lv<1> > and_ln603_2_fu_1468_p2;
    sc_signal< sc_lv<22> > shl_ln604_2_fu_1402_p2;
    sc_signal< sc_lv<22> > trunc_ln586_2_fu_1378_p1;
    sc_signal< sc_lv<1> > and_ln585_5_fu_1450_p2;
    sc_signal< sc_lv<1> > and_ln585_4_fu_1444_p2;
    sc_signal< sc_lv<22> > select_ln588_2_fu_1390_p3;
    sc_signal< sc_lv<1> > and_ln582_2_fu_1414_p2;
    sc_signal< sc_lv<1> > or_ln603_6_fu_1482_p2;
    sc_signal< sc_lv<22> > select_ln603_8_fu_1474_p3;
    sc_signal< sc_lv<22> > select_ln603_9_fu_1488_p3;
    sc_signal< sc_lv<1> > or_ln603_7_fu_1496_p2;
    sc_signal< sc_lv<1> > or_ln603_8_fu_1510_p2;
    sc_signal< sc_lv<22> > select_ln603_10_fu_1502_p3;
    sc_signal< sc_lv<22> > c_V_fu_1237_p3;
    sc_signal< sc_lv<22> > s_V_fu_1516_p3;
    sc_signal< sc_lv<22> > tmp_20_fu_1532_p4;
    sc_signal< sc_lv<32> > i_lower_fu_1548_p2;
    sc_signal< sc_lv<22> > sext_ln1118_fu_1570_p0;
    sc_signal< sc_lv<22> > sext_ln1118_2_fu_1574_p0;
    sc_signal< sc_lv<22> > mul_ln700_fu_1578_p0;
    sc_signal< sc_lv<22> > mul_ln700_fu_1578_p1;
    sc_signal< sc_lv<22> > mul_ln1193_fu_1583_p0;
    sc_signal< sc_lv<22> > mul_ln1193_fu_1583_p1;
    sc_signal< sc_lv<33> > mul_ln700_fu_1578_p2;
    sc_signal< sc_lv<33> > mul_ln1193_fu_1583_p2;
    sc_signal< sc_lv<33> > ret_V_fu_1588_p2;
    sc_signal< sc_lv<22> > mul_ln700_1_fu_1611_p0;
    sc_signal< sc_lv<22> > mul_ln700_1_fu_1611_p1;
    sc_signal< sc_lv<22> > mul_ln1192_fu_1615_p0;
    sc_signal< sc_lv<22> > mul_ln1192_fu_1615_p1;
    sc_signal< sc_lv<33> > mul_ln700_1_fu_1611_p2;
    sc_signal< sc_lv<33> > mul_ln1192_fu_1615_p2;
    sc_signal< sc_lv<33> > ret_V_20_fu_1619_p2;
    sc_signal< sc_lv<37> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0;
    sc_signal< bool > ap_enable_operation_300;
    sc_signal< bool > ap_enable_state34_pp0_iter0_stage0;
    sc_signal< bool > ap_enable_operation_309;
    sc_signal< bool > ap_enable_state35_pp0_iter0_stage1;
    sc_signal< bool > ap_enable_operation_319;
    sc_signal< bool > ap_enable_operation_330;
    sc_signal< bool > ap_enable_state38_pp0_iter1_stage1;
    sc_signal< bool > ap_enable_operation_302;
    sc_signal< bool > ap_enable_operation_311;
    sc_signal< bool > ap_enable_operation_326;
    sc_signal< bool > ap_enable_state36_pp0_iter0_stage2;
    sc_signal< bool > ap_enable_operation_338;
    sc_signal< bool > ap_enable_state39_pp0_iter1_stage2;
    sc_signal< bool > ap_enable_operation_305;
    sc_signal< bool > ap_enable_operation_317;
    sc_signal< bool > ap_enable_operation_327;
    sc_signal< bool > ap_enable_operation_328;
    sc_signal< bool > ap_enable_state37_pp0_iter1_stage0;
    sc_signal< bool > ap_enable_operation_307;
    sc_signal< bool > ap_enable_operation_320;
    sc_signal< bool > ap_enable_operation_331;
    sc_signal< bool > ap_enable_operation_336;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<37> ap_ST_fsm_state1;
    static const sc_lv<37> ap_ST_fsm_state2;
    static const sc_lv<37> ap_ST_fsm_state3;
    static const sc_lv<37> ap_ST_fsm_state4;
    static const sc_lv<37> ap_ST_fsm_state5;
    static const sc_lv<37> ap_ST_fsm_state6;
    static const sc_lv<37> ap_ST_fsm_state7;
    static const sc_lv<37> ap_ST_fsm_state8;
    static const sc_lv<37> ap_ST_fsm_state9;
    static const sc_lv<37> ap_ST_fsm_state10;
    static const sc_lv<37> ap_ST_fsm_state11;
    static const sc_lv<37> ap_ST_fsm_state12;
    static const sc_lv<37> ap_ST_fsm_state13;
    static const sc_lv<37> ap_ST_fsm_state14;
    static const sc_lv<37> ap_ST_fsm_state15;
    static const sc_lv<37> ap_ST_fsm_state16;
    static const sc_lv<37> ap_ST_fsm_state17;
    static const sc_lv<37> ap_ST_fsm_state18;
    static const sc_lv<37> ap_ST_fsm_state19;
    static const sc_lv<37> ap_ST_fsm_state20;
    static const sc_lv<37> ap_ST_fsm_state21;
    static const sc_lv<37> ap_ST_fsm_state22;
    static const sc_lv<37> ap_ST_fsm_state23;
    static const sc_lv<37> ap_ST_fsm_state24;
    static const sc_lv<37> ap_ST_fsm_state25;
    static const sc_lv<37> ap_ST_fsm_state26;
    static const sc_lv<37> ap_ST_fsm_state27;
    static const sc_lv<37> ap_ST_fsm_state28;
    static const sc_lv<37> ap_ST_fsm_state29;
    static const sc_lv<37> ap_ST_fsm_state30;
    static const sc_lv<37> ap_ST_fsm_state31;
    static const sc_lv<37> ap_ST_fsm_state32;
    static const sc_lv<37> ap_ST_fsm_state33;
    static const sc_lv<37> ap_ST_fsm_pp0_stage0;
    static const sc_lv<37> ap_ST_fsm_pp0_stage1;
    static const sc_lv<37> ap_ST_fsm_pp0_stage2;
    static const sc_lv<37> ap_ST_fsm_state40;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1F;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<22> ap_const_lv22_0;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<64> ap_const_lv64_C01921FB5444261E;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_B;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<54> ap_const_lv54_0;
    static const sc_lv<63> ap_const_lv63_0;
    static const sc_lv<12> ap_const_lv12_433;
    static const sc_lv<12> ap_const_lv12_B;
    static const sc_lv<12> ap_const_lv12_FF5;
    static const sc_lv<12> ap_const_lv12_36;
    static const sc_lv<12> ap_const_lv12_16;
    static const sc_lv<22> ap_const_lv22_3FFFFF;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<10> ap_const_lv10_3FF;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_FFFFFFCB;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<5> ap_const_lv5_C;
    static const sc_lv<22> ap_const_lv22_3FFFCB;
    static const sc_lv<32> ap_const_lv32_FFFFFFCA;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<11> ap_const_lv11_3FF;
    static const sc_lv<11> ap_const_lv11_3FE;
    static const sc_lv<11> ap_const_lv11_B;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<22> ap_const_lv22_1;
    static const sc_lv<32> ap_const_lv32_B;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_DFTpts_fu_326_p2();
    void thread_F2_1_fu_1031_p2();
    void thread_F2_2_fu_1310_p2();
    void thread_F2_fu_415_p2();
    void thread_X_I_V_address0();
    void thread_X_I_V_address1();
    void thread_X_I_V_ce0();
    void thread_X_I_V_ce1();
    void thread_X_I_V_d0();
    void thread_X_I_V_d1();
    void thread_X_I_V_we0();
    void thread_X_I_V_we1();
    void thread_X_R_V_address0();
    void thread_X_R_V_address1();
    void thread_X_R_V_ce0();
    void thread_X_R_V_ce1();
    void thread_X_R_V_d0();
    void thread_X_R_V_d1();
    void thread_X_R_V_we0();
    void thread_X_R_V_we1();
    void thread_a_V_fu_898_p2();
    void thread_a_fu_758_p2();
    void thread_add_ln581_1_fu_1043_p2();
    void thread_add_ln581_2_fu_1322_p2();
    void thread_add_ln581_fu_427_p2();
    void thread_add_ln703_1_fu_1646_p2();
    void thread_add_ln703_fu_1641_p2();
    void thread_add_ln899_fu_778_p2();
    void thread_add_ln908_fu_826_p2();
    void thread_add_ln915_fu_924_p2();
    void thread_and_ln581_1_fu_1153_p2();
    void thread_and_ln581_2_fu_1432_p2();
    void thread_and_ln581_fu_537_p2();
    void thread_and_ln582_1_fu_1135_p2();
    void thread_and_ln582_2_fu_1414_p2();
    void thread_and_ln582_fu_519_p2();
    void thread_and_ln585_1_fu_555_p2();
    void thread_and_ln585_2_fu_1165_p2();
    void thread_and_ln585_3_fu_1171_p2();
    void thread_and_ln585_4_fu_1444_p2();
    void thread_and_ln585_5_fu_1450_p2();
    void thread_and_ln585_fu_549_p2();
    void thread_and_ln603_1_fu_1189_p2();
    void thread_and_ln603_2_fu_1468_p2();
    void thread_and_ln603_fu_573_p2();
    void thread_and_ln899_fu_792_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_state32_on_subcall_done();
    void thread_ap_block_state34_pp0_stage0_iter0();
    void thread_ap_block_state35_pp0_stage1_iter0();
    void thread_ap_block_state36_pp0_stage2_iter0();
    void thread_ap_block_state37_pp0_stage0_iter1();
    void thread_ap_block_state38_pp0_stage1_iter1();
    void thread_ap_block_state39_pp0_stage2_iter1();
    void thread_ap_condition_pp0_exit_iter0_state34();
    void thread_ap_done();
    void thread_ap_enable_operation_300();
    void thread_ap_enable_operation_302();
    void thread_ap_enable_operation_305();
    void thread_ap_enable_operation_307();
    void thread_ap_enable_operation_309();
    void thread_ap_enable_operation_311();
    void thread_ap_enable_operation_317();
    void thread_ap_enable_operation_319();
    void thread_ap_enable_operation_320();
    void thread_ap_enable_operation_326();
    void thread_ap_enable_operation_327();
    void thread_ap_enable_operation_328();
    void thread_ap_enable_operation_330();
    void thread_ap_enable_operation_331();
    void thread_ap_enable_operation_336();
    void thread_ap_enable_operation_338();
    void thread_ap_enable_pp0();
    void thread_ap_enable_state34_pp0_iter0_stage0();
    void thread_ap_enable_state35_pp0_iter0_stage1();
    void thread_ap_enable_state36_pp0_iter0_stage2();
    void thread_ap_enable_state37_pp0_iter1_stage0();
    void thread_ap_enable_state38_pp0_iter1_stage1();
    void thread_ap_enable_state39_pp0_iter1_stage2();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_256_p4();
    void thread_ap_ready();
    void thread_ashr_ln586_1_fu_1093_p2();
    void thread_ashr_ln586_2_fu_1372_p2();
    void thread_ashr_ln586_fu_477_p2();
    void thread_bitcast_ln729_fu_949_p1();
    void thread_c_V_fu_1237_p3();
    void thread_e_V_fu_621_p3();
    void thread_exp_tmp_V_1_fu_981_p4();
    void thread_exp_tmp_V_2_fu_1260_p4();
    void thread_exp_tmp_V_fu_365_p4();
    void thread_grp_bit_reverse_fu_300_ap_start();
    void thread_grp_fu_313_p0();
    void thread_grp_sin_or_cos_double_s_fu_262_ap_start();
    void thread_grp_sin_or_cos_double_s_fu_262_do_cos();
    void thread_grp_sin_or_cos_double_s_fu_281_ap_start();
    void thread_grp_sin_or_cos_double_s_fu_281_do_cos();
    void thread_i_3_fu_1565_p2();
    void thread_i_lower_fu_1548_p2();
    void thread_icmp_ln50_fu_316_p2();
    void thread_icmp_ln571_1_fu_1025_p2();
    void thread_icmp_ln571_2_fu_1304_p2();
    void thread_icmp_ln571_fu_409_p2();
    void thread_icmp_ln57_fu_629_p2();
    void thread_icmp_ln581_1_fu_1037_p2();
    void thread_icmp_ln581_2_fu_1316_p2();
    void thread_icmp_ln581_fu_421_p2();
    void thread_icmp_ln582_1_fu_1067_p2();
    void thread_icmp_ln582_2_fu_1346_p2();
    void thread_icmp_ln582_fu_451_p2();
    void thread_icmp_ln585_1_fu_1077_p2();
    void thread_icmp_ln585_2_fu_1356_p2();
    void thread_icmp_ln585_fu_461_p2();
    void thread_icmp_ln603_1_fu_1083_p2();
    void thread_icmp_ln603_2_fu_1362_p2();
    void thread_icmp_ln603_fu_467_p2();
    void thread_icmp_ln63_fu_1542_p2();
    void thread_icmp_ln885_fu_640_p2();
    void thread_icmp_ln897_1_fu_752_p2();
    void thread_icmp_ln897_fu_720_p2();
    void thread_icmp_ln908_fu_820_p2();
    void thread_ireg_V_1_fu_966_p1();
    void thread_ireg_V_2_fu_1245_p1();
    void thread_ireg_V_fu_350_p1();
    void thread_j_fu_634_p2();
    void thread_l_fu_686_p3();
    void thread_lsb_index_fu_704_p2();
    void thread_lshr_ln897_fu_740_p2();
    void thread_lshr_ln908_fu_832_p2();
    void thread_m_1_fu_858_p3();
    void thread_m_2_fu_870_p2();
    void thread_m_6_fu_909_p1();
    void thread_m_fu_812_p1();
    void thread_man_V_1_fu_395_p2();
    void thread_man_V_2_fu_401_p3();
    void thread_man_V_4_fu_1011_p2();
    void thread_man_V_5_fu_1017_p3();
    void thread_man_V_7_fu_1290_p2();
    void thread_man_V_8_fu_1296_p3();
    void thread_mul_ln1192_fu_1615_p0();
    void thread_mul_ln1192_fu_1615_p1();
    void thread_mul_ln1192_fu_1615_p2();
    void thread_mul_ln1193_fu_1583_p0();
    void thread_mul_ln1193_fu_1583_p1();
    void thread_mul_ln1193_fu_1583_p2();
    void thread_mul_ln700_1_fu_1611_p0();
    void thread_mul_ln700_1_fu_1611_p1();
    void thread_mul_ln700_1_fu_1611_p2();
    void thread_mul_ln700_fu_1578_p0();
    void thread_mul_ln700_fu_1578_p1();
    void thread_mul_ln700_fu_1578_p2();
    void thread_numBF_fu_347_p1();
    void thread_or_ln581_1_fu_1177_p2();
    void thread_or_ln581_2_fu_1456_p2();
    void thread_or_ln581_fu_561_p2();
    void thread_or_ln582_1_fu_1141_p2();
    void thread_or_ln582_2_fu_1420_p2();
    void thread_or_ln582_fu_525_p2();
    void thread_or_ln603_1_fu_601_p2();
    void thread_or_ln603_2_fu_615_p2();
    void thread_or_ln603_3_fu_1203_p2();
    void thread_or_ln603_4_fu_1217_p2();
    void thread_or_ln603_5_fu_1231_p2();
    void thread_or_ln603_6_fu_1482_p2();
    void thread_or_ln603_7_fu_1496_p2();
    void thread_or_ln603_8_fu_1510_p2();
    void thread_or_ln603_fu_587_p2();
    void thread_or_ln899_fu_798_p2();
    void thread_or_ln_fu_804_p3();
    void thread_p_Result_30_fu_357_p3();
    void thread_p_Result_31_fu_391_p1();
    void thread_p_Result_32_fu_646_p3();
    void thread_p_Result_33_fu_678_p3();
    void thread_p_Result_34_fu_937_p5();
    void thread_p_Result_35_fu_973_p3();
    void thread_p_Result_36_fu_1007_p1();
    void thread_p_Result_37_fu_1252_p3();
    void thread_p_Result_38_fu_1286_p1();
    void thread_p_Result_3_fu_668_p4();
    void thread_p_Result_6_fu_784_p3();
    void thread_p_Result_s_fu_746_p2();
    void thread_ret_V_20_fu_1619_p2();
    void thread_ret_V_fu_1588_p2();
    void thread_s_V_fu_1516_p3();
    void thread_select_ln588_1_fu_1111_p3();
    void thread_select_ln588_2_fu_1390_p3();
    void thread_select_ln588_fu_495_p3();
    void thread_select_ln603_10_fu_1502_p3();
    void thread_select_ln603_1_fu_593_p3();
    void thread_select_ln603_2_fu_607_p3();
    void thread_select_ln603_4_fu_1195_p3();
    void thread_select_ln603_5_fu_1209_p3();
    void thread_select_ln603_6_fu_1223_p3();
    void thread_select_ln603_8_fu_1474_p3();
    void thread_select_ln603_9_fu_1488_p3();
    void thread_select_ln603_fu_579_p3();
    void thread_select_ln885_fu_953_p3();
    void thread_select_ln915_fu_912_p3();
    void thread_sext_ln1118_1_fu_1524_p1();
    void thread_sext_ln1118_2_fu_1574_p0();
    void thread_sext_ln1118_2_fu_1574_p1();
    void thread_sext_ln1118_3_fu_1528_p1();
    void thread_sext_ln1118_fu_1570_p0();
    void thread_sext_ln1118_fu_1570_p1();
    void thread_sext_ln581_1_fu_1063_p1();
    void thread_sext_ln581_1cast_fu_1119_p1();
    void thread_sext_ln581_2_fu_1342_p1();
    void thread_sext_ln581_2cast_fu_1398_p1();
    void thread_sext_ln581_fu_447_p1();
    void thread_sext_ln581cast_fu_503_p1();
    void thread_sext_ln65_fu_1553_p1();
    void thread_sext_ln67_fu_1559_p1();
    void thread_sh_amt_1_fu_1055_p3();
    void thread_sh_amt_2_fu_1334_p3();
    void thread_sh_amt_fu_439_p3();
    void thread_shl_ln604_1_fu_1123_p2();
    void thread_shl_ln604_2_fu_1402_p2();
    void thread_shl_ln604_fu_507_p2();
    void thread_shl_ln908_fu_852_p2();
    void thread_stage_fu_903_p2();
    void thread_sub_ln581_1_fu_1049_p2();
    void thread_sub_ln581_2_fu_1328_p2();
    void thread_sub_ln581_fu_433_p2();
    void thread_sub_ln703_fu_1604_p2();
    void thread_sub_ln894_fu_694_p2();
    void thread_sub_ln897_fu_730_p2();
    void thread_sub_ln908_fu_842_p2();
    void thread_sub_ln915_fu_919_p2();
    void thread_temp_I_V_fu_1625_p4();
    void thread_temp_R_V_fu_1594_p4();
    void thread_tmp_11_fu_487_p3();
    void thread_tmp_13_fu_710_p4();
    void thread_tmp_14_fu_764_p3();
    void thread_tmp_17_fu_1103_p3();
    void thread_tmp_19_fu_1382_p3();
    void thread_tmp_20_fu_1532_p4();
    void thread_tmp_2_fu_930_p3();
    void thread_tmp_3_fu_999_p3();
    void thread_tmp_6_fu_1278_p3();
    void thread_tmp_9_fu_383_p3();
    void thread_tmp_V_7_fu_660_p3();
    void thread_tmp_V_fu_654_p2();
    void thread_trunc_ln556_1_fu_969_p1();
    void thread_trunc_ln556_2_fu_1248_p1();
    void thread_trunc_ln556_fu_353_p1();
    void thread_trunc_ln565_1_fu_995_p1();
    void thread_trunc_ln565_2_fu_1274_p1();
    void thread_trunc_ln565_fu_379_p1();
    void thread_trunc_ln583_1_fu_1073_p1();
    void thread_trunc_ln583_2_fu_1352_p1();
    void thread_trunc_ln583_fu_457_p1();
    void thread_trunc_ln586_1_fu_1099_p1();
    void thread_trunc_ln586_2_fu_1378_p1();
    void thread_trunc_ln586_fu_483_p1();
    void thread_trunc_ln893_fu_894_p1();
    void thread_trunc_ln894_fu_700_p1();
    void thread_trunc_ln897_fu_726_p1();
    void thread_xor_ln571_1_fu_1129_p2();
    void thread_xor_ln571_2_fu_1408_p2();
    void thread_xor_ln571_fu_513_p2();
    void thread_xor_ln581_1_fu_1183_p2();
    void thread_xor_ln581_2_fu_1462_p2();
    void thread_xor_ln581_fu_567_p2();
    void thread_xor_ln582_1_fu_1147_p2();
    void thread_xor_ln582_2_fu_1426_p2();
    void thread_xor_ln582_fu_531_p2();
    void thread_xor_ln585_1_fu_1159_p2();
    void thread_xor_ln585_2_fu_1438_p2();
    void thread_xor_ln585_fu_543_p2();
    void thread_xor_ln899_fu_772_p2();
    void thread_zext_ln461_1_fu_991_p1();
    void thread_zext_ln461_2_fu_1270_p1();
    void thread_zext_ln461_fu_375_p1();
    void thread_zext_ln50_fu_322_p1();
    void thread_zext_ln51_fu_332_p1();
    void thread_zext_ln586_1_fu_1089_p1();
    void thread_zext_ln586_2_fu_1368_p1();
    void thread_zext_ln586_fu_473_p1();
    void thread_zext_ln891_fu_962_p1();
    void thread_zext_ln897_fu_736_p1();
    void thread_zext_ln907_1_fu_816_p1();
    void thread_zext_ln908_1_fu_848_p1();
    void thread_zext_ln908_fu_838_p1();
    void thread_zext_ln911_fu_866_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif