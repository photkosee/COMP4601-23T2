// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "fir.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic fir::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic fir::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> fir::ap_ST_fsm_state1 = "1";
const sc_lv<6> fir::ap_ST_fsm_state2 = "10";
const sc_lv<6> fir::ap_ST_fsm_state3 = "100";
const sc_lv<6> fir::ap_ST_fsm_state4 = "1000";
const sc_lv<6> fir::ap_ST_fsm_state5 = "10000";
const sc_lv<6> fir::ap_ST_fsm_state6 = "100000";
const sc_lv<32> fir::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> fir::ap_const_lv32_3 = "11";
const sc_lv<32> fir::ap_const_lv32_4 = "100";
const sc_lv<32> fir::ap_const_lv32_1 = "1";
const sc_lv<1> fir::ap_const_lv1_0 = "0";
const sc_lv<4> fir::ap_const_lv4_A = "1010";
const sc_lv<32> fir::ap_const_lv32_2 = "10";
const sc_lv<32> fir::ap_const_lv32_5 = "101";
const sc_lv<1> fir::ap_const_lv1_1 = "1";
const sc_lv<4> fir::ap_const_lv4_8 = "1000";
const sc_lv<4> fir::ap_const_lv4_6 = "110";
const sc_lv<4> fir::ap_const_lv4_5 = "101";
const sc_lv<4> fir::ap_const_lv4_4 = "100";
const sc_lv<4> fir::ap_const_lv4_2 = "10";
const sc_lv<4> fir::ap_const_lv4_0 = "0000";
const sc_lv<32> fir::ap_const_lv32_139 = "100111001";
const sc_lv<4> fir::ap_const_lv4_F = "1111";
const sc_lv<32> fir::ap_const_lv32_FFFFFFA5 = "11111111111111111111111110100101";
const sc_lv<32> fir::ap_const_lv32_35 = "110101";
const sc_lv<32> fir::ap_const_lv32_1F4 = "111110100";
const bool fir::ap_const_boolean_1 = true;

fir::fir(sc_module_name name) : sc_module(name), mVcdFile(0) {
    shift_reg_U = new fir_shift_reg("shift_reg_U");
    shift_reg_U->clk(ap_clk);
    shift_reg_U->reset(ap_rst);
    shift_reg_U->address0(shift_reg_address0);
    shift_reg_U->ce0(shift_reg_ce0);
    shift_reg_U->we0(shift_reg_we0);
    shift_reg_U->d0(x);
    shift_reg_U->q0(shift_reg_q0);
    shift_reg_U->address1(shift_reg_address1);
    shift_reg_U->ce1(shift_reg_ce1);
    shift_reg_U->we1(shift_reg_we1);
    shift_reg_U->d1(shift_reg_q0);
    shift_reg_U->q1(shift_reg_q1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln25_1_fu_178_p2);
    sensitive << ( add_ln25_reg_232 );
    sensitive << ( mul_ln25_fu_156_p2 );

    SC_METHOD(thread_add_ln25_2_fu_183_p2);
    sensitive << ( grp_fu_112_p2 );
    sensitive << ( mul_ln25_3_fu_161_p2 );

    SC_METHOD(thread_add_ln25_3_fu_189_p2);
    sensitive << ( mul_ln25_5_fu_167_p2 );
    sensitive << ( mul_ln25_6_fu_173_p2 );

    SC_METHOD(thread_add_ln25_4_fu_195_p2);
    sensitive << ( add_ln25_3_fu_189_p2 );
    sensitive << ( add_ln25_2_fu_183_p2 );

    SC_METHOD(thread_add_ln25_fu_150_p2);
    sensitive << ( mul_ln25_1_fu_144_p2 );
    sensitive << ( grp_fu_112_p2 );

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

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_grp_fu_112_p0);
    sensitive << ( shift_reg_q0 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_grp_fu_112_p2);
    sensitive << ( grp_fu_112_p0 );

    SC_METHOD(thread_i_fu_128_p2);
    sensitive << ( i_0_reg_100 );

    SC_METHOD(thread_icmp_ln17_fu_122_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_100 );

    SC_METHOD(thread_mul_ln25_1_fu_144_p2);
    sensitive << ( reg_118 );

    SC_METHOD(thread_mul_ln25_3_fu_161_p2);
    sensitive << ( reg_118 );

    SC_METHOD(thread_mul_ln25_5_fu_167_p0);
    sensitive << ( shift_reg_q1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_mul_ln25_5_fu_167_p2);
    sensitive << ( mul_ln25_5_fu_167_p0 );

    SC_METHOD(thread_mul_ln25_6_fu_173_p0);
    sensitive << ( x );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_mul_ln25_6_fu_173_p2);
    sensitive << ( mul_ln25_6_fu_173_p0 );

    SC_METHOD(thread_mul_ln25_fu_156_p2);
    sensitive << ( shift_reg_load_1_reg_227 );

    SC_METHOD(thread_shift_reg_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln17_fu_122_p2 );
    sensitive << ( zext_ln18_fu_134_p1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_shift_reg_address1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln18_1_fu_139_p1 );

    SC_METHOD(thread_shift_reg_ce0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln17_fu_122_p2 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_shift_reg_ce1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_shift_reg_we0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_shift_reg_we1);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_y);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( add_ln25_4_fu_195_p2 );
    sensitive << ( add_ln25_1_fu_178_p2 );

    SC_METHOD(thread_y_ap_vld);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_zext_ln18_1_fu_139_p1);
    sensitive << ( i_0_reg_100 );

    SC_METHOD(thread_zext_ln18_fu_134_p1);
    sensitive << ( i_fu_128_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln17_fu_122_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "fir_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, y, "(port)y");
    sc_trace(mVcdFile, y_ap_vld, "(port)y_ap_vld");
    sc_trace(mVcdFile, x, "(port)x");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, shift_reg_address0, "shift_reg_address0");
    sc_trace(mVcdFile, shift_reg_ce0, "shift_reg_ce0");
    sc_trace(mVcdFile, shift_reg_we0, "shift_reg_we0");
    sc_trace(mVcdFile, shift_reg_q0, "shift_reg_q0");
    sc_trace(mVcdFile, shift_reg_address1, "shift_reg_address1");
    sc_trace(mVcdFile, shift_reg_ce1, "shift_reg_ce1");
    sc_trace(mVcdFile, shift_reg_we1, "shift_reg_we1");
    sc_trace(mVcdFile, shift_reg_q1, "shift_reg_q1");
    sc_trace(mVcdFile, reg_118, "reg_118");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, i_fu_128_p2, "i_fu_128_p2");
    sc_trace(mVcdFile, i_reg_217, "i_reg_217");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln17_fu_122_p2, "icmp_ln17_fu_122_p2");
    sc_trace(mVcdFile, shift_reg_load_1_reg_227, "shift_reg_load_1_reg_227");
    sc_trace(mVcdFile, add_ln25_fu_150_p2, "add_ln25_fu_150_p2");
    sc_trace(mVcdFile, add_ln25_reg_232, "add_ln25_reg_232");
    sc_trace(mVcdFile, i_0_reg_100, "i_0_reg_100");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, zext_ln18_fu_134_p1, "zext_ln18_fu_134_p1");
    sc_trace(mVcdFile, zext_ln18_1_fu_139_p1, "zext_ln18_1_fu_139_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, grp_fu_112_p0, "grp_fu_112_p0");
    sc_trace(mVcdFile, mul_ln25_1_fu_144_p2, "mul_ln25_1_fu_144_p2");
    sc_trace(mVcdFile, grp_fu_112_p2, "grp_fu_112_p2");
    sc_trace(mVcdFile, mul_ln25_5_fu_167_p0, "mul_ln25_5_fu_167_p0");
    sc_trace(mVcdFile, mul_ln25_6_fu_173_p0, "mul_ln25_6_fu_173_p0");
    sc_trace(mVcdFile, mul_ln25_fu_156_p2, "mul_ln25_fu_156_p2");
    sc_trace(mVcdFile, mul_ln25_3_fu_161_p2, "mul_ln25_3_fu_161_p2");
    sc_trace(mVcdFile, mul_ln25_5_fu_167_p2, "mul_ln25_5_fu_167_p2");
    sc_trace(mVcdFile, mul_ln25_6_fu_173_p2, "mul_ln25_6_fu_173_p2");
    sc_trace(mVcdFile, add_ln25_3_fu_189_p2, "add_ln25_3_fu_189_p2");
    sc_trace(mVcdFile, add_ln25_2_fu_183_p2, "add_ln25_2_fu_183_p2");
    sc_trace(mVcdFile, add_ln25_4_fu_195_p2, "add_ln25_4_fu_195_p2");
    sc_trace(mVcdFile, add_ln25_1_fu_178_p2, "add_ln25_1_fu_178_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("fir.hdltvin.dat");
    mHdltvoutHandle.open("fir.hdltvout.dat");
}

fir::~fir() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete shift_reg_U;
}

void fir::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_0_reg_100 = i_reg_217.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_100 = ap_const_lv4_A;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        add_ln25_reg_232 = add_ln25_fu_150_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln17_fu_122_p2.read(), ap_const_lv1_0))) {
        i_reg_217 = i_fu_128_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        reg_118 = shift_reg_q1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        shift_reg_load_1_reg_227 = shift_reg_q0.read();
    }
}

void fir::thread_add_ln25_1_fu_178_p2() {
    add_ln25_1_fu_178_p2 = (!add_ln25_reg_232.read().is_01() || !mul_ln25_fu_156_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln25_reg_232.read()) + sc_biguint<32>(mul_ln25_fu_156_p2.read()));
}

void fir::thread_add_ln25_2_fu_183_p2() {
    add_ln25_2_fu_183_p2 = (!mul_ln25_3_fu_161_p2.read().is_01() || !grp_fu_112_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(mul_ln25_3_fu_161_p2.read()) + sc_biguint<32>(grp_fu_112_p2.read()));
}

void fir::thread_add_ln25_3_fu_189_p2() {
    add_ln25_3_fu_189_p2 = (!mul_ln25_5_fu_167_p2.read().is_01() || !mul_ln25_6_fu_173_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(mul_ln25_5_fu_167_p2.read()) + sc_biguint<32>(mul_ln25_6_fu_173_p2.read()));
}

void fir::thread_add_ln25_4_fu_195_p2() {
    add_ln25_4_fu_195_p2 = (!add_ln25_3_fu_189_p2.read().is_01() || !add_ln25_2_fu_183_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln25_3_fu_189_p2.read()) + sc_biguint<32>(add_ln25_2_fu_183_p2.read()));
}

void fir::thread_add_ln25_fu_150_p2() {
    add_ln25_fu_150_p2 = (!mul_ln25_1_fu_144_p2.read().is_01() || !grp_fu_112_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(mul_ln25_1_fu_144_p2.read()) + sc_biguint<32>(grp_fu_112_p2.read()));
}

void fir::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void fir::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void fir::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void fir::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void fir::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void fir::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void fir::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void fir::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void fir::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void fir::thread_grp_fu_112_p0() {
    grp_fu_112_p0 = shift_reg_q0.read();
}

void fir::thread_grp_fu_112_p2() {
    grp_fu_112_p2 = (!grp_fu_112_p0.read().is_01() || !ap_const_lv32_139.is_01())? sc_lv<32>(): sc_bigint<32>(grp_fu_112_p0.read()) * sc_biguint<32>(ap_const_lv32_139);
}

void fir::thread_i_fu_128_p2() {
    i_fu_128_p2 = (!i_0_reg_100.read().is_01() || !ap_const_lv4_F.is_01())? sc_lv<4>(): (sc_biguint<4>(i_0_reg_100.read()) + sc_bigint<4>(ap_const_lv4_F));
}

void fir::thread_icmp_ln17_fu_122_p2() {
    icmp_ln17_fu_122_p2 = (!i_0_reg_100.read().is_01() || !ap_const_lv4_0.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_100.read() == ap_const_lv4_0);
}

void fir::thread_mul_ln25_1_fu_144_p2() {
    mul_ln25_1_fu_144_p2 = (!reg_118.read().is_01() || !ap_const_lv32_FFFFFFA5.is_01())? sc_lv<32>(): sc_bigint<32>(reg_118.read()) * sc_bigint<32>(ap_const_lv32_FFFFFFA5);
}

void fir::thread_mul_ln25_3_fu_161_p2() {
    mul_ln25_3_fu_161_p2 = (!reg_118.read().is_01() || !ap_const_lv32_1F4.is_01())? sc_lv<32>(): sc_bigint<32>(reg_118.read()) * sc_biguint<32>(ap_const_lv32_1F4);
}

void fir::thread_mul_ln25_5_fu_167_p0() {
    mul_ln25_5_fu_167_p0 = shift_reg_q1.read();
}

void fir::thread_mul_ln25_5_fu_167_p2() {
    mul_ln25_5_fu_167_p2 = (!mul_ln25_5_fu_167_p0.read().is_01() || !ap_const_lv32_FFFFFFA5.is_01())? sc_lv<32>(): sc_bigint<32>(mul_ln25_5_fu_167_p0.read()) * sc_bigint<32>(ap_const_lv32_FFFFFFA5);
}

void fir::thread_mul_ln25_6_fu_173_p0() {
    mul_ln25_6_fu_173_p0 = x.read();
}

void fir::thread_mul_ln25_6_fu_173_p2() {
    mul_ln25_6_fu_173_p2 = (!mul_ln25_6_fu_173_p0.read().is_01() || !ap_const_lv32_35.is_01())? sc_lv<32>(): sc_bigint<32>(mul_ln25_6_fu_173_p0.read()) * sc_biguint<32>(ap_const_lv32_35);
}

void fir::thread_mul_ln25_fu_156_p2() {
    mul_ln25_fu_156_p2 = (!shift_reg_load_1_reg_227.read().is_01() || !ap_const_lv32_35.is_01())? sc_lv<32>(): sc_bigint<32>(shift_reg_load_1_reg_227.read()) * sc_biguint<32>(ap_const_lv32_35);
}

void fir::thread_shift_reg_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        shift_reg_address0 = ap_const_lv4_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        shift_reg_address0 = ap_const_lv4_4;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        shift_reg_address0 = ap_const_lv4_6;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln17_fu_122_p2.read(), ap_const_lv1_1))) {
        shift_reg_address0 = ap_const_lv4_A;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln17_fu_122_p2.read(), ap_const_lv1_0))) {
        shift_reg_address0 =  (sc_lv<4>) (zext_ln18_fu_134_p1.read());
    } else {
        shift_reg_address0 = "XXXX";
    }
}

void fir::thread_shift_reg_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        shift_reg_address1 = ap_const_lv4_2;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        shift_reg_address1 = ap_const_lv4_5;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        shift_reg_address1 =  (sc_lv<4>) (zext_ln18_1_fu_139_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        shift_reg_address1 = ap_const_lv4_8;
    } else {
        shift_reg_address1 = "XXXX";
    }
}

void fir::thread_shift_reg_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln17_fu_122_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln17_fu_122_p2.read(), ap_const_lv1_1)))) {
        shift_reg_ce0 = ap_const_logic_1;
    } else {
        shift_reg_ce0 = ap_const_logic_0;
    }
}

void fir::thread_shift_reg_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        shift_reg_ce1 = ap_const_logic_1;
    } else {
        shift_reg_ce1 = ap_const_logic_0;
    }
}

void fir::thread_shift_reg_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        shift_reg_we0 = ap_const_logic_1;
    } else {
        shift_reg_we0 = ap_const_logic_0;
    }
}

void fir::thread_shift_reg_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        shift_reg_we1 = ap_const_logic_1;
    } else {
        shift_reg_we1 = ap_const_logic_0;
    }
}

void fir::thread_y() {
    y = (!add_ln25_4_fu_195_p2.read().is_01() || !add_ln25_1_fu_178_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln25_4_fu_195_p2.read()) + sc_biguint<32>(add_ln25_1_fu_178_p2.read()));
}

void fir::thread_y_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        y_ap_vld = ap_const_logic_1;
    } else {
        y_ap_vld = ap_const_logic_0;
    }
}

void fir::thread_zext_ln18_1_fu_139_p1() {
    zext_ln18_1_fu_139_p1 = esl_zext<64,4>(i_0_reg_100.read());
}

void fir::thread_zext_ln18_fu_134_p1() {
    zext_ln18_fu_134_p1 = esl_zext<64,4>(i_fu_128_p2.read());
}

void fir::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln17_fu_122_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

void fir::thread_hdltv_gen() {
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
        mHdltvoutHandle << " , " <<  " \"y\" :  \"" << y.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y_ap_vld\" :  \"" << y_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"x\" :  \"" << x.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

