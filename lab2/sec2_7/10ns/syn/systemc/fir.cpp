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
const sc_lv<3> fir::ap_ST_fsm_state1 = "1";
const sc_lv<3> fir::ap_ST_fsm_state2 = "10";
const sc_lv<3> fir::ap_ST_fsm_state3 = "100";
const sc_lv<32> fir::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> fir::ap_const_lv32_1 = "1";
const sc_lv<1> fir::ap_const_lv1_0 = "0";
const sc_lv<32> fir::ap_const_lv32_2 = "10";
const sc_lv<5> fir::ap_const_lv5_A = "1010";
const sc_lv<1> fir::ap_const_lv1_1 = "1";
const sc_lv<4> fir::ap_const_lv4_0 = "0000";
const sc_lv<5> fir::ap_const_lv5_1F = "11111";
const sc_lv<32> fir::ap_const_lv32_35 = "110101";
const sc_lv<32> fir::ap_const_lv32_4 = "100";
const sc_lv<5> fir::ap_const_lv5_0 = "00000";
const bool fir::ap_const_boolean_1 = true;

fir::fir(sc_module_name name) : sc_module(name), mVcdFile(0) {
    shift_reg_U = new fir_shift_reg("shift_reg_U");
    shift_reg_U->clk(ap_clk);
    shift_reg_U->reset(ap_rst);
    shift_reg_U->address0(shift_reg_address0);
    shift_reg_U->ce0(shift_reg_ce0);
    shift_reg_U->we0(shift_reg_we0);
    shift_reg_U->d0(shift_reg_d0);
    shift_reg_U->q0(shift_reg_q0);
    c1_U = new fir_c1("c1_U");
    c1_U->clk(ap_clk);
    c1_U->reset(ap_rst);
    c1_U->address0(c1_address0);
    c1_U->ce0(c1_ce0);
    c1_U->q0(c1_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_acc_fu_179_p2);
    sensitive << ( acc_0_reg_93 );
    sensitive << ( ap_phi_mux_p_pn_phi_fu_121_p4 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_i_0_phi_fu_110_p4);
    sensitive << ( i_0_reg_106 );

    SC_METHOD(thread_ap_phi_mux_p_pn_phi_fu_121_p4);
    sensitive << ( icmp_ln17_reg_198 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( p_pn_reg_118 );
    sensitive << ( mul_ln22_fu_172_p2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );

    SC_METHOD(thread_c1_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln21_1_fu_163_p1 );

    SC_METHOD(thread_c1_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_grp_fu_127_p0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_phi_mux_i_0_phi_fu_110_p4 );
    sensitive << ( i_0_reg_106 );

    SC_METHOD(thread_grp_fu_127_p2);
    sensitive << ( grp_fu_127_p0 );

    SC_METHOD(thread_icmp_ln17_fu_152_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );
    sensitive << ( i_0_reg_106 );

    SC_METHOD(thread_mul_ln18_fu_134_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( x );

    SC_METHOD(thread_mul_ln18_fu_134_p2);
    sensitive << ( mul_ln18_fu_134_p0 );

    SC_METHOD(thread_mul_ln22_fu_172_p0);
    sensitive << ( shift_reg_q0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_mul_ln22_fu_172_p1);
    sensitive << ( c1_q0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_mul_ln22_fu_172_p2);
    sensitive << ( mul_ln22_fu_172_p0 );
    sensitive << ( mul_ln22_fu_172_p1 );

    SC_METHOD(thread_sext_ln16_fu_140_p1);
    sensitive << ( i_0_reg_106 );

    SC_METHOD(thread_shift_reg_address0);
    sensitive << ( icmp_ln17_fu_152_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );
    sensitive << ( zext_ln21_1_reg_207 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln21_fu_158_p1 );

    SC_METHOD(thread_shift_reg_ce0);
    sensitive << ( icmp_ln17_fu_152_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_shift_reg_d0);
    sensitive << ( x );
    sensitive << ( shift_reg_q0 );
    sensitive << ( icmp_ln17_fu_152_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_shift_reg_we0);
    sensitive << ( icmp_ln17_fu_152_p2 );
    sensitive << ( icmp_ln17_reg_198 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_fu_144_p3);
    sensitive << ( i_0_reg_106 );

    SC_METHOD(thread_y);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );
    sensitive << ( acc_0_reg_93 );

    SC_METHOD(thread_y_ap_vld);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );

    SC_METHOD(thread_zext_ln21_1_fu_163_p1);
    sensitive << ( sext_ln16_fu_140_p1 );

    SC_METHOD(thread_zext_ln21_fu_158_p1);
    sensitive << ( grp_fu_127_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_144_p3 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
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
    sc_trace(mVcdFile, shift_reg_d0, "shift_reg_d0");
    sc_trace(mVcdFile, shift_reg_q0, "shift_reg_q0");
    sc_trace(mVcdFile, c1_address0, "c1_address0");
    sc_trace(mVcdFile, c1_ce0, "c1_ce0");
    sc_trace(mVcdFile, c1_q0, "c1_q0");
    sc_trace(mVcdFile, mul_ln18_fu_134_p2, "mul_ln18_fu_134_p2");
    sc_trace(mVcdFile, mul_ln18_reg_190, "mul_ln18_reg_190");
    sc_trace(mVcdFile, icmp_ln17_fu_152_p2, "icmp_ln17_fu_152_p2");
    sc_trace(mVcdFile, icmp_ln17_reg_198, "icmp_ln17_reg_198");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_144_p3, "tmp_fu_144_p3");
    sc_trace(mVcdFile, zext_ln21_1_fu_163_p1, "zext_ln21_1_fu_163_p1");
    sc_trace(mVcdFile, zext_ln21_1_reg_207, "zext_ln21_1_reg_207");
    sc_trace(mVcdFile, acc_fu_179_p2, "acc_fu_179_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, grp_fu_127_p2, "grp_fu_127_p2");
    sc_trace(mVcdFile, acc_0_reg_93, "acc_0_reg_93");
    sc_trace(mVcdFile, ap_phi_mux_i_0_phi_fu_110_p4, "ap_phi_mux_i_0_phi_fu_110_p4");
    sc_trace(mVcdFile, i_0_reg_106, "i_0_reg_106");
    sc_trace(mVcdFile, ap_phi_mux_p_pn_phi_fu_121_p4, "ap_phi_mux_p_pn_phi_fu_121_p4");
    sc_trace(mVcdFile, p_pn_reg_118, "p_pn_reg_118");
    sc_trace(mVcdFile, mul_ln22_fu_172_p2, "mul_ln22_fu_172_p2");
    sc_trace(mVcdFile, zext_ln21_fu_158_p1, "zext_ln21_fu_158_p1");
    sc_trace(mVcdFile, grp_fu_127_p0, "grp_fu_127_p0");
    sc_trace(mVcdFile, mul_ln18_fu_134_p0, "mul_ln18_fu_134_p0");
    sc_trace(mVcdFile, sext_ln16_fu_140_p1, "sext_ln16_fu_140_p1");
    sc_trace(mVcdFile, mul_ln22_fu_172_p0, "mul_ln22_fu_172_p0");
    sc_trace(mVcdFile, mul_ln22_fu_172_p1, "mul_ln22_fu_172_p1");
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
    delete c1_U;
}

void fir::thread_ap_clk_no_reset_() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        acc_0_reg_93 = acc_fu_179_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        acc_0_reg_93 = ap_const_lv32_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_0_reg_106 = grp_fu_127_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_106 = ap_const_lv5_A;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln17_reg_198.read(), ap_const_lv1_0))) {
        p_pn_reg_118 = mul_ln22_fu_172_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln17_fu_152_p2.read(), ap_const_lv1_1))) {
        p_pn_reg_118 = mul_ln18_reg_190.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_0))) {
        icmp_ln17_reg_198 = icmp_ln17_fu_152_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        mul_ln18_reg_190 = mul_ln18_fu_134_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(icmp_ln17_fu_152_p2.read(), ap_const_lv1_0))) {
        zext_ln21_1_reg_207 = zext_ln21_1_fu_163_p1.read();
    }
}

void fir::thread_acc_fu_179_p2() {
    acc_fu_179_p2 = (!ap_phi_mux_p_pn_phi_fu_121_p4.read().is_01() || !acc_0_reg_93.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_phi_mux_p_pn_phi_fu_121_p4.read()) + sc_biguint<32>(acc_0_reg_93.read()));
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

void fir::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_1))) {
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

void fir::thread_ap_phi_mux_i_0_phi_fu_110_p4() {
    ap_phi_mux_i_0_phi_fu_110_p4 = i_0_reg_106.read();
}

void fir::thread_ap_phi_mux_p_pn_phi_fu_121_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln17_reg_198.read(), ap_const_lv1_0))) {
        ap_phi_mux_p_pn_phi_fu_121_p4 = mul_ln22_fu_172_p2.read();
    } else {
        ap_phi_mux_p_pn_phi_fu_121_p4 = p_pn_reg_118.read();
    }
}

void fir::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void fir::thread_c1_address0() {
    c1_address0 =  (sc_lv<4>) (zext_ln21_1_fu_163_p1.read());
}

void fir::thread_c1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        c1_ce0 = ap_const_logic_1;
    } else {
        c1_ce0 = ap_const_logic_0;
    }
}

void fir::thread_grp_fu_127_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_fu_127_p0 = i_0_reg_106.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_fu_127_p0 = ap_phi_mux_i_0_phi_fu_110_p4.read();
    } else {
        grp_fu_127_p0 = "XXXXX";
    }
}

void fir::thread_grp_fu_127_p2() {
    grp_fu_127_p2 = (!grp_fu_127_p0.read().is_01() || !ap_const_lv5_1F.is_01())? sc_lv<5>(): (sc_bigint<5>(grp_fu_127_p0.read()) + sc_bigint<5>(ap_const_lv5_1F));
}

void fir::thread_icmp_ln17_fu_152_p2() {
    icmp_ln17_fu_152_p2 = (!i_0_reg_106.read().is_01() || !ap_const_lv5_0.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_106.read() == ap_const_lv5_0);
}

void fir::thread_mul_ln18_fu_134_p0() {
    mul_ln18_fu_134_p0 = x.read();
}

void fir::thread_mul_ln18_fu_134_p2() {
    mul_ln18_fu_134_p2 = (!mul_ln18_fu_134_p0.read().is_01() || !ap_const_lv32_35.is_01())? sc_lv<32>(): sc_bigint<32>(mul_ln18_fu_134_p0.read()) * sc_biguint<32>(ap_const_lv32_35);
}

void fir::thread_mul_ln22_fu_172_p0() {
    mul_ln22_fu_172_p0 = shift_reg_q0.read();
}

void fir::thread_mul_ln22_fu_172_p1() {
    mul_ln22_fu_172_p1 = c1_q0.read();
}

void fir::thread_mul_ln22_fu_172_p2() {
    mul_ln22_fu_172_p2 = (!mul_ln22_fu_172_p0.read().is_01() || !mul_ln22_fu_172_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(mul_ln22_fu_172_p0.read()) * sc_bigint<10>(mul_ln22_fu_172_p1.read());
}

void fir::thread_sext_ln16_fu_140_p1() {
    sext_ln16_fu_140_p1 = esl_sext<32,5>(i_0_reg_106.read());
}

void fir::thread_shift_reg_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        shift_reg_address0 =  (sc_lv<4>) (zext_ln21_1_reg_207.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln17_fu_152_p2.read(), ap_const_lv1_1))) {
        shift_reg_address0 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln17_fu_152_p2.read(), ap_const_lv1_0))) {
        shift_reg_address0 =  (sc_lv<4>) (zext_ln21_fu_158_p1.read());
    } else {
        shift_reg_address0 =  (sc_lv<4>) ("XXXX");
    }
}

void fir::thread_shift_reg_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(icmp_ln17_fu_152_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(icmp_ln17_fu_152_p2.read(), ap_const_lv1_1)))) {
        shift_reg_ce0 = ap_const_logic_1;
    } else {
        shift_reg_ce0 = ap_const_logic_0;
    }
}

void fir::thread_shift_reg_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        shift_reg_d0 = shift_reg_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln17_fu_152_p2.read(), ap_const_lv1_1))) {
        shift_reg_d0 = x.read();
    } else {
        shift_reg_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void fir::thread_shift_reg_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(icmp_ln17_fu_152_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln17_reg_198.read(), ap_const_lv1_0)))) {
        shift_reg_we0 = ap_const_logic_1;
    } else {
        shift_reg_we0 = ap_const_logic_0;
    }
}

void fir::thread_tmp_fu_144_p3() {
    tmp_fu_144_p3 = i_0_reg_106.read().range(4, 4);
}

void fir::thread_y() {
    y = acc_0_reg_93.read();
}

void fir::thread_y_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_1))) {
        y_ap_vld = ap_const_logic_1;
    } else {
        y_ap_vld = ap_const_logic_0;
    }
}

void fir::thread_zext_ln21_1_fu_163_p1() {
    zext_ln21_1_fu_163_p1 = esl_zext<64,32>(sext_ln16_fu_140_p1.read());
}

void fir::thread_zext_ln21_fu_158_p1() {
    zext_ln21_fu_158_p1 = esl_zext<64,5>(grp_fu_127_p2.read());
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_144_p3.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<3>) ("XXX");
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

