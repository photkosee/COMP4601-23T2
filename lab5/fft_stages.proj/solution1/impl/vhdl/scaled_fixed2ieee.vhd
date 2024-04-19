-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity scaled_fixed2ieee is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_V : IN STD_LOGIC_VECTOR (62 downto 0);
    prescale : IN STD_LOGIC_VECTOR (11 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of scaled_fixed2ieee is 
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
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_C : STD_LOGIC_VECTOR (3 downto 0) := "1100";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv17_10000 : STD_LOGIC_VECTOR (16 downto 0) := "10000000000000000";
    constant ap_const_lv6_3E : STD_LOGIC_VECTOR (5 downto 0) := "111110";
    constant ap_const_lv6_2F : STD_LOGIC_VECTOR (5 downto 0) := "101111";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv63_7FFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (62 downto 0) := "111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv12_3FF : STD_LOGIC_VECTOR (11 downto 0) := "001111111111";
    constant ap_const_lv63_0 : STD_LOGIC_VECTOR (62 downto 0) := "000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_3D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111101";
    constant ap_const_lv52_0 : STD_LOGIC_VECTOR (51 downto 0) := "0000000000000000000000000000000000000000000000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_243_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reg_607 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal out_bits_V_addr_1_reg_612 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln423_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_fu_405_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_1_reg_620 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln435_fu_411_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln435_reg_625 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln434_fu_399_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln441_fu_435_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln441_reg_635 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i_2_fu_441_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_2_reg_639 : STD_LOGIC_VECTOR (2 downto 0);
    signal shift_fu_452_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal r_V_30_fu_497_p3 : STD_LOGIC_VECTOR (62 downto 0);
    signal out_bits_V_address0 : STD_LOGIC_VECTOR (1 downto 0);
    signal out_bits_V_ce0 : STD_LOGIC;
    signal out_bits_V_we0 : STD_LOGIC_VECTOR (3 downto 0);
    signal out_bits_V_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal out_bits_V_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_address0 : STD_LOGIC_VECTOR (1 downto 0);
    signal c_ce0 : STD_LOGIC;
    signal c_we0 : STD_LOGIC;
    signal c_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_0_reg_161 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i1_0_reg_173 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal p_0119_0_reg_184 : STD_LOGIC_VECTOR (62 downto 0);
    signal icmp_ln444_fu_506_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal shift_0_reg_194 : STD_LOGIC_VECTOR (31 downto 0);
    signal i2_0_reg_206 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_phi_mux_p_Val2_4_in_phi_fu_220_p4 : STD_LOGIC_VECTOR (62 downto 0);
    signal p_Val2_4_in_reg_217 : STD_LOGIC_VECTOR (62 downto 0);
    signal ap_phi_mux_shift_1_phi_fu_230_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_1_reg_227 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln424_fu_249_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln442_fu_447_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_257_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_2_fu_386_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln566_fu_254_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal shl_ln_fu_266_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln425_fu_280_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln424_fu_274_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln566_fu_286_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln566_fu_301_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln566_2_fu_313_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_8_fu_292_p4 : STD_LOGIC_VECTOR (62 downto 0);
    signal sub_ln566_1_fu_307_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln566_fu_319_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln566_2_fu_334_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln566_3_fu_342_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln566_1_fu_327_p3 : STD_LOGIC_VECTOR (62 downto 0);
    signal zext_ln566_fu_348_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal zext_ln566_1_fu_352_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal lshr_ln566_fu_356_p2 : STD_LOGIC_VECTOR (62 downto 0);
    signal lshr_ln566_1_fu_362_p2 : STD_LOGIC_VECTOR (62 downto 0);
    signal p_Result_s_fu_368_p2 : STD_LOGIC_VECTOR (62 downto 0);
    signal trunc_ln169_fu_374_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_2_fu_378_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal p_Result_22_fu_416_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal isNeg_fu_459_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln1311_fu_467_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ush_fu_473_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln1287_fu_481_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal r_V_fu_485_p2 : STD_LOGIC_VECTOR (62 downto 0);
    signal r_V_28_fu_491_p2 : STD_LOGIC_VECTOR (62 downto 0);
    signal sub_ln452_fu_512_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln452_fu_517_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal newexp_fu_521_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_10_fu_527_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1452_fu_535_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln453_fu_540_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal phitmp1_fu_550_p4 : STD_LOGIC_VECTOR (51 downto 0);
    signal empty_51_fu_546_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal out_exp_V_fu_568_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal significand_V_fu_560_p3 : STD_LOGIC_VECTOR (51 downto 0);
    signal p_Result_23_fu_576_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal bitcast_ln512_fu_586_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);

    component scaled_fixed2ieeebkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (1 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC_VECTOR (3 downto 0);
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component scaled_fixed2ieee_c IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (1 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    out_bits_V_U : component scaled_fixed2ieeebkb
    generic map (
        DataWidth => 32,
        AddressRange => 4,
        AddressWidth => 2)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => out_bits_V_address0,
        ce0 => out_bits_V_ce0,
        we0 => out_bits_V_we0,
        d0 => out_bits_V_d0,
        q0 => out_bits_V_q0);

    c_U : component scaled_fixed2ieee_c
    generic map (
        DataWidth => 32,
        AddressRange => 4,
        AddressWidth => 2)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => c_address0,
        ce0 => c_ce0,
        we0 => c_we0,
        d0 => c_d0,
        q0 => c_q0);





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


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg(0) <= '0';
                ap_return_preg(1) <= '0';
                ap_return_preg(2) <= '0';
                ap_return_preg(3) <= '0';
                ap_return_preg(4) <= '0';
                ap_return_preg(5) <= '0';
                ap_return_preg(6) <= '0';
                ap_return_preg(7) <= '0';
                ap_return_preg(8) <= '0';
                ap_return_preg(9) <= '0';
                ap_return_preg(10) <= '0';
                ap_return_preg(11) <= '0';
                ap_return_preg(12) <= '0';
                ap_return_preg(13) <= '0';
                ap_return_preg(14) <= '0';
                ap_return_preg(15) <= '0';
                ap_return_preg(16) <= '0';
                ap_return_preg(17) <= '0';
                ap_return_preg(18) <= '0';
                ap_return_preg(19) <= '0';
                ap_return_preg(20) <= '0';
                ap_return_preg(21) <= '0';
                ap_return_preg(22) <= '0';
                ap_return_preg(23) <= '0';
                ap_return_preg(24) <= '0';
                ap_return_preg(25) <= '0';
                ap_return_preg(26) <= '0';
                ap_return_preg(27) <= '0';
                ap_return_preg(28) <= '0';
                ap_return_preg(29) <= '0';
                ap_return_preg(30) <= '0';
                ap_return_preg(31) <= '0';
                ap_return_preg(32) <= '0';
                ap_return_preg(33) <= '0';
                ap_return_preg(34) <= '0';
                ap_return_preg(35) <= '0';
                ap_return_preg(36) <= '0';
                ap_return_preg(37) <= '0';
                ap_return_preg(38) <= '0';
                ap_return_preg(39) <= '0';
                ap_return_preg(40) <= '0';
                ap_return_preg(41) <= '0';
                ap_return_preg(42) <= '0';
                ap_return_preg(43) <= '0';
                ap_return_preg(44) <= '0';
                ap_return_preg(45) <= '0';
                ap_return_preg(46) <= '0';
                ap_return_preg(47) <= '0';
                ap_return_preg(48) <= '0';
                ap_return_preg(49) <= '0';
                ap_return_preg(50) <= '0';
                ap_return_preg(51) <= '0';
                ap_return_preg(52) <= '0';
                ap_return_preg(53) <= '0';
                ap_return_preg(54) <= '0';
                ap_return_preg(55) <= '0';
                ap_return_preg(56) <= '0';
                ap_return_preg(57) <= '0';
                ap_return_preg(58) <= '0';
                ap_return_preg(59) <= '0';
                ap_return_preg(60) <= '0';
                ap_return_preg(61) <= '0';
                ap_return_preg(62) <= '0';
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and ((icmp_ln441_reg_635 = ap_const_lv1_1) or (icmp_ln444_fu_506_p2 = ap_const_lv1_0)))) then 
                                        ap_return_preg(62 downto 0) <= bitcast_ln512_fu_586_p1(62 downto 0);
                end if; 
            end if;
        end if;
    end process;


    i1_0_reg_173_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i1_0_reg_173 <= i_1_reg_620;
            elsif (((icmp_ln423_fu_237_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i1_0_reg_173 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    i2_0_reg_206_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln434_fu_399_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i2_0_reg_206 <= ap_const_lv3_0;
            elsif (((icmp_ln441_reg_635 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln444_fu_506_p2 = ap_const_lv1_1))) then 
                i2_0_reg_206 <= i_2_reg_639;
            end if; 
        end if;
    end process;

    i_0_reg_161_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_161 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_0_reg_161 <= i_reg_607;
            end if; 
        end if;
    end process;

    p_0119_0_reg_184_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln434_fu_399_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_0119_0_reg_184 <= in_V;
            elsif (((icmp_ln441_reg_635 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln444_fu_506_p2 = ap_const_lv1_1))) then 
                p_0119_0_reg_184 <= r_V_30_fu_497_p3;
            end if; 
        end if;
    end process;

    p_Val2_4_in_reg_217_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln441_reg_635 = ap_const_lv1_0) and (icmp_ln444_fu_506_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                p_Val2_4_in_reg_217 <= r_V_30_fu_497_p3;
            elsif (((icmp_ln441_fu_435_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                p_Val2_4_in_reg_217 <= p_0119_0_reg_184;
            end if; 
        end if;
    end process;

    shift_0_reg_194_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln434_fu_399_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                shift_0_reg_194 <= ap_const_lv32_0;
            elsif (((icmp_ln441_reg_635 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln444_fu_506_p2 = ap_const_lv1_1))) then 
                shift_0_reg_194 <= shift_fu_452_p2;
            end if; 
        end if;
    end process;

    shift_1_reg_227_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln441_reg_635 = ap_const_lv1_0) and (icmp_ln444_fu_506_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                shift_1_reg_227 <= shift_fu_452_p2;
            elsif (((icmp_ln441_fu_435_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                shift_1_reg_227 <= shift_0_reg_194;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_1_reg_620 <= i_1_fu_405_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                i_2_reg_639 <= i_2_fu_441_p2;
                icmp_ln441_reg_635 <= icmp_ln441_fu_435_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_607 <= i_fu_243_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln423_fu_237_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                out_bits_V_addr_1_reg_612 <= zext_ln424_fu_249_p1(2 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln434_fu_399_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    zext_ln435_reg_625(2 downto 0) <= zext_ln435_fu_411_p1(2 downto 0);
            end if;
        end if;
    end process;
    zext_ln435_reg_625(63 downto 3) <= "0000000000000000000000000000000000000000000000000000000000000";
    ap_return_preg(63) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln423_fu_237_p2, ap_CS_fsm_state4, icmp_ln434_fu_399_p2, icmp_ln441_reg_635, ap_CS_fsm_state7, icmp_ln444_fu_506_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln423_fu_237_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln434_fu_399_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and ((icmp_ln441_reg_635 = ap_const_lv1_1) or (icmp_ln444_fu_506_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, icmp_ln441_reg_635, ap_CS_fsm_state7, icmp_ln444_fu_506_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state7) and ((icmp_ln441_reg_635 = ap_const_lv1_1) or (icmp_ln444_fu_506_p2 = ap_const_lv1_0))) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_phi_mux_p_Val2_4_in_phi_fu_220_p4_assign_proc : process(icmp_ln441_reg_635, ap_CS_fsm_state7, r_V_30_fu_497_p3, icmp_ln444_fu_506_p2, p_Val2_4_in_reg_217)
    begin
        if (((icmp_ln441_reg_635 = ap_const_lv1_0) and (icmp_ln444_fu_506_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            ap_phi_mux_p_Val2_4_in_phi_fu_220_p4 <= r_V_30_fu_497_p3;
        else 
            ap_phi_mux_p_Val2_4_in_phi_fu_220_p4 <= p_Val2_4_in_reg_217;
        end if; 
    end process;


    ap_phi_mux_shift_1_phi_fu_230_p4_assign_proc : process(icmp_ln441_reg_635, shift_fu_452_p2, ap_CS_fsm_state7, icmp_ln444_fu_506_p2, shift_1_reg_227)
    begin
        if (((icmp_ln441_reg_635 = ap_const_lv1_0) and (icmp_ln444_fu_506_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            ap_phi_mux_shift_1_phi_fu_230_p4 <= shift_fu_452_p2;
        else 
            ap_phi_mux_shift_1_phi_fu_230_p4 <= shift_1_reg_227;
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln441_reg_635, ap_CS_fsm_state7, icmp_ln444_fu_506_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and ((icmp_ln441_reg_635 = ap_const_lv1_1) or (icmp_ln444_fu_506_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(icmp_ln441_reg_635, ap_CS_fsm_state7, icmp_ln444_fu_506_p2, bitcast_ln512_fu_586_p1, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and ((icmp_ln441_reg_635 = ap_const_lv1_1) or (icmp_ln444_fu_506_p2 = ap_const_lv1_0)))) then 
            ap_return <= bitcast_ln512_fu_586_p1;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    bitcast_ln512_fu_586_p1 <= p_Result_23_fu_576_p4;

    c_address0_assign_proc : process(zext_ln435_reg_625, ap_CS_fsm_state6, ap_CS_fsm_state5, zext_ln442_fu_447_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            c_address0 <= zext_ln442_fu_447_p1(2 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            c_address0 <= zext_ln435_reg_625(2 - 1 downto 0);
        else 
            c_address0 <= "XX";
        end if; 
    end process;


    c_ce0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    
    c_d0_proc : process(p_Result_22_fu_416_p4)
    begin
        c_d0 <= std_logic_vector(to_unsigned(32, 32));
        for i in 0 to 32 - 1 loop
            if p_Result_22_fu_416_p4(i) = '1' then
                c_d0 <= std_logic_vector(to_unsigned(i,32));
                exit;
            end if;
        end loop;
    end process;


    c_we0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            c_we0 <= ap_const_logic_1;
        else 
            c_we0 <= ap_const_logic_0;
        end if; 
    end process;

    empty_51_fu_546_p1 <= newexp_fu_521_p2(11 - 1 downto 0);
    i_1_fu_405_p2 <= std_logic_vector(unsigned(i1_0_reg_173) + unsigned(ap_const_lv3_1));
    i_2_fu_441_p2 <= std_logic_vector(unsigned(i2_0_reg_206) + unsigned(ap_const_lv3_1));
    i_fu_243_p2 <= std_logic_vector(unsigned(i_0_reg_161) + unsigned(ap_const_lv2_1));
    icmp_ln1452_fu_535_p2 <= "1" when (in_V = ap_const_lv63_0) else "0";
    icmp_ln423_fu_237_p2 <= "1" when (i_0_reg_161 = ap_const_lv2_3) else "0";
    icmp_ln434_fu_399_p2 <= "1" when (i1_0_reg_173 = ap_const_lv3_4) else "0";
    icmp_ln441_fu_435_p2 <= "1" when (i2_0_reg_206 = ap_const_lv3_4) else "0";
    icmp_ln444_fu_506_p2 <= "1" when (c_q0 = ap_const_lv32_10) else "0";
    icmp_ln566_fu_286_p2 <= "1" when (unsigned(sub_ln425_fu_280_p2) > unsigned(sub_ln424_fu_274_p2)) else "0";
    isNeg_fu_459_p3 <= c_q0(31 downto 31);
    lshr_ln566_1_fu_362_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv63_7FFFFFFFFFFFFFFF),to_integer(unsigned('0' & zext_ln566_1_fu_352_p1(31-1 downto 0)))));
    lshr_ln566_fu_356_p2 <= std_logic_vector(shift_right(unsigned(select_ln566_1_fu_327_p3),to_integer(unsigned('0' & zext_ln566_fu_348_p1(31-1 downto 0)))));
    newexp_fu_521_p2 <= std_logic_vector(signed(sext_ln452_fu_517_p1) - signed(ap_phi_mux_shift_1_phi_fu_230_p4));
    or_ln453_fu_540_p2 <= (tmp_10_fu_527_p3 or icmp_ln1452_fu_535_p2);

    out_bits_V_address0_assign_proc : process(ap_CS_fsm_state2, out_bits_V_addr_1_reg_612, icmp_ln423_fu_237_p2, ap_CS_fsm_state4, zext_ln435_fu_411_p1, ap_CS_fsm_state3, zext_ln424_fu_249_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            out_bits_V_address0 <= zext_ln435_fu_411_p1(2 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            out_bits_V_address0 <= out_bits_V_addr_1_reg_612;
        elsif (((icmp_ln423_fu_237_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            out_bits_V_address0 <= ap_const_lv64_3(2 - 1 downto 0);
        elsif (((icmp_ln423_fu_237_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            out_bits_V_address0 <= zext_ln424_fu_249_p1(2 - 1 downto 0);
        else 
            out_bits_V_address0 <= "XX";
        end if; 
    end process;


    out_bits_V_ce0_assign_proc : process(ap_CS_fsm_state2, icmp_ln423_fu_237_p2, ap_CS_fsm_state4, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or ((icmp_ln423_fu_237_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((icmp_ln423_fu_237_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            out_bits_V_ce0 <= ap_const_logic_1;
        else 
            out_bits_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    out_bits_V_d0_assign_proc : process(ap_CS_fsm_state2, icmp_ln423_fu_237_p2, ap_CS_fsm_state3, tmp_fu_257_p3, p_Result_2_fu_386_p5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            out_bits_V_d0 <= p_Result_2_fu_386_p5;
        elsif (((icmp_ln423_fu_237_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            out_bits_V_d0 <= tmp_fu_257_p3;
        else 
            out_bits_V_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    out_bits_V_we0_assign_proc : process(ap_CS_fsm_state2, icmp_ln423_fu_237_p2, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            out_bits_V_we0 <= ap_const_lv4_F;
        elsif (((icmp_ln423_fu_237_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            out_bits_V_we0 <= ap_const_lv4_C;
        else 
            out_bits_V_we0 <= ap_const_lv4_0;
        end if; 
    end process;

    out_exp_V_fu_568_p3 <= 
        ap_const_lv11_0 when (or_ln453_fu_540_p2(0) = '1') else 
        empty_51_fu_546_p1;
    
    p_Result_22_fu_416_p4_proc : process(out_bits_V_q0)
    variable vlo_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable p_Result_22_fu_416_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(5 - 1 downto 0) := ap_const_lv32_1F(5 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(5 - 1 downto 0) := ap_const_lv32_0(5 - 1 downto 0);
        v0_cpy := out_bits_V_q0;
        if (vlo_cpy(5 - 1 downto 0) > vhi_cpy(5 - 1 downto 0)) then
            vhi_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_0(5-1 downto 0)));
            vlo_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_1F(5-1 downto 0)));
            for p_Result_22_fu_416_p4_i in 0 to 32-1 loop
                v0_cpy(p_Result_22_fu_416_p4_i) := out_bits_V_q0(32-1-p_Result_22_fu_416_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(5-1 downto 0)))));

        section := (others=>'0');
        section(5-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(5-1 downto 0)) - unsigned(vlo_cpy(5-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(32-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        p_Result_22_fu_416_p4 <= resvalue(32-1 downto 0);
    end process;

    p_Result_23_fu_576_p4 <= ((ap_const_lv1_0 & out_exp_V_fu_568_p3) & significand_V_fu_560_p3);
    p_Result_2_fu_386_p5 <= (tmp_2_fu_378_p3 & out_bits_V_q0(14 downto 0));
    p_Result_s_fu_368_p2 <= (lshr_ln566_fu_356_p2 and lshr_ln566_1_fu_362_p2);
    phitmp1_fu_550_p4 <= ap_phi_mux_p_Val2_4_in_phi_fu_220_p4(61 downto 10);
    r_V_28_fu_491_p2 <= std_logic_vector(shift_left(unsigned(p_0119_0_reg_184),to_integer(unsigned('0' & zext_ln1287_fu_481_p1(31-1 downto 0)))));
    r_V_30_fu_497_p3 <= 
        r_V_fu_485_p2 when (isNeg_fu_459_p3(0) = '1') else 
        r_V_28_fu_491_p2;
    r_V_fu_485_p2 <= std_logic_vector(shift_right(signed(p_0119_0_reg_184),to_integer(unsigned('0' & zext_ln1287_fu_481_p1(31-1 downto 0)))));
    select_ln566_1_fu_327_p3 <= 
        tmp_8_fu_292_p4 when (icmp_ln566_fu_286_p2(0) = '1') else 
        in_V;
    select_ln566_2_fu_334_p3 <= 
        sub_ln566_1_fu_307_p2 when (icmp_ln566_fu_286_p2(0) = '1') else 
        sub_ln425_fu_280_p2;
    select_ln566_fu_319_p3 <= 
        sub_ln566_fu_301_p2 when (icmp_ln566_fu_286_p2(0) = '1') else 
        sub_ln566_2_fu_313_p2;
        sext_ln452_fu_517_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln452_fu_512_p2),32));

    shift_fu_452_p2 <= std_logic_vector(unsigned(c_q0) + unsigned(shift_0_reg_194));
    shl_ln_fu_266_p3 <= (i_0_reg_161 & ap_const_lv4_0);
    significand_V_fu_560_p3 <= 
        ap_const_lv52_0 when (or_ln453_fu_540_p2(0) = '1') else 
        phitmp1_fu_550_p4;
    sub_ln1311_fu_467_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(c_q0));
    sub_ln424_fu_274_p2 <= std_logic_vector(signed(ap_const_lv6_3E) - signed(shl_ln_fu_266_p3));
    sub_ln425_fu_280_p2 <= std_logic_vector(signed(ap_const_lv6_2F) - signed(shl_ln_fu_266_p3));
    sub_ln452_fu_512_p2 <= std_logic_vector(unsigned(ap_const_lv12_3FF) - unsigned(prescale));
    sub_ln566_1_fu_307_p2 <= std_logic_vector(signed(ap_const_lv6_3E) - signed(sub_ln425_fu_280_p2));
    sub_ln566_2_fu_313_p2 <= std_logic_vector(unsigned(sub_ln424_fu_274_p2) - unsigned(sub_ln425_fu_280_p2));
    sub_ln566_3_fu_342_p2 <= std_logic_vector(signed(ap_const_lv6_3E) - signed(select_ln566_fu_319_p3));
    sub_ln566_fu_301_p2 <= std_logic_vector(unsigned(sub_ln425_fu_280_p2) - unsigned(sub_ln424_fu_274_p2));
    tmp_10_fu_527_p3 <= newexp_fu_521_p2(31 downto 31);
    tmp_2_fu_378_p3 <= (trunc_ln169_fu_374_p1 & ap_const_lv1_1);
    
    tmp_8_fu_292_p4_proc : process(in_V)
    variable vlo_cpy : STD_LOGIC_VECTOR(63+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(63+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(63 - 1 downto 0);
    variable tmp_8_fu_292_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(63 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(63 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(63 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(6 - 1 downto 0) := ap_const_lv32_3E(6 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(6 - 1 downto 0) := ap_const_lv32_0(6 - 1 downto 0);
        v0_cpy := in_V;
        if (vlo_cpy(6 - 1 downto 0) > vhi_cpy(6 - 1 downto 0)) then
            vhi_cpy(6-1 downto 0) := std_logic_vector(63-1-unsigned(ap_const_lv32_0(6-1 downto 0)));
            vlo_cpy(6-1 downto 0) := std_logic_vector(63-1-unsigned(ap_const_lv32_3E(6-1 downto 0)));
            for tmp_8_fu_292_p4_i in 0 to 63-1 loop
                v0_cpy(tmp_8_fu_292_p4_i) := in_V(63-1-tmp_8_fu_292_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(6-1 downto 0)))));

        section := (others=>'0');
        section(6-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(6-1 downto 0)) - unsigned(vlo_cpy(6-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(63-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_8_fu_292_p4 <= resvalue(63-1 downto 0);
    end process;

    tmp_fu_257_p3 <= (trunc_ln566_fu_254_p1 & ap_const_lv17_10000);
    trunc_ln169_fu_374_p1 <= p_Result_s_fu_368_p2(16 - 1 downto 0);
    trunc_ln566_fu_254_p1 <= in_V(15 - 1 downto 0);
    ush_fu_473_p3 <= 
        sub_ln1311_fu_467_p2 when (isNeg_fu_459_p3(0) = '1') else 
        c_q0;
    zext_ln1287_fu_481_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ush_fu_473_p3),63));
    zext_ln424_fu_249_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_161),64));
    zext_ln435_fu_411_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i1_0_reg_173),64));
    zext_ln442_fu_447_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i2_0_reg_206),64));
    zext_ln566_1_fu_352_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln566_3_fu_342_p2),63));
    zext_ln566_fu_348_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln566_2_fu_334_p3),63));
end behav;