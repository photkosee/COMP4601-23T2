-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    y : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_ap_vld : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of fir is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fir,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.960000,HLS_SYN_LAT=46,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=619,HLS_SYN_LUT=299,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv5_A : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv32_35 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110101";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal shift_reg_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal shift_reg_ce0 : STD_LOGIC;
    signal shift_reg_we0 : STD_LOGIC;
    signal shift_reg_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal c1_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal c1_ce0 : STD_LOGIC;
    signal c1_q0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_134_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln18_reg_188 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln17_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln17_reg_196 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_fu_144_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln21_1_fu_163_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln21_1_reg_205 : STD_LOGIC_VECTOR (63 downto 0);
    signal shift_reg_load_reg_215 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal c1_load_reg_220 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_fu_171_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln22_reg_230 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal acc_fu_176_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_fu_127_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal acc_0_reg_93 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_i_0_phi_fu_110_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_0_reg_106 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_phi_mux_p_pn_phi_fu_121_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_pn_reg_118 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln21_fu_158_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_127_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_134_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal sext_ln16_fu_140_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);

    component fir_mul_32s_7ns_3bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (6 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fir_mul_32s_10s_3cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fir_shift_reg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fir_c1 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;



begin
    shift_reg_U : component fir_shift_reg
    generic map (
        DataWidth => 32,
        AddressRange => 11,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => shift_reg_address0,
        ce0 => shift_reg_ce0,
        we0 => shift_reg_we0,
        d0 => shift_reg_d0,
        q0 => shift_reg_q0);

    c1_U : component fir_c1
    generic map (
        DataWidth => 10,
        AddressRange => 11,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => c1_address0,
        ce0 => c1_ce0,
        q0 => c1_q0);

    fir_mul_32s_7ns_3bkb_U1 : component fir_mul_32s_7ns_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 7,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => x,
        din1 => grp_fu_134_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_134_p2);

    fir_mul_32s_10s_3cud_U2 : component fir_mul_32s_10s_3cud
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 10,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_load_reg_215,
        din1 => c1_load_reg_220,
        ce => ap_const_logic_1,
        dout => grp_fu_171_p2);





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


    acc_0_reg_93_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                acc_0_reg_93 <= acc_fu_176_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                acc_0_reg_93 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    i_0_reg_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                i_0_reg_106 <= grp_fu_127_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                i_0_reg_106 <= ap_const_lv5_A;
            end if; 
        end if;
    end process;

    p_pn_reg_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln17_reg_196 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                p_pn_reg_118 <= mul_ln22_reg_230;
            elsif (((tmp_fu_144_p3 = ap_const_lv1_0) and (icmp_ln17_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_pn_reg_118 <= mul_ln18_reg_188;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                c1_load_reg_220 <= c1_q0;
                shift_reg_load_reg_215 <= shift_reg_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_144_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                icmp_ln17_reg_196 <= icmp_ln17_fu_152_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                mul_ln18_reg_188 <= grp_fu_134_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                mul_ln22_reg_230 <= grp_fu_171_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_144_p3 = ap_const_lv1_0) and (icmp_ln17_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    zext_ln21_1_reg_205(31 downto 0) <= zext_ln21_1_fu_163_p1(31 downto 0);
            end if;
        end if;
    end process;
    zext_ln21_1_reg_205(63 downto 32) <= "00000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln17_fu_152_p2, ap_CS_fsm_state3, tmp_fu_144_p3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((tmp_fu_144_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((tmp_fu_144_p3 = ap_const_lv1_0) and (icmp_ln17_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    acc_fu_176_p2 <= std_logic_vector(unsigned(ap_phi_mux_p_pn_phi_fu_121_p4) + unsigned(acc_0_reg_93));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_CS_fsm_state3, tmp_fu_144_p3)
    begin
        if (((tmp_fu_144_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
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

    ap_phi_mux_i_0_phi_fu_110_p4 <= i_0_reg_106;

    ap_phi_mux_p_pn_phi_fu_121_p4_assign_proc : process(icmp_ln17_reg_196, mul_ln22_reg_230, ap_CS_fsm_state7, p_pn_reg_118)
    begin
        if (((icmp_ln17_reg_196 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            ap_phi_mux_p_pn_phi_fu_121_p4 <= mul_ln22_reg_230;
        else 
            ap_phi_mux_p_pn_phi_fu_121_p4 <= p_pn_reg_118;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3, tmp_fu_144_p3)
    begin
        if (((tmp_fu_144_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c1_address0 <= zext_ln21_1_fu_163_p1(4 - 1 downto 0);

    c1_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            c1_ce0 <= ap_const_logic_1;
        else 
            c1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_127_p0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state7, ap_phi_mux_i_0_phi_fu_110_p4, i_0_reg_106)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            grp_fu_127_p0 <= i_0_reg_106;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_127_p0 <= ap_phi_mux_i_0_phi_fu_110_p4;
        else 
            grp_fu_127_p0 <= "XXXXX";
        end if; 
    end process;

    grp_fu_127_p2 <= std_logic_vector(signed(grp_fu_127_p0) + signed(ap_const_lv5_1F));
    grp_fu_134_p1 <= ap_const_lv32_35(7 - 1 downto 0);
    icmp_ln17_fu_152_p2 <= "1" when (i_0_reg_106 = ap_const_lv5_0) else "0";
        sext_ln16_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_0_reg_106),32));


    shift_reg_address0_assign_proc : process(icmp_ln17_fu_152_p2, ap_CS_fsm_state3, tmp_fu_144_p3, zext_ln21_1_reg_205, ap_CS_fsm_state4, zext_ln21_fu_158_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            shift_reg_address0 <= zext_ln21_1_reg_205(4 - 1 downto 0);
        elsif (((tmp_fu_144_p3 = ap_const_lv1_0) and (icmp_ln17_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            shift_reg_address0 <= ap_const_lv4_0;
        elsif (((tmp_fu_144_p3 = ap_const_lv1_0) and (icmp_ln17_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            shift_reg_address0 <= zext_ln21_fu_158_p1(4 - 1 downto 0);
        else 
            shift_reg_address0 <= "XXXX";
        end if; 
    end process;


    shift_reg_ce0_assign_proc : process(icmp_ln17_fu_152_p2, ap_CS_fsm_state3, tmp_fu_144_p3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((tmp_fu_144_p3 = ap_const_lv1_0) and (icmp_ln17_fu_152_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((tmp_fu_144_p3 = ap_const_lv1_0) and (icmp_ln17_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            shift_reg_ce0 <= ap_const_logic_1;
        else 
            shift_reg_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    shift_reg_d0_assign_proc : process(x, shift_reg_q0, icmp_ln17_fu_152_p2, ap_CS_fsm_state3, tmp_fu_144_p3, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            shift_reg_d0 <= shift_reg_q0;
        elsif (((tmp_fu_144_p3 = ap_const_lv1_0) and (icmp_ln17_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            shift_reg_d0 <= x;
        else 
            shift_reg_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    shift_reg_we0_assign_proc : process(icmp_ln17_fu_152_p2, ap_CS_fsm_state3, tmp_fu_144_p3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((tmp_fu_144_p3 = ap_const_lv1_0) and (icmp_ln17_fu_152_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            shift_reg_we0 <= ap_const_logic_1;
        else 
            shift_reg_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_144_p3 <= i_0_reg_106(4 downto 4);
    y <= acc_0_reg_93;

    y_ap_vld_assign_proc : process(ap_CS_fsm_state3, tmp_fu_144_p3)
    begin
        if (((tmp_fu_144_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            y_ap_vld <= ap_const_logic_1;
        else 
            y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln21_1_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln16_fu_140_p1),64));
    zext_ln21_fu_158_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_127_p2),64));
end behav;
