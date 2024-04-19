// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "matrix_vector.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic matrix_vector::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic matrix_vector::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> matrix_vector::ap_ST_fsm_state1 = "1";
const sc_lv<7> matrix_vector::ap_ST_fsm_state2 = "10";
const sc_lv<7> matrix_vector::ap_ST_fsm_state3 = "100";
const sc_lv<7> matrix_vector::ap_ST_fsm_state4 = "1000";
const sc_lv<7> matrix_vector::ap_ST_fsm_state5 = "10000";
const sc_lv<7> matrix_vector::ap_ST_fsm_state6 = "100000";
const sc_lv<7> matrix_vector::ap_ST_fsm_state7 = "1000000";
const sc_lv<32> matrix_vector::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> matrix_vector::ap_const_lv32_2 = "10";
const sc_lv<32> matrix_vector::ap_const_lv32_4 = "100";
const sc_lv<32> matrix_vector::ap_const_lv32_1 = "1";
const sc_lv<1> matrix_vector::ap_const_lv1_0 = "0";
const sc_lv<32> matrix_vector::ap_const_lv32_3 = "11";
const sc_lv<32> matrix_vector::ap_const_lv32_5 = "101";
const sc_lv<4> matrix_vector::ap_const_lv4_0 = "0000";
const sc_lv<32> matrix_vector::ap_const_lv32_6 = "110";
const sc_lv<64> matrix_vector::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<64> matrix_vector::ap_const_lv64_1 = "1";
const sc_lv<64> matrix_vector::ap_const_lv64_2 = "10";
const sc_lv<64> matrix_vector::ap_const_lv64_3 = "11";
const sc_lv<64> matrix_vector::ap_const_lv64_4 = "100";
const sc_lv<64> matrix_vector::ap_const_lv64_5 = "101";
const sc_lv<64> matrix_vector::ap_const_lv64_6 = "110";
const sc_lv<64> matrix_vector::ap_const_lv64_7 = "111";
const sc_lv<4> matrix_vector::ap_const_lv4_8 = "1000";
const sc_lv<4> matrix_vector::ap_const_lv4_1 = "1";
const sc_lv<3> matrix_vector::ap_const_lv3_0 = "000";
const sc_lv<7> matrix_vector::ap_const_lv7_1 = "1";
const sc_lv<57> matrix_vector::ap_const_lv57_0 = "000000000000000000000000000000000000000000000000000000000";
const sc_lv<7> matrix_vector::ap_const_lv7_2 = "10";
const sc_lv<7> matrix_vector::ap_const_lv7_3 = "11";
const sc_lv<7> matrix_vector::ap_const_lv7_4 = "100";
const sc_lv<7> matrix_vector::ap_const_lv7_5 = "101";
const sc_lv<7> matrix_vector::ap_const_lv7_6 = "110";
const sc_lv<7> matrix_vector::ap_const_lv7_7 = "111";
const sc_lv<1> matrix_vector::ap_const_lv1_1 = "1";
const bool matrix_vector::ap_const_boolean_1 = true;

matrix_vector::matrix_vector(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_M_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln9_1_fu_277_p1 );
    sensitive << ( tmp_2_fu_302_p3 );
    sensitive << ( tmp_4_fu_330_p3 );
    sensitive << ( tmp_6_fu_370_p3 );

    SC_METHOD(thread_M_address1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_1_fu_288_p3 );
    sensitive << ( tmp_3_fu_316_p3 );
    sensitive << ( tmp_5_fu_344_p3 );
    sensitive << ( tmp_7_fu_384_p3 );

    SC_METHOD(thread_M_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_M_ce1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_V_In_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_V_In_address1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_V_In_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_V_In_ce1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_V_Out_address0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( zext_ln9_fu_393_p1 );

    SC_METHOD(thread_V_Out_ce0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_V_Out_d0);
    sensitive << ( add_ln9_2_reg_497 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( add_ln9_5_fu_398_p2 );

    SC_METHOD(thread_V_Out_we0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_add_ln9_1_fu_353_p2);
    sensitive << ( grp_fu_241_p2 );
    sensitive << ( grp_fu_235_p2 );

    SC_METHOD(thread_add_ln9_2_fu_359_p2);
    sensitive << ( reg_253 );
    sensitive << ( add_ln9_1_fu_353_p2 );

    SC_METHOD(thread_add_ln9_5_fu_398_p2);
    sensitive << ( reg_253 );
    sensitive << ( add_ln9_4_reg_512 );

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

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_257_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_257_p2 );

    SC_METHOD(thread_grp_fu_235_p0);
    sensitive << ( M_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_grp_fu_235_p1);
    sensitive << ( V_In_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_grp_fu_235_p2);
    sensitive << ( grp_fu_235_p0 );
    sensitive << ( grp_fu_235_p1 );

    SC_METHOD(thread_grp_fu_241_p0);
    sensitive << ( M_q1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_grp_fu_241_p1);
    sensitive << ( V_In_q1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_grp_fu_241_p2);
    sensitive << ( grp_fu_241_p0 );
    sensitive << ( grp_fu_241_p1 );

    SC_METHOD(thread_grp_fu_247_p2);
    sensitive << ( grp_fu_241_p2 );
    sensitive << ( grp_fu_235_p2 );

    SC_METHOD(thread_i_fu_263_p2);
    sensitive << ( i_0_reg_223 );

    SC_METHOD(thread_icmp_ln7_fu_257_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_223 );

    SC_METHOD(thread_or_ln9_1_fu_297_p2);
    sensitive << ( tmp_reg_457 );

    SC_METHOD(thread_or_ln9_2_fu_311_p2);
    sensitive << ( tmp_reg_457 );

    SC_METHOD(thread_or_ln9_3_fu_325_p2);
    sensitive << ( tmp_reg_457 );

    SC_METHOD(thread_or_ln9_4_fu_339_p2);
    sensitive << ( tmp_reg_457 );

    SC_METHOD(thread_or_ln9_5_fu_365_p2);
    sensitive << ( tmp_reg_457 );

    SC_METHOD(thread_or_ln9_6_fu_379_p2);
    sensitive << ( tmp_reg_457 );

    SC_METHOD(thread_or_ln9_fu_282_p2);
    sensitive << ( tmp_fu_269_p3 );

    SC_METHOD(thread_tmp_1_fu_288_p3);
    sensitive << ( or_ln9_fu_282_p2 );

    SC_METHOD(thread_tmp_2_fu_302_p3);
    sensitive << ( or_ln9_1_fu_297_p2 );

    SC_METHOD(thread_tmp_3_fu_316_p3);
    sensitive << ( or_ln9_2_fu_311_p2 );

    SC_METHOD(thread_tmp_4_fu_330_p3);
    sensitive << ( or_ln9_3_fu_325_p2 );

    SC_METHOD(thread_tmp_5_fu_344_p3);
    sensitive << ( or_ln9_4_fu_339_p2 );

    SC_METHOD(thread_tmp_6_fu_370_p3);
    sensitive << ( or_ln9_5_fu_365_p2 );

    SC_METHOD(thread_tmp_7_fu_384_p3);
    sensitive << ( or_ln9_6_fu_379_p2 );

    SC_METHOD(thread_tmp_fu_269_p3);
    sensitive << ( i_0_reg_223 );

    SC_METHOD(thread_zext_ln9_1_fu_277_p1);
    sensitive << ( tmp_fu_269_p3 );

    SC_METHOD(thread_zext_ln9_fu_393_p1);
    sensitive << ( i_0_reg_223 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_257_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "matrix_vector_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, M_address0, "(port)M_address0");
    sc_trace(mVcdFile, M_ce0, "(port)M_ce0");
    sc_trace(mVcdFile, M_q0, "(port)M_q0");
    sc_trace(mVcdFile, M_address1, "(port)M_address1");
    sc_trace(mVcdFile, M_ce1, "(port)M_ce1");
    sc_trace(mVcdFile, M_q1, "(port)M_q1");
    sc_trace(mVcdFile, V_In_address0, "(port)V_In_address0");
    sc_trace(mVcdFile, V_In_ce0, "(port)V_In_ce0");
    sc_trace(mVcdFile, V_In_q0, "(port)V_In_q0");
    sc_trace(mVcdFile, V_In_address1, "(port)V_In_address1");
    sc_trace(mVcdFile, V_In_ce1, "(port)V_In_ce1");
    sc_trace(mVcdFile, V_In_q1, "(port)V_In_q1");
    sc_trace(mVcdFile, V_Out_address0, "(port)V_Out_address0");
    sc_trace(mVcdFile, V_Out_ce0, "(port)V_Out_ce0");
    sc_trace(mVcdFile, V_Out_we0, "(port)V_Out_we0");
    sc_trace(mVcdFile, V_Out_d0, "(port)V_Out_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_fu_247_p2, "grp_fu_247_p2");
    sc_trace(mVcdFile, reg_253, "reg_253");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, i_fu_263_p2, "i_fu_263_p2");
    sc_trace(mVcdFile, i_reg_452, "i_reg_452");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_269_p3, "tmp_fu_269_p3");
    sc_trace(mVcdFile, tmp_reg_457, "tmp_reg_457");
    sc_trace(mVcdFile, icmp_ln7_fu_257_p2, "icmp_ln7_fu_257_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, add_ln9_2_fu_359_p2, "add_ln9_2_fu_359_p2");
    sc_trace(mVcdFile, add_ln9_2_reg_497, "add_ln9_2_reg_497");
    sc_trace(mVcdFile, add_ln9_4_reg_512, "add_ln9_4_reg_512");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, i_0_reg_223, "i_0_reg_223");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, zext_ln9_1_fu_277_p1, "zext_ln9_1_fu_277_p1");
    sc_trace(mVcdFile, tmp_1_fu_288_p3, "tmp_1_fu_288_p3");
    sc_trace(mVcdFile, tmp_2_fu_302_p3, "tmp_2_fu_302_p3");
    sc_trace(mVcdFile, tmp_3_fu_316_p3, "tmp_3_fu_316_p3");
    sc_trace(mVcdFile, tmp_4_fu_330_p3, "tmp_4_fu_330_p3");
    sc_trace(mVcdFile, tmp_5_fu_344_p3, "tmp_5_fu_344_p3");
    sc_trace(mVcdFile, tmp_6_fu_370_p3, "tmp_6_fu_370_p3");
    sc_trace(mVcdFile, tmp_7_fu_384_p3, "tmp_7_fu_384_p3");
    sc_trace(mVcdFile, zext_ln9_fu_393_p1, "zext_ln9_fu_393_p1");
    sc_trace(mVcdFile, grp_fu_235_p0, "grp_fu_235_p0");
    sc_trace(mVcdFile, grp_fu_235_p1, "grp_fu_235_p1");
    sc_trace(mVcdFile, grp_fu_241_p0, "grp_fu_241_p0");
    sc_trace(mVcdFile, grp_fu_241_p1, "grp_fu_241_p1");
    sc_trace(mVcdFile, grp_fu_241_p2, "grp_fu_241_p2");
    sc_trace(mVcdFile, grp_fu_235_p2, "grp_fu_235_p2");
    sc_trace(mVcdFile, or_ln9_fu_282_p2, "or_ln9_fu_282_p2");
    sc_trace(mVcdFile, or_ln9_1_fu_297_p2, "or_ln9_1_fu_297_p2");
    sc_trace(mVcdFile, or_ln9_2_fu_311_p2, "or_ln9_2_fu_311_p2");
    sc_trace(mVcdFile, or_ln9_3_fu_325_p2, "or_ln9_3_fu_325_p2");
    sc_trace(mVcdFile, or_ln9_4_fu_339_p2, "or_ln9_4_fu_339_p2");
    sc_trace(mVcdFile, add_ln9_1_fu_353_p2, "add_ln9_1_fu_353_p2");
    sc_trace(mVcdFile, or_ln9_5_fu_365_p2, "or_ln9_5_fu_365_p2");
    sc_trace(mVcdFile, or_ln9_6_fu_379_p2, "or_ln9_6_fu_379_p2");
    sc_trace(mVcdFile, add_ln9_5_fu_398_p2, "add_ln9_5_fu_398_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("matrix_vector.hdltvin.dat");
    mHdltvoutHandle.open("matrix_vector.hdltvout.dat");
}

matrix_vector::~matrix_vector() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void matrix_vector::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        i_0_reg_223 = i_reg_452.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_223 = ap_const_lv4_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        add_ln9_2_reg_497 = add_ln9_2_fu_359_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        add_ln9_4_reg_512 = grp_fu_247_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_452 = i_fu_263_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        reg_253 = grp_fu_247_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln7_fu_257_p2.read(), ap_const_lv1_0))) {
        tmp_reg_457 = tmp_fu_269_p3.read();
    }
}

void matrix_vector::thread_M_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        M_address0 =  (sc_lv<6>) (tmp_6_fu_370_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        M_address0 =  (sc_lv<6>) (tmp_4_fu_330_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        M_address0 =  (sc_lv<6>) (tmp_2_fu_302_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        M_address0 =  (sc_lv<6>) (zext_ln9_1_fu_277_p1.read());
    } else {
        M_address0 = "XXXXXX";
    }
}

void matrix_vector::thread_M_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        M_address1 =  (sc_lv<6>) (tmp_7_fu_384_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        M_address1 =  (sc_lv<6>) (tmp_5_fu_344_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        M_address1 =  (sc_lv<6>) (tmp_3_fu_316_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        M_address1 =  (sc_lv<6>) (tmp_1_fu_288_p3.read());
    } else {
        M_address1 = "XXXXXX";
    }
}

void matrix_vector::thread_M_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        M_ce0 = ap_const_logic_1;
    } else {
        M_ce0 = ap_const_logic_0;
    }
}

void matrix_vector::thread_M_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        M_ce1 = ap_const_logic_1;
    } else {
        M_ce1 = ap_const_logic_0;
    }
}

void matrix_vector::thread_V_In_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        V_In_address0 =  (sc_lv<3>) (ap_const_lv64_6);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        V_In_address0 =  (sc_lv<3>) (ap_const_lv64_4);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        V_In_address0 =  (sc_lv<3>) (ap_const_lv64_2);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        V_In_address0 =  (sc_lv<3>) (ap_const_lv64_0);
    } else {
        V_In_address0 =  (sc_lv<3>) ("XXX");
    }
}

void matrix_vector::thread_V_In_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        V_In_address1 =  (sc_lv<3>) (ap_const_lv64_7);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        V_In_address1 =  (sc_lv<3>) (ap_const_lv64_5);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        V_In_address1 =  (sc_lv<3>) (ap_const_lv64_3);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        V_In_address1 =  (sc_lv<3>) (ap_const_lv64_1);
    } else {
        V_In_address1 =  (sc_lv<3>) ("XXX");
    }
}

void matrix_vector::thread_V_In_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        V_In_ce0 = ap_const_logic_1;
    } else {
        V_In_ce0 = ap_const_logic_0;
    }
}

void matrix_vector::thread_V_In_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        V_In_ce1 = ap_const_logic_1;
    } else {
        V_In_ce1 = ap_const_logic_0;
    }
}

void matrix_vector::thread_V_Out_address0() {
    V_Out_address0 =  (sc_lv<3>) (zext_ln9_fu_393_p1.read());
}

void matrix_vector::thread_V_Out_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        V_Out_ce0 = ap_const_logic_1;
    } else {
        V_Out_ce0 = ap_const_logic_0;
    }
}

void matrix_vector::thread_V_Out_d0() {
    V_Out_d0 = (!add_ln9_2_reg_497.read().is_01() || !add_ln9_5_fu_398_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln9_2_reg_497.read()) + sc_biguint<32>(add_ln9_5_fu_398_p2.read()));
}

void matrix_vector::thread_V_Out_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        V_Out_we0 = ap_const_logic_1;
    } else {
        V_Out_we0 = ap_const_logic_0;
    }
}

void matrix_vector::thread_add_ln9_1_fu_353_p2() {
    add_ln9_1_fu_353_p2 = (!grp_fu_241_p2.read().is_01() || !grp_fu_235_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(grp_fu_241_p2.read()) + sc_biguint<32>(grp_fu_235_p2.read()));
}

void matrix_vector::thread_add_ln9_2_fu_359_p2() {
    add_ln9_2_fu_359_p2 = (!reg_253.read().is_01() || !add_ln9_1_fu_353_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(reg_253.read()) + sc_biguint<32>(add_ln9_1_fu_353_p2.read()));
}

void matrix_vector::thread_add_ln9_5_fu_398_p2() {
    add_ln9_5_fu_398_p2 = (!reg_253.read().is_01() || !add_ln9_4_reg_512.read().is_01())? sc_lv<32>(): (sc_biguint<32>(reg_253.read()) + sc_biguint<32>(add_ln9_4_reg_512.read()));
}

void matrix_vector::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void matrix_vector::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void matrix_vector::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void matrix_vector::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void matrix_vector::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void matrix_vector::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void matrix_vector::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void matrix_vector::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_257_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void matrix_vector::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void matrix_vector::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_257_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void matrix_vector::thread_grp_fu_235_p0() {
    grp_fu_235_p0 = M_q0.read();
}

void matrix_vector::thread_grp_fu_235_p1() {
    grp_fu_235_p1 = V_In_q0.read();
}

void matrix_vector::thread_grp_fu_235_p2() {
    grp_fu_235_p2 = (!grp_fu_235_p0.read().is_01() || !grp_fu_235_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(grp_fu_235_p0.read()) * sc_bigint<32>(grp_fu_235_p1.read());
}

void matrix_vector::thread_grp_fu_241_p0() {
    grp_fu_241_p0 = M_q1.read();
}

void matrix_vector::thread_grp_fu_241_p1() {
    grp_fu_241_p1 = V_In_q1.read();
}

void matrix_vector::thread_grp_fu_241_p2() {
    grp_fu_241_p2 = (!grp_fu_241_p0.read().is_01() || !grp_fu_241_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(grp_fu_241_p0.read()) * sc_bigint<32>(grp_fu_241_p1.read());
}

void matrix_vector::thread_grp_fu_247_p2() {
    grp_fu_247_p2 = (!grp_fu_241_p2.read().is_01() || !grp_fu_235_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(grp_fu_241_p2.read()) + sc_biguint<32>(grp_fu_235_p2.read()));
}

void matrix_vector::thread_i_fu_263_p2() {
    i_fu_263_p2 = (!i_0_reg_223.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_0_reg_223.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void matrix_vector::thread_icmp_ln7_fu_257_p2() {
    icmp_ln7_fu_257_p2 = (!i_0_reg_223.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_223.read() == ap_const_lv4_8);
}

void matrix_vector::thread_or_ln9_1_fu_297_p2() {
    or_ln9_1_fu_297_p2 = (tmp_reg_457.read() | ap_const_lv7_2);
}

void matrix_vector::thread_or_ln9_2_fu_311_p2() {
    or_ln9_2_fu_311_p2 = (tmp_reg_457.read() | ap_const_lv7_3);
}

void matrix_vector::thread_or_ln9_3_fu_325_p2() {
    or_ln9_3_fu_325_p2 = (tmp_reg_457.read() | ap_const_lv7_4);
}

void matrix_vector::thread_or_ln9_4_fu_339_p2() {
    or_ln9_4_fu_339_p2 = (tmp_reg_457.read() | ap_const_lv7_5);
}

void matrix_vector::thread_or_ln9_5_fu_365_p2() {
    or_ln9_5_fu_365_p2 = (tmp_reg_457.read() | ap_const_lv7_6);
}

void matrix_vector::thread_or_ln9_6_fu_379_p2() {
    or_ln9_6_fu_379_p2 = (tmp_reg_457.read() | ap_const_lv7_7);
}

void matrix_vector::thread_or_ln9_fu_282_p2() {
    or_ln9_fu_282_p2 = (tmp_fu_269_p3.read() | ap_const_lv7_1);
}

void matrix_vector::thread_tmp_1_fu_288_p3() {
    tmp_1_fu_288_p3 = esl_concat<57,7>(ap_const_lv57_0, or_ln9_fu_282_p2.read());
}

void matrix_vector::thread_tmp_2_fu_302_p3() {
    tmp_2_fu_302_p3 = esl_concat<57,7>(ap_const_lv57_0, or_ln9_1_fu_297_p2.read());
}

void matrix_vector::thread_tmp_3_fu_316_p3() {
    tmp_3_fu_316_p3 = esl_concat<57,7>(ap_const_lv57_0, or_ln9_2_fu_311_p2.read());
}

void matrix_vector::thread_tmp_4_fu_330_p3() {
    tmp_4_fu_330_p3 = esl_concat<57,7>(ap_const_lv57_0, or_ln9_3_fu_325_p2.read());
}

void matrix_vector::thread_tmp_5_fu_344_p3() {
    tmp_5_fu_344_p3 = esl_concat<57,7>(ap_const_lv57_0, or_ln9_4_fu_339_p2.read());
}

void matrix_vector::thread_tmp_6_fu_370_p3() {
    tmp_6_fu_370_p3 = esl_concat<57,7>(ap_const_lv57_0, or_ln9_5_fu_365_p2.read());
}

void matrix_vector::thread_tmp_7_fu_384_p3() {
    tmp_7_fu_384_p3 = esl_concat<57,7>(ap_const_lv57_0, or_ln9_6_fu_379_p2.read());
}

void matrix_vector::thread_tmp_fu_269_p3() {
    tmp_fu_269_p3 = esl_concat<4,3>(i_0_reg_223.read(), ap_const_lv3_0);
}

void matrix_vector::thread_zext_ln9_1_fu_277_p1() {
    zext_ln9_1_fu_277_p1 = esl_zext<64,7>(tmp_fu_269_p3.read());
}

void matrix_vector::thread_zext_ln9_fu_393_p1() {
    zext_ln9_fu_393_p1 = esl_zext<64,4>(i_0_reg_223.read());
}

void matrix_vector::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln7_fu_257_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<7>) ("XXXXXXX");
            break;
    }
}

void matrix_vector::thread_hdltv_gen() {
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
        mHdltvoutHandle << " , " <<  " \"M_address0\" :  \"" << M_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"M_ce0\" :  \"" << M_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"M_q0\" :  \"" << M_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"M_address1\" :  \"" << M_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"M_ce1\" :  \"" << M_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"M_q1\" :  \"" << M_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"V_In_address0\" :  \"" << V_In_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"V_In_ce0\" :  \"" << V_In_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"V_In_q0\" :  \"" << V_In_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"V_In_address1\" :  \"" << V_In_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"V_In_ce1\" :  \"" << V_In_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"V_In_q1\" :  \"" << V_In_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"V_Out_address0\" :  \"" << V_Out_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"V_Out_ce0\" :  \"" << V_Out_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"V_Out_we0\" :  \"" << V_Out_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"V_Out_d0\" :  \"" << V_Out_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

