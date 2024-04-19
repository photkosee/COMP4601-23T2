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
const sc_lv<4> bit_reverse::ap_ST_fsm_state1 = "1";
const sc_lv<4> bit_reverse::ap_ST_fsm_state2 = "10";
const sc_lv<4> bit_reverse::ap_ST_fsm_state3 = "100";
const sc_lv<4> bit_reverse::ap_ST_fsm_state4 = "1000";
const sc_lv<32> bit_reverse::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> bit_reverse::ap_const_lv32_1 = "1";
const sc_lv<1> bit_reverse::ap_const_lv1_0 = "0";
const sc_lv<32> bit_reverse::ap_const_lv32_2 = "10";
const sc_lv<11> bit_reverse::ap_const_lv11_0 = "00000000000";
const sc_lv<32> bit_reverse::ap_const_lv32_3 = "11";
const sc_lv<11> bit_reverse::ap_const_lv11_400 = "10000000000";
const sc_lv<11> bit_reverse::ap_const_lv11_1 = "1";
const sc_lv<32> bit_reverse::ap_const_lv32_9 = "1001";
const sc_lv<1> bit_reverse::ap_const_lv1_1 = "1";
const bool bit_reverse::ap_const_boolean_1 = true;

bit_reverse::bit_reverse(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_X_I_V_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( X_I_V_addr_2_reg_143 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln26_fu_114_p1 );
    sensitive << ( zext_ln25_fu_120_p1 );

    SC_METHOD(thread_X_I_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_X_I_V_d0);
    sensitive << ( X_I_V_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_X_I_V_we0);
    sensitive << ( icmp_ln23_reg_134 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_X_R_V_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( X_R_V_addr_2_reg_138 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln26_fu_114_p1 );
    sensitive << ( zext_ln25_fu_120_p1 );

    SC_METHOD(thread_X_R_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_X_R_V_d0);
    sensitive << ( X_R_V_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_X_R_V_we0);
    sensitive << ( icmp_ln23_reg_134 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln21_fu_82_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln21_fu_82_p2 );

    SC_METHOD(thread_i_fu_88_p2);
    sensitive << ( input_assign_reg_70 );

    SC_METHOD(thread_icmp_ln21_fu_82_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( input_assign_reg_70 );

    SC_METHOD(thread_icmp_ln23_fu_108_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln21_fu_82_p2 );
    sensitive << ( input_assign_reg_70 );
    sensitive << ( zext_ln9_fu_104_p1 );

    SC_METHOD(thread_reversed_fu_94_p4);
    sensitive << ( input_assign_reg_70 );

    SC_METHOD(thread_zext_ln25_fu_120_p1);
    sensitive << ( input_assign_reg_70 );

    SC_METHOD(thread_zext_ln26_fu_114_p1);
    sensitive << ( reversed_fu_94_p4 );

    SC_METHOD(thread_zext_ln9_fu_104_p1);
    sensitive << ( reversed_fu_94_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln23_fu_108_p2 );
    sensitive << ( icmp_ln21_fu_82_p2 );

    ap_CS_fsm = "0001";
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
    sc_trace(mVcdFile, X_R_V_address0, "(port)X_R_V_address0");
    sc_trace(mVcdFile, X_R_V_ce0, "(port)X_R_V_ce0");
    sc_trace(mVcdFile, X_R_V_we0, "(port)X_R_V_we0");
    sc_trace(mVcdFile, X_R_V_d0, "(port)X_R_V_d0");
    sc_trace(mVcdFile, X_R_V_q0, "(port)X_R_V_q0");
    sc_trace(mVcdFile, X_I_V_address0, "(port)X_I_V_address0");
    sc_trace(mVcdFile, X_I_V_ce0, "(port)X_I_V_ce0");
    sc_trace(mVcdFile, X_I_V_we0, "(port)X_I_V_we0");
    sc_trace(mVcdFile, X_I_V_d0, "(port)X_I_V_d0");
    sc_trace(mVcdFile, X_I_V_q0, "(port)X_I_V_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_fu_88_p2, "i_fu_88_p2");
    sc_trace(mVcdFile, i_reg_129, "i_reg_129");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln23_fu_108_p2, "icmp_ln23_fu_108_p2");
    sc_trace(mVcdFile, icmp_ln23_reg_134, "icmp_ln23_reg_134");
    sc_trace(mVcdFile, icmp_ln21_fu_82_p2, "icmp_ln21_fu_82_p2");
    sc_trace(mVcdFile, X_R_V_addr_2_reg_138, "X_R_V_addr_2_reg_138");
    sc_trace(mVcdFile, X_I_V_addr_2_reg_143, "X_I_V_addr_2_reg_143");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, input_assign_reg_70, "input_assign_reg_70");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, zext_ln26_fu_114_p1, "zext_ln26_fu_114_p1");
    sc_trace(mVcdFile, zext_ln25_fu_120_p1, "zext_ln25_fu_120_p1");
    sc_trace(mVcdFile, reversed_fu_94_p4, "reversed_fu_94_p4");
    sc_trace(mVcdFile, zext_ln9_fu_104_p1, "zext_ln9_fu_104_p1");
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
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        input_assign_reg_70 = i_reg_129.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        input_assign_reg_70 = ap_const_lv11_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln21_fu_82_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(icmp_ln23_fu_108_p2.read(), ap_const_lv1_0))) {
        X_I_V_addr_2_reg_143 =  (sc_lv<10>) (zext_ln26_fu_114_p1.read());
        X_R_V_addr_2_reg_138 =  (sc_lv<10>) (zext_ln26_fu_114_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_129 = i_fu_88_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln21_fu_82_p2.read(), ap_const_lv1_0))) {
        icmp_ln23_reg_134 = icmp_ln23_fu_108_p2.read();
    }
}

void bit_reverse::thread_X_I_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        X_I_V_address0 = X_I_V_addr_2_reg_143.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        X_I_V_address0 =  (sc_lv<10>) (zext_ln25_fu_120_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        X_I_V_address0 =  (sc_lv<10>) (zext_ln26_fu_114_p1.read());
    } else {
        X_I_V_address0 = "XXXXXXXXXX";
    }
}

void bit_reverse::thread_X_I_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        X_I_V_ce0 = ap_const_logic_1;
    } else {
        X_I_V_ce0 = ap_const_logic_0;
    }
}

void bit_reverse::thread_X_I_V_d0() {
    X_I_V_d0 = X_I_V_q0.read();
}

void bit_reverse::thread_X_I_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(icmp_ln23_reg_134.read(), ap_const_lv1_0)))) {
        X_I_V_we0 = ap_const_logic_1;
    } else {
        X_I_V_we0 = ap_const_logic_0;
    }
}

void bit_reverse::thread_X_R_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        X_R_V_address0 = X_R_V_addr_2_reg_138.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        X_R_V_address0 =  (sc_lv<10>) (zext_ln25_fu_120_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        X_R_V_address0 =  (sc_lv<10>) (zext_ln26_fu_114_p1.read());
    } else {
        X_R_V_address0 = "XXXXXXXXXX";
    }
}

void bit_reverse::thread_X_R_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        X_R_V_ce0 = ap_const_logic_1;
    } else {
        X_R_V_ce0 = ap_const_logic_0;
    }
}

void bit_reverse::thread_X_R_V_d0() {
    X_R_V_d0 = X_R_V_q0.read();
}

void bit_reverse::thread_X_R_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(icmp_ln23_reg_134.read(), ap_const_lv1_0)))) {
        X_R_V_we0 = ap_const_logic_1;
    } else {
        X_R_V_we0 = ap_const_logic_0;
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

void bit_reverse::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln21_fu_82_p2.read(), ap_const_lv1_1)))) {
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
         esl_seteq<1,1,1>(icmp_ln21_fu_82_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bit_reverse::thread_i_fu_88_p2() {
    i_fu_88_p2 = (!input_assign_reg_70.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(input_assign_reg_70.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void bit_reverse::thread_icmp_ln21_fu_82_p2() {
    icmp_ln21_fu_82_p2 = (!input_assign_reg_70.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(input_assign_reg_70.read() == ap_const_lv11_400);
}

void bit_reverse::thread_icmp_ln23_fu_108_p2() {
    icmp_ln23_fu_108_p2 = (!input_assign_reg_70.read().is_01() || !zext_ln9_fu_104_p1.read().is_01())? sc_lv<1>(): (sc_biguint<11>(input_assign_reg_70.read()) > sc_biguint<11>(zext_ln9_fu_104_p1.read()));
}

void bit_reverse::thread_reversed_fu_94_p4() {
    reversed_fu_94_p4 = input_assign_reg_70.read().range(0, 9);
}

void bit_reverse::thread_zext_ln25_fu_120_p1() {
    zext_ln25_fu_120_p1 = esl_zext<64,11>(input_assign_reg_70.read());
}

void bit_reverse::thread_zext_ln26_fu_114_p1() {
    zext_ln26_fu_114_p1 = esl_zext<64,10>(reversed_fu_94_p4.read());
}

void bit_reverse::thread_zext_ln9_fu_104_p1() {
    zext_ln9_fu_104_p1 = esl_zext<11,10>(reversed_fu_94_p4.read());
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln21_fu_82_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln21_fu_82_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(icmp_ln23_fu_108_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<4>) ("XXXX");
            break;
    }
}

}

