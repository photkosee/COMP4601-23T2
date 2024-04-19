// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __cordic_cordic_phase_H__
#define __cordic_cordic_phase_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cordic_cordic_phase_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 64;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(cordic_cordic_phase_ram) {
        ram[0] = "0b00111111010010010000111111011011";
        ram[1] = "0b00111110111011010110001100111000";
        ram[2] = "0b00111110011110101101101110110000";
        ram[3] = "0b00111101111111101010110111010101";
        ram[4] = "0b00111101011111111010101011011110";
        ram[5] = "0b00111100111111111110101010101110";
        ram[6] = "0b00111100011111111111101010101011";
        ram[7] = "0b00111011111111111111111010101011";
        ram[8] = "0b00111011011111111111111110101011";
        ram[9] = "0b00111010111111111111111111101011";
        ram[10] = "0b00111010011111111111111111111011";
        ram[11] = "0b00111001111111111111111111111111";
        ram[12] = "0b00111001100000000000000000000000";
        ram[13] = "0b00111001000000000000000000000000";
        ram[14] = "0b00111000100000000000000000000000";
        ram[15] = "0b00111000000000000000000000000000";
        ram[16] = "0b00110111100000000000000000000000";
        ram[17] = "0b00110111000000000000000000000000";
        ram[18] = "0b00110110100000000000000000000000";
        ram[19] = "0b00110110000000000000000000000000";
        ram[20] = "0b00110101100000000000000000000000";
        ram[21] = "0b00110101000000000000000000000000";
        ram[22] = "0b00110100100000000000000000000000";
        ram[23] = "0b00110100000000000000000000000000";
        ram[24] = "0b00110011100000000000000000000000";
        ram[25] = "0b00110011000000000000000000000000";
        ram[26] = "0b00110010100000000000000000000000";
        ram[27] = "0b00110010000000000000000000000000";
        ram[28] = "0b00110001100000000000000000000000";
        ram[29] = "0b00110001000000000000000000000000";
        ram[30] = "0b00110000100000000000000000000000";
        ram[31] = "0b00110000000000000000000000000000";
        ram[32] = "0b00101111100000000000000000000000";
        ram[33] = "0b00101111000000000000000000000000";
        ram[34] = "0b00101110100000000000000000000000";
        ram[35] = "0b00101110000000000000000000000000";
        ram[36] = "0b00101101100000000000000000000000";
        ram[37] = "0b00101101000000000000000000000000";
        ram[38] = "0b00101100100000000000000000000000";
        ram[39] = "0b00101100000000000000000000000000";
        ram[40] = "0b00101011100000000000000000000000";
        ram[41] = "0b00101011000000000000000000000000";
        ram[42] = "0b00101010100000000000000000000000";
        ram[43] = "0b00101010000000000000000000000000";
        ram[44] = "0b00101001100000000000000000000000";
        ram[45] = "0b00101001000000000000000000000000";
        ram[46] = "0b00101000011111111111111111111010";
        ram[47] = "0b00101000000000000000000000000011";
        ram[48] = "0b00100111011111111111111111101111";
        ram[49] = "0b00100111000000000000000000001111";
        ram[50] = "0b00100110100000000000000000001111";
        ram[51] = "0b00100110000000000000000000001111";
        ram[52] = "0b00100101011111111111111010100100";
        ram[53] = "0b00100100111111111111111010100100";
        ram[54] = "0b00100100011111111111111010100100";
        ram[55] = "0b00100100000000000000010100111001";
        ram[56] = "0b00100011100000000000010100111001";
        ram[57] = "0b00100011000000000000010100111001";
        ram[58] = "0b00100010100000000000010100111001";
        ram[59] = "0b00100001111111110100110110001101";
        ram[60] = "0b00100001100000000110001110101100";
        ram[61] = "0b00100000111111011101001111000011";
        ram[62] = "0b00100000100000011101110101110110";
        ram[63] = "0b00100000000000011101110101110110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(cordic_cordic_phase) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cordic_cordic_phase_ram* meminst;


SC_CTOR(cordic_cordic_phase) {
meminst = new cordic_cordic_phase_ram("cordic_cordic_phase_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~cordic_cordic_phase() {
    delete meminst;
}


};//endmodule
#endif
