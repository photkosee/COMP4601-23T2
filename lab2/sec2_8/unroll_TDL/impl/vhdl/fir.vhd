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
    "fir,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xqzu5ev-ffrb900-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.435000,HLS_SYN_LAT=32,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=2,HLS_SYN_FF=320,HLS_SYN_LUT=313,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv5_A : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv4_5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal shift_reg_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal shift_reg_ce0 : STD_LOGIC;
    signal shift_reg_we0 : STD_LOGIC;
    signal shift_reg_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_address1 : STD_LOGIC_VECTOR (3 downto 0);
    signal shift_reg_ce1 : STD_LOGIC;
    signal shift_reg_we1 : STD_LOGIC;
    signal shift_reg_d1 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_q1 : STD_LOGIC_VECTOR (31 downto 0);
    signal c1_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal c1_ce0 : STD_LOGIC;
    signal c1_q0 : STD_LOGIC_VECTOR (9 downto 0);
    signal reg_148 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal reg_153 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_load_2_reg_198 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal shift_reg_load_3_reg_203 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_load_4_reg_208 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal shift_reg_load_5_reg_213 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_load_6_reg_218 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal shift_reg_load_7_reg_223 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal tmp_fu_162_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_176_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_241 : STD_LOGIC_VECTOR (4 downto 0);
    signal acc_fu_192_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal acc_0_reg_124 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal i_1_reg_137 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln25_fu_170_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal sext_ln24_fu_158_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln25_fu_186_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln25_fu_186_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal mul_ln25_fu_186_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);

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
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        address1 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (31 downto 0);
        q1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
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
        q0 => shift_reg_q0,
        address1 => shift_reg_address1,
        ce1 => shift_reg_ce1,
        we1 => shift_reg_we1,
        d1 => shift_reg_d1,
        q1 => shift_reg_q1);

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


    acc_0_reg_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                acc_0_reg_124 <= acc_fu_192_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                acc_0_reg_124 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    i_1_reg_137_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                i_1_reg_137 <= i_reg_241;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                i_1_reg_137 <= ap_const_lv5_A;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_162_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                i_reg_241 <= i_fu_176_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state2))) then
                reg_148 <= shift_reg_q0;
                reg_153 <= shift_reg_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                shift_reg_load_2_reg_198 <= shift_reg_q0;
                shift_reg_load_3_reg_203 <= shift_reg_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                shift_reg_load_4_reg_208 <= shift_reg_q0;
                shift_reg_load_5_reg_213 <= shift_reg_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                shift_reg_load_6_reg_218 <= shift_reg_q0;
                shift_reg_load_7_reg_223 <= shift_reg_q1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state11, tmp_fu_162_p3)
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
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                if (((tmp_fu_162_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state12;
                end if;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    acc_fu_192_p2 <= std_logic_vector(unsigned(mul_ln25_fu_186_p2) + unsigned(acc_0_reg_124));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state11, tmp_fu_162_p3)
    begin
        if (((tmp_fu_162_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state11, tmp_fu_162_p3)
    begin
        if (((tmp_fu_162_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c1_address0 <= zext_ln25_fu_170_p1(4 - 1 downto 0);

    c1_ce0_assign_proc : process(ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            c1_ce0 <= ap_const_logic_1;
        else 
            c1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_176_p2 <= std_logic_vector(signed(i_1_reg_137) + signed(ap_const_lv5_1F));
    mul_ln25_fu_186_p0 <= shift_reg_q0;
    mul_ln25_fu_186_p1 <= c1_q0;
    mul_ln25_fu_186_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mul_ln25_fu_186_p0) * signed(mul_ln25_fu_186_p1))), 32));
        sext_ln24_fu_158_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_1_reg_137),32));


    shift_reg_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state6, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state11, ap_CS_fsm_state10, zext_ln25_fu_170_p1, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            shift_reg_address0 <= zext_ln25_fu_170_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            shift_reg_address0 <= ap_const_lv4_2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            shift_reg_address0 <= ap_const_lv4_4;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            shift_reg_address0 <= ap_const_lv4_6;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            shift_reg_address0 <= ap_const_lv4_8;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            shift_reg_address0 <= ap_const_lv4_A;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            shift_reg_address0 <= ap_const_lv4_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            shift_reg_address0 <= ap_const_lv4_3;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            shift_reg_address0 <= ap_const_lv4_5;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            shift_reg_address0 <= ap_const_lv4_7;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            shift_reg_address0 <= ap_const_lv4_9;
        else 
            shift_reg_address0 <= "XXXX";
        end if; 
    end process;


    shift_reg_address1_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state6, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state10, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            shift_reg_address1 <= ap_const_lv4_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            shift_reg_address1 <= ap_const_lv4_3;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            shift_reg_address1 <= ap_const_lv4_5;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            shift_reg_address1 <= ap_const_lv4_7;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            shift_reg_address1 <= ap_const_lv4_9;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            shift_reg_address1 <= ap_const_lv4_0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            shift_reg_address1 <= ap_const_lv4_2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            shift_reg_address1 <= ap_const_lv4_4;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            shift_reg_address1 <= ap_const_lv4_6;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            shift_reg_address1 <= ap_const_lv4_8;
        else 
            shift_reg_address1 <= "XXXX";
        end if; 
    end process;


    shift_reg_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state6, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state11, ap_CS_fsm_state10, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state10) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            shift_reg_ce0 <= ap_const_logic_1;
        else 
            shift_reg_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    shift_reg_ce1_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state6, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state10, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state10) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            shift_reg_ce1 <= ap_const_logic_1;
        else 
            shift_reg_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    shift_reg_d0_assign_proc : process(reg_148, ap_CS_fsm_state6, shift_reg_load_2_reg_198, shift_reg_load_4_reg_208, shift_reg_load_6_reg_218, ap_CS_fsm_state10, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            shift_reg_d0 <= shift_reg_load_6_reg_218;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            shift_reg_d0 <= shift_reg_load_4_reg_208;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            shift_reg_d0 <= shift_reg_load_2_reg_198;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            shift_reg_d0 <= reg_148;
        else 
            shift_reg_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    shift_reg_d1_assign_proc : process(x, ap_CS_fsm_state6, reg_153, shift_reg_load_3_reg_203, shift_reg_load_5_reg_213, ap_CS_fsm_state5, shift_reg_load_7_reg_223, ap_CS_fsm_state10, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            shift_reg_d1 <= shift_reg_load_7_reg_223;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            shift_reg_d1 <= shift_reg_load_5_reg_213;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            shift_reg_d1 <= shift_reg_load_3_reg_203;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            shift_reg_d1 <= reg_153;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            shift_reg_d1 <= x;
        else 
            shift_reg_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    shift_reg_we0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state10, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            shift_reg_we0 <= ap_const_logic_1;
        else 
            shift_reg_we0 <= ap_const_logic_0;
        end if; 
    end process;


    shift_reg_we1_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state5, ap_CS_fsm_state10, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            shift_reg_we1 <= ap_const_logic_1;
        else 
            shift_reg_we1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_162_p3 <= i_1_reg_137(4 downto 4);
    y <= acc_0_reg_124;

    y_ap_vld_assign_proc : process(ap_CS_fsm_state11, tmp_fu_162_p3)
    begin
        if (((tmp_fu_162_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            y_ap_vld <= ap_const_logic_1;
        else 
            y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln25_fu_170_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln24_fu_158_p1),64));
end behav;
