// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fft_stage_132_HH_
#define _fft_stage_132_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fft_streaming_muldEe.h"
#include "fft_streaming_maceOg.h"
#include "fft_streaming_macfYi.h"
#include "fft_streaming_mulg8j.h"
#include "fft_stage_127_W_rbkb.h"
#include "fft_stage_127_W_icud.h"

namespace ap_rtl {

struct fft_stage_132 : public sc_module {
    // Port declarations 35
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > X_R_6_V_address0;
    sc_out< sc_logic > X_R_6_V_ce0;
    sc_in< sc_lv<22> > X_R_6_V_q0;
    sc_out< sc_lv<10> > X_R_6_V_address1;
    sc_out< sc_logic > X_R_6_V_ce1;
    sc_in< sc_lv<22> > X_R_6_V_q1;
    sc_out< sc_lv<10> > X_I_6_V_address0;
    sc_out< sc_logic > X_I_6_V_ce0;
    sc_in< sc_lv<22> > X_I_6_V_q0;
    sc_out< sc_lv<10> > X_I_6_V_address1;
    sc_out< sc_logic > X_I_6_V_ce1;
    sc_in< sc_lv<22> > X_I_6_V_q1;
    sc_out< sc_lv<10> > Out_R_7_V_address0;
    sc_out< sc_logic > Out_R_7_V_ce0;
    sc_out< sc_logic > Out_R_7_V_we0;
    sc_out< sc_lv<22> > Out_R_7_V_d0;
    sc_out< sc_lv<10> > Out_R_7_V_address1;
    sc_out< sc_logic > Out_R_7_V_ce1;
    sc_out< sc_logic > Out_R_7_V_we1;
    sc_out< sc_lv<22> > Out_R_7_V_d1;
    sc_out< sc_lv<10> > Out_I_7_V_address0;
    sc_out< sc_logic > Out_I_7_V_ce0;
    sc_out< sc_logic > Out_I_7_V_we0;
    sc_out< sc_lv<22> > Out_I_7_V_d0;
    sc_out< sc_lv<10> > Out_I_7_V_address1;
    sc_out< sc_logic > Out_I_7_V_ce1;
    sc_out< sc_logic > Out_I_7_V_we1;
    sc_out< sc_lv<22> > Out_I_7_V_d1;


    // Module declarations
    fft_stage_132(sc_module_name name);
    SC_HAS_PROCESS(fft_stage_132);

    ~fft_stage_132();

    sc_trace_file* mVcdFile;

    fft_stage_127_W_rbkb* W_real_V59_U;
    fft_stage_127_W_icud* W_imag_V51_U;
    fft_streaming_muldEe<1,1,13,22,33>* fft_streaming_muldEe_U55;
    fft_streaming_maceOg<1,1,12,22,33,33>* fft_streaming_maceOg_U56;
    fft_streaming_macfYi<1,1,13,22,33,33>* fft_streaming_macfYi_U57;
    fft_streaming_mulg8j<1,1,12,22,33>* fft_streaming_mulg8j_U58;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<9> > W_real_V59_address0;
    sc_signal< sc_logic > W_real_V59_ce0;
    sc_signal< sc_lv<13> > W_real_V59_q0;
    sc_signal< sc_lv<9> > W_imag_V51_address0;
    sc_signal< sc_logic > W_imag_V51_ce0;
    sc_signal< sc_lv<12> > W_imag_V51_q0;
    sc_signal< sc_lv<10> > indvar_flatten_reg_194;
    sc_signal< sc_lv<7> > j_0_reg_205;
    sc_signal< sc_lv<4> > t_0_reg_216;
    sc_signal< sc_lv<1> > icmp_ln47_fu_239_p2;
    sc_signal< sc_lv<1> > icmp_ln47_reg_428;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln47_reg_428_pp0_iter1_reg;
    sc_signal< sc_lv<10> > add_ln47_fu_245_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<7> > select_ln47_6_fu_297_p3;
    sc_signal< sc_lv<7> > select_ln47_6_reg_447;
    sc_signal< sc_lv<10> > i_fu_309_p3;
    sc_signal< sc_lv<10> > i_reg_452;
    sc_signal< sc_lv<64> > zext_ln58_fu_323_p1;
    sc_signal< sc_lv<64> > zext_ln58_reg_457;
    sc_signal< sc_lv<64> > zext_ln58_reg_457_pp0_iter1_reg;
    sc_signal< sc_lv<4> > t_fu_328_p2;
    sc_signal< sc_lv<13> > W_real_V59_load_reg_474;
    sc_signal< sc_lv<12> > W_imag_V51_load_reg_479;
    sc_signal< sc_lv<22> > X_R_6_V_load_reg_484;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<64> > zext_ln60_fu_334_p1;
    sc_signal< sc_lv<64> > zext_ln60_reg_494;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<7> > ap_phi_mux_j_0_phi_fu_209_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln47_fu_291_p1;
    sc_signal< sc_lv<6> > trunc_ln54_fu_227_p1;
    sc_signal< sc_lv<1> > icmp_ln50_fu_251_p2;
    sc_signal< sc_lv<7> > add_ln47_3_fu_265_p2;
    sc_signal< sc_lv<6> > trunc_ln54_3_fu_271_p1;
    sc_signal< sc_lv<9> > k_mid1_fu_275_p3;
    sc_signal< sc_lv<9> > k_fu_231_p3;
    sc_signal< sc_lv<9> > select_ln47_5_fu_283_p3;
    sc_signal< sc_lv<4> > select_ln47_fu_257_p3;
    sc_signal< sc_lv<3> > trunc_ln51_fu_305_p1;
    sc_signal< sc_lv<10> > i_lower_fu_317_p2;
    sc_signal< sc_lv<33> > grp_fu_404_p3;
    sc_signal< sc_lv<33> > grp_fu_413_p3;
    sc_signal< sc_lv<22> > temp_R_V_fu_352_p4;
    sc_signal< sc_lv<22> > temp_I_V_fu_361_p4;
    sc_signal< sc_lv<13> > mul_ln700_fu_398_p0;
    sc_signal< sc_lv<33> > sext_ln47_fu_339_p1;
    sc_signal< sc_lv<22> > mul_ln700_fu_398_p1;
    sc_signal< sc_lv<33> > sext_ln1118_fu_345_p1;
    sc_signal< sc_lv<12> > grp_fu_404_p0;
    sc_signal< sc_lv<33> > sext_ln47_2_fu_342_p1;
    sc_signal< sc_lv<22> > grp_fu_404_p1;
    sc_signal< sc_lv<33> > sext_ln1118_6_fu_348_p1;
    sc_signal< sc_lv<33> > mul_ln700_fu_398_p2;
    sc_signal< sc_lv<13> > grp_fu_413_p0;
    sc_signal< sc_lv<22> > grp_fu_413_p1;
    sc_signal< sc_lv<33> > mul_ln1192_fu_421_p2;
    sc_signal< sc_lv<12> > mul_ln1192_fu_421_p0;
    sc_signal< sc_lv<22> > mul_ln1192_fu_421_p1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<10> ap_const_lv10_200;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<10> ap_const_lv10_40;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Out_I_7_V_address0();
    void thread_Out_I_7_V_address1();
    void thread_Out_I_7_V_ce0();
    void thread_Out_I_7_V_ce1();
    void thread_Out_I_7_V_d0();
    void thread_Out_I_7_V_d1();
    void thread_Out_I_7_V_we0();
    void thread_Out_I_7_V_we1();
    void thread_Out_R_7_V_address0();
    void thread_Out_R_7_V_address1();
    void thread_Out_R_7_V_ce0();
    void thread_Out_R_7_V_ce1();
    void thread_Out_R_7_V_d0();
    void thread_Out_R_7_V_d1();
    void thread_Out_R_7_V_we0();
    void thread_Out_R_7_V_we1();
    void thread_W_imag_V51_address0();
    void thread_W_imag_V51_ce0();
    void thread_W_real_V59_address0();
    void thread_W_real_V59_ce0();
    void thread_X_I_6_V_address0();
    void thread_X_I_6_V_address1();
    void thread_X_I_6_V_ce0();
    void thread_X_I_6_V_ce1();
    void thread_X_R_6_V_address0();
    void thread_X_R_6_V_address1();
    void thread_X_R_6_V_ce0();
    void thread_X_R_6_V_ce1();
    void thread_add_ln47_3_fu_265_p2();
    void thread_add_ln47_fu_245_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_j_0_phi_fu_209_p4();
    void thread_ap_ready();
    void thread_grp_fu_404_p0();
    void thread_grp_fu_404_p1();
    void thread_grp_fu_413_p0();
    void thread_grp_fu_413_p1();
    void thread_i_fu_309_p3();
    void thread_i_lower_fu_317_p2();
    void thread_icmp_ln47_fu_239_p2();
    void thread_icmp_ln50_fu_251_p2();
    void thread_k_fu_231_p3();
    void thread_k_mid1_fu_275_p3();
    void thread_mul_ln1192_fu_421_p0();
    void thread_mul_ln1192_fu_421_p1();
    void thread_mul_ln700_fu_398_p0();
    void thread_mul_ln700_fu_398_p1();
    void thread_select_ln47_5_fu_283_p3();
    void thread_select_ln47_6_fu_297_p3();
    void thread_select_ln47_fu_257_p3();
    void thread_sext_ln1118_6_fu_348_p1();
    void thread_sext_ln1118_fu_345_p1();
    void thread_sext_ln47_2_fu_342_p1();
    void thread_sext_ln47_fu_339_p1();
    void thread_t_fu_328_p2();
    void thread_temp_I_V_fu_361_p4();
    void thread_temp_R_V_fu_352_p4();
    void thread_trunc_ln51_fu_305_p1();
    void thread_trunc_ln54_3_fu_271_p1();
    void thread_trunc_ln54_fu_227_p1();
    void thread_zext_ln47_fu_291_p1();
    void thread_zext_ln58_fu_323_p1();
    void thread_zext_ln60_fu_334_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
