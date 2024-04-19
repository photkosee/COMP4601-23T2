-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_stage_134 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    X_R_8_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_R_8_V_ce0 : OUT STD_LOGIC;
    X_R_8_V_q0 : IN STD_LOGIC_VECTOR (21 downto 0);
    X_R_8_V_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_R_8_V_ce1 : OUT STD_LOGIC;
    X_R_8_V_q1 : IN STD_LOGIC_VECTOR (21 downto 0);
    X_I_8_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_I_8_V_ce0 : OUT STD_LOGIC;
    X_I_8_V_q0 : IN STD_LOGIC_VECTOR (21 downto 0);
    X_I_8_V_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_I_8_V_ce1 : OUT STD_LOGIC;
    X_I_8_V_q1 : IN STD_LOGIC_VECTOR (21 downto 0);
    Out_R_9_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    Out_R_9_V_ce0 : OUT STD_LOGIC;
    Out_R_9_V_we0 : OUT STD_LOGIC;
    Out_R_9_V_d0 : OUT STD_LOGIC_VECTOR (21 downto 0);
    Out_R_9_V_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    Out_R_9_V_ce1 : OUT STD_LOGIC;
    Out_R_9_V_we1 : OUT STD_LOGIC;
    Out_R_9_V_d1 : OUT STD_LOGIC_VECTOR (21 downto 0);
    Out_I_9_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    Out_I_9_V_ce0 : OUT STD_LOGIC;
    Out_I_9_V_we0 : OUT STD_LOGIC;
    Out_I_9_V_d0 : OUT STD_LOGIC_VECTOR (21 downto 0);
    Out_I_9_V_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    Out_I_9_V_ce1 : OUT STD_LOGIC;
    Out_I_9_V_we1 : OUT STD_LOGIC;
    Out_I_9_V_d1 : OUT STD_LOGIC_VECTOR (21 downto 0) );
end;


architecture behav of fft_stage_134 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv10_200 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv10_100 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal W_real_V61_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal W_real_V61_ce0 : STD_LOGIC;
    signal W_real_V61_q0 : STD_LOGIC_VECTOR (12 downto 0);
    signal W_imag_V53_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal W_imag_V53_ce0 : STD_LOGIC;
    signal W_imag_V53_q0 : STD_LOGIC_VECTOR (11 downto 0);
    signal indvar_flatten_reg_194 : STD_LOGIC_VECTOR (9 downto 0);
    signal j_0_reg_205 : STD_LOGIC_VECTOR (8 downto 0);
    signal t_0_reg_216 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln47_fu_227_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_reg_420 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln47_reg_420_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln47_fu_233_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal select_ln47_fu_289_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln47_reg_439 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_fu_301_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_reg_444 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln58_fu_315_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln58_reg_449 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln58_reg_449_pp0_iter1_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal t_fu_320_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal W_real_V61_load_reg_466 : STD_LOGIC_VECTOR (12 downto 0);
    signal W_imag_V53_load_reg_471 : STD_LOGIC_VECTOR (11 downto 0);
    signal X_R_8_V_load_reg_476 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal zext_ln60_fu_326_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln60_reg_486 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_phi_mux_j_0_phi_fu_209_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln54_fu_283_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln50_fu_239_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln47_1_fu_253_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln54_fu_259_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln54_1_fu_263_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln54_2_fu_267_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln54_1_v_fu_275_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln54_fu_245_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln51_fu_297_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_lower_fu_309_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_396_p3 : STD_LOGIC_VECTOR (32 downto 0);
    signal grp_fu_405_p3 : STD_LOGIC_VECTOR (32 downto 0);
    signal temp_R_V_fu_344_p4 : STD_LOGIC_VECTOR (21 downto 0);
    signal temp_I_V_fu_353_p4 : STD_LOGIC_VECTOR (21 downto 0);
    signal mul_ln700_fu_390_p0 : STD_LOGIC_VECTOR (12 downto 0);
    signal sext_ln54_fu_331_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal mul_ln700_fu_390_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1118_fu_337_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal grp_fu_396_p0 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln54_1_fu_334_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal grp_fu_396_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1118_4_fu_340_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal mul_ln700_fu_390_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal grp_fu_405_p0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_fu_405_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal mul_ln1192_fu_413_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal mul_ln1192_fu_413_p0 : STD_LOGIC_VECTOR (11 downto 0);
    signal mul_ln1192_fu_413_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component fft_streaming_muldEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (12 downto 0);
        din1 : IN STD_LOGIC_VECTOR (21 downto 0);
        dout : OUT STD_LOGIC_VECTOR (32 downto 0) );
    end component;


    component fft_streaming_maceOg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (11 downto 0);
        din1 : IN STD_LOGIC_VECTOR (21 downto 0);
        din2 : IN STD_LOGIC_VECTOR (32 downto 0);
        dout : OUT STD_LOGIC_VECTOR (32 downto 0) );
    end component;


    component fft_streaming_macfYi IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (12 downto 0);
        din1 : IN STD_LOGIC_VECTOR (21 downto 0);
        din2 : IN STD_LOGIC_VECTOR (32 downto 0);
        dout : OUT STD_LOGIC_VECTOR (32 downto 0) );
    end component;


    component fft_streaming_mulg8j IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (11 downto 0);
        din1 : IN STD_LOGIC_VECTOR (21 downto 0);
        dout : OUT STD_LOGIC_VECTOR (32 downto 0) );
    end component;


    component fft_stage_127_W_rbkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (12 downto 0) );
    end component;


    component fft_stage_127_W_icud IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (11 downto 0) );
    end component;



begin
    W_real_V61_U : component fft_stage_127_W_rbkb
    generic map (
        DataWidth => 13,
        AddressRange => 512,
        AddressWidth => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => W_real_V61_address0,
        ce0 => W_real_V61_ce0,
        q0 => W_real_V61_q0);

    W_imag_V53_U : component fft_stage_127_W_icud
    generic map (
        DataWidth => 12,
        AddressRange => 512,
        AddressWidth => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => W_imag_V53_address0,
        ce0 => W_imag_V53_ce0,
        q0 => W_imag_V53_q0);

    fft_streaming_muldEe_U71 : component fft_streaming_muldEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 13,
        din1_WIDTH => 22,
        dout_WIDTH => 33)
    port map (
        din0 => mul_ln700_fu_390_p0,
        din1 => mul_ln700_fu_390_p1,
        dout => mul_ln700_fu_390_p2);

    fft_streaming_maceOg_U72 : component fft_streaming_maceOg
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 12,
        din1_WIDTH => 22,
        din2_WIDTH => 33,
        dout_WIDTH => 33)
    port map (
        din0 => grp_fu_396_p0,
        din1 => grp_fu_396_p1,
        din2 => mul_ln700_fu_390_p2,
        dout => grp_fu_396_p3);

    fft_streaming_macfYi_U73 : component fft_streaming_macfYi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 13,
        din1_WIDTH => 22,
        din2_WIDTH => 33,
        dout_WIDTH => 33)
    port map (
        din0 => grp_fu_405_p0,
        din1 => grp_fu_405_p1,
        din2 => mul_ln1192_fu_413_p2,
        dout => grp_fu_405_p3);

    fft_streaming_mulg8j_U74 : component fft_streaming_mulg8j
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 12,
        din1_WIDTH => 22,
        dout_WIDTH => 33)
    port map (
        din0 => mul_ln1192_fu_413_p0,
        din1 => mul_ln1192_fu_413_p1,
        dout => mul_ln1192_fu_413_p2);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
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
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_reg_194_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln47_fu_227_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                indvar_flatten_reg_194 <= add_ln47_fu_233_p2;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten_reg_194 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    j_0_reg_205_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln47_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                j_0_reg_205 <= select_ln47_reg_439;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                j_0_reg_205 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    t_0_reg_216_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln47_fu_227_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                t_0_reg_216 <= t_fu_320_p2;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_0_reg_216 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln47_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                W_imag_V53_load_reg_471 <= W_imag_V53_q0;
                W_real_V61_load_reg_466 <= W_real_V61_q0;
                    zext_ln60_reg_486(9 downto 0) <= zext_ln60_fu_326_p1(9 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln47_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                X_R_8_V_load_reg_476 <= X_R_8_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln47_fu_227_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_reg_444 <= i_fu_301_p3;
                    zext_ln58_reg_449(9 downto 0) <= zext_ln58_fu_315_p1(9 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln47_reg_420 <= icmp_ln47_fu_227_p2;
                icmp_ln47_reg_420_pp0_iter1_reg <= icmp_ln47_reg_420;
                    zext_ln58_reg_449_pp0_iter1_reg(9 downto 0) <= zext_ln58_reg_449(9 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln47_fu_227_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                select_ln47_reg_439 <= select_ln47_fu_289_p3;
            end if;
        end if;
    end process;
    zext_ln58_reg_449(63 downto 10) <= "000000000000000000000000000000000000000000000000000000";
    zext_ln58_reg_449_pp0_iter1_reg(63 downto 10) <= "000000000000000000000000000000000000000000000000000000";
    zext_ln60_reg_486(63 downto 10) <= "000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln47_fu_227_p2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln47_fu_227_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((icmp_ln47_fu_227_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    Out_I_9_V_address0 <= zext_ln58_reg_449_pp0_iter1_reg(10 - 1 downto 0);
    Out_I_9_V_address1 <= zext_ln60_reg_486(10 - 1 downto 0);

    Out_I_9_V_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            Out_I_9_V_ce0 <= ap_const_logic_1;
        else 
            Out_I_9_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    Out_I_9_V_ce1_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            Out_I_9_V_ce1 <= ap_const_logic_1;
        else 
            Out_I_9_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    Out_I_9_V_d0 <= std_logic_vector(unsigned(X_I_8_V_q1) - unsigned(temp_I_V_fu_353_p4));
    Out_I_9_V_d1 <= std_logic_vector(unsigned(temp_I_V_fu_353_p4) + unsigned(X_I_8_V_q1));

    Out_I_9_V_we0_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln47_reg_420_pp0_iter1_reg, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln47_reg_420_pp0_iter1_reg = ap_const_lv1_0))) then 
            Out_I_9_V_we0 <= ap_const_logic_1;
        else 
            Out_I_9_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    Out_I_9_V_we1_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln47_reg_420_pp0_iter1_reg, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln47_reg_420_pp0_iter1_reg = ap_const_lv1_0))) then 
            Out_I_9_V_we1 <= ap_const_logic_1;
        else 
            Out_I_9_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    Out_R_9_V_address0 <= zext_ln58_reg_449_pp0_iter1_reg(10 - 1 downto 0);
    Out_R_9_V_address1 <= zext_ln60_reg_486(10 - 1 downto 0);

    Out_R_9_V_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            Out_R_9_V_ce0 <= ap_const_logic_1;
        else 
            Out_R_9_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    Out_R_9_V_ce1_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            Out_R_9_V_ce1 <= ap_const_logic_1;
        else 
            Out_R_9_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    Out_R_9_V_d0 <= std_logic_vector(unsigned(X_R_8_V_q1) - unsigned(temp_R_V_fu_344_p4));
    Out_R_9_V_d1 <= std_logic_vector(unsigned(temp_R_V_fu_344_p4) + unsigned(X_R_8_V_q1));

    Out_R_9_V_we0_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln47_reg_420_pp0_iter1_reg, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln47_reg_420_pp0_iter1_reg = ap_const_lv1_0))) then 
            Out_R_9_V_we0 <= ap_const_logic_1;
        else 
            Out_R_9_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    Out_R_9_V_we1_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln47_reg_420_pp0_iter1_reg, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln47_reg_420_pp0_iter1_reg = ap_const_lv1_0))) then 
            Out_R_9_V_we1 <= ap_const_logic_1;
        else 
            Out_R_9_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    W_imag_V53_address0 <= zext_ln54_fu_283_p1(9 - 1 downto 0);

    W_imag_V53_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            W_imag_V53_ce0 <= ap_const_logic_1;
        else 
            W_imag_V53_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    W_real_V61_address0 <= zext_ln54_fu_283_p1(9 - 1 downto 0);

    W_real_V61_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            W_real_V61_ce0 <= ap_const_logic_1;
        else 
            W_real_V61_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    X_I_8_V_address0 <= zext_ln58_reg_449(10 - 1 downto 0);
    X_I_8_V_address1 <= zext_ln60_fu_326_p1(10 - 1 downto 0);

    X_I_8_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            X_I_8_V_ce0 <= ap_const_logic_1;
        else 
            X_I_8_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    X_I_8_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            X_I_8_V_ce1 <= ap_const_logic_1;
        else 
            X_I_8_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    X_R_8_V_address0 <= zext_ln58_fu_315_p1(10 - 1 downto 0);
    X_R_8_V_address1 <= zext_ln60_fu_326_p1(10 - 1 downto 0);

    X_R_8_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            X_R_8_V_ce0 <= ap_const_logic_1;
        else 
            X_R_8_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    X_R_8_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            X_R_8_V_ce1 <= ap_const_logic_1;
        else 
            X_R_8_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln47_1_fu_253_p2 <= std_logic_vector(unsigned(ap_const_lv9_1) + unsigned(ap_phi_mux_j_0_phi_fu_209_p4));
    add_ln47_fu_233_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_194) + unsigned(ap_const_lv10_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state5 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln47_fu_227_p2)
    begin
        if ((icmp_ln47_fu_227_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_j_0_phi_fu_209_p4_assign_proc : process(j_0_reg_205, icmp_ln47_reg_420, ap_CS_fsm_pp0_stage0, select_ln47_reg_439, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((icmp_ln47_reg_420 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_j_0_phi_fu_209_p4 <= select_ln47_reg_439;
        else 
            ap_phi_mux_j_0_phi_fu_209_p4 <= j_0_reg_205;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_396_p0 <= sext_ln54_1_fu_334_p1(12 - 1 downto 0);
    grp_fu_396_p1 <= sext_ln1118_4_fu_340_p1(22 - 1 downto 0);
    grp_fu_405_p0 <= sext_ln54_fu_331_p1(13 - 1 downto 0);
    grp_fu_405_p1 <= sext_ln1118_4_fu_340_p1(22 - 1 downto 0);
    i_fu_301_p3 <= (trunc_ln51_fu_297_p1 & select_ln47_fu_289_p3);
    i_lower_fu_309_p2 <= std_logic_vector(unsigned(ap_const_lv10_100) + unsigned(i_fu_301_p3));
    icmp_ln47_fu_227_p2 <= "1" when (indvar_flatten_reg_194 = ap_const_lv10_200) else "0";
    icmp_ln50_fu_239_p2 <= "1" when (t_0_reg_216 = ap_const_lv2_2) else "0";
    mul_ln1192_fu_413_p0 <= sext_ln54_1_fu_334_p1(12 - 1 downto 0);
    mul_ln1192_fu_413_p1 <= sext_ln1118_fu_337_p1(22 - 1 downto 0);
    mul_ln700_fu_390_p0 <= sext_ln54_fu_331_p1(13 - 1 downto 0);
    mul_ln700_fu_390_p1 <= sext_ln1118_fu_337_p1(22 - 1 downto 0);
    select_ln47_fu_289_p3 <= 
        add_ln47_1_fu_253_p2 when (icmp_ln50_fu_239_p2(0) = '1') else 
        ap_phi_mux_j_0_phi_fu_209_p4;
    select_ln54_1_v_fu_275_p3 <= (select_ln54_2_fu_267_p3 & ap_const_lv1_0);
    select_ln54_2_fu_267_p3 <= 
        trunc_ln54_fu_259_p1 when (icmp_ln50_fu_239_p2(0) = '1') else 
        trunc_ln54_1_fu_263_p1;
    select_ln54_fu_245_p3 <= 
        ap_const_lv2_0 when (icmp_ln50_fu_239_p2(0) = '1') else 
        t_0_reg_216;
        sext_ln1118_4_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(X_I_8_V_q0),33));

        sext_ln1118_fu_337_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(X_R_8_V_load_reg_476),33));

        sext_ln54_1_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(W_imag_V53_load_reg_471),33));

        sext_ln54_fu_331_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(W_real_V61_load_reg_466),33));

    t_fu_320_p2 <= std_logic_vector(unsigned(ap_const_lv2_1) + unsigned(select_ln54_fu_245_p3));
    temp_I_V_fu_353_p4 <= grp_fu_405_p3(32 downto 11);
    temp_R_V_fu_344_p4 <= grp_fu_396_p3(32 downto 11);
    trunc_ln51_fu_297_p1 <= select_ln54_fu_245_p3(1 - 1 downto 0);
    trunc_ln54_1_fu_263_p1 <= ap_phi_mux_j_0_phi_fu_209_p4(8 - 1 downto 0);
    trunc_ln54_fu_259_p1 <= add_ln47_1_fu_253_p2(8 - 1 downto 0);
    zext_ln54_fu_283_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln54_1_v_fu_275_p3),64));
    zext_ln58_fu_315_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_lower_fu_309_p2),64));
    zext_ln60_fu_326_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_444),64));
end behav;
