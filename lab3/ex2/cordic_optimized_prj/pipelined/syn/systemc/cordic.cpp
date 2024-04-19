// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "cordic.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic cordic::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic cordic::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> cordic::ap_ST_fsm_state1 = "1";
const sc_lv<3> cordic::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> cordic::ap_ST_fsm_state4 = "100";
const sc_lv<32> cordic::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool cordic::ap_const_boolean_1 = true;
const sc_lv<32> cordic::ap_const_lv32_1 = "1";
const bool cordic::ap_const_boolean_0 = false;
const sc_lv<1> cordic::ap_const_lv1_0 = "0";
const sc_lv<1> cordic::ap_const_lv1_1 = "1";
const sc_lv<12> cordic::ap_const_lv12_0 = "000000000000";
const sc_lv<12> cordic::ap_const_lv12_26D = "1001101101";
const sc_lv<6> cordic::ap_const_lv6_0 = "000000";
const sc_lv<32> cordic::ap_const_lv32_2 = "10";
const sc_lv<6> cordic::ap_const_lv6_20 = "100000";
const sc_lv<6> cordic::ap_const_lv6_1 = "1";
const sc_lv<32> cordic::ap_const_lv32_B = "1011";

cordic::cordic(sc_module_name name) : sc_module(name), mVcdFile(0) {
    cordic_phase_V_U = new cordic_cordic_phabkb("cordic_phase_V_U");
    cordic_phase_V_U->clk(ap_clk);
    cordic_phase_V_U->reset(ap_rst);
    cordic_phase_V_U->address0(cordic_phase_V_address0);
    cordic_phase_V_U->ce0(cordic_phase_V_ce0);
    cordic_phase_V_U->q0(cordic_phase_V_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln703_fu_212_p2);
    sensitive << ( p_Val2_4_reg_89 );
    sensitive << ( zext_ln1265_fu_190_p1 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln17_fu_137_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_phi_mux_ush_phi_fu_129_p4);
    sensitive << ( ush_reg_125 );
    sensitive << ( icmp_ln17_reg_247 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( j_reg_251 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_c_V);
    sensitive << ( p_Val2_s_reg_112 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_c_V_ap_vld);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_cordic_phase_V_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln30_fu_149_p1 );

    SC_METHOD(thread_cordic_phase_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_current_cos_V_1_fu_200_p2);
    sensitive << ( p_Val2_s_reg_112 );
    sensitive << ( r_V_1_fu_164_p2 );

    SC_METHOD(thread_current_cos_V_2_fu_226_p3);
    sensitive << ( tmp_1_fu_170_p3 );
    sensitive << ( current_cos_V_1_fu_200_p2 );
    sensitive << ( current_cos_V_fu_178_p2 );

    SC_METHOD(thread_current_cos_V_fu_178_p2);
    sensitive << ( p_Val2_s_reg_112 );
    sensitive << ( r_V_1_fu_164_p2 );

    SC_METHOD(thread_current_sin_V_1_fu_206_p2);
    sensitive << ( p_Val2_2_reg_99 );
    sensitive << ( r_V_fu_158_p2 );

    SC_METHOD(thread_current_sin_V_2_fu_218_p3);
    sensitive << ( tmp_1_fu_170_p3 );
    sensitive << ( current_sin_V_1_fu_206_p2 );
    sensitive << ( current_sin_V_fu_184_p2 );

    SC_METHOD(thread_current_sin_V_fu_184_p2);
    sensitive << ( p_Val2_2_reg_99 );
    sensitive << ( r_V_fu_158_p2 );

    SC_METHOD(thread_icmp_ln17_fu_137_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_phi_mux_ush_phi_fu_129_p4 );

    SC_METHOD(thread_j_fu_143_p2);
    sensitive << ( ap_phi_mux_ush_phi_fu_129_p4 );

    SC_METHOD(thread_r_V_1_fu_164_p2);
    sensitive << ( p_Val2_2_reg_99 );
    sensitive << ( zext_ln17_fu_154_p1 );

    SC_METHOD(thread_r_V_fu_158_p2);
    sensitive << ( p_Val2_s_reg_112 );
    sensitive << ( zext_ln17_fu_154_p1 );

    SC_METHOD(thread_s_V);
    sensitive << ( p_Val2_2_reg_99 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_s_V_ap_vld);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_select_ln1496_fu_234_p3);
    sensitive << ( tmp_1_fu_170_p3 );
    sensitive << ( add_ln703_fu_212_p2 );
    sensitive << ( sub_ln703_fu_194_p2 );

    SC_METHOD(thread_sub_ln703_fu_194_p2);
    sensitive << ( p_Val2_4_reg_89 );
    sensitive << ( zext_ln1265_fu_190_p1 );

    SC_METHOD(thread_tmp_1_fu_170_p3);
    sensitive << ( p_Val2_4_reg_89 );

    SC_METHOD(thread_zext_ln1265_fu_190_p1);
    sensitive << ( cordic_phase_V_q0 );

    SC_METHOD(thread_zext_ln17_fu_154_p1);
    sensitive << ( ush_reg_125 );

    SC_METHOD(thread_zext_ln30_fu_149_p1);
    sensitive << ( ap_phi_mux_ush_phi_fu_129_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln17_fu_137_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "cordic_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, theta_V, "(port)theta_V");
    sc_trace(mVcdFile, s_V, "(port)s_V");
    sc_trace(mVcdFile, s_V_ap_vld, "(port)s_V_ap_vld");
    sc_trace(mVcdFile, c_V, "(port)c_V");
    sc_trace(mVcdFile, c_V_ap_vld, "(port)c_V_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, cordic_phase_V_address0, "cordic_phase_V_address0");
    sc_trace(mVcdFile, cordic_phase_V_ce0, "cordic_phase_V_ce0");
    sc_trace(mVcdFile, cordic_phase_V_q0, "cordic_phase_V_q0");
    sc_trace(mVcdFile, p_Val2_4_reg_89, "p_Val2_4_reg_89");
    sc_trace(mVcdFile, p_Val2_2_reg_99, "p_Val2_2_reg_99");
    sc_trace(mVcdFile, p_Val2_s_reg_112, "p_Val2_s_reg_112");
    sc_trace(mVcdFile, ush_reg_125, "ush_reg_125");
    sc_trace(mVcdFile, icmp_ln17_fu_137_p2, "icmp_ln17_fu_137_p2");
    sc_trace(mVcdFile, icmp_ln17_reg_247, "icmp_ln17_reg_247");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, j_fu_143_p2, "j_fu_143_p2");
    sc_trace(mVcdFile, j_reg_251, "j_reg_251");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, current_sin_V_2_fu_218_p3, "current_sin_V_2_fu_218_p3");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, current_cos_V_2_fu_226_p3, "current_cos_V_2_fu_226_p3");
    sc_trace(mVcdFile, select_ln1496_fu_234_p3, "select_ln1496_fu_234_p3");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, ap_phi_mux_ush_phi_fu_129_p4, "ap_phi_mux_ush_phi_fu_129_p4");
    sc_trace(mVcdFile, zext_ln30_fu_149_p1, "zext_ln30_fu_149_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, zext_ln17_fu_154_p1, "zext_ln17_fu_154_p1");
    sc_trace(mVcdFile, r_V_1_fu_164_p2, "r_V_1_fu_164_p2");
    sc_trace(mVcdFile, r_V_fu_158_p2, "r_V_fu_158_p2");
    sc_trace(mVcdFile, zext_ln1265_fu_190_p1, "zext_ln1265_fu_190_p1");
    sc_trace(mVcdFile, tmp_1_fu_170_p3, "tmp_1_fu_170_p3");
    sc_trace(mVcdFile, current_sin_V_1_fu_206_p2, "current_sin_V_1_fu_206_p2");
    sc_trace(mVcdFile, current_sin_V_fu_184_p2, "current_sin_V_fu_184_p2");
    sc_trace(mVcdFile, current_cos_V_1_fu_200_p2, "current_cos_V_1_fu_200_p2");
    sc_trace(mVcdFile, current_cos_V_fu_178_p2, "current_cos_V_fu_178_p2");
    sc_trace(mVcdFile, add_ln703_fu_212_p2, "add_ln703_fu_212_p2");
    sc_trace(mVcdFile, sub_ln703_fu_194_p2, "sub_ln703_fu_194_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
    mHdltvinHandle.open("cordic.hdltvin.dat");
    mHdltvoutHandle.open("cordic.hdltvout.dat");
}

cordic::~cordic() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete cordic_phase_V_U;
}

void cordic::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln17_reg_247.read(), ap_const_lv1_0))) {
        p_Val2_2_reg_99 = current_sin_V_2_fu_218_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_Val2_2_reg_99 = ap_const_lv12_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln17_reg_247.read(), ap_const_lv1_0))) {
        p_Val2_4_reg_89 = select_ln1496_fu_234_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_Val2_4_reg_89 = theta_V.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln17_reg_247.read(), ap_const_lv1_0))) {
        p_Val2_s_reg_112 = current_cos_V_2_fu_226_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_Val2_s_reg_112 = ap_const_lv12_26D;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln17_reg_247.read(), ap_const_lv1_0))) {
        ush_reg_125 = j_reg_251.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ush_reg_125 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln17_reg_247 = icmp_ln17_fu_137_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        j_reg_251 = j_fu_143_p2.read();
    }
}

void cordic::thread_add_ln703_fu_212_p2() {
    add_ln703_fu_212_p2 = (!zext_ln1265_fu_190_p1.read().is_01() || !p_Val2_4_reg_89.read().is_01())? sc_lv<12>(): (sc_biguint<12>(zext_ln1265_fu_190_p1.read()) + sc_biguint<12>(p_Val2_4_reg_89.read()));
}

void cordic::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void cordic::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void cordic::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void cordic::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void cordic::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void cordic::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void cordic::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void cordic::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void cordic::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln17_fu_137_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void cordic::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void cordic::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void cordic::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void cordic::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void cordic::thread_ap_phi_mux_ush_phi_fu_129_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln17_reg_247.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        ap_phi_mux_ush_phi_fu_129_p4 = j_reg_251.read();
    } else {
        ap_phi_mux_ush_phi_fu_129_p4 = ush_reg_125.read();
    }
}

void cordic::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void cordic::thread_c_V() {
    c_V = p_Val2_s_reg_112.read();
}

void cordic::thread_c_V_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        c_V_ap_vld = ap_const_logic_1;
    } else {
        c_V_ap_vld = ap_const_logic_0;
    }
}

void cordic::thread_cordic_phase_V_address0() {
    cordic_phase_V_address0 =  (sc_lv<6>) (zext_ln30_fu_149_p1.read());
}

void cordic::thread_cordic_phase_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        cordic_phase_V_ce0 = ap_const_logic_1;
    } else {
        cordic_phase_V_ce0 = ap_const_logic_0;
    }
}

void cordic::thread_current_cos_V_1_fu_200_p2() {
    current_cos_V_1_fu_200_p2 = (!r_V_1_fu_164_p2.read().is_01() || !p_Val2_s_reg_112.read().is_01())? sc_lv<12>(): (sc_biguint<12>(r_V_1_fu_164_p2.read()) + sc_biguint<12>(p_Val2_s_reg_112.read()));
}

void cordic::thread_current_cos_V_2_fu_226_p3() {
    current_cos_V_2_fu_226_p3 = (!tmp_1_fu_170_p3.read()[0].is_01())? sc_lv<12>(): ((tmp_1_fu_170_p3.read()[0].to_bool())? current_cos_V_1_fu_200_p2.read(): current_cos_V_fu_178_p2.read());
}

void cordic::thread_current_cos_V_fu_178_p2() {
    current_cos_V_fu_178_p2 = (!p_Val2_s_reg_112.read().is_01() || !r_V_1_fu_164_p2.read().is_01())? sc_lv<12>(): (sc_biguint<12>(p_Val2_s_reg_112.read()) - sc_biguint<12>(r_V_1_fu_164_p2.read()));
}

void cordic::thread_current_sin_V_1_fu_206_p2() {
    current_sin_V_1_fu_206_p2 = (!p_Val2_2_reg_99.read().is_01() || !r_V_fu_158_p2.read().is_01())? sc_lv<12>(): (sc_biguint<12>(p_Val2_2_reg_99.read()) - sc_biguint<12>(r_V_fu_158_p2.read()));
}

void cordic::thread_current_sin_V_2_fu_218_p3() {
    current_sin_V_2_fu_218_p3 = (!tmp_1_fu_170_p3.read()[0].is_01())? sc_lv<12>(): ((tmp_1_fu_170_p3.read()[0].to_bool())? current_sin_V_1_fu_206_p2.read(): current_sin_V_fu_184_p2.read());
}

void cordic::thread_current_sin_V_fu_184_p2() {
    current_sin_V_fu_184_p2 = (!r_V_fu_158_p2.read().is_01() || !p_Val2_2_reg_99.read().is_01())? sc_lv<12>(): (sc_biguint<12>(r_V_fu_158_p2.read()) + sc_biguint<12>(p_Val2_2_reg_99.read()));
}

void cordic::thread_icmp_ln17_fu_137_p2() {
    icmp_ln17_fu_137_p2 = (!ap_phi_mux_ush_phi_fu_129_p4.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(ap_phi_mux_ush_phi_fu_129_p4.read() == ap_const_lv6_20);
}

void cordic::thread_j_fu_143_p2() {
    j_fu_143_p2 = (!ap_phi_mux_ush_phi_fu_129_p4.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(ap_phi_mux_ush_phi_fu_129_p4.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void cordic::thread_r_V_1_fu_164_p2() {
    r_V_1_fu_164_p2 = (!p_Val2_2_reg_99.read().is_01() || !zext_ln17_fu_154_p1.read().is_01())? sc_lv<12>(): sc_bigint<12>(p_Val2_2_reg_99.read()) >> (unsigned short)zext_ln17_fu_154_p1.read().to_uint();
}

void cordic::thread_r_V_fu_158_p2() {
    r_V_fu_158_p2 = (!p_Val2_s_reg_112.read().is_01() || !zext_ln17_fu_154_p1.read().is_01())? sc_lv<12>(): sc_bigint<12>(p_Val2_s_reg_112.read()) >> (unsigned short)zext_ln17_fu_154_p1.read().to_uint();
}

void cordic::thread_s_V() {
    s_V = p_Val2_2_reg_99.read();
}

void cordic::thread_s_V_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        s_V_ap_vld = ap_const_logic_1;
    } else {
        s_V_ap_vld = ap_const_logic_0;
    }
}

void cordic::thread_select_ln1496_fu_234_p3() {
    select_ln1496_fu_234_p3 = (!tmp_1_fu_170_p3.read()[0].is_01())? sc_lv<12>(): ((tmp_1_fu_170_p3.read()[0].to_bool())? add_ln703_fu_212_p2.read(): sub_ln703_fu_194_p2.read());
}

void cordic::thread_sub_ln703_fu_194_p2() {
    sub_ln703_fu_194_p2 = (!p_Val2_4_reg_89.read().is_01() || !zext_ln1265_fu_190_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(p_Val2_4_reg_89.read()) - sc_biguint<12>(zext_ln1265_fu_190_p1.read()));
}

void cordic::thread_tmp_1_fu_170_p3() {
    tmp_1_fu_170_p3 = p_Val2_4_reg_89.read().range(11, 11);
}

void cordic::thread_zext_ln1265_fu_190_p1() {
    zext_ln1265_fu_190_p1 = esl_zext<12,10>(cordic_phase_V_q0.read());
}

void cordic::thread_zext_ln17_fu_154_p1() {
    zext_ln17_fu_154_p1 = esl_zext<12,6>(ush_reg_125.read());
}

void cordic::thread_zext_ln30_fu_149_p1() {
    zext_ln30_fu_149_p1 = esl_zext<64,6>(ap_phi_mux_ush_phi_fu_129_p4.read());
}

void cordic::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln17_fu_137_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln17_fu_137_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

void cordic::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"theta_V\" :  \"" << theta_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_V\" :  \"" << s_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_V_ap_vld\" :  \"" << s_V_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c_V\" :  \"" << c_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c_V_ap_vld\" :  \"" << c_V_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

