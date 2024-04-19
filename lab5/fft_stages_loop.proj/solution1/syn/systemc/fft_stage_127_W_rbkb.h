// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __fft_stage_127_W_rbkb_H__
#define __fft_stage_127_W_rbkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct fft_stage_127_W_rbkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
  static const unsigned AddressRange = 512;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(fft_stage_127_W_rbkb_ram) {
        ram[0] = "0b0100000000000";
        for (unsigned i = 1; i < 6 ; i = i + 1) {
            ram[i] = "0b0011111111111";
        }
        ram[6] = "0b0011111111110";
        ram[7] = "0b0011111111110";
        ram[8] = "0b0011111111101";
        ram[9] = "0b0011111111100";
        ram[10] = "0b0011111111100";
        ram[11] = "0b0011111111011";
        ram[12] = "0b0011111111010";
        ram[13] = "0b0011111111001";
        ram[14] = "0b0011111111000";
        ram[15] = "0b0011111110111";
        ram[16] = "0b0011111110110";
        ram[17] = "0b0011111110100";
        ram[18] = "0b0011111110011";
        ram[19] = "0b0011111110010";
        ram[20] = "0b0011111110000";
        ram[21] = "0b0011111101111";
        ram[22] = "0b0011111101101";
        ram[23] = "0b0011111101011";
        ram[24] = "0b0011111101001";
        ram[25] = "0b0011111100111";
        ram[26] = "0b0011111100101";
        ram[27] = "0b0011111100011";
        ram[28] = "0b0011111100001";
        ram[29] = "0b0011111011111";
        ram[30] = "0b0011111011101";
        ram[31] = "0b0011111011011";
        ram[32] = "0b0011111011000";
        ram[33] = "0b0011111010110";
        ram[34] = "0b0011111010011";
        ram[35] = "0b0011111010000";
        ram[36] = "0b0011111001110";
        ram[37] = "0b0011111001011";
        ram[38] = "0b0011111001000";
        ram[39] = "0b0011111000101";
        ram[40] = "0b0011111000010";
        ram[41] = "0b0011110111111";
        ram[42] = "0b0011110111100";
        ram[43] = "0b0011110111001";
        ram[44] = "0b0011110110101";
        ram[45] = "0b0011110110010";
        ram[46] = "0b0011110101110";
        ram[47] = "0b0011110101011";
        ram[48] = "0b0011110100111";
        ram[49] = "0b0011110100100";
        ram[50] = "0b0011110100000";
        ram[51] = "0b0011110011100";
        ram[52] = "0b0011110011000";
        ram[53] = "0b0011110010100";
        ram[54] = "0b0011110010000";
        ram[55] = "0b0011110001100";
        ram[56] = "0b0011110001000";
        ram[57] = "0b0011110000100";
        ram[58] = "0b0011101111111";
        ram[59] = "0b0011101111011";
        ram[60] = "0b0011101110110";
        ram[61] = "0b0011101110010";
        ram[62] = "0b0011101101101";
        ram[63] = "0b0011101101000";
        ram[64] = "0b0011101100100";
        ram[65] = "0b0011101011111";
        ram[66] = "0b0011101011010";
        ram[67] = "0b0011101010101";
        ram[68] = "0b0011101010000";
        ram[69] = "0b0011101001011";
        ram[70] = "0b0011101000101";
        ram[71] = "0b0011101000000";
        ram[72] = "0b0011100111011";
        ram[73] = "0b0011100110101";
        ram[74] = "0b0011100110000";
        ram[75] = "0b0011100101010";
        ram[76] = "0b0011100100101";
        ram[77] = "0b0011100011111";
        ram[78] = "0b0011100011001";
        ram[79] = "0b0011100010100";
        ram[80] = "0b0011100001110";
        ram[81] = "0b0011100001000";
        ram[82] = "0b0011100000010";
        ram[83] = "0b0011011111100";
        ram[84] = "0b0011011110101";
        ram[85] = "0b0011011101111";
        ram[86] = "0b0011011101001";
        ram[87] = "0b0011011100011";
        ram[88] = "0b0011011011100";
        ram[89] = "0b0011011010110";
        ram[90] = "0b0011011001111";
        ram[91] = "0b0011011001000";
        ram[92] = "0b0011011000010";
        ram[93] = "0b0011010111011";
        ram[94] = "0b0011010110100";
        ram[95] = "0b0011010101101";
        ram[96] = "0b0011010100110";
        ram[97] = "0b0011010011111";
        ram[98] = "0b0011010011000";
        ram[99] = "0b0011010010001";
        ram[100] = "0b0011010001010";
        ram[101] = "0b0011010000011";
        ram[102] = "0b0011001111011";
        ram[103] = "0b0011001110100";
        ram[104] = "0b0011001101100";
        ram[105] = "0b0011001100101";
        ram[106] = "0b0011001011101";
        ram[107] = "0b0011001010110";
        ram[108] = "0b0011001001110";
        ram[109] = "0b0011001000110";
        ram[110] = "0b0011000111110";
        ram[111] = "0b0011000110111";
        ram[112] = "0b0011000101111";
        ram[113] = "0b0011000100111";
        ram[114] = "0b0011000011111";
        ram[115] = "0b0011000010110";
        ram[116] = "0b0011000001110";
        ram[117] = "0b0011000000110";
        ram[118] = "0b0010111111110";
        ram[119] = "0b0010111110101";
        ram[120] = "0b0010111101101";
        ram[121] = "0b0010111100101";
        ram[122] = "0b0010111011100";
        ram[123] = "0b0010111010011";
        ram[124] = "0b0010111001011";
        ram[125] = "0b0010111000010";
        ram[126] = "0b0010110111001";
        ram[127] = "0b0010110110001";
        ram[128] = "0b0010110101000";
        ram[129] = "0b0010110011111";
        ram[130] = "0b0010110010110";
        ram[131] = "0b0010110001101";
        ram[132] = "0b0010110000100";
        ram[133] = "0b0010101111011";
        ram[134] = "0b0010101110001";
        ram[135] = "0b0010101101000";
        ram[136] = "0b0010101011111";
        ram[137] = "0b0010101010110";
        ram[138] = "0b0010101001100";
        ram[139] = "0b0010101000011";
        ram[140] = "0b0010100111001";
        ram[141] = "0b0010100110000";
        ram[142] = "0b0010100100110";
        ram[143] = "0b0010100011100";
        ram[144] = "0b0010100010011";
        ram[145] = "0b0010100001001";
        ram[146] = "0b0010011111111";
        ram[147] = "0b0010011110101";
        ram[148] = "0b0010011101011";
        ram[149] = "0b0010011100010";
        ram[150] = "0b0010011011000";
        ram[151] = "0b0010011001110";
        ram[152] = "0b0010011000011";
        ram[153] = "0b0010010111001";
        ram[154] = "0b0010010101111";
        ram[155] = "0b0010010100101";
        ram[156] = "0b0010010011011";
        ram[157] = "0b0010010010000";
        ram[158] = "0b0010010000110";
        ram[159] = "0b0010001111100";
        ram[160] = "0b0010001110001";
        ram[161] = "0b0010001100111";
        ram[162] = "0b0010001011100";
        ram[163] = "0b0010001010010";
        ram[164] = "0b0010001000111";
        ram[165] = "0b0010000111101";
        ram[166] = "0b0010000110010";
        ram[167] = "0b0010000100111";
        ram[168] = "0b0010000011100";
        ram[169] = "0b0010000010010";
        ram[170] = "0b0010000000111";
        ram[171] = "0b0001111111100";
        ram[172] = "0b0001111110001";
        ram[173] = "0b0001111100110";
        ram[174] = "0b0001111011011";
        ram[175] = "0b0001111010000";
        ram[176] = "0b0001111000101";
        ram[177] = "0b0001110111010";
        ram[178] = "0b0001110101111";
        ram[179] = "0b0001110100100";
        ram[180] = "0b0001110011000";
        ram[181] = "0b0001110001101";
        ram[182] = "0b0001110000010";
        ram[183] = "0b0001101110110";
        ram[184] = "0b0001101101011";
        ram[185] = "0b0001101100000";
        ram[186] = "0b0001101010100";
        ram[187] = "0b0001101001001";
        ram[188] = "0b0001100111101";
        ram[189] = "0b0001100110010";
        ram[190] = "0b0001100100110";
        ram[191] = "0b0001100011011";
        ram[192] = "0b0001100001111";
        ram[193] = "0b0001100000100";
        ram[194] = "0b0001011111000";
        ram[195] = "0b0001011101100";
        ram[196] = "0b0001011100001";
        ram[197] = "0b0001011010101";
        ram[198] = "0b0001011001001";
        ram[199] = "0b0001010111101";
        ram[200] = "0b0001010110001";
        ram[201] = "0b0001010100110";
        ram[202] = "0b0001010011010";
        ram[203] = "0b0001010001110";
        ram[204] = "0b0001010000010";
        ram[205] = "0b0001001110110";
        ram[206] = "0b0001001101010";
        ram[207] = "0b0001001011110";
        ram[208] = "0b0001001010010";
        ram[209] = "0b0001001000110";
        ram[210] = "0b0001000111010";
        ram[211] = "0b0001000101110";
        ram[212] = "0b0001000100010";
        ram[213] = "0b0001000010110";
        ram[214] = "0b0001000001001";
        ram[215] = "0b0000111111101";
        ram[216] = "0b0000111110001";
        ram[217] = "0b0000111100101";
        ram[218] = "0b0000111011001";
        ram[219] = "0b0000111001100";
        ram[220] = "0b0000111000000";
        ram[221] = "0b0000110110100";
        ram[222] = "0b0000110101000";
        ram[223] = "0b0000110011011";
        ram[224] = "0b0000110001111";
        ram[225] = "0b0000110000011";
        ram[226] = "0b0000101110110";
        ram[227] = "0b0000101101010";
        ram[228] = "0b0000101011110";
        ram[229] = "0b0000101010001";
        ram[230] = "0b0000101000101";
        ram[231] = "0b0000100111000";
        ram[232] = "0b0000100101100";
        ram[233] = "0b0000100100000";
        ram[234] = "0b0000100010011";
        ram[235] = "0b0000100000111";
        ram[236] = "0b0000011111010";
        ram[237] = "0b0000011101110";
        ram[238] = "0b0000011100001";
        ram[239] = "0b0000011010101";
        ram[240] = "0b0000011001000";
        ram[241] = "0b0000010111100";
        ram[242] = "0b0000010101111";
        ram[243] = "0b0000010100011";
        ram[244] = "0b0000010010110";
        ram[245] = "0b0000010001010";
        ram[246] = "0b0000001111101";
        ram[247] = "0b0000001110001";
        ram[248] = "0b0000001100100";
        ram[249] = "0b0000001010111";
        ram[250] = "0b0000001001011";
        ram[251] = "0b0000000111110";
        ram[252] = "0b0000000110010";
        ram[253] = "0b0000000100101";
        ram[254] = "0b0000000011001";
        ram[255] = "0b0000000001100";
        ram[256] = "0b0000000000000";
        ram[257] = "0b1111111110011";
        ram[258] = "0b1111111100110";
        ram[259] = "0b1111111011010";
        ram[260] = "0b1111111001101";
        ram[261] = "0b1111111000001";
        ram[262] = "0b1111110110100";
        ram[263] = "0b1111110101000";
        ram[264] = "0b1111110011011";
        ram[265] = "0b1111110001110";
        ram[266] = "0b1111110000010";
        ram[267] = "0b1111101110101";
        ram[268] = "0b1111101101001";
        ram[269] = "0b1111101011100";
        ram[270] = "0b1111101010000";
        ram[271] = "0b1111101000011";
        ram[272] = "0b1111100110111";
        ram[273] = "0b1111100101010";
        ram[274] = "0b1111100011110";
        ram[275] = "0b1111100010001";
        ram[276] = "0b1111100000101";
        ram[277] = "0b1111011111000";
        ram[278] = "0b1111011101100";
        ram[279] = "0b1111011011111";
        ram[280] = "0b1111011010011";
        ram[281] = "0b1111011000111";
        ram[282] = "0b1111010111010";
        ram[283] = "0b1111010101110";
        ram[284] = "0b1111010100001";
        ram[285] = "0b1111010010101";
        ram[286] = "0b1111010001001";
        ram[287] = "0b1111001111100";
        ram[288] = "0b1111001110000";
        ram[289] = "0b1111001100100";
        ram[290] = "0b1111001010111";
        ram[291] = "0b1111001001011";
        ram[292] = "0b1111000111111";
        ram[293] = "0b1111000110011";
        ram[294] = "0b1111000100110";
        ram[295] = "0b1111000011010";
        ram[296] = "0b1111000001110";
        ram[297] = "0b1111000000010";
        ram[298] = "0b1110111110110";
        ram[299] = "0b1110111101001";
        ram[300] = "0b1110111011101";
        ram[301] = "0b1110111010001";
        ram[302] = "0b1110111000101";
        ram[303] = "0b1110110111001";
        ram[304] = "0b1110110101101";
        ram[305] = "0b1110110100001";
        ram[306] = "0b1110110010101";
        ram[307] = "0b1110110001001";
        ram[308] = "0b1110101111101";
        ram[309] = "0b1110101110001";
        ram[310] = "0b1110101100101";
        ram[311] = "0b1110101011001";
        ram[312] = "0b1110101001110";
        ram[313] = "0b1110101000010";
        ram[314] = "0b1110100110110";
        ram[315] = "0b1110100101010";
        ram[316] = "0b1110100011110";
        ram[317] = "0b1110100010011";
        ram[318] = "0b1110100000111";
        ram[319] = "0b1110011111011";
        ram[320] = "0b1110011110000";
        ram[321] = "0b1110011100100";
        ram[322] = "0b1110011011001";
        ram[323] = "0b1110011001101";
        ram[324] = "0b1110011000010";
        ram[325] = "0b1110010110110";
        ram[326] = "0b1110010101011";
        ram[327] = "0b1110010011111";
        ram[328] = "0b1110010010100";
        ram[329] = "0b1110010001001";
        ram[330] = "0b1110001111101";
        ram[331] = "0b1110001110010";
        ram[332] = "0b1110001100111";
        ram[333] = "0b1110001011011";
        ram[334] = "0b1110001010000";
        ram[335] = "0b1110001000101";
        ram[336] = "0b1110000111010";
        ram[337] = "0b1110000101111";
        ram[338] = "0b1110000100100";
        ram[339] = "0b1110000011001";
        ram[340] = "0b1110000001110";
        ram[341] = "0b1110000000011";
        ram[342] = "0b1101111111000";
        ram[343] = "0b1101111101101";
        ram[344] = "0b1101111100011";
        ram[345] = "0b1101111011000";
        ram[346] = "0b1101111001101";
        ram[347] = "0b1101111000010";
        ram[348] = "0b1101110111000";
        ram[349] = "0b1101110101101";
        ram[350] = "0b1101110100011";
        ram[351] = "0b1101110011000";
        ram[352] = "0b1101110001110";
        ram[353] = "0b1101110000011";
        ram[354] = "0b1101101111001";
        ram[355] = "0b1101101101111";
        ram[356] = "0b1101101100100";
        ram[357] = "0b1101101011010";
        ram[358] = "0b1101101010000";
        ram[359] = "0b1101101000110";
        ram[360] = "0b1101100111100";
        ram[361] = "0b1101100110001";
        ram[362] = "0b1101100100111";
        ram[363] = "0b1101100011101";
        ram[364] = "0b1101100010100";
        ram[365] = "0b1101100001010";
        ram[366] = "0b1101100000000";
        ram[367] = "0b1101011110110";
        ram[368] = "0b1101011101100";
        ram[369] = "0b1101011100011";
        ram[370] = "0b1101011011001";
        ram[371] = "0b1101011001111";
        ram[372] = "0b1101011000110";
        ram[373] = "0b1101010111100";
        ram[374] = "0b1101010110011";
        ram[375] = "0b1101010101001";
        ram[376] = "0b1101010100000";
        ram[377] = "0b1101010010111";
        ram[378] = "0b1101010001110";
        ram[379] = "0b1101010000100";
        ram[380] = "0b1101001111011";
        ram[381] = "0b1101001110010";
        ram[382] = "0b1101001101001";
        ram[383] = "0b1101001100000";
        ram[384] = "0b1101001010111";
        ram[385] = "0b1101001001110";
        ram[386] = "0b1101001000110";
        ram[387] = "0b1101000111101";
        ram[388] = "0b1101000110100";
        ram[389] = "0b1101000101100";
        ram[390] = "0b1101000100011";
        ram[391] = "0b1101000011010";
        ram[392] = "0b1101000010010";
        ram[393] = "0b1101000001010";
        ram[394] = "0b1101000000001";
        ram[395] = "0b1100111111001";
        ram[396] = "0b1100111110001";
        ram[397] = "0b1100111101001";
        ram[398] = "0b1100111100000";
        ram[399] = "0b1100111011000";
        ram[400] = "0b1100111010000";
        ram[401] = "0b1100111001000";
        ram[402] = "0b1100111000001";
        ram[403] = "0b1100110111001";
        ram[404] = "0b1100110110001";
        ram[405] = "0b1100110101001";
        ram[406] = "0b1100110100010";
        ram[407] = "0b1100110011010";
        ram[408] = "0b1100110010011";
        ram[409] = "0b1100110001011";
        ram[410] = "0b1100110000100";
        ram[411] = "0b1100101111100";
        ram[412] = "0b1100101110101";
        ram[413] = "0b1100101101110";
        ram[414] = "0b1100101100111";
        ram[415] = "0b1100101100000";
        ram[416] = "0b1100101011001";
        ram[417] = "0b1100101010010";
        ram[418] = "0b1100101001011";
        ram[419] = "0b1100101000100";
        ram[420] = "0b1100100111101";
        ram[421] = "0b1100100110111";
        ram[422] = "0b1100100110000";
        ram[423] = "0b1100100101001";
        ram[424] = "0b1100100100011";
        ram[425] = "0b1100100011100";
        ram[426] = "0b1100100010110";
        ram[427] = "0b1100100010000";
        ram[428] = "0b1100100001010";
        ram[429] = "0b1100100000011";
        ram[430] = "0b1100011111101";
        ram[431] = "0b1100011110111";
        ram[432] = "0b1100011110001";
        ram[433] = "0b1100011101011";
        ram[434] = "0b1100011100110";
        ram[435] = "0b1100011100000";
        ram[436] = "0b1100011011010";
        ram[437] = "0b1100011010101";
        ram[438] = "0b1100011001111";
        ram[439] = "0b1100011001010";
        ram[440] = "0b1100011000100";
        ram[441] = "0b1100010111111";
        ram[442] = "0b1100010111010";
        ram[443] = "0b1100010110100";
        ram[444] = "0b1100010101111";
        ram[445] = "0b1100010101010";
        ram[446] = "0b1100010100101";
        ram[447] = "0b1100010100000";
        ram[448] = "0b1100010011011";
        ram[449] = "0b1100010010111";
        ram[450] = "0b1100010010010";
        ram[451] = "0b1100010001101";
        ram[452] = "0b1100010001001";
        ram[453] = "0b1100010000100";
        ram[454] = "0b1100010000000";
        ram[455] = "0b1100001111011";
        ram[456] = "0b1100001110111";
        ram[457] = "0b1100001110011";
        ram[458] = "0b1100001101111";
        ram[459] = "0b1100001101011";
        ram[460] = "0b1100001100111";
        ram[461] = "0b1100001100011";
        ram[462] = "0b1100001011111";
        ram[463] = "0b1100001011011";
        ram[464] = "0b1100001011000";
        ram[465] = "0b1100001010100";
        ram[466] = "0b1100001010001";
        ram[467] = "0b1100001001101";
        ram[468] = "0b1100001001010";
        ram[469] = "0b1100001000110";
        ram[470] = "0b1100001000011";
        ram[471] = "0b1100001000000";
        ram[472] = "0b1100000111101";
        ram[473] = "0b1100000111010";
        ram[474] = "0b1100000110111";
        ram[475] = "0b1100000110100";
        ram[476] = "0b1100000110001";
        ram[477] = "0b1100000101111";
        ram[478] = "0b1100000101100";
        ram[479] = "0b1100000101001";
        ram[480] = "0b1100000100111";
        ram[481] = "0b1100000100100";
        ram[482] = "0b1100000100010";
        ram[483] = "0b1100000100000";
        ram[484] = "0b1100000011110";
        ram[485] = "0b1100000011100";
        ram[486] = "0b1100000011010";
        ram[487] = "0b1100000011000";
        ram[488] = "0b1100000010110";
        ram[489] = "0b1100000010100";
        ram[490] = "0b1100000010010";
        ram[491] = "0b1100000010000";
        ram[492] = "0b1100000001111";
        ram[493] = "0b1100000001101";
        ram[494] = "0b1100000001100";
        ram[495] = "0b1100000001011";
        ram[496] = "0b1100000001001";
        ram[497] = "0b1100000001000";
        ram[498] = "0b1100000000111";
        ram[499] = "0b1100000000110";
        ram[500] = "0b1100000000101";
        ram[501] = "0b1100000000100";
        ram[502] = "0b1100000000011";
        ram[503] = "0b1100000000011";
        ram[504] = "0b1100000000010";
        ram[505] = "0b1100000000001";
        ram[506] = "0b1100000000001";
        for (unsigned i = 507; i < 512 ; i = i + 1) {
            ram[i] = "0b1100000000000";
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


SC_MODULE(fft_stage_127_W_rbkb) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 512;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


fft_stage_127_W_rbkb_ram* meminst;


SC_CTOR(fft_stage_127_W_rbkb) {
meminst = new fft_stage_127_W_rbkb_ram("fft_stage_127_W_rbkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~fft_stage_127_W_rbkb() {
    delete meminst;
}


};//endmodule
#endif
