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
    M_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    M_ce0 : OUT STD_LOGIC;
    M_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    M_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    M_ce1 : OUT STD_LOGIC;
    M_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    V_In_ce0 : OUT STD_LOGIC;
    V_In_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_In_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    V_In_ce1 : OUT STD_LOGIC;
    V_In_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    V_Out_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    V_Out_ce0 : OUT STD_LOGIC;
    V_Out_we0 : OUT STD_LOGIC;
    V_Out_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of matrix_vector is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matrix_vector,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.435000,HLS_SYN_LAT=35,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=6,HLS_SYN_FF=122,HLS_SYN_LUT=454,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv64_7 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000111";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv57_0 : STD_LOGIC_VECTOR (56 downto 0) := "000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv7_2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_const_lv7_3 : STD_LOGIC_VECTOR (6 downto 0) := "0000011";
    constant ap_const_lv7_4 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_const_lv7_5 : STD_LOGIC_VECTOR (6 downto 0) := "0000101";
    constant ap_const_lv7_6 : STD_LOGIC_VECTOR (6 downto 0) := "0000110";
    constant ap_const_lv7_7 : STD_LOGIC_VECTOR (6 downto 0) := "0000111";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_0_reg_237 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_0_reg_237_pp0_iter1_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal grp_fu_261_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_267 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state7_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal icmp_ln7_reg_463 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state5_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal icmp_ln7_fu_271_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln7_reg_463_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_277_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_467 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1_fu_283_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_1_reg_472 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state4_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal add_ln11_2_fu_373_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_2_reg_512 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln11_4_reg_527 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_phi_mux_i_0_phi_fu_241_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln11_1_fu_291_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_302_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_fu_316_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal tmp_4_fu_330_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_344_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal tmp_6_fu_358_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_384_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal tmp_8_fu_398_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln11_fu_407_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_249_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_249_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_255_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_255_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_255_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_249_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln11_fu_296_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln11_1_fu_311_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln11_2_fu_325_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln11_3_fu_339_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln11_4_fu_353_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln11_1_fu_367_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln11_5_fu_379_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln11_6_fu_393_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln11_5_fu_412_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
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
                if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_237_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_reg_463 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                i_0_reg_237 <= i_reg_467;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_237 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_reg_463 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001))) then
                add_ln11_2_reg_512 <= add_ln11_2_fu_373_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_reg_463 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                add_ln11_4_reg_527 <= grp_fu_261_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_0_reg_237_pp0_iter1_reg <= i_0_reg_237;
                icmp_ln7_reg_463 <= icmp_ln7_fu_271_p2;
                icmp_ln7_reg_463_pp0_iter1_reg <= icmp_ln7_reg_463;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_reg_467 <= i_fu_277_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (icmp_ln7_reg_463 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((icmp_ln7_reg_463 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then
                reg_267 <= grp_fu_261_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_fu_271_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    tmp_1_reg_472(6 downto 3) <= tmp_1_fu_283_p3(6 downto 3);
            end if;
        end if;
    end process;
    tmp_1_reg_472(2 downto 0) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, icmp_ln7_fu_271_p2, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, ap_block_pp0_stage3_subdone, ap_block_pp0_stage1_subdone, ap_block_pp0_stage2_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (icmp_ln7_fu_271_p2 = ap_const_lv1_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (icmp_ln7_fu_271_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;

    M_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage0, zext_ln11_1_fu_291_p1, tmp_3_fu_316_p3, ap_block_pp0_stage1, tmp_5_fu_344_p3, ap_block_pp0_stage2, tmp_7_fu_384_p3, ap_block_pp0_stage3)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                M_address0 <= tmp_7_fu_384_p3(6 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                M_address0 <= tmp_5_fu_344_p3(6 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                M_address0 <= tmp_3_fu_316_p3(6 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                M_address0 <= zext_ln11_1_fu_291_p1(6 - 1 downto 0);
            else 
                M_address0 <= "XXXXXX";
            end if;
        else 
            M_address0 <= "XXXXXX";
        end if; 
    end process;


    M_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage0, tmp_2_fu_302_p3, ap_block_pp0_stage1, tmp_4_fu_330_p3, ap_block_pp0_stage2, tmp_6_fu_358_p3, ap_block_pp0_stage3, tmp_8_fu_398_p3)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                M_address1 <= tmp_8_fu_398_p3(6 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                M_address1 <= tmp_6_fu_358_p3(6 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                M_address1 <= tmp_4_fu_330_p3(6 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                M_address1 <= tmp_2_fu_302_p3(6 - 1 downto 0);
            else 
                M_address1 <= "XXXXXX";
            end if;
        else 
            M_address1 <= "XXXXXX";
        end if; 
    end process;


    M_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            M_ce0 <= ap_const_logic_1;
        else 
            M_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    M_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            M_ce1 <= ap_const_logic_1;
        else 
            M_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    V_In_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_block_pp0_stage2, ap_block_pp0_stage3)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                V_In_address0 <= ap_const_lv64_6(3 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                V_In_address0 <= ap_const_lv64_4(3 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                V_In_address0 <= ap_const_lv64_2(3 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                V_In_address0 <= ap_const_lv64_0(3 - 1 downto 0);
            else 
                V_In_address0 <= "XXX";
            end if;
        else 
            V_In_address0 <= "XXX";
        end if; 
    end process;


    V_In_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage0, ap_block_pp0_stage1, ap_block_pp0_stage2, ap_block_pp0_stage3)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                V_In_address1 <= ap_const_lv64_7(3 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                V_In_address1 <= ap_const_lv64_5(3 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                V_In_address1 <= ap_const_lv64_3(3 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                V_In_address1 <= ap_const_lv64_1(3 - 1 downto 0);
            else 
                V_In_address1 <= "XXX";
            end if;
        else 
            V_In_address1 <= "XXX";
        end if; 
    end process;


    V_In_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            V_In_ce0 <= ap_const_logic_1;
        else 
            V_In_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    V_In_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_11001, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            V_In_ce1 <= ap_const_logic_1;
        else 
            V_In_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    V_Out_address0 <= zext_ln11_fu_407_p1(3 - 1 downto 0);

    V_Out_ce0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            V_Out_ce0 <= ap_const_logic_1;
        else 
            V_Out_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    V_Out_d0 <= std_logic_vector(unsigned(add_ln11_2_reg_512) + unsigned(add_ln11_5_fu_412_p2));

    V_Out_we0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, icmp_ln7_reg_463_pp0_iter1_reg, ap_enable_reg_pp0_iter1)
    begin
        if (((icmp_ln7_reg_463_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            V_Out_we0 <= ap_const_logic_1;
        else 
            V_Out_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln11_1_fu_367_p2 <= std_logic_vector(unsigned(grp_fu_255_p2) + unsigned(grp_fu_249_p2));
    add_ln11_2_fu_373_p2 <= std_logic_vector(unsigned(reg_267) + unsigned(add_ln11_1_fu_367_p2));
    add_ln11_5_fu_412_p2 <= std_logic_vector(unsigned(reg_267) + unsigned(add_ln11_4_reg_527));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(3);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(4);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state8 <= ap_CS_fsm(5);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln7_fu_271_p2)
    begin
        if ((icmp_ln7_fu_271_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
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


    ap_phi_mux_i_0_phi_fu_241_p4_assign_proc : process(i_0_reg_237, ap_CS_fsm_pp0_stage0, icmp_ln7_reg_463, i_reg_467, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((icmp_ln7_reg_463 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_i_0_phi_fu_241_p4 <= i_reg_467;
        else 
            ap_phi_mux_i_0_phi_fu_241_p4 <= i_0_reg_237;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_249_p0 <= M_q0;
    grp_fu_249_p1 <= V_In_q0;
    grp_fu_249_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(grp_fu_249_p0) * signed(grp_fu_249_p1))), 32));
    grp_fu_255_p0 <= M_q1;
    grp_fu_255_p1 <= V_In_q1;
    grp_fu_255_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(grp_fu_255_p0) * signed(grp_fu_255_p1))), 32));
    grp_fu_261_p2 <= std_logic_vector(unsigned(grp_fu_255_p2) + unsigned(grp_fu_249_p2));
    i_fu_277_p2 <= std_logic_vector(unsigned(ap_phi_mux_i_0_phi_fu_241_p4) + unsigned(ap_const_lv4_1));
    icmp_ln7_fu_271_p2 <= "1" when (ap_phi_mux_i_0_phi_fu_241_p4 = ap_const_lv4_8) else "0";
    or_ln11_1_fu_311_p2 <= (tmp_1_reg_472 or ap_const_lv7_2);
    or_ln11_2_fu_325_p2 <= (tmp_1_reg_472 or ap_const_lv7_3);
    or_ln11_3_fu_339_p2 <= (tmp_1_reg_472 or ap_const_lv7_4);
    or_ln11_4_fu_353_p2 <= (tmp_1_reg_472 or ap_const_lv7_5);
    or_ln11_5_fu_379_p2 <= (tmp_1_reg_472 or ap_const_lv7_6);
    or_ln11_6_fu_393_p2 <= (tmp_1_reg_472 or ap_const_lv7_7);
    or_ln11_fu_296_p2 <= (tmp_1_fu_283_p3 or ap_const_lv7_1);
    tmp_1_fu_283_p3 <= (ap_phi_mux_i_0_phi_fu_241_p4 & ap_const_lv3_0);
    tmp_2_fu_302_p3 <= (ap_const_lv57_0 & or_ln11_fu_296_p2);
    tmp_3_fu_316_p3 <= (ap_const_lv57_0 & or_ln11_1_fu_311_p2);
    tmp_4_fu_330_p3 <= (ap_const_lv57_0 & or_ln11_2_fu_325_p2);
    tmp_5_fu_344_p3 <= (ap_const_lv57_0 & or_ln11_3_fu_339_p2);
    tmp_6_fu_358_p3 <= (ap_const_lv57_0 & or_ln11_4_fu_353_p2);
    tmp_7_fu_384_p3 <= (ap_const_lv57_0 & or_ln11_5_fu_379_p2);
    tmp_8_fu_398_p3 <= (ap_const_lv57_0 & or_ln11_6_fu_393_p2);
    zext_ln11_1_fu_291_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_283_p3),64));
    zext_ln11_fu_407_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_237_pp0_iter1_reg),64));
end behav;
