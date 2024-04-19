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
    M_0_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    M_0_ce0 : OUT STD_LOGIC;
    M_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_0_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    M_0_ce1 : OUT STD_LOGIC;
    M_0_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_1_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    M_1_ce0 : OUT STD_LOGIC;
    M_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_1_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    M_1_ce1 : OUT STD_LOGIC;
    M_1_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_0_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    V_In_0_ce0 : OUT STD_LOGIC;
    V_In_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_0_address1 : OUT STD_LOGIC_VECTOR (1 downto 0);
    V_In_0_ce1 : OUT STD_LOGIC;
    V_In_0_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_1_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    V_In_1_ce0 : OUT STD_LOGIC;
    V_In_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_1_address1 : OUT STD_LOGIC_VECTOR (1 downto 0);
    V_In_1_ce1 : OUT STD_LOGIC;
    V_In_1_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_Out_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    V_Out_ce0 : OUT STD_LOGIC;
    V_Out_we0 : OUT STD_LOGIC;
    V_Out_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of matrix_vector is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matrix_vector,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.435000,HLS_SYN_LAT=19,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=12,HLS_SYN_FF=184,HLS_SYN_LUT=503,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv58_0 : STD_LOGIC_VECTOR (57 downto 0) := "0000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv6_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_0_reg_243 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_0_reg_243_pp0_iter1_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal grp_fu_279_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_285 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal icmp_ln7_reg_433 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal icmp_ln7_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln7_reg_433_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_295_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_437 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1_fu_301_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_1_reg_442 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_267_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_2_reg_488 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_273_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln11_3_reg_493 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_2_fu_365_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_2_reg_498 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_4_fu_371_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_4_reg_503 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_phi_mux_i_0_phi_fu_247_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln11_1_fu_309_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_321_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_fu_336_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal tmp_4_fu_351_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_fu_377_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_255_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_255_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_261_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_261_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_267_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_267_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_273_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_273_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_261_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_255_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln11_fu_315_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln11_1_fu_331_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln11_2_fu_346_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln11_1_fu_361_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_5_fu_382_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_243_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_reg_433 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                i_0_reg_243 <= i_reg_437;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_243 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_reg_433 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln11_2_reg_498 <= add_ln11_2_fu_365_p2;
                add_ln11_4_reg_503 <= add_ln11_4_fu_371_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_0_reg_243_pp0_iter1_reg <= i_0_reg_243;
                icmp_ln7_reg_433 <= icmp_ln7_fu_289_p2;
                icmp_ln7_reg_433_pp0_iter1_reg <= icmp_ln7_reg_433;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_reg_437 <= i_fu_295_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_reg_433 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                mul_ln11_2_reg_488 <= grp_fu_267_p2;
                mul_ln11_3_reg_493 <= grp_fu_273_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((icmp_ln7_reg_433 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((icmp_ln7_reg_433 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then
                reg_285 <= grp_fu_279_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_fu_289_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    tmp_1_reg_442(5 downto 2) <= tmp_1_fu_301_p3(5 downto 2);
            end if;
        end if;
    end process;
    tmp_1_reg_442(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, icmp_ln7_fu_289_p2, ap_block_pp0_stage0_subdone, ap_block_pp0_stage1_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln7_fu_289_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln7_fu_289_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;

    M_0_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, zext_ln11_1_fu_309_p1, tmp_3_fu_336_p3, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                M_0_address0 <= tmp_3_fu_336_p3(5 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                M_0_address0 <= zext_ln11_1_fu_309_p1(5 - 1 downto 0);
            else 
                M_0_address0 <= "XXXXX";
            end if;
        else 
            M_0_address0 <= "XXXXX";
        end if; 
    end process;


    M_0_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, tmp_2_fu_321_p3, ap_block_pp0_stage1, tmp_4_fu_351_p3)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                M_0_address1 <= tmp_4_fu_351_p3(5 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                M_0_address1 <= tmp_2_fu_321_p3(5 - 1 downto 0);
            else 
                M_0_address1 <= "XXXXX";
            end if;
        else 
            M_0_address1 <= "XXXXX";
        end if; 
    end process;


    M_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            M_0_ce0 <= ap_const_logic_1;
        else 
            M_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    M_0_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            M_0_ce1 <= ap_const_logic_1;
        else 
            M_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    M_1_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, zext_ln11_1_fu_309_p1, tmp_3_fu_336_p3, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                M_1_address0 <= tmp_3_fu_336_p3(5 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                M_1_address0 <= zext_ln11_1_fu_309_p1(5 - 1 downto 0);
            else 
                M_1_address0 <= "XXXXX";
            end if;
        else 
            M_1_address0 <= "XXXXX";
        end if; 
    end process;


    M_1_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, tmp_2_fu_321_p3, ap_block_pp0_stage1, tmp_4_fu_351_p3)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                M_1_address1 <= tmp_4_fu_351_p3(5 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                M_1_address1 <= tmp_2_fu_321_p3(5 - 1 downto 0);
            else 
                M_1_address1 <= "XXXXX";
            end if;
        else 
            M_1_address1 <= "XXXXX";
        end if; 
    end process;


    M_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            M_1_ce0 <= ap_const_logic_1;
        else 
            M_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    M_1_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            M_1_ce1 <= ap_const_logic_1;
        else 
            M_1_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    V_In_0_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                V_In_0_address0 <= ap_const_lv64_2(2 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                V_In_0_address0 <= ap_const_lv64_0(2 - 1 downto 0);
            else 
                V_In_0_address0 <= "XX";
            end if;
        else 
            V_In_0_address0 <= "XX";
        end if; 
    end process;


    V_In_0_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                V_In_0_address1 <= ap_const_lv64_3(2 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                V_In_0_address1 <= ap_const_lv64_1(2 - 1 downto 0);
            else 
                V_In_0_address1 <= "XX";
            end if;
        else 
            V_In_0_address1 <= "XX";
        end if; 
    end process;


    V_In_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            V_In_0_ce0 <= ap_const_logic_1;
        else 
            V_In_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    V_In_0_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            V_In_0_ce1 <= ap_const_logic_1;
        else 
            V_In_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    V_In_1_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                V_In_1_address0 <= ap_const_lv64_2(2 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                V_In_1_address0 <= ap_const_lv64_0(2 - 1 downto 0);
            else 
                V_In_1_address0 <= "XX";
            end if;
        else 
            V_In_1_address0 <= "XX";
        end if; 
    end process;


    V_In_1_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                V_In_1_address1 <= ap_const_lv64_3(2 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                V_In_1_address1 <= ap_const_lv64_1(2 - 1 downto 0);
            else 
                V_In_1_address1 <= "XX";
            end if;
        else 
            V_In_1_address1 <= "XX";
        end if; 
    end process;


    V_In_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            V_In_1_ce0 <= ap_const_logic_1;
        else 
            V_In_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    V_In_1_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            V_In_1_ce1 <= ap_const_logic_1;
        else 
            V_In_1_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    V_Out_address0 <= zext_ln11_fu_377_p1(3 - 1 downto 0);

    V_Out_ce0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            V_Out_ce0 <= ap_const_logic_1;
        else 
            V_Out_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    V_Out_d0 <= std_logic_vector(unsigned(add_ln11_2_reg_498) + unsigned(add_ln11_5_fu_382_p2));

    V_Out_we0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter1, icmp_ln7_reg_433_pp0_iter1_reg)
    begin
        if (((icmp_ln7_reg_433_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            V_Out_we0 <= ap_const_logic_1;
        else 
            V_Out_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln11_1_fu_361_p2 <= std_logic_vector(unsigned(mul_ln11_3_reg_493) + unsigned(mul_ln11_2_reg_488));
    add_ln11_2_fu_365_p2 <= std_logic_vector(unsigned(reg_285) + unsigned(add_ln11_1_fu_361_p2));
    add_ln11_4_fu_371_p2 <= std_logic_vector(unsigned(grp_fu_273_p2) + unsigned(grp_fu_267_p2));
    add_ln11_5_fu_382_p2 <= std_logic_vector(unsigned(reg_285) + unsigned(add_ln11_4_reg_503));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state6 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln7_fu_289_p2)
    begin
        if ((icmp_ln7_fu_289_p2 = ap_const_lv1_1)) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_0_phi_fu_247_p4_assign_proc : process(i_0_reg_243, ap_CS_fsm_pp0_stage0, icmp_ln7_reg_433, ap_enable_reg_pp0_iter1, i_reg_437, ap_block_pp0_stage0)
    begin
        if (((icmp_ln7_reg_433 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_i_0_phi_fu_247_p4 <= i_reg_437;
        else 
            ap_phi_mux_i_0_phi_fu_247_p4 <= i_0_reg_243;
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

    grp_fu_255_p0 <= M_0_q0;
    grp_fu_255_p1 <= V_In_0_q0;
    grp_fu_255_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(grp_fu_255_p0) * signed(grp_fu_255_p1))), 32));
    grp_fu_261_p0 <= M_1_q0;
    grp_fu_261_p1 <= V_In_1_q0;
    grp_fu_261_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(grp_fu_261_p0) * signed(grp_fu_261_p1))), 32));
    grp_fu_267_p0 <= M_0_q1;
    grp_fu_267_p1 <= V_In_0_q1;
    grp_fu_267_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(grp_fu_267_p0) * signed(grp_fu_267_p1))), 32));
    grp_fu_273_p0 <= M_1_q1;
    grp_fu_273_p1 <= V_In_1_q1;
    grp_fu_273_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(grp_fu_273_p0) * signed(grp_fu_273_p1))), 32));
    grp_fu_279_p2 <= std_logic_vector(unsigned(grp_fu_261_p2) + unsigned(grp_fu_255_p2));
    i_fu_295_p2 <= std_logic_vector(unsigned(ap_phi_mux_i_0_phi_fu_247_p4) + unsigned(ap_const_lv4_1));
    icmp_ln7_fu_289_p2 <= "1" when (ap_phi_mux_i_0_phi_fu_247_p4 = ap_const_lv4_8) else "0";
    or_ln11_1_fu_331_p2 <= (tmp_1_reg_442 or ap_const_lv6_2);
    or_ln11_2_fu_346_p2 <= (tmp_1_reg_442 or ap_const_lv6_3);
    or_ln11_fu_315_p2 <= (tmp_1_fu_301_p3 or ap_const_lv6_1);
    tmp_1_fu_301_p3 <= (ap_phi_mux_i_0_phi_fu_247_p4 & ap_const_lv2_0);
    tmp_2_fu_321_p3 <= (ap_const_lv58_0 & or_ln11_fu_315_p2);
    tmp_3_fu_336_p3 <= (ap_const_lv58_0 & or_ln11_1_fu_331_p2);
    tmp_4_fu_351_p3 <= (ap_const_lv58_0 & or_ln11_2_fu_346_p2);
    zext_ln11_1_fu_309_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_301_p3),64));
    zext_ln11_fu_377_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_243_pp0_iter1_reg),64));
end behav;
