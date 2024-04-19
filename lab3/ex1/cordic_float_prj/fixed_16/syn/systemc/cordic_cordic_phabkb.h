// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __cordic_cordic_phabkb_H__
#define __cordic_cordic_phabkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cordic_cordic_phabkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 14;
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


   SC_CTOR(cordic_cordic_phabkb_ram) {
        ram[0] = "0b11001001000011";
        ram[1] = "0b01110110101100";
        ram[2] = "0b00111110101101";
        ram[3] = "0b00011111110101";
        ram[4] = "0b00001111111110";
        ram[5] = "0b00000111111111";
        ram[6] = "0b00000011111111";
        ram[7] = "0b00000001111111";
        ram[8] = "0b00000000111111";
        ram[9] = "0b00000000011111";
        ram[10] = "0b00000000001111";
        ram[11] = "0b00000000000111";
        ram[12] = "0b00000000000011";
        ram[13] = "0b00000000000001";
        for (unsigned i = 14; i < 64 ; i = i + 1) {
            ram[i] = "0b00000000000000";
        }


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


SC_MODULE(cordic_cordic_phabkb) {


static const unsigned DataWidth = 14;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cordic_cordic_phabkb_ram* meminst;


SC_CTOR(cordic_cordic_phabkb) {
meminst = new cordic_cordic_phabkb_ram("cordic_cordic_phabkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~cordic_cordic_phabkb() {
    delete meminst;
}


};//endmodule
#endif
