-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity cordic_cordic_phase_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of cordic_cordic_phase_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111010010010000111111011011", 
    1 => "00111110111011010110001100111000", 
    2 => "00111110011110101101101110110000", 
    3 => "00111101111111101010110111010101", 
    4 => "00111101011111111010101011011110", 
    5 => "00111100111111111110101010101110", 
    6 => "00111100011111111111101010101011", 
    7 => "00111011111111111111111010101011", 
    8 => "00111011011111111111111110101011", 
    9 => "00111010111111111111111111101011", 
    10 => "00111010011111111111111111111011", 
    11 => "00111001111111111111111111111111", 
    12 => "00111001100000000000000000000000", 
    13 => "00111001000000000000000000000000", 
    14 => "00111000100000000000000000000000", 
    15 => "00111000000000000000000000000000", 
    16 => "00110111100000000000000000000000", 
    17 => "00110111000000000000000000000000", 
    18 => "00110110100000000000000000000000", 
    19 => "00110110000000000000000000000000", 
    20 => "00110101100000000000000000000000", 
    21 => "00110101000000000000000000000000", 
    22 => "00110100100000000000000000000000", 
    23 => "00110100000000000000000000000000", 
    24 => "00110011100000000000000000000000", 
    25 => "00110011000000000000000000000000", 
    26 => "00110010100000000000000000000000", 
    27 => "00110010000000000000000000000000", 
    28 => "00110001100000000000000000000000", 
    29 => "00110001000000000000000000000000", 
    30 => "00110000100000000000000000000000", 
    31 => "00110000000000000000000000000000", 
    32 => "00101111100000000000000000000000", 
    33 => "00101111000000000000000000000000", 
    34 => "00101110100000000000000000000000", 
    35 => "00101110000000000000000000000000", 
    36 => "00101101100000000000000000000000", 
    37 => "00101101000000000000000000000000", 
    38 => "00101100100000000000000000000000", 
    39 => "00101100000000000000000000000000", 
    40 => "00101011100000000000000000000000", 
    41 => "00101011000000000000000000000000", 
    42 => "00101010100000000000000000000000", 
    43 => "00101010000000000000000000000000", 
    44 => "00101001100000000000000000000000", 
    45 => "00101001000000000000000000000000", 
    46 => "00101000011111111111111111111010", 
    47 => "00101000000000000000000000000011", 
    48 => "00100111011111111111111111101111", 
    49 => "00100111000000000000000000001111", 
    50 => "00100110100000000000000000001111", 
    51 => "00100110000000000000000000001111", 
    52 => "00100101011111111111111010100100", 
    53 => "00100100111111111111111010100100", 
    54 => "00100100011111111111111010100100", 
    55 => "00100100000000000000010100111001", 
    56 => "00100011100000000000010100111001", 
    57 => "00100011000000000000010100111001", 
    58 => "00100010100000000000010100111001", 
    59 => "00100001111111110100110110001101", 
    60 => "00100001100000000110001110101100", 
    61 => "00100000111111011101001111000011", 
    62 => "00100000100000011101110101110110", 
    63 => "00100000000000011101110101110110" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity cordic_cordic_phase is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of cordic_cordic_phase is
    component cordic_cordic_phase_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    cordic_cordic_phase_rom_U :  component cordic_cordic_phase_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


