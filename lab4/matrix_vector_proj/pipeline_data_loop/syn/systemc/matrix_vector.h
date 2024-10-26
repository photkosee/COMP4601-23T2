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
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > i_0_reg_237;
    sc_signal< sc_lv<4> > i_0_reg_237_pp0_iter1_reg;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > grp_fu_261_p2;
    sc_signal< sc_lv<32> > reg_267;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<1> > icmp_ln7_reg_463;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_state5_pp0_stage3_iter0;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<1> > icmp_ln7_fu_271_p2;
    sc_signal< sc_lv<1> > icmp_ln7_reg_463_pp0_iter1_reg;
    sc_signal< sc_lv<4> > i_fu_277_p2;
    sc_signal< sc_lv<4> > i_reg_467;
    sc_signal< sc_lv<7> > tmp_1_fu_283_p3;
    sc_signal< sc_lv<7> > tmp_1_reg_472;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state4_pp0_stage2_iter0;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<32> > add_ln11_2_fu_373_p2;
    sc_signal< sc_lv<32> > add_ln11_2_reg_512;
    sc_signal< sc_lv<32> > add_ln11_4_reg_527;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_lv<4> > ap_phi_mux_i_0_phi_fu_241_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln11_1_fu_291_p1;
    sc_signal< sc_lv<64> > tmp_2_fu_302_p3;
    sc_signal< sc_lv<64> > tmp_3_fu_316_p3;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<64> > tmp_4_fu_330_p3;
    sc_signal< sc_lv<64> > tmp_5_fu_344_p3;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<64> > tmp_6_fu_358_p3;
    sc_signal< sc_lv<64> > tmp_7_fu_384_p3;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_lv<64> > tmp_8_fu_398_p3;
    sc_signal< sc_lv<64> > zext_ln11_fu_407_p1;
    sc_signal< sc_lv<32> > grp_fu_249_p0;
    sc_signal< sc_lv<32> > grp_fu_249_p1;
    sc_signal< sc_lv<32> > grp_fu_255_p0;
    sc_signal< sc_lv<32> > grp_fu_255_p1;
    sc_signal< sc_lv<32> > grp_fu_255_p2;
    sc_signal< sc_lv<32> > grp_fu_249_p2;
    sc_signal< sc_lv<7> > or_ln11_fu_296_p2;
    sc_signal< sc_lv<7> > or_ln11_1_fu_311_p2;
    sc_signal< sc_lv<7> > or_ln11_2_fu_325_p2;
    sc_signal< sc_lv<7> > or_ln11_3_fu_339_p2;
    sc_signal< sc_lv<7> > or_ln11_4_fu_353_p2;
    sc_signal< sc_lv<32> > add_ln11_1_fu_367_p2;
    sc_signal< sc_lv<7> > or_ln11_5_fu_379_p2;
    sc_signal< sc_lv<7> > or_ln11_6_fu_393_p2;
    sc_signal< sc_lv<32> > add_ln11_5_fu_412_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_pp0_stage1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage2;
    static const sc_lv<6> ap_ST_fsm_pp0_stage3;
    static const sc_lv<6> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
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
    static const sc_lv<32> ap_const_lv32_5;
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
    void thread_add_ln11_1_fu_367_p2();
    void thread_add_ln11_2_fu_373_p2();
    void thread_add_ln11_5_fu_412_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage2_iter0();
    void thread_ap_block_state5_pp0_stage3_iter0();
    void thread_ap_block_state6_pp0_stage0_iter1();
    void thread_ap_block_state7_pp0_stage1_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_241_p4();
    void thread_ap_ready();
    void thread_grp_fu_249_p0();
    void thread_grp_fu_249_p1();
    void thread_grp_fu_249_p2();
    void thread_grp_fu_255_p0();
    void thread_grp_fu_255_p1();
    void thread_grp_fu_255_p2();
    void thread_grp_fu_261_p2();
    void thread_i_fu_277_p2();
    void thread_icmp_ln7_fu_271_p2();
    void thread_or_ln11_1_fu_311_p2();
    void thread_or_ln11_2_fu_325_p2();
    void thread_or_ln11_3_fu_339_p2();
    void thread_or_ln11_4_fu_353_p2();
    void thread_or_ln11_5_fu_379_p2();
    void thread_or_ln11_6_fu_393_p2();
    void thread_or_ln11_fu_296_p2();
    void thread_tmp_1_fu_283_p3();
    void thread_tmp_2_fu_302_p3();
    void thread_tmp_3_fu_316_p3();
    void thread_tmp_4_fu_330_p3();
    void thread_tmp_5_fu_344_p3();
    void thread_tmp_6_fu_358_p3();
    void thread_tmp_7_fu_384_p3();
    void thread_tmp_8_fu_398_p3();
    void thread_zext_ln11_1_fu_291_p1();
    void thread_zext_ln11_fu_407_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
