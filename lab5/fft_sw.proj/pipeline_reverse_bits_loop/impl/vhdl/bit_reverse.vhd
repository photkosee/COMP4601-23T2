-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bit_reverse is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    X_R_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_R_ce0 : OUT STD_LOGIC;
    X_R_we0 : OUT STD_LOGIC;
    X_R_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    X_R_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    X_I_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_I_ce0 : OUT STD_LOGIC;
    X_I_we0 : OUT STD_LOGIC;
    X_I_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    X_I_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of bit_reverse is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal icmp_ln21_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_4_fu_144_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_4_reg_221 : STD_LOGIC_VECTOR (10 downto 0);
    signal trunc_ln21_fu_150_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln21_fu_154_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln21_reg_231 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_164_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal rev_fu_178_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln8_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln10_fu_196_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln23_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln23_reg_254 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal X_R_addr_2_reg_258 : STD_LOGIC_VECTOR (9 downto 0);
    signal X_I_addr_2_reg_263 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal input_assign_reg_94 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal reversed_reg_106 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_0_i_reg_118 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_0_i_reg_129 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln26_fu_205_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln25_fu_211_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln9_fu_174_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln8_fu_170_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal input_assign_1_fu_186_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);


begin




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


    i_0_i_reg_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_i_reg_118 <= i_fu_164_p2;
            elsif (((icmp_ln21_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_0_i_reg_118 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    input_assign_reg_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                input_assign_reg_94 <= i_4_reg_221;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                input_assign_reg_94 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    p_0_i_reg_129_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_0_i_reg_129 <= zext_ln10_fu_196_p1;
            elsif (((icmp_ln21_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_0_i_reg_129 <= trunc_ln21_fu_150_p1;
            end if; 
        end if;
    end process;

    reversed_reg_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                reversed_reg_106 <= rev_fu_178_p3;
            elsif (((icmp_ln21_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                reversed_reg_106 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln23_fu_200_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                X_I_addr_2_reg_263 <= zext_ln26_fu_205_p1(10 - 1 downto 0);
                X_R_addr_2_reg_258 <= zext_ln26_fu_205_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_4_reg_221 <= i_4_fu_144_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                icmp_ln23_reg_254 <= icmp_ln23_fu_200_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln21_fu_138_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    zext_ln21_reg_231(10 downto 0) <= zext_ln21_fu_154_p1(10 downto 0);
            end if;
        end if;
    end process;
    zext_ln21_reg_231(31 downto 11) <= "000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln21_fu_138_p2, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln8_fu_158_p2, icmp_ln23_fu_200_p2, ap_CS_fsm_state4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln21_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln8_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln23_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;

    X_I_address0_assign_proc : process(ap_CS_fsm_state4, X_I_addr_2_reg_263, ap_CS_fsm_state5, ap_CS_fsm_state6, zext_ln26_fu_205_p1, zext_ln25_fu_211_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            X_I_address0 <= X_I_addr_2_reg_263;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            X_I_address0 <= zext_ln25_fu_211_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            X_I_address0 <= zext_ln26_fu_205_p1(10 - 1 downto 0);
        else 
            X_I_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    X_I_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            X_I_ce0 <= ap_const_logic_1;
        else 
            X_I_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    X_I_d0 <= X_I_q0;

    X_I_we0_assign_proc : process(icmp_ln23_reg_254, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln23_reg_254 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6)))) then 
            X_I_we0 <= ap_const_logic_1;
        else 
            X_I_we0 <= ap_const_logic_0;
        end if; 
    end process;


    X_R_address0_assign_proc : process(ap_CS_fsm_state4, X_R_addr_2_reg_258, ap_CS_fsm_state5, ap_CS_fsm_state6, zext_ln26_fu_205_p1, zext_ln25_fu_211_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            X_R_address0 <= X_R_addr_2_reg_258;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            X_R_address0 <= zext_ln25_fu_211_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            X_R_address0 <= zext_ln26_fu_205_p1(10 - 1 downto 0);
        else 
            X_R_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    X_R_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            X_R_ce0 <= ap_const_logic_1;
        else 
            X_R_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    X_R_d0 <= X_R_q0;

    X_R_we0_assign_proc : process(icmp_ln23_reg_254, ap_CS_fsm_state5, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln23_reg_254 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6)))) then 
            X_R_we0 <= ap_const_logic_1;
        else 
            X_R_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, icmp_ln21_fu_138_p2, ap_CS_fsm_state2)
    begin
        if ((((icmp_ln21_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(icmp_ln21_fu_138_p2, ap_CS_fsm_state2)
    begin
        if (((icmp_ln21_fu_138_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_4_fu_144_p2 <= std_logic_vector(unsigned(input_assign_reg_94) + unsigned(ap_const_lv11_1));
    i_fu_164_p2 <= std_logic_vector(unsigned(i_0_i_reg_118) + unsigned(ap_const_lv4_1));
    icmp_ln21_fu_138_p2 <= "1" when (input_assign_reg_94 = ap_const_lv11_400) else "0";
    icmp_ln23_fu_200_p2 <= "1" when (unsigned(zext_ln21_reg_231) > unsigned(reversed_reg_106)) else "0";
    icmp_ln8_fu_158_p2 <= "1" when (i_0_i_reg_118 = ap_const_lv4_A) else "0";
    input_assign_1_fu_186_p4 <= p_0_i_reg_129(9 downto 1);
    rev_fu_178_p3 <= (trunc_ln9_fu_174_p1 & trunc_ln8_fu_170_p1);
    trunc_ln21_fu_150_p1 <= input_assign_reg_94(10 - 1 downto 0);
    trunc_ln8_fu_170_p1 <= p_0_i_reg_129(1 - 1 downto 0);
    trunc_ln9_fu_174_p1 <= reversed_reg_106(31 - 1 downto 0);
    zext_ln10_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_assign_1_fu_186_p4),10));
    zext_ln21_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_assign_reg_94),32));
    zext_ln25_fu_211_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_assign_reg_94),64));
    zext_ln26_fu_205_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(reversed_reg_106),64));
end behav;
