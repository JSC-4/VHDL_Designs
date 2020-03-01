-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Mar  1 09:41:25 2020
-- Host        : jsc-ubuntu running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/jsc/Documents/Xilinx/VHDL_Designs/clk_divider/clk_divider.sim/sim_1/synth/func/xsim/clk_div_tb_func_synth.vhd
-- Design      : clk_div
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_div is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    o_clk : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of clk_div : entity is true;
  attribute FREQ_IN : integer;
  attribute FREQ_IN of clk_div : entity is 100000000;
  attribute FREQ_OUT : integer;
  attribute FREQ_OUT of clk_div : entity is 100;
end clk_div;

architecture STRUCTURE of clk_div is
  signal data0 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_rst_IBUF : STD_LOGIC;
  signal o_clk_OBUF : STD_LOGIC;
  signal t_clk_i_1_n_0 : STD_LOGIC;
  signal t_counter : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \t_counter[18]_i_2_n_0\ : STD_LOGIC;
  signal \t_counter[18]_i_3_n_0\ : STD_LOGIC;
  signal \t_counter[18]_i_4_n_0\ : STD_LOGIC;
  signal \t_counter[18]_i_5_n_0\ : STD_LOGIC;
  signal \t_counter[18]_i_6_n_0\ : STD_LOGIC;
  signal \t_counter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \t_counter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \t_counter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \t_counter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \t_counter_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \t_counter_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \t_counter_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \t_counter_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \t_counter_reg[18]_i_7_n_3\ : STD_LOGIC;
  signal \t_counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \t_counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \t_counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \t_counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \t_counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \t_counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \t_counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \t_counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \t_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_t_counter_reg[18]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_t_counter_reg[18]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \t_counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \t_counter[18]_i_4\ : label is "soft_lutpair0";
begin
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
o_clk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_clk_OBUF,
      O => o_clk
    );
t_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => o_clk_OBUF,
      O => t_clk_i_1_n_0
    );
t_clk_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_clk_i_1_n_0,
      Q => o_clk_OBUF
    );
\t_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \t_counter_reg_n_0_[0]\,
      O => t_counter(0)
    );
\t_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(10),
      O => t_counter(10)
    );
\t_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(11),
      O => t_counter(11)
    );
\t_counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(12),
      O => t_counter(12)
    );
\t_counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(13),
      O => t_counter(13)
    );
\t_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(14),
      O => t_counter(14)
    );
\t_counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(15),
      O => t_counter(15)
    );
\t_counter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(16),
      O => t_counter(16)
    );
\t_counter[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(17),
      O => t_counter(17)
    );
\t_counter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(18),
      O => t_counter(18)
    );
\t_counter[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \t_counter_reg_n_0_[2]\,
      I1 => \t_counter_reg_n_0_[1]\,
      I2 => \t_counter_reg_n_0_[4]\,
      I3 => \t_counter_reg_n_0_[3]\,
      O => \t_counter[18]_i_2_n_0\
    );
\t_counter[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \t_counter_reg_n_0_[13]\,
      I1 => \t_counter_reg_n_0_[14]\,
      I2 => \t_counter_reg_n_0_[16]\,
      I3 => \t_counter_reg_n_0_[15]\,
      O => \t_counter[18]_i_3_n_0\
    );
\t_counter[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \t_counter_reg_n_0_[18]\,
      I1 => \t_counter_reg_n_0_[17]\,
      I2 => \t_counter_reg_n_0_[0]\,
      O => \t_counter[18]_i_4_n_0\
    );
\t_counter[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \t_counter_reg_n_0_[10]\,
      I1 => \t_counter_reg_n_0_[9]\,
      I2 => \t_counter_reg_n_0_[12]\,
      I3 => \t_counter_reg_n_0_[11]\,
      O => \t_counter[18]_i_5_n_0\
    );
\t_counter[18]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \t_counter_reg_n_0_[6]\,
      I1 => \t_counter_reg_n_0_[5]\,
      I2 => \t_counter_reg_n_0_[8]\,
      I3 => \t_counter_reg_n_0_[7]\,
      O => \t_counter[18]_i_6_n_0\
    );
\t_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(1),
      O => t_counter(1)
    );
\t_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(2),
      O => t_counter(2)
    );
\t_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(3),
      O => t_counter(3)
    );
\t_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(4),
      O => t_counter(4)
    );
\t_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(5),
      O => t_counter(5)
    );
\t_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(6),
      O => t_counter(6)
    );
\t_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(7),
      O => t_counter(7)
    );
\t_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(8),
      O => t_counter(8)
    );
\t_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \t_counter[18]_i_2_n_0\,
      I1 => \t_counter[18]_i_3_n_0\,
      I2 => \t_counter[18]_i_4_n_0\,
      I3 => \t_counter[18]_i_5_n_0\,
      I4 => \t_counter[18]_i_6_n_0\,
      I5 => data0(9),
      O => t_counter(9)
    );
\t_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(0),
      Q => \t_counter_reg_n_0_[0]\
    );
\t_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(10),
      Q => \t_counter_reg_n_0_[10]\
    );
\t_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(11),
      Q => \t_counter_reg_n_0_[11]\
    );
\t_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(12),
      Q => \t_counter_reg_n_0_[12]\
    );
\t_counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_counter_reg[8]_i_2_n_0\,
      CO(3) => \t_counter_reg[12]_i_2_n_0\,
      CO(2) => \t_counter_reg[12]_i_2_n_1\,
      CO(1) => \t_counter_reg[12]_i_2_n_2\,
      CO(0) => \t_counter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \t_counter_reg_n_0_[12]\,
      S(2) => \t_counter_reg_n_0_[11]\,
      S(1) => \t_counter_reg_n_0_[10]\,
      S(0) => \t_counter_reg_n_0_[9]\
    );
\t_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(13),
      Q => \t_counter_reg_n_0_[13]\
    );
\t_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(14),
      Q => \t_counter_reg_n_0_[14]\
    );
\t_counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(15),
      Q => \t_counter_reg_n_0_[15]\
    );
\t_counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(16),
      Q => \t_counter_reg_n_0_[16]\
    );
\t_counter_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_counter_reg[12]_i_2_n_0\,
      CO(3) => \t_counter_reg[16]_i_2_n_0\,
      CO(2) => \t_counter_reg[16]_i_2_n_1\,
      CO(1) => \t_counter_reg[16]_i_2_n_2\,
      CO(0) => \t_counter_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \t_counter_reg_n_0_[16]\,
      S(2) => \t_counter_reg_n_0_[15]\,
      S(1) => \t_counter_reg_n_0_[14]\,
      S(0) => \t_counter_reg_n_0_[13]\
    );
\t_counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(17),
      Q => \t_counter_reg_n_0_[17]\
    );
\t_counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(18),
      Q => \t_counter_reg_n_0_[18]\
    );
\t_counter_reg[18]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_counter_reg[16]_i_2_n_0\,
      CO(3 downto 1) => \NLW_t_counter_reg[18]_i_7_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \t_counter_reg[18]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_t_counter_reg[18]_i_7_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(18 downto 17),
      S(3 downto 2) => B"00",
      S(1) => \t_counter_reg_n_0_[18]\,
      S(0) => \t_counter_reg_n_0_[17]\
    );
\t_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(1),
      Q => \t_counter_reg_n_0_[1]\
    );
\t_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(2),
      Q => \t_counter_reg_n_0_[2]\
    );
\t_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(3),
      Q => \t_counter_reg_n_0_[3]\
    );
\t_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(4),
      Q => \t_counter_reg_n_0_[4]\
    );
\t_counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \t_counter_reg[4]_i_2_n_0\,
      CO(2) => \t_counter_reg[4]_i_2_n_1\,
      CO(1) => \t_counter_reg[4]_i_2_n_2\,
      CO(0) => \t_counter_reg[4]_i_2_n_3\,
      CYINIT => \t_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \t_counter_reg_n_0_[4]\,
      S(2) => \t_counter_reg_n_0_[3]\,
      S(1) => \t_counter_reg_n_0_[2]\,
      S(0) => \t_counter_reg_n_0_[1]\
    );
\t_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(5),
      Q => \t_counter_reg_n_0_[5]\
    );
\t_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(6),
      Q => \t_counter_reg_n_0_[6]\
    );
\t_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(7),
      Q => \t_counter_reg_n_0_[7]\
    );
\t_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(8),
      Q => \t_counter_reg_n_0_[8]\
    );
\t_counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_counter_reg[4]_i_2_n_0\,
      CO(3) => \t_counter_reg[8]_i_2_n_0\,
      CO(2) => \t_counter_reg[8]_i_2_n_1\,
      CO(1) => \t_counter_reg[8]_i_2_n_2\,
      CO(0) => \t_counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \t_counter_reg_n_0_[8]\,
      S(2) => \t_counter_reg_n_0_[7]\,
      S(1) => \t_counter_reg_n_0_[6]\,
      S(0) => \t_counter_reg_n_0_[5]\
    );
\t_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => t_counter(9),
      Q => \t_counter_reg_n_0_[9]\
    );
end STRUCTURE;
