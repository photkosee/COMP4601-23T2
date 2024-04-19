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
    "cordic,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.744500,HLS_SYN_LAT=33,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=84,HLS_SYN_LUT=295,HLS_VERSION=2020_1}";
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
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal cordic_phase_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal cordic_phase_V_ce0 : STD_LOGIC;
    signal cordic_phase_V_q0 : STD_LOGIC_VECTOR (9 downto 0);
    signal j_fu_130_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_reg_232 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_148_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_237 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln17_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal current_sin_V_2_fu_185_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal current_sin_V_2_reg_247 : STD_LOGIC_VECTOR (11 downto 0);
    signal current_cos_V_2_fu_193_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal current_cos_V_2_reg_252 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln1496_fu_217_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal p_Val2_4_reg_75 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Val2_2_reg_85 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Val2_s_reg_97 : STD_LOGIC_VECTOR (11 downto 0);
    signal ush_reg_109 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln30_fu_168_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln17_fu_120_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal r_V_1_fu_142_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal r_V_fu_136_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal current_sin_V_1_fu_179_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal current_sin_V_fu_162_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal current_cos_V_1_fu_173_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal current_cos_V_fu_156_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln1265_fu_201_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln703_fu_211_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln703_fu_205_p2 : STD_LOGIC_VECTOR (11 downto 0);
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
        q0 : OUT STD_LOGIC_VECTOR (9 downto 0) );
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
        q0 => cordic_phase_V_q0);





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


    p_Val2_2_reg_85_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                p_Val2_2_reg_85 <= current_sin_V_2_reg_247;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_Val2_2_reg_85 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    p_Val2_4_reg_75_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                p_Val2_4_reg_75 <= select_ln1496_fu_217_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_Val2_4_reg_75 <= theta_V;
            end if; 
        end if;
    end process;

    p_Val2_s_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                p_Val2_s_reg_97 <= current_cos_V_2_reg_252;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_Val2_s_reg_97 <= ap_const_lv12_26D;
            end if; 
        end if;
    end process;

    ush_reg_109_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                ush_reg_109 <= j_reg_232;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ush_reg_109 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln17_fu_124_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                current_cos_V_2_reg_252 <= current_cos_V_2_fu_193_p3;
                current_sin_V_2_reg_247 <= current_sin_V_2_fu_185_p3;
                tmp_reg_237 <= p_Val2_4_reg_75(11 downto 11);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                j_reg_232 <= j_fu_130_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln17_fu_124_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln17_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
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
    add_ln703_fu_211_p2 <= std_logic_vector(unsigned(zext_ln1265_fu_201_p1) + unsigned(p_Val2_4_reg_75));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_124_p2)
    begin
        if (((icmp_ln17_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_124_p2)
    begin
        if (((icmp_ln17_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_V <= p_Val2_s_reg_97;

    c_V_ap_vld_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_124_p2)
    begin
        if (((icmp_ln17_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            c_V_ap_vld <= ap_const_logic_1;
        else 
            c_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    cordic_phase_V_address0 <= zext_ln30_fu_168_p1(6 - 1 downto 0);

    cordic_phase_V_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            cordic_phase_V_ce0 <= ap_const_logic_1;
        else 
            cordic_phase_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    current_cos_V_1_fu_173_p2 <= std_logic_vector(unsigned(r_V_1_fu_142_p2) + unsigned(p_Val2_s_reg_97));
    current_cos_V_2_fu_193_p3 <= 
        current_cos_V_1_fu_173_p2 when (tmp_fu_148_p3(0) = '1') else 
        current_cos_V_fu_156_p2;
    current_cos_V_fu_156_p2 <= std_logic_vector(unsigned(p_Val2_s_reg_97) - unsigned(r_V_1_fu_142_p2));
    current_sin_V_1_fu_179_p2 <= std_logic_vector(unsigned(p_Val2_2_reg_85) - unsigned(r_V_fu_136_p2));
    current_sin_V_2_fu_185_p3 <= 
        current_sin_V_1_fu_179_p2 when (tmp_fu_148_p3(0) = '1') else 
        current_sin_V_fu_162_p2;
    current_sin_V_fu_162_p2 <= std_logic_vector(unsigned(r_V_fu_136_p2) + unsigned(p_Val2_2_reg_85));
    icmp_ln17_fu_124_p2 <= "1" when (ush_reg_109 = ap_const_lv5_10) else "0";
    j_fu_130_p2 <= std_logic_vector(unsigned(ush_reg_109) + unsigned(ap_const_lv5_1));
    r_V_1_fu_142_p2 <= std_logic_vector(shift_right(signed(p_Val2_2_reg_85),to_integer(unsigned('0' & zext_ln17_fu_120_p1(12-1 downto 0)))));
    r_V_fu_136_p2 <= std_logic_vector(shift_right(signed(p_Val2_s_reg_97),to_integer(unsigned('0' & zext_ln17_fu_120_p1(12-1 downto 0)))));
    s_V <= p_Val2_2_reg_85;

    s_V_ap_vld_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_124_p2)
    begin
        if (((icmp_ln17_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            s_V_ap_vld <= ap_const_logic_1;
        else 
            s_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    select_ln1496_fu_217_p3 <= 
        add_ln703_fu_211_p2 when (tmp_reg_237(0) = '1') else 
        sub_ln703_fu_205_p2;
    sub_ln703_fu_205_p2 <= std_logic_vector(unsigned(p_Val2_4_reg_75) - unsigned(zext_ln1265_fu_201_p1));
    tmp_fu_148_p3 <= p_Val2_4_reg_75(11 downto 11);
    zext_ln1265_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(cordic_phase_V_q0),12));
    zext_ln17_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ush_reg_109),12));
    zext_ln30_fu_168_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ush_reg_109),64));
end behav;