-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matrix_vector is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    M_0_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    M_0_ce0 : OUT STD_LOGIC;
    M_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_1_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    M_1_ce0 : OUT STD_LOGIC;
    M_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_2_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    M_2_ce0 : OUT STD_LOGIC;
    M_2_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_3_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    M_3_ce0 : OUT STD_LOGIC;
    M_3_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_4_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    M_4_ce0 : OUT STD_LOGIC;
    M_4_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_5_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    M_5_ce0 : OUT STD_LOGIC;
    M_5_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_6_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    M_6_ce0 : OUT STD_LOGIC;
    M_6_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_7_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    M_7_ce0 : OUT STD_LOGIC;
    M_7_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_0 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_1 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_2 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_3 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_4 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_5 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_6 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_7 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_Out_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    V_Out_ce0 : OUT STD_LOGIC;
    V_Out_we0 : OUT STD_LOGIC;
    V_Out_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of matrix_vector is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matrix_vector,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.880000,HLS_SYN_LAT=12,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=24,HLS_SYN_FF=1168,HLS_SYN_LUT=544,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_0_reg_237 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln7_fu_248_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln7_reg_339 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln7_reg_339_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln7_reg_339_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_254_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal zext_ln11_fu_260_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_reg_348 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_reg_348_pp0_iter1_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_reg_348_pp0_iter2_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal V_In_0_read_reg_353 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_0_read_reg_353_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_1_read_reg_363 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_1_read_reg_363_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_2_read_reg_373 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_2_read_reg_373_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_3_read_reg_383 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_3_read_reg_383_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_4_read_reg_393 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_4_read_reg_393_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_5_read_reg_403 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_5_read_reg_403_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_6_read_reg_413 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_6_read_reg_413_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_7_read_reg_423 : STD_LOGIC_VECTOR (31 downto 0);
    signal V_In_7_read_reg_423_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal M_0_load_reg_433 : STD_LOGIC_VECTOR (31 downto 0);
    signal M_1_load_reg_438 : STD_LOGIC_VECTOR (31 downto 0);
    signal M_2_load_reg_443 : STD_LOGIC_VECTOR (31 downto 0);
    signal M_3_load_reg_448 : STD_LOGIC_VECTOR (31 downto 0);
    signal M_4_load_reg_453 : STD_LOGIC_VECTOR (31 downto 0);
    signal M_5_load_reg_458 : STD_LOGIC_VECTOR (31 downto 0);
    signal M_6_load_reg_463 : STD_LOGIC_VECTOR (31 downto 0);
    signal M_7_load_reg_468 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_fu_272_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_reg_473 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_1_fu_276_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_1_reg_478 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_2_fu_280_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_2_reg_483 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_3_fu_284_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_3_reg_488 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_4_fu_288_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_4_reg_493 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_5_fu_292_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_5_reg_498 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_6_fu_296_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_6_reg_503 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_7_fu_300_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_7_reg_508 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal add_ln11_1_fu_308_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_fu_304_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_4_fu_322_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_3_fu_318_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_5_fu_326_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_2_fu_312_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_237_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln7_fu_248_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                i_0_reg_237 <= i_fu_254_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_237 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln7_reg_339 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                M_0_load_reg_433 <= M_0_q0;
                M_1_load_reg_438 <= M_1_q0;
                M_2_load_reg_443 <= M_2_q0;
                M_3_load_reg_448 <= M_3_q0;
                M_4_load_reg_453 <= M_4_q0;
                M_5_load_reg_458 <= M_5_q0;
                M_6_load_reg_463 <= M_6_q0;
                M_7_load_reg_468 <= M_7_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln7_fu_248_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                V_In_0_read_reg_353 <= V_In_0;
                V_In_1_read_reg_363 <= V_In_1;
                V_In_2_read_reg_373 <= V_In_2;
                V_In_3_read_reg_383 <= V_In_3;
                V_In_4_read_reg_393 <= V_In_4;
                V_In_5_read_reg_403 <= V_In_5;
                V_In_6_read_reg_413 <= V_In_6;
                V_In_7_read_reg_423 <= V_In_7;
                    zext_ln11_reg_348(3 downto 0) <= zext_ln11_fu_260_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                V_In_0_read_reg_353_pp0_iter1_reg <= V_In_0_read_reg_353;
                V_In_1_read_reg_363_pp0_iter1_reg <= V_In_1_read_reg_363;
                V_In_2_read_reg_373_pp0_iter1_reg <= V_In_2_read_reg_373;
                V_In_3_read_reg_383_pp0_iter1_reg <= V_In_3_read_reg_383;
                V_In_4_read_reg_393_pp0_iter1_reg <= V_In_4_read_reg_393;
                V_In_5_read_reg_403_pp0_iter1_reg <= V_In_5_read_reg_403;
                V_In_6_read_reg_413_pp0_iter1_reg <= V_In_6_read_reg_413;
                V_In_7_read_reg_423_pp0_iter1_reg <= V_In_7_read_reg_423;
                icmp_ln7_reg_339 <= icmp_ln7_fu_248_p2;
                icmp_ln7_reg_339_pp0_iter1_reg <= icmp_ln7_reg_339;
                    zext_ln11_reg_348_pp0_iter1_reg(3 downto 0) <= zext_ln11_reg_348(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                icmp_ln7_reg_339_pp0_iter2_reg <= icmp_ln7_reg_339_pp0_iter1_reg;
                    zext_ln11_reg_348_pp0_iter2_reg(3 downto 0) <= zext_ln11_reg_348_pp0_iter1_reg(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln7_reg_339_pp0_iter1_reg = ap_const_lv1_0))) then
                mul_ln11_1_reg_478 <= mul_ln11_1_fu_276_p2;
                mul_ln11_2_reg_483 <= mul_ln11_2_fu_280_p2;
                mul_ln11_3_reg_488 <= mul_ln11_3_fu_284_p2;
                mul_ln11_4_reg_493 <= mul_ln11_4_fu_288_p2;
                mul_ln11_5_reg_498 <= mul_ln11_5_fu_292_p2;
                mul_ln11_6_reg_503 <= mul_ln11_6_fu_296_p2;
                mul_ln11_7_reg_508 <= mul_ln11_7_fu_300_p2;
                mul_ln11_reg_473 <= mul_ln11_fu_272_p2;
            end if;
        end if;
    end process;
    zext_ln11_reg_348(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";
    zext_ln11_reg_348_pp0_iter1_reg(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";
    zext_ln11_reg_348_pp0_iter2_reg(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln7_fu_248_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln7_fu_248_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((icmp_ln7_fu_248_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    M_0_address0 <= zext_ln11_fu_260_p1(3 - 1 downto 0);

    M_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            M_0_ce0 <= ap_const_logic_1;
        else 
            M_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    M_1_address0 <= zext_ln11_fu_260_p1(3 - 1 downto 0);

    M_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            M_1_ce0 <= ap_const_logic_1;
        else 
            M_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    M_2_address0 <= zext_ln11_fu_260_p1(3 - 1 downto 0);

    M_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            M_2_ce0 <= ap_const_logic_1;
        else 
            M_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    M_3_address0 <= zext_ln11_fu_260_p1(3 - 1 downto 0);

    M_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            M_3_ce0 <= ap_const_logic_1;
        else 
            M_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    M_4_address0 <= zext_ln11_fu_260_p1(3 - 1 downto 0);

    M_4_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            M_4_ce0 <= ap_const_logic_1;
        else 
            M_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    M_5_address0 <= zext_ln11_fu_260_p1(3 - 1 downto 0);

    M_5_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            M_5_ce0 <= ap_const_logic_1;
        else 
            M_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    M_6_address0 <= zext_ln11_fu_260_p1(3 - 1 downto 0);

    M_6_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            M_6_ce0 <= ap_const_logic_1;
        else 
            M_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    M_7_address0 <= zext_ln11_fu_260_p1(3 - 1 downto 0);

    M_7_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            M_7_ce0 <= ap_const_logic_1;
        else 
            M_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    V_Out_address0 <= zext_ln11_reg_348_pp0_iter2_reg(3 - 1 downto 0);

    V_Out_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            V_Out_ce0 <= ap_const_logic_1;
        else 
            V_Out_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    V_Out_d0 <= std_logic_vector(unsigned(add_ln11_5_fu_326_p2) + unsigned(add_ln11_2_fu_312_p2));

    V_Out_we0_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln7_reg_339_pp0_iter2_reg, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (icmp_ln7_reg_339_pp0_iter2_reg = ap_const_lv1_0))) then 
            V_Out_we0 <= ap_const_logic_1;
        else 
            V_Out_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln11_1_fu_308_p2 <= std_logic_vector(unsigned(mul_ln11_2_reg_483) + unsigned(mul_ln11_3_reg_488));
    add_ln11_2_fu_312_p2 <= std_logic_vector(unsigned(add_ln11_1_fu_308_p2) + unsigned(add_ln11_fu_304_p2));
    add_ln11_3_fu_318_p2 <= std_logic_vector(unsigned(mul_ln11_4_reg_493) + unsigned(mul_ln11_5_reg_498));
    add_ln11_4_fu_322_p2 <= std_logic_vector(unsigned(mul_ln11_6_reg_503) + unsigned(mul_ln11_7_reg_508));
    add_ln11_5_fu_326_p2 <= std_logic_vector(unsigned(add_ln11_4_fu_322_p2) + unsigned(add_ln11_3_fu_318_p2));
    add_ln11_fu_304_p2 <= std_logic_vector(unsigned(mul_ln11_reg_473) + unsigned(mul_ln11_1_reg_478));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state6 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln7_fu_248_p2)
    begin
        if ((icmp_ln7_fu_248_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_254_p2 <= std_logic_vector(unsigned(i_0_reg_237) + unsigned(ap_const_lv4_1));
    icmp_ln7_fu_248_p2 <= "1" when (i_0_reg_237 = ap_const_lv4_8) else "0";
    mul_ln11_1_fu_276_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(V_In_1_read_reg_363_pp0_iter1_reg) * signed(M_1_load_reg_438))), 32));
    mul_ln11_2_fu_280_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(V_In_2_read_reg_373_pp0_iter1_reg) * signed(M_2_load_reg_443))), 32));
    mul_ln11_3_fu_284_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(V_In_3_read_reg_383_pp0_iter1_reg) * signed(M_3_load_reg_448))), 32));
    mul_ln11_4_fu_288_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(V_In_4_read_reg_393_pp0_iter1_reg) * signed(M_4_load_reg_453))), 32));
    mul_ln11_5_fu_292_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(V_In_5_read_reg_403_pp0_iter1_reg) * signed(M_5_load_reg_458))), 32));
    mul_ln11_6_fu_296_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(V_In_6_read_reg_413_pp0_iter1_reg) * signed(M_6_load_reg_463))), 32));
    mul_ln11_7_fu_300_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(V_In_7_read_reg_423_pp0_iter1_reg) * signed(M_7_load_reg_468))), 32));
    mul_ln11_fu_272_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(V_In_0_read_reg_353_pp0_iter1_reg) * signed(M_0_load_reg_433))), 32));
    zext_ln11_fu_260_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_237),64));
end behav;
