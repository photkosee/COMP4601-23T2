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
const sc_lv<3> cordic::ap_ST_fsm_state2 = "10";
const sc_lv<3> cordic::ap_ST_fsm_state3 = "100";
const sc_lv<32> cordic::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> cordic::ap_const_lv32_1 = "1";
const sc_lv<1> cordic::ap_const_lv1_0 = "0";
const sc_lv<32> cordic::ap_const_lv32_2 = "10";
const sc_lv<16> cordic::ap_const_lv16_4000 = "100000000000000";
const sc_lv<16> cordic::ap_const_lv16_0 = "0000000000000000";
const sc_lv<16> cordic::ap_const_lv16_26DD = "10011011011101";
const sc_lv<6> cordic::ap_const_lv6_0 = "000000";
const sc_lv<1> cordic::ap_const_lv1_1 = "1";
const sc_lv<6> cordic::ap_const_lv6_20 = "100000";
const sc_lv<6> cordic::ap_const_lv6_1 = "1";
const sc_lv<32> cordic::ap_const_lv32_F = "1111";
const sc_lv<17> cordic::ap_const_lv17_0 = "00000000000000000";
const sc_lv<32> cordic::ap_const_lv32_E = "1110";
const sc_lv<32> cordic::ap_const_lv32_1D = "11101";
const sc_lv<32> cordic::ap_const_lv32_10 = "10000";
const sc_lv<15> cordic::ap_const_lv15_0 = "000000000000000";
const bool cordic::ap_const_boolean_1 = true;

cordic::cordic(sc_module_name name) : sc_module(name), mVcdFile(0) {
    cordic_phase_V_U = new cordic_cordic_phabkb("cordic_phase_V_U");
    cordic_phase_V_U->clk(ap_clk);
    cordic_phase_V_U->reset(ap_rst);
    cordic_phase_V_U->address0(cordic_phase_V_address0);
    cordic_phase_V_U->ce0(cordic_phase_V_ce0);
    cordic_phase_V_U->q0(cordic_phase_V_q0);
    cordic_mul_mul_17cud_U1 = new cordic_mul_mul_17cud<1,1,17,16,30>("cordic_mul_mul_17cud_U1");
    cordic_mul_mul_17cud_U1->din0(r_V_fu_177_p3);
    cordic_mul_mul_17cud_U1->din1(r_V_4_fu_333_p1);
    cordic_mul_mul_17cud_U1->dout(r_V_4_fu_333_p2);
    cordic_mul_mul_17cud_U2 = new cordic_mul_mul_17cud<1,1,17,16,30>("cordic_mul_mul_17cud_U2");
    cordic_mul_mul_17cud_U2->din0(r_V_2_fu_212_p3);
    cordic_mul_mul_17cud_U2->din1(r_V_5_fu_340_p1);
    cordic_mul_mul_17cud_U2->dout(r_V_5_fu_340_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln18_fu_147_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln18_fu_147_p2 );

    SC_METHOD(thread_c_V);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln18_fu_147_p2 );
    sensitive << ( p_Val2_2_reg_124 );

    SC_METHOD(thread_c_V_ap_vld);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln18_fu_147_p2 );

    SC_METHOD(thread_cordic_phase_V_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln31_fu_245_p1 );

    SC_METHOD(thread_cordic_phase_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_cos_shift_V_fu_193_p4);
    sensitive << ( r_V_4_fu_333_p2 );

    SC_METHOD(thread_current_cos_V_fu_233_p2);
    sensitive << ( p_Val2_2_reg_124 );
    sensitive << ( sin_shift_V_fu_224_p4 );

    SC_METHOD(thread_current_sin_V_fu_239_p2);
    sensitive << ( p_Val2_4_reg_112 );
    sensitive << ( cos_shift_V_fu_193_p4 );

    SC_METHOD(thread_factor_V_fu_298_p3);
    sensitive << ( tmp_1_fu_254_p3 );
    sensitive << ( sub_ln1148_1_fu_292_p2 );
    sensitive << ( sext_ln1148_1_fu_288_p1 );

    SC_METHOD(thread_icmp_ln18_fu_147_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( j_0_reg_136 );

    SC_METHOD(thread_j_fu_153_p2);
    sensitive << ( j_0_reg_136 );

    SC_METHOD(thread_r_V_2_fu_212_p3);
    sensitive << ( tmp_fu_159_p3 );
    sensitive << ( sext_ln1116_2_fu_202_p1 );
    sensitive << ( sub_ln1118_1_fu_206_p2 );

    SC_METHOD(thread_r_V_4_fu_333_p1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( sext_ln1118_fu_189_p1 );

    SC_METHOD(thread_r_V_5_fu_340_p1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( sext_ln1118_fu_189_p1 );

    SC_METHOD(thread_r_V_fu_177_p3);
    sensitive << ( tmp_fu_159_p3 );
    sensitive << ( sext_ln1116_fu_167_p1 );
    sensitive << ( sub_ln1118_fu_171_p2 );

    SC_METHOD(thread_s_V);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln18_fu_147_p2 );
    sensitive << ( p_Val2_4_reg_112 );

    SC_METHOD(thread_s_V_ap_vld);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln18_fu_147_p2 );

    SC_METHOD(thread_select_ln703_fu_316_p3);
    sensitive << ( tmp_reg_360 );
    sensitive << ( zext_ln703_fu_306_p1 );
    sensitive << ( sub_ln703_2_fu_310_p2 );

    SC_METHOD(thread_sext_ln1116_2_fu_202_p1);
    sensitive << ( p_Val2_4_reg_112 );

    SC_METHOD(thread_sext_ln1116_fu_167_p1);
    sensitive << ( p_Val2_2_reg_124 );

    SC_METHOD(thread_sext_ln1118_fu_189_p1);
    sensitive << ( t_V_reg_101 );

    SC_METHOD(thread_sext_ln1148_1_fu_288_p1);
    sensitive << ( trunc_ln1148_2_fu_278_p4 );

    SC_METHOD(thread_sext_ln1148_fu_250_p1);
    sensitive << ( t_V_reg_101 );

    SC_METHOD(thread_sext_ln703_fu_323_p1);
    sensitive << ( select_ln703_fu_316_p3 );

    SC_METHOD(thread_sin_shift_V_fu_224_p4);
    sensitive << ( r_V_5_fu_340_p2 );

    SC_METHOD(thread_sub_ln1118_1_fu_206_p2);
    sensitive << ( sext_ln1116_2_fu_202_p1 );

    SC_METHOD(thread_sub_ln1118_fu_171_p2);
    sensitive << ( sext_ln1116_fu_167_p1 );

    SC_METHOD(thread_sub_ln1148_1_fu_292_p2);
    sensitive << ( trunc_ln1148_1_fu_268_p4 );

    SC_METHOD(thread_sub_ln1148_fu_262_p2);
    sensitive << ( sext_ln1148_fu_250_p1 );

    SC_METHOD(thread_sub_ln703_2_fu_310_p2);
    sensitive << ( zext_ln703_fu_306_p1 );

    SC_METHOD(thread_sub_ln703_fu_327_p2);
    sensitive << ( p_Val2_6_reg_91 );
    sensitive << ( sext_ln703_fu_323_p1 );

    SC_METHOD(thread_tmp_1_fu_254_p3);
    sensitive << ( t_V_reg_101 );

    SC_METHOD(thread_tmp_fu_159_p3);
    sensitive << ( p_Val2_6_reg_91 );

    SC_METHOD(thread_trunc_ln1148_1_fu_268_p4);
    sensitive << ( sub_ln1148_fu_262_p2 );

    SC_METHOD(thread_trunc_ln1148_2_fu_278_p4);
    sensitive << ( t_V_reg_101 );

    SC_METHOD(thread_zext_ln31_fu_245_p1);
    sensitive << ( j_0_reg_136 );

    SC_METHOD(thread_zext_ln703_fu_306_p1);
    sensitive << ( cordic_phase_V_q0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln18_fu_147_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
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
    sc_trace(mVcdFile, j_fu_153_p2, "j_fu_153_p2");
    sc_trace(mVcdFile, j_reg_355, "j_reg_355");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_159_p3, "tmp_fu_159_p3");
    sc_trace(mVcdFile, tmp_reg_360, "tmp_reg_360");
    sc_trace(mVcdFile, icmp_ln18_fu_147_p2, "icmp_ln18_fu_147_p2");
    sc_trace(mVcdFile, current_cos_V_fu_233_p2, "current_cos_V_fu_233_p2");
    sc_trace(mVcdFile, current_cos_V_reg_365, "current_cos_V_reg_365");
    sc_trace(mVcdFile, current_sin_V_fu_239_p2, "current_sin_V_fu_239_p2");
    sc_trace(mVcdFile, current_sin_V_reg_370, "current_sin_V_reg_370");
    sc_trace(mVcdFile, factor_V_fu_298_p3, "factor_V_fu_298_p3");
    sc_trace(mVcdFile, factor_V_reg_380, "factor_V_reg_380");
    sc_trace(mVcdFile, sub_ln703_fu_327_p2, "sub_ln703_fu_327_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, p_Val2_6_reg_91, "p_Val2_6_reg_91");
    sc_trace(mVcdFile, t_V_reg_101, "t_V_reg_101");
    sc_trace(mVcdFile, p_Val2_4_reg_112, "p_Val2_4_reg_112");
    sc_trace(mVcdFile, p_Val2_2_reg_124, "p_Val2_2_reg_124");
    sc_trace(mVcdFile, j_0_reg_136, "j_0_reg_136");
    sc_trace(mVcdFile, zext_ln31_fu_245_p1, "zext_ln31_fu_245_p1");
    sc_trace(mVcdFile, sext_ln1116_fu_167_p1, "sext_ln1116_fu_167_p1");
    sc_trace(mVcdFile, sub_ln1118_fu_171_p2, "sub_ln1118_fu_171_p2");
    sc_trace(mVcdFile, r_V_fu_177_p3, "r_V_fu_177_p3");
    sc_trace(mVcdFile, r_V_4_fu_333_p2, "r_V_4_fu_333_p2");
    sc_trace(mVcdFile, sext_ln1116_2_fu_202_p1, "sext_ln1116_2_fu_202_p1");
    sc_trace(mVcdFile, sub_ln1118_1_fu_206_p2, "sub_ln1118_1_fu_206_p2");
    sc_trace(mVcdFile, r_V_2_fu_212_p3, "r_V_2_fu_212_p3");
    sc_trace(mVcdFile, r_V_5_fu_340_p2, "r_V_5_fu_340_p2");
    sc_trace(mVcdFile, sin_shift_V_fu_224_p4, "sin_shift_V_fu_224_p4");
    sc_trace(mVcdFile, cos_shift_V_fu_193_p4, "cos_shift_V_fu_193_p4");
    sc_trace(mVcdFile, sext_ln1148_fu_250_p1, "sext_ln1148_fu_250_p1");
    sc_trace(mVcdFile, sub_ln1148_fu_262_p2, "sub_ln1148_fu_262_p2");
    sc_trace(mVcdFile, trunc_ln1148_2_fu_278_p4, "trunc_ln1148_2_fu_278_p4");
    sc_trace(mVcdFile, trunc_ln1148_1_fu_268_p4, "trunc_ln1148_1_fu_268_p4");
    sc_trace(mVcdFile, tmp_1_fu_254_p3, "tmp_1_fu_254_p3");
    sc_trace(mVcdFile, sub_ln1148_1_fu_292_p2, "sub_ln1148_1_fu_292_p2");
    sc_trace(mVcdFile, sext_ln1148_1_fu_288_p1, "sext_ln1148_1_fu_288_p1");
    sc_trace(mVcdFile, zext_ln703_fu_306_p1, "zext_ln703_fu_306_p1");
    sc_trace(mVcdFile, sub_ln703_2_fu_310_p2, "sub_ln703_2_fu_310_p2");
    sc_trace(mVcdFile, select_ln703_fu_316_p3, "select_ln703_fu_316_p3");
    sc_trace(mVcdFile, sext_ln703_fu_323_p1, "sext_ln703_fu_323_p1");
    sc_trace(mVcdFile, r_V_4_fu_333_p1, "r_V_4_fu_333_p1");
    sc_trace(mVcdFile, sext_ln1118_fu_189_p1, "sext_ln1118_fu_189_p1");
    sc_trace(mVcdFile, r_V_5_fu_340_p1, "r_V_5_fu_340_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
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
    delete cordic_mul_mul_17cud_U1;
    delete cordic_mul_mul_17cud_U2;
}

void cordic::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_0_reg_136 = j_reg_355.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        j_0_reg_136 = ap_const_lv6_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        p_Val2_2_reg_124 = current_cos_V_reg_365.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_Val2_2_reg_124 = ap_const_lv16_26DD;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        p_Val2_4_reg_112 = current_sin_V_reg_370.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_Val2_4_reg_112 = ap_const_lv16_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        p_Val2_6_reg_91 = sub_ln703_fu_327_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_Val2_6_reg_91 = theta_V.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        t_V_reg_101 = factor_V_reg_380.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        t_V_reg_101 = ap_const_lv16_4000;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln18_fu_147_p2.read(), ap_const_lv1_0))) {
        current_cos_V_reg_365 = current_cos_V_fu_233_p2.read();
        current_sin_V_reg_370 = current_sin_V_fu_239_p2.read();
        factor_V_reg_380 = factor_V_fu_298_p3.read();
        tmp_reg_360 = p_Val2_6_reg_91.read().range(15, 15);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        j_reg_355 = j_fu_153_p2.read();
    }
}

void cordic::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void cordic::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void cordic::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void cordic::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln18_fu_147_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void cordic::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void cordic::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln18_fu_147_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void cordic::thread_c_V() {
    c_V = p_Val2_2_reg_124.read();
}

void cordic::thread_c_V_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln18_fu_147_p2.read(), ap_const_lv1_1))) {
        c_V_ap_vld = ap_const_logic_1;
    } else {
        c_V_ap_vld = ap_const_logic_0;
    }
}

void cordic::thread_cordic_phase_V_address0() {
    cordic_phase_V_address0 =  (sc_lv<6>) (zext_ln31_fu_245_p1.read());
}

void cordic::thread_cordic_phase_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        cordic_phase_V_ce0 = ap_const_logic_1;
    } else {
        cordic_phase_V_ce0 = ap_const_logic_0;
    }
}

void cordic::thread_cos_shift_V_fu_193_p4() {
    cos_shift_V_fu_193_p4 = r_V_4_fu_333_p2.read().range(29, 14);
}

void cordic::thread_current_cos_V_fu_233_p2() {
    current_cos_V_fu_233_p2 = (!p_Val2_2_reg_124.read().is_01() || !sin_shift_V_fu_224_p4.read().is_01())? sc_lv<16>(): (sc_bigint<16>(p_Val2_2_reg_124.read()) - sc_biguint<16>(sin_shift_V_fu_224_p4.read()));
}

void cordic::thread_current_sin_V_fu_239_p2() {
    current_sin_V_fu_239_p2 = (!cos_shift_V_fu_193_p4.read().is_01() || !p_Val2_4_reg_112.read().is_01())? sc_lv<16>(): (sc_biguint<16>(cos_shift_V_fu_193_p4.read()) + sc_bigint<16>(p_Val2_4_reg_112.read()));
}

void cordic::thread_factor_V_fu_298_p3() {
    factor_V_fu_298_p3 = (!tmp_1_fu_254_p3.read()[0].is_01())? sc_lv<16>(): ((tmp_1_fu_254_p3.read()[0].to_bool())? sub_ln1148_1_fu_292_p2.read(): sext_ln1148_1_fu_288_p1.read());
}

void cordic::thread_icmp_ln18_fu_147_p2() {
    icmp_ln18_fu_147_p2 = (!j_0_reg_136.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_136.read() == ap_const_lv6_20);
}

void cordic::thread_j_fu_153_p2() {
    j_fu_153_p2 = (!j_0_reg_136.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j_0_reg_136.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void cordic::thread_r_V_2_fu_212_p3() {
    r_V_2_fu_212_p3 = (!tmp_fu_159_p3.read()[0].is_01())? sc_lv<17>(): ((tmp_fu_159_p3.read()[0].to_bool())? sub_ln1118_1_fu_206_p2.read(): sext_ln1116_2_fu_202_p1.read());
}

void cordic::thread_r_V_4_fu_333_p1() {
    r_V_4_fu_333_p1 =  (sc_lv<16>) (sext_ln1118_fu_189_p1.read());
}

void cordic::thread_r_V_5_fu_340_p1() {
    r_V_5_fu_340_p1 =  (sc_lv<16>) (sext_ln1118_fu_189_p1.read());
}

void cordic::thread_r_V_fu_177_p3() {
    r_V_fu_177_p3 = (!tmp_fu_159_p3.read()[0].is_01())? sc_lv<17>(): ((tmp_fu_159_p3.read()[0].to_bool())? sub_ln1118_fu_171_p2.read(): sext_ln1116_fu_167_p1.read());
}

void cordic::thread_s_V() {
    s_V = p_Val2_4_reg_112.read();
}

void cordic::thread_s_V_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln18_fu_147_p2.read(), ap_const_lv1_1))) {
        s_V_ap_vld = ap_const_logic_1;
    } else {
        s_V_ap_vld = ap_const_logic_0;
    }
}

void cordic::thread_select_ln703_fu_316_p3() {
    select_ln703_fu_316_p3 = (!tmp_reg_360.read()[0].is_01())? sc_lv<15>(): ((tmp_reg_360.read()[0].to_bool())? sub_ln703_2_fu_310_p2.read(): zext_ln703_fu_306_p1.read());
}

void cordic::thread_sext_ln1116_2_fu_202_p1() {
    sext_ln1116_2_fu_202_p1 = esl_sext<17,16>(p_Val2_4_reg_112.read());
}

void cordic::thread_sext_ln1116_fu_167_p1() {
    sext_ln1116_fu_167_p1 = esl_sext<17,16>(p_Val2_2_reg_124.read());
}

void cordic::thread_sext_ln1118_fu_189_p1() {
    sext_ln1118_fu_189_p1 = esl_sext<30,16>(t_V_reg_101.read());
}

void cordic::thread_sext_ln1148_1_fu_288_p1() {
    sext_ln1148_1_fu_288_p1 = esl_sext<16,15>(trunc_ln1148_2_fu_278_p4.read());
}

void cordic::thread_sext_ln1148_fu_250_p1() {
    sext_ln1148_fu_250_p1 = esl_sext<17,16>(t_V_reg_101.read());
}

void cordic::thread_sext_ln703_fu_323_p1() {
    sext_ln703_fu_323_p1 = esl_sext<16,15>(select_ln703_fu_316_p3.read());
}

void cordic::thread_sin_shift_V_fu_224_p4() {
    sin_shift_V_fu_224_p4 = r_V_5_fu_340_p2.read().range(29, 14);
}

void cordic::thread_sub_ln1118_1_fu_206_p2() {
    sub_ln1118_1_fu_206_p2 = (!ap_const_lv17_0.is_01() || !sext_ln1116_2_fu_202_p1.read().is_01())? sc_lv<17>(): (sc_biguint<17>(ap_const_lv17_0) - sc_bigint<17>(sext_ln1116_2_fu_202_p1.read()));
}

void cordic::thread_sub_ln1118_fu_171_p2() {
    sub_ln1118_fu_171_p2 = (!ap_const_lv17_0.is_01() || !sext_ln1116_fu_167_p1.read().is_01())? sc_lv<17>(): (sc_biguint<17>(ap_const_lv17_0) - sc_bigint<17>(sext_ln1116_fu_167_p1.read()));
}

void cordic::thread_sub_ln1148_1_fu_292_p2() {
    sub_ln1148_1_fu_292_p2 = (!ap_const_lv16_0.is_01() || !trunc_ln1148_1_fu_268_p4.read().is_01())? sc_lv<16>(): (sc_biguint<16>(ap_const_lv16_0) - sc_biguint<16>(trunc_ln1148_1_fu_268_p4.read()));
}

void cordic::thread_sub_ln1148_fu_262_p2() {
    sub_ln1148_fu_262_p2 = (!ap_const_lv17_0.is_01() || !sext_ln1148_fu_250_p1.read().is_01())? sc_lv<17>(): (sc_biguint<17>(ap_const_lv17_0) - sc_bigint<17>(sext_ln1148_fu_250_p1.read()));
}

void cordic::thread_sub_ln703_2_fu_310_p2() {
    sub_ln703_2_fu_310_p2 = (!ap_const_lv15_0.is_01() || !zext_ln703_fu_306_p1.read().is_01())? sc_lv<15>(): (sc_biguint<15>(ap_const_lv15_0) - sc_biguint<15>(zext_ln703_fu_306_p1.read()));
}

void cordic::thread_sub_ln703_fu_327_p2() {
    sub_ln703_fu_327_p2 = (!p_Val2_6_reg_91.read().is_01() || !sext_ln703_fu_323_p1.read().is_01())? sc_lv<16>(): (sc_biguint<16>(p_Val2_6_reg_91.read()) - sc_bigint<16>(sext_ln703_fu_323_p1.read()));
}

void cordic::thread_tmp_1_fu_254_p3() {
    tmp_1_fu_254_p3 = t_V_reg_101.read().range(15, 15);
}

void cordic::thread_tmp_fu_159_p3() {
    tmp_fu_159_p3 = p_Val2_6_reg_91.read().range(15, 15);
}

void cordic::thread_trunc_ln1148_1_fu_268_p4() {
    trunc_ln1148_1_fu_268_p4 = sub_ln1148_fu_262_p2.read().range(16, 1);
}

void cordic::thread_trunc_ln1148_2_fu_278_p4() {
    trunc_ln1148_2_fu_278_p4 = t_V_reg_101.read().range(15, 1);
}

void cordic::thread_zext_ln31_fu_245_p1() {
    zext_ln31_fu_245_p1 = esl_zext<64,6>(j_0_reg_136.read());
}

void cordic::thread_zext_ln703_fu_306_p1() {
    zext_ln703_fu_306_p1 = esl_zext<15,14>(cordic_phase_V_q0.read());
}

void cordic::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln18_fu_147_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
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

