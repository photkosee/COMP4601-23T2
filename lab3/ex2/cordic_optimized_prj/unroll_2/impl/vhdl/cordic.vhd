-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cordic is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    theta_V : IN STD_LOGIC_VECTOR (11 downto 0);
    s_V : OUT STD_LOGIC_VECTOR (11 downto 0);
    s_V_ap_vld : OUT STD_LOGIC;
    c_V : OUT STD_LOGIC_VECTOR (11 downto 0);
    c_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of cordic is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "cordic,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.137000,HLS_SYN_LAT=33,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=100,HLS_SYN_LUT=502,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv12_26D : STD_LOGIC_VECTOR (11 downto 0) := "001001101101";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal cordic_phase_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal cordic_phase_V_ce0 : STD_LOGIC;
    signal cordic_phase_V_q0 : STD_LOGIC_VECTOR (9 downto 0);
    signal cordic_phase_V_address1 : STD_LOGIC_VECTOR (5 downto 0);
    signal cordic_phase_V_ce1 : STD_LOGIC;
    signal cordic_phase_V_q1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_fu_156_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_342 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln17_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln1496_fu_193_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln1496_reg_352 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln1496_1_fu_201_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln1496_1_reg_359 : STD_LOGIC_VECTOR (11 downto 0);
    signal or_ln17_fu_213_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln17_reg_366 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln17_fu_224_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln17_reg_376 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln1496_3_fu_310_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal select_ln1496_4_fu_318_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln1496_5_fu_326_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal theta_V_buf_0_0_reg_89 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Val2_2_0_reg_99 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Val2_0_reg_111 : STD_LOGIC_VECTOR (11 downto 0);
    signal sh_assign_0_reg_123 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln30_fu_176_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln30_1_fu_219_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sh_assign_0_cast2_fu_134_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ashr_ln1333_1_fu_150_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ashr_ln1333_fu_144_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln703_3_fu_187_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln703_fu_170_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln703_2_fu_181_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln703_fu_164_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal empty_2_fu_209_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln1265_fu_230_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln703_3_fu_240_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln703_2_fu_234_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln17_fu_253_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln1496_2_fu_246_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal ashr_ln1333_3_fu_261_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ashr_ln1333_2_fu_256_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln1265_1_fu_284_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_1_fu_266_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln703_5_fu_299_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln703_4_fu_279_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln703_5_fu_294_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln703_4_fu_274_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln703_1_fu_304_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln703_1_fu_288_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component cordic_cordic_phabkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        address1 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;



begin
    cordic_phase_V_U : component cordic_cordic_phabkb
    generic map (
        DataWidth => 10,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => cordic_phase_V_address0,
        ce0 => cordic_phase_V_ce0,
        q0 => cordic_phase_V_q0,
        address1 => cordic_phase_V_address1,
        ce1 => cordic_phase_V_ce1,
        q1 => cordic_phase_V_q1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    p_Val2_0_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                p_Val2_0_reg_111 <= select_ln1496_4_fu_318_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_Val2_0_reg_111 <= ap_const_lv12_26D;
            end if; 
        end if;
    end process;

    p_Val2_2_0_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                p_Val2_2_0_reg_99 <= select_ln1496_3_fu_310_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_Val2_2_0_reg_99 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    sh_assign_0_reg_123_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                sh_assign_0_reg_123 <= add_ln17_reg_376;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                sh_assign_0_reg_123 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    theta_V_buf_0_0_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                theta_V_buf_0_0_reg_89 <= select_ln1496_5_fu_326_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                theta_V_buf_0_0_reg_89 <= theta_V;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln17_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                add_ln17_reg_376 <= add_ln17_fu_224_p2;
                    or_ln17_reg_366(4 downto 1) <= or_ln17_fu_213_p2(4 downto 1);
                select_ln1496_1_reg_359 <= select_ln1496_1_fu_201_p3;
                select_ln1496_reg_352 <= select_ln1496_fu_193_p3;
                tmp_reg_342 <= theta_V_buf_0_0_reg_89(11 downto 11);
            end if;
        end if;
    end process;
    or_ln17_reg_366(0) <= '1';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln17_fu_138_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln17_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln17_fu_224_p2 <= std_logic_vector(unsigned(ap_const_lv6_2) + unsigned(sh_assign_0_reg_123));
    add_ln703_1_fu_304_p2 <= std_logic_vector(unsigned(select_ln1496_2_fu_246_p3) + unsigned(zext_ln1265_1_fu_284_p1));
    add_ln703_2_fu_181_p2 <= std_logic_vector(unsigned(p_Val2_0_reg_111) + unsigned(ashr_ln1333_1_fu_150_p2));
    add_ln703_3_fu_240_p2 <= std_logic_vector(unsigned(theta_V_buf_0_0_reg_89) + unsigned(zext_ln1265_fu_230_p1));
    add_ln703_4_fu_279_p2 <= std_logic_vector(unsigned(select_ln1496_reg_352) + unsigned(ashr_ln1333_2_fu_256_p2));
    add_ln703_5_fu_294_p2 <= std_logic_vector(unsigned(select_ln1496_1_reg_359) + unsigned(ashr_ln1333_3_fu_261_p2));
    add_ln703_fu_170_p2 <= std_logic_vector(unsigned(p_Val2_2_0_reg_99) + unsigned(ashr_ln1333_fu_144_p2));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_138_p2)
    begin
        if (((icmp_ln17_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_138_p2)
    begin
        if (((icmp_ln17_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ashr_ln1333_1_fu_150_p2 <= std_logic_vector(shift_right(signed(p_Val2_2_0_reg_99),to_integer(unsigned('0' & sh_assign_0_cast2_fu_134_p1(12-1 downto 0)))));
    ashr_ln1333_2_fu_256_p2 <= std_logic_vector(shift_right(signed(select_ln1496_1_reg_359),to_integer(unsigned('0' & zext_ln17_fu_253_p1(12-1 downto 0)))));
    ashr_ln1333_3_fu_261_p2 <= std_logic_vector(shift_right(signed(select_ln1496_reg_352),to_integer(unsigned('0' & zext_ln17_fu_253_p1(12-1 downto 0)))));
    ashr_ln1333_fu_144_p2 <= std_logic_vector(shift_right(signed(p_Val2_0_reg_111),to_integer(unsigned('0' & sh_assign_0_cast2_fu_134_p1(12-1 downto 0)))));
    c_V <= p_Val2_0_reg_111;

    c_V_ap_vld_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_138_p2)
    begin
        if (((icmp_ln17_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            c_V_ap_vld <= ap_const_logic_1;
        else 
            c_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    cordic_phase_V_address0 <= zext_ln30_fu_176_p1(6 - 1 downto 0);
    cordic_phase_V_address1 <= zext_ln30_1_fu_219_p1(6 - 1 downto 0);

    cordic_phase_V_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            cordic_phase_V_ce0 <= ap_const_logic_1;
        else 
            cordic_phase_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    cordic_phase_V_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            cordic_phase_V_ce1 <= ap_const_logic_1;
        else 
            cordic_phase_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    empty_2_fu_209_p1 <= sh_assign_0_reg_123(5 - 1 downto 0);
    icmp_ln17_fu_138_p2 <= "1" when (sh_assign_0_reg_123 = ap_const_lv6_20) else "0";
    or_ln17_fu_213_p2 <= (empty_2_fu_209_p1 or ap_const_lv5_1);
    s_V <= p_Val2_2_0_reg_99;

    s_V_ap_vld_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_138_p2)
    begin
        if (((icmp_ln17_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            s_V_ap_vld <= ap_const_logic_1;
        else 
            s_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    select_ln1496_1_fu_201_p3 <= 
        add_ln703_2_fu_181_p2 when (tmp_fu_156_p3(0) = '1') else 
        sub_ln703_fu_164_p2;
    select_ln1496_2_fu_246_p3 <= 
        add_ln703_3_fu_240_p2 when (tmp_reg_342(0) = '1') else 
        sub_ln703_2_fu_234_p2;
    select_ln1496_3_fu_310_p3 <= 
        sub_ln703_5_fu_299_p2 when (tmp_1_fu_266_p3(0) = '1') else 
        add_ln703_4_fu_279_p2;
    select_ln1496_4_fu_318_p3 <= 
        add_ln703_5_fu_294_p2 when (tmp_1_fu_266_p3(0) = '1') else 
        sub_ln703_4_fu_274_p2;
    select_ln1496_5_fu_326_p3 <= 
        add_ln703_1_fu_304_p2 when (tmp_1_fu_266_p3(0) = '1') else 
        sub_ln703_1_fu_288_p2;
    select_ln1496_fu_193_p3 <= 
        sub_ln703_3_fu_187_p2 when (tmp_fu_156_p3(0) = '1') else 
        add_ln703_fu_170_p2;
    sh_assign_0_cast2_fu_134_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sh_assign_0_reg_123),12));
    sub_ln703_1_fu_288_p2 <= std_logic_vector(unsigned(select_ln1496_2_fu_246_p3) - unsigned(zext_ln1265_1_fu_284_p1));
    sub_ln703_2_fu_234_p2 <= std_logic_vector(unsigned(theta_V_buf_0_0_reg_89) - unsigned(zext_ln1265_fu_230_p1));
    sub_ln703_3_fu_187_p2 <= std_logic_vector(unsigned(p_Val2_2_0_reg_99) - unsigned(ashr_ln1333_fu_144_p2));
    sub_ln703_4_fu_274_p2 <= std_logic_vector(unsigned(select_ln1496_1_reg_359) - unsigned(ashr_ln1333_3_fu_261_p2));
    sub_ln703_5_fu_299_p2 <= std_logic_vector(unsigned(select_ln1496_reg_352) - unsigned(ashr_ln1333_2_fu_256_p2));
    sub_ln703_fu_164_p2 <= std_logic_vector(unsigned(p_Val2_0_reg_111) - unsigned(ashr_ln1333_1_fu_150_p2));
    tmp_1_fu_266_p3 <= select_ln1496_2_fu_246_p3(11 downto 11);
    tmp_fu_156_p3 <= theta_V_buf_0_0_reg_89(11 downto 11);
    zext_ln1265_1_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(cordic_phase_V_q1),12));
    zext_ln1265_fu_230_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(cordic_phase_V_q0),12));
    zext_ln17_fu_253_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln17_reg_366),12));
    zext_ln30_1_fu_219_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln17_fu_213_p2),64));
    zext_ln30_fu_176_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sh_assign_0_reg_123),64));
end behav;