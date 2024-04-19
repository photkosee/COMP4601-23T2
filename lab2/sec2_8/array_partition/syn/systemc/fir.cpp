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
const sc_lv<4> fir::ap_const_lv4_1 = "1";
const sc_lv<4> fir::ap_const_lv4_2 = "10";
const sc_lv<4> fir::ap_const_lv4_3 = "11";
const sc_lv<4> fir::ap_const_lv4_4 = "100";
const sc_lv<4> fir::ap_const_lv4_5 = "101";
const sc_lv<4> fir::ap_const_lv4_6 = "110";
const sc_lv<4> fir::ap_const_lv4_7 = "111";
const sc_lv<4> fir::ap_const_lv4_8 = "1000";
const sc_lv<4> fir::ap_const_lv4_9 = "1001";
const sc_lv<4> fir::ap_const_lv4_0 = "0000";
const sc_lv<1> fir::ap_const_lv1_1 = "1";
const sc_lv<32> fir::ap_const_lv32_4 = "100";
const sc_lv<5> fir::ap_const_lv5_1F = "11111";
const bool fir::ap_const_boolean_1 = true;

fir::fir(sc_module_name name) : sc_module(name), mVcdFile(0) {
    c1_U = new fir_c1("c1_U");
    c1_U->clk(ap_clk);
    c1_U->reset(ap_rst);
    c1_U->address0(c1_address0);
    c1_U->ce0(c1_ce0);
    c1_U->q0(c1_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_acc_fu_290_p2);
    sensitive << ( acc_0_reg_102 );
    sensitive << ( mul_ln25_fu_284_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_condition_212);
    sensitive << ( trunc_ln25_fu_270_p1 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_257_p3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_257_p3 );

    SC_METHOD(thread_c1_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln25_fu_265_p1 );

    SC_METHOD(thread_c1_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_i_fu_274_p2);
    sensitive << ( i_1_reg_115 );

    SC_METHOD(thread_mul_ln25_fu_284_p0);
    sensitive << ( c1_q0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_mul_ln25_fu_284_p2);
    sensitive << ( UnifiedRetVal_i_reg_126 );
    sensitive << ( mul_ln25_fu_284_p0 );

    SC_METHOD(thread_sext_ln24_fu_253_p1);
    sensitive << ( i_1_reg_115 );

    SC_METHOD(thread_tmp_fu_257_p3);
    sensitive << ( i_1_reg_115 );

    SC_METHOD(thread_trunc_ln25_fu_270_p1);
    sensitive << ( i_1_reg_115 );

    SC_METHOD(thread_y);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_257_p3 );
    sensitive << ( acc_0_reg_102 );

    SC_METHOD(thread_y_ap_vld);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_257_p3 );

    SC_METHOD(thread_zext_ln25_fu_265_p1);
    sensitive << ( sext_ln24_fu_253_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_257_p3 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    shift_reg_9 = "00000000000000000000000000000000";
    shift_reg_8 = "00000000000000000000000000000000";
    shift_reg_7 = "00000000000000000000000000000000";
    shift_reg_6 = "00000000000000000000000000000000";
    shift_reg_5 = "00000000000000000000000000000000";
    shift_reg_4 = "00000000000000000000000000000000";
    shift_reg_3 = "00000000000000000000000000000000";
    shift_reg_2 = "00000000000000000000000000000000";
    shift_reg_1 = "00000000000000000000000000000000";
    shift_reg_0 = "00000000000000000000000000000000";
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
    sc_trace(mVcdFile, shift_reg_9, "shift_reg_9");
    sc_trace(mVcdFile, shift_reg_8, "shift_reg_8");
    sc_trace(mVcdFile, shift_reg_7, "shift_reg_7");
    sc_trace(mVcdFile, shift_reg_6, "shift_reg_6");
    sc_trace(mVcdFile, shift_reg_5, "shift_reg_5");
    sc_trace(mVcdFile, shift_reg_4, "shift_reg_4");
    sc_trace(mVcdFile, shift_reg_3, "shift_reg_3");
    sc_trace(mVcdFile, shift_reg_2, "shift_reg_2");
    sc_trace(mVcdFile, shift_reg_1, "shift_reg_1");
    sc_trace(mVcdFile, shift_reg_0, "shift_reg_0");
    sc_trace(mVcdFile, c1_address0, "c1_address0");
    sc_trace(mVcdFile, c1_ce0, "c1_ce0");
    sc_trace(mVcdFile, c1_q0, "c1_q0");
    sc_trace(mVcdFile, shift_reg_9_load_reg_301, "shift_reg_9_load_reg_301");
    sc_trace(mVcdFile, shift_reg_8_load_reg_306, "shift_reg_8_load_reg_306");
    sc_trace(mVcdFile, shift_reg_7_load_reg_311, "shift_reg_7_load_reg_311");
    sc_trace(mVcdFile, shift_reg_6_load_reg_316, "shift_reg_6_load_reg_316");
    sc_trace(mVcdFile, shift_reg_5_load_reg_321, "shift_reg_5_load_reg_321");
    sc_trace(mVcdFile, shift_reg_4_load_reg_326, "shift_reg_4_load_reg_326");
    sc_trace(mVcdFile, shift_reg_3_load_reg_331, "shift_reg_3_load_reg_331");
    sc_trace(mVcdFile, shift_reg_2_load_reg_336, "shift_reg_2_load_reg_336");
    sc_trace(mVcdFile, shift_reg_1_load_reg_341, "shift_reg_1_load_reg_341");
    sc_trace(mVcdFile, shift_reg_0_load_reg_346, "shift_reg_0_load_reg_346");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_257_p3, "tmp_fu_257_p3");
    sc_trace(mVcdFile, i_fu_274_p2, "i_fu_274_p2");
    sc_trace(mVcdFile, i_reg_362, "i_reg_362");
    sc_trace(mVcdFile, acc_fu_290_p2, "acc_fu_290_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, acc_0_reg_102, "acc_0_reg_102");
    sc_trace(mVcdFile, i_1_reg_115, "i_1_reg_115");
    sc_trace(mVcdFile, UnifiedRetVal_i_reg_126, "UnifiedRetVal_i_reg_126");
    sc_trace(mVcdFile, trunc_ln25_fu_270_p1, "trunc_ln25_fu_270_p1");
    sc_trace(mVcdFile, zext_ln25_fu_265_p1, "zext_ln25_fu_265_p1");
    sc_trace(mVcdFile, sext_ln24_fu_253_p1, "sext_ln24_fu_253_p1");
    sc_trace(mVcdFile, mul_ln25_fu_284_p0, "mul_ln25_fu_284_p0");
    sc_trace(mVcdFile, mul_ln25_fu_284_p2, "mul_ln25_fu_284_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_condition_212, "ap_condition_212");
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
    delete c1_U;
}

void fir::thread_ap_clk_no_reset_() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_257_p3.read(), ap_const_lv1_0))) {
        if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_0)) {
            UnifiedRetVal_i_reg_126 = x.read();
        } else if (esl_seteq<1,1,1>(ap_condition_212.read(), ap_const_boolean_1)) {
            UnifiedRetVal_i_reg_126 = shift_reg_9_load_reg_301.read();
        } else if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_9)) {
            UnifiedRetVal_i_reg_126 = shift_reg_8_load_reg_306.read();
        } else if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_8)) {
            UnifiedRetVal_i_reg_126 = shift_reg_7_load_reg_311.read();
        } else if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_7)) {
            UnifiedRetVal_i_reg_126 = shift_reg_6_load_reg_316.read();
        } else if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_6)) {
            UnifiedRetVal_i_reg_126 = shift_reg_5_load_reg_321.read();
        } else if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_5)) {
            UnifiedRetVal_i_reg_126 = shift_reg_4_load_reg_326.read();
        } else if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_4)) {
            UnifiedRetVal_i_reg_126 = shift_reg_3_load_reg_331.read();
        } else if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_3)) {
            UnifiedRetVal_i_reg_126 = shift_reg_2_load_reg_336.read();
        } else if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_2)) {
            UnifiedRetVal_i_reg_126 = shift_reg_1_load_reg_341.read();
        } else if (esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_1)) {
            UnifiedRetVal_i_reg_126 = shift_reg_0_load_reg_346.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        acc_0_reg_102 = acc_fu_290_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        acc_0_reg_102 = ap_const_lv32_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_1_reg_115 = i_reg_362.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_1_reg_115 = ap_const_lv5_A;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_257_p3.read(), ap_const_lv1_0))) {
        i_reg_362 = i_fu_274_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        shift_reg_0 = x.read();
        shift_reg_0_load_reg_346 = shift_reg_0.read();
        shift_reg_1 = shift_reg_0.read();
        shift_reg_1_load_reg_341 = shift_reg_1.read();
        shift_reg_2 = shift_reg_1.read();
        shift_reg_2_load_reg_336 = shift_reg_2.read();
        shift_reg_3 = shift_reg_2.read();
        shift_reg_3_load_reg_331 = shift_reg_3.read();
        shift_reg_4 = shift_reg_3.read();
        shift_reg_4_load_reg_326 = shift_reg_4.read();
        shift_reg_5 = shift_reg_4.read();
        shift_reg_5_load_reg_321 = shift_reg_5.read();
        shift_reg_6 = shift_reg_5.read();
        shift_reg_6_load_reg_316 = shift_reg_6.read();
        shift_reg_7 = shift_reg_6.read();
        shift_reg_7_load_reg_311 = shift_reg_7.read();
        shift_reg_8 = shift_reg_7.read();
        shift_reg_8_load_reg_306 = shift_reg_8.read();
        shift_reg_9 = shift_reg_8.read();
        shift_reg_9_load_reg_301 = shift_reg_9.read();
    }
}

void fir::thread_acc_fu_290_p2() {
    acc_fu_290_p2 = (!mul_ln25_fu_284_p2.read().is_01() || !acc_0_reg_102.read().is_01())? sc_lv<32>(): (sc_biguint<32>(mul_ln25_fu_284_p2.read()) + sc_biguint<32>(acc_0_reg_102.read()));
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

void fir::thread_ap_condition_212() {
    ap_condition_212 = (!esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_0) && !esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_1) && !esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_2) && !esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_3) && !esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_4) && !esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_5) && !esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_6) && !esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_7) && !esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_8) && !esl_seteq<1,4,4>(trunc_ln25_fu_270_p1.read(), ap_const_lv4_9));
}

void fir::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_257_p3.read(), ap_const_lv1_1))) {
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
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_257_p3.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void fir::thread_c1_address0() {
    c1_address0 =  (sc_lv<4>) (zext_ln25_fu_265_p1.read());
}

void fir::thread_c1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        c1_ce0 = ap_const_logic_1;
    } else {
        c1_ce0 = ap_const_logic_0;
    }
}

void fir::thread_i_fu_274_p2() {
    i_fu_274_p2 = (!i_1_reg_115.read().is_01() || !ap_const_lv5_1F.is_01())? sc_lv<5>(): (sc_bigint<5>(i_1_reg_115.read()) + sc_bigint<5>(ap_const_lv5_1F));
}

void fir::thread_mul_ln25_fu_284_p0() {
    mul_ln25_fu_284_p0 = c1_q0.read();
}

void fir::thread_mul_ln25_fu_284_p2() {
    mul_ln25_fu_284_p2 = (!mul_ln25_fu_284_p0.read().is_01() || !UnifiedRetVal_i_reg_126.read().is_01())? sc_lv<32>(): sc_bigint<10>(mul_ln25_fu_284_p0.read()) * sc_bigint<32>(UnifiedRetVal_i_reg_126.read());
}

void fir::thread_sext_ln24_fu_253_p1() {
    sext_ln24_fu_253_p1 = esl_sext<32,5>(i_1_reg_115.read());
}

void fir::thread_tmp_fu_257_p3() {
    tmp_fu_257_p3 = i_1_reg_115.read().range(4, 4);
}

void fir::thread_trunc_ln25_fu_270_p1() {
    trunc_ln25_fu_270_p1 = i_1_reg_115.read().range(4-1, 0);
}

void fir::thread_y() {
    y = acc_0_reg_102.read();
}

void fir::thread_y_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_257_p3.read(), ap_const_lv1_1))) {
        y_ap_vld = ap_const_logic_1;
    } else {
        y_ap_vld = ap_const_logic_0;
    }
}

void fir::thread_zext_ln25_fu_265_p1() {
    zext_ln25_fu_265_p1 = esl_zext<64,32>(sext_ln24_fu_253_p1.read());
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_257_p3.read(), ap_const_lv1_1))) {
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

