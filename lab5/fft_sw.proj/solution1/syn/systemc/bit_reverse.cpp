// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "bit_reverse.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic bit_reverse::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic bit_reverse::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> bit_reverse::ap_ST_fsm_state1 = "1";
const sc_lv<5> bit_reverse::ap_ST_fsm_state2 = "10";
const sc_lv<5> bit_reverse::ap_ST_fsm_state3 = "100";
const sc_lv<5> bit_reverse::ap_ST_fsm_state4 = "1000";
const sc_lv<5> bit_reverse::ap_ST_fsm_state5 = "10000";
const sc_lv<32> bit_reverse::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> bit_reverse::ap_const_lv32_1 = "1";
const sc_lv<32> bit_reverse::ap_const_lv32_2 = "10";
const sc_lv<1> bit_reverse::ap_const_lv1_0 = "0";
const sc_lv<1> bit_reverse::ap_const_lv1_1 = "1";
const sc_lv<32> bit_reverse::ap_const_lv32_3 = "11";
const sc_lv<11> bit_reverse::ap_const_lv11_0 = "00000000000";
const sc_lv<32> bit_reverse::ap_const_lv32_4 = "100";
const sc_lv<4> bit_reverse::ap_const_lv4_0 = "0000";
const sc_lv<11> bit_reverse::ap_const_lv11_400 = "10000000000";
const sc_lv<11> bit_reverse::ap_const_lv11_1 = "1";
const sc_lv<4> bit_reverse::ap_const_lv4_A = "1010";
const sc_lv<4> bit_reverse::ap_const_lv4_1 = "1";
const sc_lv<32> bit_reverse::ap_const_lv32_9 = "1001";
const bool bit_reverse::ap_const_boolean_1 = true;

bit_reverse::bit_reverse(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_X_I_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( X_I_addr_2_reg_251 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln26_fu_194_p1 );
    sensitive << ( zext_ln25_fu_200_p1 );

    SC_METHOD(thread_X_I_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_X_I_d0);
    sensitive << ( X_I_q0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_X_I_we0);
    sensitive << ( icmp_ln23_reg_242 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_X_R_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( X_R_addr_2_reg_246 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln26_fu_194_p1 );
    sensitive << ( zext_ln25_fu_200_p1 );

    SC_METHOD(thread_X_R_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_X_R_d0);
    sensitive << ( X_R_q0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_X_R_we0);
    sensitive << ( icmp_ln23_reg_242 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln21_fu_135_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln21_fu_135_p2 );

    SC_METHOD(thread_i_4_fu_141_p2);
    sensitive << ( input_assign_reg_84 );

    SC_METHOD(thread_i_fu_153_p2);
    sensitive << ( i_0_i_reg_107 );

    SC_METHOD(thread_icmp_ln21_fu_135_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( input_assign_reg_84 );

    SC_METHOD(thread_icmp_ln23_fu_189_p2);
    sensitive << ( zext_ln21_reg_211 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln8_fu_147_p2 );
    sensitive << ( reversed_reg_96 );

    SC_METHOD(thread_icmp_ln8_fu_147_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( i_0_i_reg_107 );

    SC_METHOD(thread_input_assign_1_fu_175_p4);
    sensitive << ( p_0_i_reg_118 );

    SC_METHOD(thread_rev_fu_167_p3);
    sensitive << ( trunc_ln9_fu_159_p1 );
    sensitive << ( trunc_ln8_fu_163_p1 );

    SC_METHOD(thread_trunc_ln21_fu_127_p1);
    sensitive << ( input_assign_reg_84 );

    SC_METHOD(thread_trunc_ln8_fu_163_p1);
    sensitive << ( p_0_i_reg_118 );

    SC_METHOD(thread_trunc_ln9_fu_159_p1);
    sensitive << ( reversed_reg_96 );

    SC_METHOD(thread_zext_ln10_fu_185_p1);
    sensitive << ( input_assign_1_fu_175_p4 );

    SC_METHOD(thread_zext_ln21_fu_131_p1);
    sensitive << ( input_assign_reg_84 );

    SC_METHOD(thread_zext_ln25_fu_200_p1);
    sensitive << ( input_assign_reg_84 );

    SC_METHOD(thread_zext_ln26_fu_194_p1);
    sensitive << ( reversed_reg_96 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln8_fu_147_p2 );
    sensitive << ( icmp_ln23_fu_189_p2 );
    sensitive << ( icmp_ln21_fu_135_p2 );

    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "bit_reverse_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, X_R_address0, "(port)X_R_address0");
    sc_trace(mVcdFile, X_R_ce0, "(port)X_R_ce0");
    sc_trace(mVcdFile, X_R_we0, "(port)X_R_we0");
    sc_trace(mVcdFile, X_R_d0, "(port)X_R_d0");
    sc_trace(mVcdFile, X_R_q0, "(port)X_R_q0");
    sc_trace(mVcdFile, X_I_address0, "(port)X_I_address0");
    sc_trace(mVcdFile, X_I_ce0, "(port)X_I_ce0");
    sc_trace(mVcdFile, X_I_we0, "(port)X_I_we0");
    sc_trace(mVcdFile, X_I_d0, "(port)X_I_d0");
    sc_trace(mVcdFile, X_I_q0, "(port)X_I_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, trunc_ln21_fu_127_p1, "trunc_ln21_fu_127_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, zext_ln21_fu_131_p1, "zext_ln21_fu_131_p1");
    sc_trace(mVcdFile, zext_ln21_reg_211, "zext_ln21_reg_211");
    sc_trace(mVcdFile, i_4_fu_141_p2, "i_4_fu_141_p2");
    sc_trace(mVcdFile, i_4_reg_219, "i_4_reg_219");
    sc_trace(mVcdFile, i_fu_153_p2, "i_fu_153_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, rev_fu_167_p3, "rev_fu_167_p3");
    sc_trace(mVcdFile, icmp_ln8_fu_147_p2, "icmp_ln8_fu_147_p2");
    sc_trace(mVcdFile, zext_ln10_fu_185_p1, "zext_ln10_fu_185_p1");
    sc_trace(mVcdFile, icmp_ln23_fu_189_p2, "icmp_ln23_fu_189_p2");
    sc_trace(mVcdFile, icmp_ln23_reg_242, "icmp_ln23_reg_242");
    sc_trace(mVcdFile, X_R_addr_2_reg_246, "X_R_addr_2_reg_246");
    sc_trace(mVcdFile, X_I_addr_2_reg_251, "X_I_addr_2_reg_251");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, input_assign_reg_84, "input_assign_reg_84");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, reversed_reg_96, "reversed_reg_96");
    sc_trace(mVcdFile, icmp_ln21_fu_135_p2, "icmp_ln21_fu_135_p2");
    sc_trace(mVcdFile, i_0_i_reg_107, "i_0_i_reg_107");
    sc_trace(mVcdFile, p_0_i_reg_118, "p_0_i_reg_118");
    sc_trace(mVcdFile, zext_ln26_fu_194_p1, "zext_ln26_fu_194_p1");
    sc_trace(mVcdFile, zext_ln25_fu_200_p1, "zext_ln25_fu_200_p1");
    sc_trace(mVcdFile, trunc_ln9_fu_159_p1, "trunc_ln9_fu_159_p1");
    sc_trace(mVcdFile, trunc_ln8_fu_163_p1, "trunc_ln8_fu_163_p1");
    sc_trace(mVcdFile, input_assign_1_fu_175_p4, "input_assign_1_fu_175_p4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

bit_reverse::~bit_reverse() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void bit_reverse::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln8_fu_147_p2.read(), ap_const_lv1_0))) {
        i_0_i_reg_107 = i_fu_153_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln21_fu_135_p2.read()))) {
        i_0_i_reg_107 = ap_const_lv4_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        input_assign_reg_84 = i_4_reg_219.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        input_assign_reg_84 = ap_const_lv11_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln8_fu_147_p2.read(), ap_const_lv1_0))) {
        p_0_i_reg_118 = zext_ln10_fu_185_p1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln21_fu_135_p2.read()))) {
        p_0_i_reg_118 = trunc_ln21_fu_127_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln8_fu_147_p2.read(), ap_const_lv1_0))) {
        reversed_reg_96 = rev_fu_167_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln21_fu_135_p2.read()))) {
        reversed_reg_96 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln8_fu_147_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln23_fu_189_p2.read()))) {
        X_I_addr_2_reg_251 =  (sc_lv<10>) (zext_ln26_fu_194_p1.read());
        X_R_addr_2_reg_246 =  (sc_lv<10>) (zext_ln26_fu_194_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_4_reg_219 = i_4_fu_141_p2.read();
        zext_ln21_reg_211 = zext_ln21_fu_131_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln8_fu_147_p2.read(), ap_const_lv1_1))) {
        icmp_ln23_reg_242 = icmp_ln23_fu_189_p2.read();
    }
}

void bit_reverse::thread_X_I_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        X_I_address0 = X_I_addr_2_reg_251.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        X_I_address0 =  (sc_lv<10>) (zext_ln25_fu_200_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        X_I_address0 =  (sc_lv<10>) (zext_ln26_fu_194_p1.read());
    } else {
        X_I_address0 = "XXXXXXXXXX";
    }
}

void bit_reverse::thread_X_I_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        X_I_ce0 = ap_const_logic_1;
    } else {
        X_I_ce0 = ap_const_logic_0;
    }
}

void bit_reverse::thread_X_I_d0() {
    X_I_d0 = X_I_q0.read();
}

void bit_reverse::thread_X_I_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln23_reg_242.read())))) {
        X_I_we0 = ap_const_logic_1;
    } else {
        X_I_we0 = ap_const_logic_0;
    }
}

void bit_reverse::thread_X_R_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        X_R_address0 = X_R_addr_2_reg_246.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        X_R_address0 =  (sc_lv<10>) (zext_ln25_fu_200_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        X_R_address0 =  (sc_lv<10>) (zext_ln26_fu_194_p1.read());
    } else {
        X_R_address0 = "XXXXXXXXXX";
    }
}

void bit_reverse::thread_X_R_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        X_R_ce0 = ap_const_logic_1;
    } else {
        X_R_ce0 = ap_const_logic_0;
    }
}

void bit_reverse::thread_X_R_d0() {
    X_R_d0 = X_R_q0.read();
}

void bit_reverse::thread_X_R_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln23_reg_242.read())))) {
        X_R_we0 = ap_const_logic_1;
    } else {
        X_R_we0 = ap_const_logic_0;
    }
}

void bit_reverse::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void bit_reverse::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void bit_reverse::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void bit_reverse::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void bit_reverse::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void bit_reverse::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln21_fu_135_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void bit_reverse::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void bit_reverse::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln21_fu_135_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bit_reverse::thread_i_4_fu_141_p2() {
    i_4_fu_141_p2 = (!ap_const_lv11_1.is_01() || !input_assign_reg_84.read().is_01())? sc_lv<11>(): (sc_biguint<11>(ap_const_lv11_1) + sc_biguint<11>(input_assign_reg_84.read()));
}

void bit_reverse::thread_i_fu_153_p2() {
    i_fu_153_p2 = (!i_0_i_reg_107.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_0_i_reg_107.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void bit_reverse::thread_icmp_ln21_fu_135_p2() {
    icmp_ln21_fu_135_p2 = (!input_assign_reg_84.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(input_assign_reg_84.read() == ap_const_lv11_400);
}

void bit_reverse::thread_icmp_ln23_fu_189_p2() {
    icmp_ln23_fu_189_p2 = (!zext_ln21_reg_211.read().is_01() || !reversed_reg_96.read().is_01())? sc_lv<1>(): (sc_biguint<32>(zext_ln21_reg_211.read()) > sc_biguint<32>(reversed_reg_96.read()));
}

void bit_reverse::thread_icmp_ln8_fu_147_p2() {
    icmp_ln8_fu_147_p2 = (!i_0_i_reg_107.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_reg_107.read() == ap_const_lv4_A);
}

void bit_reverse::thread_input_assign_1_fu_175_p4() {
    input_assign_1_fu_175_p4 = p_0_i_reg_118.read().range(9, 1);
}

void bit_reverse::thread_rev_fu_167_p3() {
    rev_fu_167_p3 = esl_concat<31,1>(trunc_ln9_fu_159_p1.read(), trunc_ln8_fu_163_p1.read());
}

void bit_reverse::thread_trunc_ln21_fu_127_p1() {
    trunc_ln21_fu_127_p1 = input_assign_reg_84.read().range(10-1, 0);
}

void bit_reverse::thread_trunc_ln8_fu_163_p1() {
    trunc_ln8_fu_163_p1 = p_0_i_reg_118.read().range(1-1, 0);
}

void bit_reverse::thread_trunc_ln9_fu_159_p1() {
    trunc_ln9_fu_159_p1 = reversed_reg_96.read().range(31-1, 0);
}

void bit_reverse::thread_zext_ln10_fu_185_p1() {
    zext_ln10_fu_185_p1 = esl_zext<10,9>(input_assign_1_fu_175_p4.read());
}

void bit_reverse::thread_zext_ln21_fu_131_p1() {
    zext_ln21_fu_131_p1 = esl_zext<32,11>(input_assign_reg_84.read());
}

void bit_reverse::thread_zext_ln25_fu_200_p1() {
    zext_ln25_fu_200_p1 = esl_zext<64,11>(input_assign_reg_84.read());
}

void bit_reverse::thread_zext_ln26_fu_194_p1() {
    zext_ln26_fu_194_p1 = esl_zext<64,32>(reversed_reg_96.read());
}

void bit_reverse::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln21_fu_135_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln8_fu_147_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(icmp_ln23_fu_189_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln8_fu_147_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln23_fu_189_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<5>) ("XXXXX");
            break;
    }
}

}

