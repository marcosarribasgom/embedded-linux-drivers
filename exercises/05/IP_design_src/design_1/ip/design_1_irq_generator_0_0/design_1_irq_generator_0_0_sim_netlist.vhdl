-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Nov  4 15:21:16 2024
-- Host        : HTC219-309-SPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Temp/19/exercises/05/IP_design_src/design_1/ip/design_1_irq_generator_0_0/design_1_irq_generator_0_0_sim_netlist.vhdl
-- Design      : design_1_irq_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_irq_generator_0_0_irqgen_controller is
  port (
    clear : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \irq_out_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \irq_out_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \introut_state_r_reg[14]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \irq_out_reg[14]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \irq_out_reg[6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \irq_out_reg[14]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    irq_line_handled : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    running_reg_0 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \introut_state_r_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \irq_count_r_reg[0]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \irq_amt_r_reg[11]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_irq_generator_0_0_irqgen_controller : entity is "irqgen_controller";
end design_1_irq_generator_0_0_irqgen_controller;

architecture STRUCTURE of design_1_irq_generator_0_0_irqgen_controller is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^clear\ : STD_LOGIC;
  signal \handled_irq_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \handled_irq_count_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \handled_irq_count_r[0]_i_5_n_0\ : STD_LOGIC;
  signal handled_irq_count_r_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \handled_irq_count_r_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \handled_irq_count_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal irq_amt_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal irq_line_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal irq_out12_out : STD_LOGIC;
  signal \irq_out1_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \irq_out1_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \irq_out1_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \irq_out1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \irq_out1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \irq_out1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \irq_out1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal irq_out2 : STD_LOGIC;
  signal \irq_out2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \irq_out2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \irq_out2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \irq_out2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \irq_out2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \irq_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \irq_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[15]_i_10_n_0\ : STD_LOGIC;
  signal \irq_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \irq_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \irq_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \irq_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \irq_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \irq_out[15]_i_7_n_0\ : STD_LOGIC;
  signal \irq_out[15]_i_8_n_0\ : STD_LOGIC;
  signal \irq_out[15]_i_9_n_0\ : STD_LOGIC;
  signal \irq_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \irq_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \irq_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \irq_out[9]_i_1_n_0\ : STD_LOGIC;
  signal irq_rate_r : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal irq_rate_r0 : STD_LOGIC;
  signal irq_throttle_r : STD_LOGIC;
  signal \irq_throttle_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \irq_throttle_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \irq_throttle_r[0]_i_5_n_0\ : STD_LOGIC;
  signal irq_throttle_r_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \irq_throttle_r_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \irq_throttle_r_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \irq_throttle_r_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \irq_throttle_r_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \irq_throttle_r_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \irq_throttle_r_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \irq_throttle_r_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \irq_throttle_r_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \irq_throttle_r_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \irq_throttle_r_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \irq_throttle_r_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \irq_throttle_r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \irq_throttle_r_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \irq_throttle_r_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \irq_throttle_r_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \irq_throttle_r_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \irq_throttle_r_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \irq_throttle_r_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \irq_throttle_r_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \irq_throttle_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \irq_throttle_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \irq_throttle_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \irq_throttle_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \irq_throttle_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \irq_throttle_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \irq_throttle_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \irq_throttle_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal running : STD_LOGIC;
  signal running0_carry_i_1_n_0 : STD_LOGIC;
  signal running0_carry_i_2_n_0 : STD_LOGIC;
  signal running0_carry_i_3_n_0 : STD_LOGIC;
  signal running0_carry_i_4_n_0 : STD_LOGIC;
  signal running0_carry_n_0 : STD_LOGIC;
  signal running0_carry_n_1 : STD_LOGIC;
  signal running0_carry_n_2 : STD_LOGIC;
  signal running0_carry_n_3 : STD_LOGIC;
  signal running_i_1_n_0 : STD_LOGIC;
  signal \NLW_handled_irq_count_r_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_irq_out1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_irq_out1_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_irq_out1_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_irq_out2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_irq_out2_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_irq_out2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_irq_throttle_r_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_irq_throttle_r_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_running0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \handled_irq_count_r_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \handled_irq_count_r_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \handled_irq_count_r_reg[8]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \irq_out1_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \irq_out1_inferred__1/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \irq_out2_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \irq_out2_inferred__0/i__carry__0\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \irq_out[11]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \irq_out[15]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \irq_out[15]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \irq_out[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \irq_out[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \irq_throttle_r[0]_i_4\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \irq_throttle_r_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_throttle_r_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_throttle_r_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_throttle_r_reg[8]_i_1\ : label is 11;
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  clear <= \^clear\;
\handled_irq_count_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ARESETN,
      I1 => running,
      O => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2002"
    )
        port map (
      I0 => irq_line_handled(0),
      I1 => \handled_irq_count_r[0]_i_4_n_0\,
      I2 => Q(3),
      I3 => irq_line_r(3),
      O => irq_out12_out
    );
\handled_irq_count_r[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => irq_line_r(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => irq_line_r(2),
      I4 => Q(1),
      I5 => irq_line_r(1),
      O => \handled_irq_count_r[0]_i_4_n_0\
    );
\handled_irq_count_r[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => handled_irq_count_r_reg(0),
      O => \handled_irq_count_r[0]_i_5_n_0\
    );
\handled_irq_count_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[0]_i_3_n_7\,
      Q => handled_irq_count_r_reg(0),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \handled_irq_count_r_reg[0]_i_3_n_0\,
      CO(2) => \handled_irq_count_r_reg[0]_i_3_n_1\,
      CO(1) => \handled_irq_count_r_reg[0]_i_3_n_2\,
      CO(0) => \handled_irq_count_r_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \handled_irq_count_r_reg[0]_i_3_n_4\,
      O(2) => \handled_irq_count_r_reg[0]_i_3_n_5\,
      O(1) => \handled_irq_count_r_reg[0]_i_3_n_6\,
      O(0) => \handled_irq_count_r_reg[0]_i_3_n_7\,
      S(3 downto 1) => handled_irq_count_r_reg(3 downto 1),
      S(0) => \handled_irq_count_r[0]_i_5_n_0\
    );
\handled_irq_count_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[8]_i_1_n_5\,
      Q => handled_irq_count_r_reg(10),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[8]_i_1_n_4\,
      Q => handled_irq_count_r_reg(11),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[0]_i_3_n_6\,
      Q => handled_irq_count_r_reg(1),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[0]_i_3_n_5\,
      Q => handled_irq_count_r_reg(2),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[0]_i_3_n_4\,
      Q => handled_irq_count_r_reg(3),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[4]_i_1_n_7\,
      Q => handled_irq_count_r_reg(4),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \handled_irq_count_r_reg[0]_i_3_n_0\,
      CO(3) => \handled_irq_count_r_reg[4]_i_1_n_0\,
      CO(2) => \handled_irq_count_r_reg[4]_i_1_n_1\,
      CO(1) => \handled_irq_count_r_reg[4]_i_1_n_2\,
      CO(0) => \handled_irq_count_r_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \handled_irq_count_r_reg[4]_i_1_n_4\,
      O(2) => \handled_irq_count_r_reg[4]_i_1_n_5\,
      O(1) => \handled_irq_count_r_reg[4]_i_1_n_6\,
      O(0) => \handled_irq_count_r_reg[4]_i_1_n_7\,
      S(3 downto 0) => handled_irq_count_r_reg(7 downto 4)
    );
\handled_irq_count_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[4]_i_1_n_6\,
      Q => handled_irq_count_r_reg(5),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[4]_i_1_n_5\,
      Q => handled_irq_count_r_reg(6),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[4]_i_1_n_4\,
      Q => handled_irq_count_r_reg(7),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[8]_i_1_n_7\,
      Q => handled_irq_count_r_reg(8),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\handled_irq_count_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \handled_irq_count_r_reg[4]_i_1_n_0\,
      CO(3) => \NLW_handled_irq_count_r_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \handled_irq_count_r_reg[8]_i_1_n_1\,
      CO(1) => \handled_irq_count_r_reg[8]_i_1_n_2\,
      CO(0) => \handled_irq_count_r_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \handled_irq_count_r_reg[8]_i_1_n_4\,
      O(2) => \handled_irq_count_r_reg[8]_i_1_n_5\,
      O(1) => \handled_irq_count_r_reg[8]_i_1_n_6\,
      O(0) => \handled_irq_count_r_reg[8]_i_1_n_7\,
      S(3 downto 0) => handled_irq_count_r_reg(11 downto 8)
    );
\handled_irq_count_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_out12_out,
      D => \handled_irq_count_r_reg[8]_i_1_n_6\,
      Q => handled_irq_count_r_reg(9),
      R => \handled_irq_count_r[0]_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => handled_irq_count_r_reg(11),
      I1 => irq_amt_r(11),
      I2 => irq_amt_r(10),
      I3 => handled_irq_count_r_reg(10),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => irq_throttle_r_reg(13),
      I1 => irq_rate_r(13),
      I2 => irq_throttle_r_reg(12),
      I3 => irq_rate_r(12),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => handled_irq_count_r_reg(9),
      I1 => irq_amt_r(9),
      I2 => irq_amt_r(8),
      I3 => handled_irq_count_r_reg(8),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => irq_throttle_r_reg(11),
      I1 => irq_rate_r(11),
      I2 => irq_throttle_r_reg(10),
      I3 => irq_rate_r(10),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_amt_r(11),
      I1 => handled_irq_count_r_reg(11),
      I2 => irq_amt_r(10),
      I3 => handled_irq_count_r_reg(10),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => irq_throttle_r_reg(9),
      I1 => irq_rate_r(9),
      I2 => irq_throttle_r_reg(8),
      I3 => irq_rate_r(8),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_amt_r(8),
      I1 => handled_irq_count_r_reg(8),
      I2 => irq_amt_r(9),
      I3 => handled_irq_count_r_reg(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_rate_r(13),
      I1 => irq_throttle_r_reg(13),
      I2 => irq_rate_r(12),
      I3 => irq_throttle_r_reg(12),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_rate_r(11),
      I1 => irq_throttle_r_reg(11),
      I2 => irq_rate_r(10),
      I3 => irq_throttle_r_reg(10),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_rate_r(9),
      I1 => irq_throttle_r_reg(9),
      I2 => irq_rate_r(8),
      I3 => irq_throttle_r_reg(8),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => handled_irq_count_r_reg(7),
      I1 => irq_amt_r(7),
      I2 => irq_amt_r(6),
      I3 => handled_irq_count_r_reg(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => irq_throttle_r_reg(7),
      I1 => irq_rate_r(7),
      I2 => irq_throttle_r_reg(6),
      I3 => irq_rate_r(6),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => handled_irq_count_r_reg(5),
      I1 => irq_amt_r(5),
      I2 => irq_amt_r(4),
      I3 => handled_irq_count_r_reg(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => irq_throttle_r_reg(5),
      I1 => irq_rate_r(5),
      I2 => irq_throttle_r_reg(4),
      I3 => irq_rate_r(4),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => handled_irq_count_r_reg(3),
      I1 => irq_amt_r(3),
      I2 => irq_amt_r(2),
      I3 => handled_irq_count_r_reg(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => irq_throttle_r_reg(3),
      I1 => irq_rate_r(3),
      I2 => irq_throttle_r_reg(2),
      I3 => irq_rate_r(2),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => handled_irq_count_r_reg(1),
      I1 => irq_amt_r(1),
      I2 => irq_amt_r(0),
      I3 => handled_irq_count_r_reg(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => irq_throttle_r_reg(1),
      I1 => irq_rate_r(1),
      I2 => irq_throttle_r_reg(0),
      I3 => irq_rate_r(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_amt_r(7),
      I1 => handled_irq_count_r_reg(7),
      I2 => irq_amt_r(6),
      I3 => handled_irq_count_r_reg(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_rate_r(7),
      I1 => irq_throttle_r_reg(7),
      I2 => irq_rate_r(6),
      I3 => irq_throttle_r_reg(6),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_amt_r(5),
      I1 => handled_irq_count_r_reg(5),
      I2 => irq_amt_r(4),
      I3 => handled_irq_count_r_reg(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_rate_r(5),
      I1 => irq_throttle_r_reg(5),
      I2 => irq_rate_r(4),
      I3 => irq_throttle_r_reg(4),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_amt_r(2),
      I1 => handled_irq_count_r_reg(2),
      I2 => irq_amt_r(3),
      I3 => handled_irq_count_r_reg(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_rate_r(3),
      I1 => irq_throttle_r_reg(3),
      I2 => irq_rate_r(2),
      I3 => irq_throttle_r_reg(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_amt_r(1),
      I1 => handled_irq_count_r_reg(1),
      I2 => irq_amt_r(0),
      I3 => handled_irq_count_r_reg(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => irq_rate_r(1),
      I1 => irq_throttle_r_reg(1),
      I2 => irq_rate_r(0),
      I3 => irq_throttle_r_reg(0),
      O => \i__carry_i_8__0_n_0\
    );
\introut_state_r0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \irq_count_r_reg[0]\(14),
      I1 => \^d\(14),
      I2 => \^d\(15),
      I3 => \irq_count_r_reg[0]\(15),
      O => \introut_state_r_reg[14]\(3)
    );
\introut_state_r0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \irq_count_r_reg[0]\(12),
      I1 => \^d\(12),
      I2 => \^d\(13),
      I3 => \irq_count_r_reg[0]\(13),
      O => \introut_state_r_reg[14]\(2)
    );
\introut_state_r0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \irq_count_r_reg[0]\(10),
      I1 => \^d\(10),
      I2 => \^d\(11),
      I3 => \irq_count_r_reg[0]\(11),
      O => \introut_state_r_reg[14]\(1)
    );
\introut_state_r0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \irq_count_r_reg[0]\(8),
      I1 => \^d\(8),
      I2 => \^d\(9),
      I3 => \irq_count_r_reg[0]\(9),
      O => \introut_state_r_reg[14]\(0)
    );
\introut_state_r0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(14),
      I1 => \irq_count_r_reg[0]\(14),
      I2 => \irq_count_r_reg[0]\(15),
      I3 => \^d\(15),
      O => \irq_out_reg[14]_2\(3)
    );
\introut_state_r0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(12),
      I1 => \irq_count_r_reg[0]\(12),
      I2 => \irq_count_r_reg[0]\(13),
      I3 => \^d\(13),
      O => \irq_out_reg[14]_2\(2)
    );
\introut_state_r0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(10),
      I1 => \irq_count_r_reg[0]\(10),
      I2 => \irq_count_r_reg[0]\(11),
      I3 => \^d\(11),
      O => \irq_out_reg[14]_2\(1)
    );
\introut_state_r0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(8),
      I1 => \irq_count_r_reg[0]\(8),
      I2 => \irq_count_r_reg[0]\(9),
      I3 => \^d\(9),
      O => \irq_out_reg[14]_2\(0)
    );
introut_state_r0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \irq_count_r_reg[0]\(6),
      I1 => \^d\(6),
      I2 => \^d\(7),
      I3 => \irq_count_r_reg[0]\(7),
      O => DI(3)
    );
introut_state_r0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \irq_count_r_reg[0]\(4),
      I1 => \^d\(4),
      I2 => \^d\(5),
      I3 => \irq_count_r_reg[0]\(5),
      O => DI(2)
    );
introut_state_r0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \irq_count_r_reg[0]\(2),
      I1 => \^d\(2),
      I2 => \^d\(3),
      I3 => \irq_count_r_reg[0]\(3),
      O => DI(1)
    );
introut_state_r0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \irq_count_r_reg[0]\(0),
      I1 => \^d\(0),
      I2 => \^d\(1),
      I3 => \irq_count_r_reg[0]\(1),
      O => DI(0)
    );
introut_state_r0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(6),
      I1 => \irq_count_r_reg[0]\(6),
      I2 => \irq_count_r_reg[0]\(7),
      I3 => \^d\(7),
      O => \irq_out_reg[6]_1\(3)
    );
introut_state_r0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(4),
      I1 => \irq_count_r_reg[0]\(4),
      I2 => \irq_count_r_reg[0]\(5),
      I3 => \^d\(5),
      O => \irq_out_reg[6]_1\(2)
    );
introut_state_r0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(2),
      I1 => \irq_count_r_reg[0]\(2),
      I2 => \irq_count_r_reg[0]\(3),
      I3 => \^d\(3),
      O => \irq_out_reg[6]_1\(1)
    );
introut_state_r0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(0),
      I1 => \irq_count_r_reg[0]\(0),
      I2 => \irq_count_r_reg[0]\(1),
      I3 => \^d\(1),
      O => \irq_out_reg[6]_1\(0)
    );
\introut_state_r[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CO(0),
      I1 => \introut_state_r_reg[0]\(0),
      O => E(0)
    );
\irq_amt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(18),
      Q => irq_amt_r(0),
      R => \^clear\
    );
\irq_amt_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(28),
      Q => irq_amt_r(10),
      R => \^clear\
    );
\irq_amt_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(29),
      Q => irq_amt_r(11),
      R => \^clear\
    );
\irq_amt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(19),
      Q => irq_amt_r(1),
      R => \^clear\
    );
\irq_amt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(20),
      Q => irq_amt_r(2),
      R => \^clear\
    );
\irq_amt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(21),
      Q => irq_amt_r(3),
      R => \^clear\
    );
\irq_amt_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(22),
      Q => irq_amt_r(4),
      R => \^clear\
    );
\irq_amt_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(23),
      Q => irq_amt_r(5),
      R => \^clear\
    );
\irq_amt_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(24),
      Q => irq_amt_r(6),
      R => \^clear\
    );
\irq_amt_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(25),
      Q => irq_amt_r(7),
      R => \^clear\
    );
\irq_amt_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(26),
      Q => irq_amt_r(8),
      R => \^clear\
    );
\irq_amt_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(27),
      Q => irq_amt_r(9),
      R => \^clear\
    );
\irq_count_r0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^d\(14),
      I1 => \irq_count_r_reg[0]\(14),
      I2 => \irq_count_r_reg[0]\(15),
      I3 => \^d\(15),
      O => \irq_out_reg[14]_1\(3)
    );
\irq_count_r0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^d\(12),
      I1 => \irq_count_r_reg[0]\(12),
      I2 => \irq_count_r_reg[0]\(13),
      I3 => \^d\(13),
      O => \irq_out_reg[14]_1\(2)
    );
\irq_count_r0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^d\(10),
      I1 => \irq_count_r_reg[0]\(10),
      I2 => \irq_count_r_reg[0]\(11),
      I3 => \^d\(11),
      O => \irq_out_reg[14]_1\(1)
    );
\irq_count_r0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^d\(8),
      I1 => \irq_count_r_reg[0]\(8),
      I2 => \irq_count_r_reg[0]\(9),
      I3 => \^d\(9),
      O => \irq_out_reg[14]_1\(0)
    );
\irq_count_r0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(14),
      I1 => \irq_count_r_reg[0]\(14),
      I2 => \irq_count_r_reg[0]\(15),
      I3 => \^d\(15),
      O => \irq_out_reg[14]_0\(3)
    );
\irq_count_r0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(12),
      I1 => \irq_count_r_reg[0]\(12),
      I2 => \irq_count_r_reg[0]\(13),
      I3 => \^d\(13),
      O => \irq_out_reg[14]_0\(2)
    );
\irq_count_r0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(10),
      I1 => \irq_count_r_reg[0]\(10),
      I2 => \irq_count_r_reg[0]\(11),
      I3 => \^d\(11),
      O => \irq_out_reg[14]_0\(1)
    );
\irq_count_r0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(8),
      I1 => \irq_count_r_reg[0]\(8),
      I2 => \irq_count_r_reg[0]\(9),
      I3 => \^d\(9),
      O => \irq_out_reg[14]_0\(0)
    );
irq_count_r0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^d\(6),
      I1 => \irq_count_r_reg[0]\(6),
      I2 => \irq_count_r_reg[0]\(7),
      I3 => \^d\(7),
      O => \irq_out_reg[6]_0\(3)
    );
irq_count_r0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^d\(4),
      I1 => \irq_count_r_reg[0]\(4),
      I2 => \irq_count_r_reg[0]\(5),
      I3 => \^d\(5),
      O => \irq_out_reg[6]_0\(2)
    );
irq_count_r0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^d\(2),
      I1 => \irq_count_r_reg[0]\(2),
      I2 => \irq_count_r_reg[0]\(3),
      I3 => \^d\(3),
      O => \irq_out_reg[6]_0\(1)
    );
irq_count_r0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^d\(0),
      I1 => \irq_count_r_reg[0]\(0),
      I2 => \irq_count_r_reg[0]\(1),
      I3 => \^d\(1),
      O => \irq_out_reg[6]_0\(0)
    );
irq_count_r0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(6),
      I1 => \irq_count_r_reg[0]\(6),
      I2 => \irq_count_r_reg[0]\(7),
      I3 => \^d\(7),
      O => S(3)
    );
irq_count_r0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(4),
      I1 => \irq_count_r_reg[0]\(4),
      I2 => \irq_count_r_reg[0]\(5),
      I3 => \^d\(5),
      O => S(2)
    );
irq_count_r0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(2),
      I1 => \irq_count_r_reg[0]\(2),
      I2 => \irq_count_r_reg[0]\(3),
      I3 => \^d\(3),
      O => S(1)
    );
irq_count_r0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^d\(0),
      I1 => \irq_count_r_reg[0]\(0),
      I2 => \irq_count_r_reg[0]\(1),
      I3 => \^d\(1),
      O => S(0)
    );
\irq_line_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => running_reg_0,
      I1 => running,
      O => irq_rate_r0
    );
\irq_line_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(0),
      Q => irq_line_r(0),
      R => \^clear\
    );
\irq_line_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(1),
      Q => irq_line_r(1),
      R => \^clear\
    );
\irq_line_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(2),
      Q => irq_line_r(2),
      R => \^clear\
    );
\irq_line_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(3),
      Q => irq_line_r(3),
      R => \^clear\
    );
\irq_out1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \irq_out1_inferred__1/i__carry_n_0\,
      CO(2) => \irq_out1_inferred__1/i__carry_n_1\,
      CO(1) => \irq_out1_inferred__1/i__carry_n_2\,
      CO(0) => \irq_out1_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_irq_out1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\irq_out1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_out1_inferred__1/i__carry_n_0\,
      CO(3) => \NLW_irq_out1_inferred__1/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \irq_out1_inferred__1/i__carry__0_n_1\,
      CO(1) => \irq_out1_inferred__1/i__carry__0_n_2\,
      CO(0) => \irq_out1_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1__0_n_0\,
      DI(1) => \i__carry__0_i_2__0_n_0\,
      DI(0) => \i__carry__0_i_3__0_n_0\,
      O(3 downto 0) => \NLW_irq_out1_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__0_i_4__0_n_0\,
      S(1) => \i__carry__0_i_5_n_0\,
      S(0) => \i__carry__0_i_6_n_0\
    );
\irq_out2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \irq_out2_inferred__0/i__carry_n_0\,
      CO(2) => \irq_out2_inferred__0/i__carry_n_1\,
      CO(1) => \irq_out2_inferred__0/i__carry_n_2\,
      CO(0) => \irq_out2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_irq_out2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\irq_out2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_out2_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_irq_out2_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => irq_out2,
      CO(0) => \irq_out2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1_n_0\,
      DI(0) => \i__carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_irq_out2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\irq_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000004"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[3]_i_2_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(0),
      O => \irq_out[0]_i_1_n_0\
    );
\irq_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00040000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[11]_i_2_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(10),
      O => \irq_out[10]_i_1_n_0\
    );
\irq_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF04000000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[11]_i_2_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(11),
      O => \irq_out[11]_i_1_n_0\
    );
\irq_out[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => irq_line_r(3),
      I1 => irq_line_r(2),
      I2 => running,
      O => \irq_out[11]_i_2_n_0\
    );
\irq_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000004"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[15]_i_4_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(12),
      O => \irq_out[12]_i_1_n_0\
    );
\irq_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00040000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[15]_i_4_n_0\,
      I3 => irq_line_r(1),
      I4 => irq_line_r(0),
      I5 => \^d\(13),
      O => \irq_out[13]_i_1_n_0\
    );
\irq_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00040000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[15]_i_4_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(14),
      O => \irq_out[14]_i_1_n_0\
    );
\irq_out[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESETN,
      O => \^clear\
    );
\irq_out[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^d\(2),
      I2 => irq_line_r(1),
      I3 => \^d\(1),
      I4 => irq_line_r(0),
      I5 => \^d\(0),
      O => \irq_out[15]_i_10_n_0\
    );
\irq_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF04000000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[15]_i_4_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(15),
      O => \irq_out[15]_i_2_n_0\
    );
\irq_out[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABAAAAAAAAAAAA"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_5_n_0\,
      I2 => \irq_out[15]_i_6_n_0\,
      I3 => \irq_out[15]_i_7_n_0\,
      I4 => irq_out2,
      I5 => \irq_out1_inferred__1/i__carry__0_n_1\,
      O => \irq_out[15]_i_3_n_0\
    );
\irq_out[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => irq_line_r(3),
      I1 => irq_line_r(2),
      I2 => running,
      O => \irq_out[15]_i_4_n_0\
    );
\irq_out[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \irq_out[15]_i_8_n_0\,
      I1 => \irq_out[15]_i_9_n_0\,
      I2 => irq_line_r(3),
      I3 => irq_line_r(2),
      I4 => \irq_out[15]_i_10_n_0\,
      O => \irq_out[15]_i_5_n_0\
    );
\irq_out[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(7),
      I1 => \^d\(6),
      I2 => irq_line_r(1),
      I3 => \^d\(5),
      I4 => irq_line_r(0),
      I5 => \^d\(4),
      O => \irq_out[15]_i_6_n_0\
    );
\irq_out[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => irq_line_r(3),
      I1 => irq_line_r(2),
      O => \irq_out[15]_i_7_n_0\
    );
\irq_out[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(15),
      I1 => \^d\(14),
      I2 => irq_line_r(1),
      I3 => \^d\(13),
      I4 => irq_line_r(0),
      I5 => \^d\(12),
      O => \irq_out[15]_i_8_n_0\
    );
\irq_out[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(11),
      I1 => \^d\(10),
      I2 => irq_line_r(1),
      I3 => \^d\(9),
      I4 => irq_line_r(0),
      I5 => \^d\(8),
      O => \irq_out[15]_i_9_n_0\
    );
\irq_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00040000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[3]_i_2_n_0\,
      I3 => irq_line_r(1),
      I4 => irq_line_r(0),
      I5 => \^d\(1),
      O => \irq_out[1]_i_1_n_0\
    );
\irq_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00040000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[3]_i_2_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(2),
      O => \irq_out[2]_i_1_n_0\
    );
\irq_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF04000000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[3]_i_2_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(3),
      O => \irq_out[3]_i_1_n_0\
    );
\irq_out[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => irq_line_r(3),
      I1 => irq_line_r(2),
      I2 => running,
      O => \irq_out[3]_i_2_n_0\
    );
\irq_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000004"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[7]_i_2_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(4),
      O => \irq_out[4]_i_1_n_0\
    );
\irq_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00040000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[7]_i_2_n_0\,
      I3 => irq_line_r(1),
      I4 => irq_line_r(0),
      I5 => \^d\(5),
      O => \irq_out[5]_i_1_n_0\
    );
\irq_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00040000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[7]_i_2_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(6),
      O => \irq_out[6]_i_1_n_0\
    );
\irq_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF04000000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[7]_i_2_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(7),
      O => \irq_out[7]_i_1_n_0\
    );
\irq_out[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => irq_line_r(2),
      I1 => irq_line_r(3),
      I2 => running,
      O => \irq_out[7]_i_2_n_0\
    );
\irq_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000004"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[11]_i_2_n_0\,
      I3 => irq_line_r(0),
      I4 => irq_line_r(1),
      I5 => \^d\(8),
      O => \irq_out[8]_i_1_n_0\
    );
\irq_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00040000"
    )
        port map (
      I0 => irq_out12_out,
      I1 => \irq_out[15]_i_3_n_0\,
      I2 => \irq_out[11]_i_2_n_0\,
      I3 => irq_line_r(1),
      I4 => irq_line_r(0),
      I5 => \^d\(9),
      O => \irq_out[9]_i_1_n_0\
    );
\irq_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[0]_i_1_n_0\,
      Q => \^d\(0),
      R => \^clear\
    );
\irq_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[10]_i_1_n_0\,
      Q => \^d\(10),
      R => \^clear\
    );
\irq_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[11]_i_1_n_0\,
      Q => \^d\(11),
      R => \^clear\
    );
\irq_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[12]_i_1_n_0\,
      Q => \^d\(12),
      R => \^clear\
    );
\irq_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[13]_i_1_n_0\,
      Q => \^d\(13),
      R => \^clear\
    );
\irq_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[14]_i_1_n_0\,
      Q => \^d\(14),
      R => \^clear\
    );
\irq_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[15]_i_2_n_0\,
      Q => \^d\(15),
      R => \^clear\
    );
\irq_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[1]_i_1_n_0\,
      Q => \^d\(1),
      R => \^clear\
    );
\irq_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[2]_i_1_n_0\,
      Q => \^d\(2),
      R => \^clear\
    );
\irq_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[3]_i_1_n_0\,
      Q => \^d\(3),
      R => \^clear\
    );
\irq_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[4]_i_1_n_0\,
      Q => \^d\(4),
      R => \^clear\
    );
\irq_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[5]_i_1_n_0\,
      Q => \^d\(5),
      R => \^clear\
    );
\irq_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[6]_i_1_n_0\,
      Q => \^d\(6),
      R => \^clear\
    );
\irq_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[7]_i_1_n_0\,
      Q => \^d\(7),
      R => \^clear\
    );
\irq_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[8]_i_1_n_0\,
      Q => \^d\(8),
      R => \^clear\
    );
\irq_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_out[9]_i_1_n_0\,
      Q => \^d\(9),
      R => \^clear\
    );
\irq_rate_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(4),
      Q => irq_rate_r(0),
      R => \^clear\
    );
\irq_rate_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(14),
      Q => irq_rate_r(10),
      R => \^clear\
    );
\irq_rate_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(15),
      Q => irq_rate_r(11),
      R => \^clear\
    );
\irq_rate_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(16),
      Q => irq_rate_r(12),
      R => \^clear\
    );
\irq_rate_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(17),
      Q => irq_rate_r(13),
      R => \^clear\
    );
\irq_rate_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(5),
      Q => irq_rate_r(1),
      R => \^clear\
    );
\irq_rate_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(6),
      Q => irq_rate_r(2),
      R => \^clear\
    );
\irq_rate_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(7),
      Q => irq_rate_r(3),
      R => \^clear\
    );
\irq_rate_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(8),
      Q => irq_rate_r(4),
      R => \^clear\
    );
\irq_rate_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(9),
      Q => irq_rate_r(5),
      R => \^clear\
    );
\irq_rate_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(10),
      Q => irq_rate_r(6),
      R => \^clear\
    );
\irq_rate_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(11),
      Q => irq_rate_r(7),
      R => \^clear\
    );
\irq_rate_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(12),
      Q => irq_rate_r(8),
      R => \^clear\
    );
\irq_rate_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_rate_r0,
      D => \irq_amt_r_reg[11]_0\(13),
      Q => irq_rate_r(9),
      R => \^clear\
    );
\irq_throttle_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0400FFFF"
    )
        port map (
      I0 => irq_out12_out,
      I1 => running,
      I2 => \irq_throttle_r[0]_i_4_n_0\,
      I3 => \irq_out1_inferred__1/i__carry__0_n_1\,
      I4 => ARESETN,
      O => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => irq_out12_out,
      I1 => running,
      I2 => \irq_throttle_r[0]_i_4_n_0\,
      O => irq_throttle_r
    );
\irq_throttle_r[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAFFFF"
    )
        port map (
      I0 => \irq_out[15]_i_5_n_0\,
      I1 => \irq_out[15]_i_6_n_0\,
      I2 => irq_line_r(2),
      I3 => irq_line_r(3),
      I4 => irq_out2,
      O => \irq_throttle_r[0]_i_4_n_0\
    );
\irq_throttle_r[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => irq_throttle_r_reg(0),
      O => \irq_throttle_r[0]_i_5_n_0\
    );
\irq_throttle_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[0]_i_3_n_7\,
      Q => irq_throttle_r_reg(0),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \irq_throttle_r_reg[0]_i_3_n_0\,
      CO(2) => \irq_throttle_r_reg[0]_i_3_n_1\,
      CO(1) => \irq_throttle_r_reg[0]_i_3_n_2\,
      CO(0) => \irq_throttle_r_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \irq_throttle_r_reg[0]_i_3_n_4\,
      O(2) => \irq_throttle_r_reg[0]_i_3_n_5\,
      O(1) => \irq_throttle_r_reg[0]_i_3_n_6\,
      O(0) => \irq_throttle_r_reg[0]_i_3_n_7\,
      S(3 downto 1) => irq_throttle_r_reg(3 downto 1),
      S(0) => \irq_throttle_r[0]_i_5_n_0\
    );
\irq_throttle_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[8]_i_1_n_5\,
      Q => irq_throttle_r_reg(10),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[8]_i_1_n_4\,
      Q => irq_throttle_r_reg(11),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[12]_i_1_n_7\,
      Q => irq_throttle_r_reg(12),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_throttle_r_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_irq_throttle_r_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \irq_throttle_r_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_irq_throttle_r_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \irq_throttle_r_reg[12]_i_1_n_6\,
      O(0) => \irq_throttle_r_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => irq_throttle_r_reg(13 downto 12)
    );
\irq_throttle_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[12]_i_1_n_6\,
      Q => irq_throttle_r_reg(13),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[0]_i_3_n_6\,
      Q => irq_throttle_r_reg(1),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[0]_i_3_n_5\,
      Q => irq_throttle_r_reg(2),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[0]_i_3_n_4\,
      Q => irq_throttle_r_reg(3),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[4]_i_1_n_7\,
      Q => irq_throttle_r_reg(4),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_throttle_r_reg[0]_i_3_n_0\,
      CO(3) => \irq_throttle_r_reg[4]_i_1_n_0\,
      CO(2) => \irq_throttle_r_reg[4]_i_1_n_1\,
      CO(1) => \irq_throttle_r_reg[4]_i_1_n_2\,
      CO(0) => \irq_throttle_r_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \irq_throttle_r_reg[4]_i_1_n_4\,
      O(2) => \irq_throttle_r_reg[4]_i_1_n_5\,
      O(1) => \irq_throttle_r_reg[4]_i_1_n_6\,
      O(0) => \irq_throttle_r_reg[4]_i_1_n_7\,
      S(3 downto 0) => irq_throttle_r_reg(7 downto 4)
    );
\irq_throttle_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[4]_i_1_n_6\,
      Q => irq_throttle_r_reg(5),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[4]_i_1_n_5\,
      Q => irq_throttle_r_reg(6),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[4]_i_1_n_4\,
      Q => irq_throttle_r_reg(7),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[8]_i_1_n_7\,
      Q => irq_throttle_r_reg(8),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
\irq_throttle_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_throttle_r_reg[4]_i_1_n_0\,
      CO(3) => \irq_throttle_r_reg[8]_i_1_n_0\,
      CO(2) => \irq_throttle_r_reg[8]_i_1_n_1\,
      CO(1) => \irq_throttle_r_reg[8]_i_1_n_2\,
      CO(0) => \irq_throttle_r_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \irq_throttle_r_reg[8]_i_1_n_4\,
      O(2) => \irq_throttle_r_reg[8]_i_1_n_5\,
      O(1) => \irq_throttle_r_reg[8]_i_1_n_6\,
      O(0) => \irq_throttle_r_reg[8]_i_1_n_7\,
      S(3 downto 0) => irq_throttle_r_reg(11 downto 8)
    );
\irq_throttle_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_throttle_r,
      D => \irq_throttle_r_reg[8]_i_1_n_6\,
      Q => irq_throttle_r_reg(9),
      R => \irq_throttle_r[0]_i_1_n_0\
    );
running0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => running0_carry_n_0,
      CO(2) => running0_carry_n_1,
      CO(1) => running0_carry_n_2,
      CO(0) => running0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_running0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => running0_carry_i_1_n_0,
      S(2) => running0_carry_i_2_n_0,
      S(1) => running0_carry_i_3_n_0,
      S(0) => running0_carry_i_4_n_0
    );
running0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => handled_irq_count_r_reg(10),
      I1 => irq_amt_r(10),
      I2 => handled_irq_count_r_reg(11),
      I3 => irq_amt_r(11),
      I4 => irq_amt_r(9),
      I5 => handled_irq_count_r_reg(9),
      O => running0_carry_i_1_n_0
    );
running0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => handled_irq_count_r_reg(6),
      I1 => irq_amt_r(6),
      I2 => handled_irq_count_r_reg(7),
      I3 => irq_amt_r(7),
      I4 => irq_amt_r(8),
      I5 => handled_irq_count_r_reg(8),
      O => running0_carry_i_2_n_0
    );
running0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => handled_irq_count_r_reg(4),
      I1 => irq_amt_r(4),
      I2 => handled_irq_count_r_reg(5),
      I3 => irq_amt_r(5),
      I4 => irq_amt_r(3),
      I5 => handled_irq_count_r_reg(3),
      O => running0_carry_i_3_n_0
    );
running0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => handled_irq_count_r_reg(0),
      I1 => irq_amt_r(0),
      I2 => handled_irq_count_r_reg(1),
      I3 => irq_amt_r(1),
      I4 => irq_amt_r(2),
      I5 => handled_irq_count_r_reg(2),
      O => running0_carry_i_4_n_0
    );
running_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => running0_carry_n_0,
      I1 => running,
      I2 => running_reg_0,
      O => running_i_1_n_0
    );
running_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => running_i_1_n_0,
      Q => running,
      R => \^clear\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_irq_generator_0_0_irq_generator is
  port (
    \irq_out_reg[0]\ : out STD_LOGIC;
    \irq_out_reg[1]\ : out STD_LOGIC;
    \irq_out_reg[2]\ : out STD_LOGIC;
    \irq_out_reg[3]\ : out STD_LOGIC;
    \irq_out_reg[4]\ : out STD_LOGIC;
    \irq_out_reg[5]\ : out STD_LOGIC;
    \irq_out_reg[6]\ : out STD_LOGIC;
    \irq_out_reg[7]\ : out STD_LOGIC;
    \irq_out_reg[8]\ : out STD_LOGIC;
    \irq_out_reg[9]\ : out STD_LOGIC;
    \irq_out_reg[10]\ : out STD_LOGIC;
    \irq_out_reg[11]\ : out STD_LOGIC;
    \irq_out_reg[12]\ : out STD_LOGIC;
    \irq_out_reg[13]\ : out STD_LOGIC;
    \irq_out_reg[14]\ : out STD_LOGIC;
    \irq_out_reg[15]\ : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ACLK : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_irq_generator_0_0_irq_generator : entity is "irq_generator";
end design_1_irq_generator_0_0_irq_generator;

architecture STRUCTURE of design_1_irq_generator_0_0_irq_generator is
  signal S_AXI_AWREADY0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal S_AXI_BVALID_i_1_n_0 : STD_LOGIC;
  signal \S_AXI_RDATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[16]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[17]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[18]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[19]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[20]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[21]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[22]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[23]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[24]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[25]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[26]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[27]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[28]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[29]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[30]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_3_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_4_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_5_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal S_AXI_RVALID_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal introut_state_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \introut_state_r0_carry__0_n_0\ : STD_LOGIC;
  signal \introut_state_r0_carry__0_n_1\ : STD_LOGIC;
  signal \introut_state_r0_carry__0_n_2\ : STD_LOGIC;
  signal \introut_state_r0_carry__0_n_3\ : STD_LOGIC;
  signal introut_state_r0_carry_n_0 : STD_LOGIC;
  signal introut_state_r0_carry_n_1 : STD_LOGIC;
  signal introut_state_r0_carry_n_2 : STD_LOGIC;
  signal introut_state_r0_carry_n_3 : STD_LOGIC;
  signal irq_amt : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \irq_count_r0_carry__0_n_0\ : STD_LOGIC;
  signal \irq_count_r0_carry__0_n_1\ : STD_LOGIC;
  signal \irq_count_r0_carry__0_n_2\ : STD_LOGIC;
  signal \irq_count_r0_carry__0_n_3\ : STD_LOGIC;
  signal irq_count_r0_carry_n_0 : STD_LOGIC;
  signal irq_count_r0_carry_n_1 : STD_LOGIC;
  signal irq_count_r0_carry_n_2 : STD_LOGIC;
  signal irq_count_r0_carry_n_3 : STD_LOGIC;
  signal \irq_count_r[0]_i_2_n_0\ : STD_LOGIC;
  signal irq_count_r_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \irq_count_r_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \irq_count_r_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \irq_count_r_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \irq_count_r_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \irq_count_r_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \irq_count_r_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \irq_count_r_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \irq_count_r_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \irq_count_r_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \irq_count_r_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \irq_count_r_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \irq_count_r_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \irq_count_r_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \irq_count_r_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \irq_count_r_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \irq_count_r_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \irq_count_r_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \irq_count_r_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \irq_count_r_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \irq_count_r_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \irq_count_r_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \irq_count_r_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \irq_count_r_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \irq_count_r_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \irq_count_r_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \irq_count_r_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \irq_count_r_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \irq_count_r_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \irq_count_r_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \irq_count_r_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \irq_count_r_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \irq_count_r_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \irq_count_r_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \irq_count_r_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \irq_count_r_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \irq_count_r_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \irq_count_r_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \irq_count_r_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \irq_count_r_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \irq_count_r_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \irq_count_r_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \irq_count_r_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \irq_count_r_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \irq_count_r_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \irq_count_r_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \irq_count_r_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \irq_count_r_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \irq_count_r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \irq_count_r_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \irq_count_r_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \irq_count_r_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \irq_count_r_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \irq_count_r_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \irq_count_r_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \irq_count_r_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \irq_count_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \irq_count_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \irq_count_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \irq_count_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \irq_count_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \irq_count_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \irq_count_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \irq_count_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \irq_gen_ctrl_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \irq_gen_ctrl_r[31]_i_1_n_0\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \irq_gen_ctrl_r_reg_n_0_[9]\ : STD_LOGIC;
  signal irq_gen_genirq_r : STD_LOGIC;
  signal \irq_gen_genirq_r[31]_i_10_n_0\ : STD_LOGIC;
  signal \irq_gen_genirq_r[31]_i_2_n_0\ : STD_LOGIC;
  signal \irq_gen_genirq_r[31]_i_3_n_0\ : STD_LOGIC;
  signal \irq_gen_genirq_r[31]_i_4_n_0\ : STD_LOGIC;
  signal \irq_gen_genirq_r[31]_i_5_n_0\ : STD_LOGIC;
  signal \irq_gen_genirq_r[31]_i_6_n_0\ : STD_LOGIC;
  signal \irq_gen_genirq_r[31]_i_7_n_0\ : STD_LOGIC;
  signal \irq_gen_genirq_r[31]_i_8_n_0\ : STD_LOGIC;
  signal \irq_gen_genirq_r[31]_i_9_n_0\ : STD_LOGIC;
  signal \irq_gen_genirq_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \irq_gen_genirq_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \irq_gen_genirq_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \irq_gen_genirq_r_reg_n_0_[3]\ : STD_LOGIC;
  signal irq_line_handled : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^irq_out_reg[0]\ : STD_LOGIC;
  signal \^irq_out_reg[10]\ : STD_LOGIC;
  signal \^irq_out_reg[11]\ : STD_LOGIC;
  signal \^irq_out_reg[12]\ : STD_LOGIC;
  signal \^irq_out_reg[13]\ : STD_LOGIC;
  signal \^irq_out_reg[14]\ : STD_LOGIC;
  signal \^irq_out_reg[15]\ : STD_LOGIC;
  signal \^irq_out_reg[1]\ : STD_LOGIC;
  signal \^irq_out_reg[2]\ : STD_LOGIC;
  signal \^irq_out_reg[3]\ : STD_LOGIC;
  signal \^irq_out_reg[4]\ : STD_LOGIC;
  signal \^irq_out_reg[5]\ : STD_LOGIC;
  signal \^irq_out_reg[6]\ : STD_LOGIC;
  signal \^irq_out_reg[7]\ : STD_LOGIC;
  signal \^irq_out_reg[8]\ : STD_LOGIC;
  signal \^irq_out_reg[9]\ : STD_LOGIC;
  signal irq_rate : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal irqgen_ctrl_inst_n_17 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_18 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_19 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_20 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_21 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_22 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_23 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_24 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_25 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_26 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_27 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_28 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_29 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_30 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_31 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_32 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_33 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_34 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_35 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_36 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_37 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_38 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_39 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_40 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_41 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_42 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_43 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_44 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_45 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_46 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_47 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_48 : STD_LOGIC;
  signal irqgen_ctrl_inst_n_49 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal start_irq_gen_r_i_1_n_0 : STD_LOGIC;
  signal start_irq_gen_r_reg_n_0 : STD_LOGIC;
  signal NLW_introut_state_r0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_introut_state_r0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_count_r0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_irq_count_r0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_irq_count_r_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_AWREADY_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[20]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[21]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[22]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[24]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[26]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[27]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[28]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[30]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[31]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[9]_i_1\ : label is "soft_lutpair15";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of introut_state_r0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \introut_state_r0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of irq_count_r0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \irq_count_r0_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \irq_count_r_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_count_r_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_count_r_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_count_r_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_count_r_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_count_r_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_count_r_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \irq_count_r_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \irq_gen_genirq_r[31]_i_2\ : label is "soft_lutpair3";
begin
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  \irq_out_reg[0]\ <= \^irq_out_reg[0]\;
  \irq_out_reg[10]\ <= \^irq_out_reg[10]\;
  \irq_out_reg[11]\ <= \^irq_out_reg[11]\;
  \irq_out_reg[12]\ <= \^irq_out_reg[12]\;
  \irq_out_reg[13]\ <= \^irq_out_reg[13]\;
  \irq_out_reg[14]\ <= \^irq_out_reg[14]\;
  \irq_out_reg[15]\ <= \^irq_out_reg[15]\;
  \irq_out_reg[1]\ <= \^irq_out_reg[1]\;
  \irq_out_reg[2]\ <= \^irq_out_reg[2]\;
  \irq_out_reg[3]\ <= \^irq_out_reg[3]\;
  \irq_out_reg[4]\ <= \^irq_out_reg[4]\;
  \irq_out_reg[5]\ <= \^irq_out_reg[5]\;
  \irq_out_reg[6]\ <= \^irq_out_reg[6]\;
  \irq_out_reg[7]\ <= \^irq_out_reg[7]\;
  \irq_out_reg[8]\ <= \^irq_out_reg[8]\;
  \irq_out_reg[9]\ <= \^irq_out_reg[9]\;
S_AXI_AWREADY_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
      O => S_AXI_AWREADY0
    );
S_AXI_AWREADY_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => S_AXI_AWREADY0,
      Q => \^s_axi_wready\,
      R => clear
    );
S_AXI_BVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555C00000000000"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_wready\,
      I4 => \^s_axi_bvalid\,
      I5 => ARESETN,
      O => S_AXI_BVALID_i_1_n_0
    );
S_AXI_BVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => S_AXI_BVALID_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\S_AXI_RDATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(0),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[0]\,
      O => \S_AXI_RDATA[0]_i_1_n_0\
    );
\S_AXI_RDATA[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(10),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[10]\,
      O => \S_AXI_RDATA[10]_i_1_n_0\
    );
\S_AXI_RDATA[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(11),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[11]\,
      O => \S_AXI_RDATA[11]_i_1_n_0\
    );
\S_AXI_RDATA[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(12),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[12]\,
      O => \S_AXI_RDATA[12]_i_1_n_0\
    );
\S_AXI_RDATA[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(13),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[13]\,
      O => \S_AXI_RDATA[13]_i_1_n_0\
    );
\S_AXI_RDATA[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(14),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[14]\,
      O => \S_AXI_RDATA[14]_i_1_n_0\
    );
\S_AXI_RDATA[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(15),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[15]\,
      O => \S_AXI_RDATA[15]_i_1_n_0\
    );
\S_AXI_RDATA[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(16),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[16]\,
      O => \S_AXI_RDATA[16]_i_1_n_0\
    );
\S_AXI_RDATA[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(17),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[17]\,
      O => \S_AXI_RDATA[17]_i_1_n_0\
    );
\S_AXI_RDATA[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(18),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[18]\,
      O => \S_AXI_RDATA[18]_i_1_n_0\
    );
\S_AXI_RDATA[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(19),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[19]\,
      O => \S_AXI_RDATA[19]_i_1_n_0\
    );
\S_AXI_RDATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(1),
      I1 => S_AXI_ARADDR(3),
      I2 => irq_line_handled(0),
      O => \S_AXI_RDATA[1]_i_1_n_0\
    );
\S_AXI_RDATA[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(20),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[20]\,
      O => \S_AXI_RDATA[20]_i_1_n_0\
    );
\S_AXI_RDATA[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(21),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[21]\,
      O => \S_AXI_RDATA[21]_i_1_n_0\
    );
\S_AXI_RDATA[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(22),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[22]\,
      O => \S_AXI_RDATA[22]_i_1_n_0\
    );
\S_AXI_RDATA[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(23),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[23]\,
      O => \S_AXI_RDATA[23]_i_1_n_0\
    );
\S_AXI_RDATA[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(24),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[24]\,
      O => \S_AXI_RDATA[24]_i_1_n_0\
    );
\S_AXI_RDATA[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(25),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[25]\,
      O => \S_AXI_RDATA[25]_i_1_n_0\
    );
\S_AXI_RDATA[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(26),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[26]\,
      O => \S_AXI_RDATA[26]_i_1_n_0\
    );
\S_AXI_RDATA[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(27),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[27]\,
      O => \S_AXI_RDATA[27]_i_1_n_0\
    );
\S_AXI_RDATA[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(28),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[28]\,
      O => \S_AXI_RDATA[28]_i_1_n_0\
    );
\S_AXI_RDATA[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(29),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[29]\,
      O => \S_AXI_RDATA[29]_i_1_n_0\
    );
\S_AXI_RDATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(2),
      I1 => S_AXI_ARADDR(3),
      I2 => p_0_in(0),
      O => \S_AXI_RDATA[2]_i_1_n_0\
    );
\S_AXI_RDATA[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(30),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[30]\,
      O => \S_AXI_RDATA[30]_i_1_n_0\
    );
\S_AXI_RDATA[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => \S_AXI_RDATA[31]_i_4_n_0\,
      I2 => S_AXI_ARADDR(6),
      I3 => S_AXI_ARADDR(1),
      I4 => ARESETN,
      I5 => S_AXI_ARADDR(4),
      O => \S_AXI_RDATA[31]_i_1_n_0\
    );
\S_AXI_RDATA[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(31),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[31]\,
      O => \S_AXI_RDATA[31]_i_2_n_0\
    );
\S_AXI_RDATA[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(12),
      I3 => S_AXI_ARADDR(14),
      I4 => S_AXI_ARADDR(7),
      I5 => S_AXI_ARADDR(11),
      O => \S_AXI_RDATA[31]_i_3_n_0\
    );
\S_AXI_RDATA[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => S_AXI_ARADDR(10),
      I1 => S_AXI_ARADDR(15),
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_ARADDR(13),
      I4 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[31]_i_4_n_0\
    );
\S_AXI_RDATA[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXI_ARADDR(9),
      I1 => S_AXI_ARADDR(2),
      I2 => S_AXI_ARADDR(8),
      I3 => S_AXI_ARADDR(5),
      O => \S_AXI_RDATA[31]_i_5_n_0\
    );
\S_AXI_RDATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(3),
      I1 => S_AXI_ARADDR(3),
      I2 => p_0_in(1),
      O => \S_AXI_RDATA[3]_i_1_n_0\
    );
\S_AXI_RDATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(4),
      I1 => S_AXI_ARADDR(3),
      I2 => p_0_in(2),
      O => \S_AXI_RDATA[4]_i_1_n_0\
    );
\S_AXI_RDATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(5),
      I1 => S_AXI_ARADDR(3),
      I2 => p_0_in(3),
      O => \S_AXI_RDATA[5]_i_1_n_0\
    );
\S_AXI_RDATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(6),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[6]\,
      O => \S_AXI_RDATA[6]_i_1_n_0\
    );
\S_AXI_RDATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(7),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[7]\,
      O => \S_AXI_RDATA[7]_i_1_n_0\
    );
\S_AXI_RDATA[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(8),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[8]\,
      O => \S_AXI_RDATA[8]_i_1_n_0\
    );
\S_AXI_RDATA[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => irq_count_r_reg(9),
      I1 => S_AXI_ARADDR(3),
      I2 => \irq_gen_ctrl_r_reg_n_0_[9]\,
      O => \S_AXI_RDATA[9]_i_1_n_0\
    );
\S_AXI_RDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[0]_i_1_n_0\,
      Q => S_AXI_RDATA(0),
      R => '0'
    );
\S_AXI_RDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[10]_i_1_n_0\,
      Q => S_AXI_RDATA(10),
      R => '0'
    );
\S_AXI_RDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[11]_i_1_n_0\,
      Q => S_AXI_RDATA(11),
      R => '0'
    );
\S_AXI_RDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[12]_i_1_n_0\,
      Q => S_AXI_RDATA(12),
      R => '0'
    );
\S_AXI_RDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[13]_i_1_n_0\,
      Q => S_AXI_RDATA(13),
      R => '0'
    );
\S_AXI_RDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[14]_i_1_n_0\,
      Q => S_AXI_RDATA(14),
      R => '0'
    );
\S_AXI_RDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[15]_i_1_n_0\,
      Q => S_AXI_RDATA(15),
      R => '0'
    );
\S_AXI_RDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[16]_i_1_n_0\,
      Q => S_AXI_RDATA(16),
      R => '0'
    );
\S_AXI_RDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[17]_i_1_n_0\,
      Q => S_AXI_RDATA(17),
      R => '0'
    );
\S_AXI_RDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[18]_i_1_n_0\,
      Q => S_AXI_RDATA(18),
      R => '0'
    );
\S_AXI_RDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[19]_i_1_n_0\,
      Q => S_AXI_RDATA(19),
      R => '0'
    );
\S_AXI_RDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[1]_i_1_n_0\,
      Q => S_AXI_RDATA(1),
      R => '0'
    );
\S_AXI_RDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[20]_i_1_n_0\,
      Q => S_AXI_RDATA(20),
      R => '0'
    );
\S_AXI_RDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[21]_i_1_n_0\,
      Q => S_AXI_RDATA(21),
      R => '0'
    );
\S_AXI_RDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[22]_i_1_n_0\,
      Q => S_AXI_RDATA(22),
      R => '0'
    );
\S_AXI_RDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[23]_i_1_n_0\,
      Q => S_AXI_RDATA(23),
      R => '0'
    );
\S_AXI_RDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[24]_i_1_n_0\,
      Q => S_AXI_RDATA(24),
      R => '0'
    );
\S_AXI_RDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[25]_i_1_n_0\,
      Q => S_AXI_RDATA(25),
      R => '0'
    );
\S_AXI_RDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[26]_i_1_n_0\,
      Q => S_AXI_RDATA(26),
      R => '0'
    );
\S_AXI_RDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[27]_i_1_n_0\,
      Q => S_AXI_RDATA(27),
      R => '0'
    );
\S_AXI_RDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[28]_i_1_n_0\,
      Q => S_AXI_RDATA(28),
      R => '0'
    );
\S_AXI_RDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[29]_i_1_n_0\,
      Q => S_AXI_RDATA(29),
      R => '0'
    );
\S_AXI_RDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[2]_i_1_n_0\,
      Q => S_AXI_RDATA(2),
      R => '0'
    );
\S_AXI_RDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[30]_i_1_n_0\,
      Q => S_AXI_RDATA(30),
      R => '0'
    );
\S_AXI_RDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[31]_i_2_n_0\,
      Q => S_AXI_RDATA(31),
      R => '0'
    );
\S_AXI_RDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[3]_i_1_n_0\,
      Q => S_AXI_RDATA(3),
      R => '0'
    );
\S_AXI_RDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[4]_i_1_n_0\,
      Q => S_AXI_RDATA(4),
      R => '0'
    );
\S_AXI_RDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[5]_i_1_n_0\,
      Q => S_AXI_RDATA(5),
      R => '0'
    );
\S_AXI_RDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[6]_i_1_n_0\,
      Q => S_AXI_RDATA(6),
      R => '0'
    );
\S_AXI_RDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[7]_i_1_n_0\,
      Q => S_AXI_RDATA(7),
      R => '0'
    );
\S_AXI_RDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[8]_i_1_n_0\,
      Q => S_AXI_RDATA(8),
      R => '0'
    );
\S_AXI_RDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[9]_i_1_n_0\,
      Q => S_AXI_RDATA(9),
      R => '0'
    );
S_AXI_RVALID_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C00"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => ARESETN,
      O => S_AXI_RVALID_i_1_n_0
    );
S_AXI_RVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => S_AXI_RVALID_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
introut_state_r0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => introut_state_r0_carry_n_0,
      CO(2) => introut_state_r0_carry_n_1,
      CO(1) => introut_state_r0_carry_n_2,
      CO(0) => introut_state_r0_carry_n_3,
      CYINIT => '0',
      DI(3) => irqgen_ctrl_inst_n_22,
      DI(2) => irqgen_ctrl_inst_n_23,
      DI(1) => irqgen_ctrl_inst_n_24,
      DI(0) => irqgen_ctrl_inst_n_25,
      O(3 downto 0) => NLW_introut_state_r0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => irqgen_ctrl_inst_n_42,
      S(2) => irqgen_ctrl_inst_n_43,
      S(1) => irqgen_ctrl_inst_n_44,
      S(0) => irqgen_ctrl_inst_n_45
    );
\introut_state_r0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => introut_state_r0_carry_n_0,
      CO(3) => \introut_state_r0_carry__0_n_0\,
      CO(2) => \introut_state_r0_carry__0_n_1\,
      CO(1) => \introut_state_r0_carry__0_n_2\,
      CO(0) => \introut_state_r0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => irqgen_ctrl_inst_n_34,
      DI(2) => irqgen_ctrl_inst_n_35,
      DI(1) => irqgen_ctrl_inst_n_36,
      DI(0) => irqgen_ctrl_inst_n_37,
      O(3 downto 0) => \NLW_introut_state_r0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => irqgen_ctrl_inst_n_46,
      S(2) => irqgen_ctrl_inst_n_47,
      S(1) => irqgen_ctrl_inst_n_48,
      S(0) => irqgen_ctrl_inst_n_49
    );
\introut_state_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[0]\,
      Q => introut_state_r(0),
      R => clear
    );
\introut_state_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[10]\,
      Q => introut_state_r(10),
      R => clear
    );
\introut_state_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[11]\,
      Q => introut_state_r(11),
      R => clear
    );
\introut_state_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[12]\,
      Q => introut_state_r(12),
      R => clear
    );
\introut_state_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[13]\,
      Q => introut_state_r(13),
      R => clear
    );
\introut_state_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[14]\,
      Q => introut_state_r(14),
      R => clear
    );
\introut_state_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[15]\,
      Q => introut_state_r(15),
      R => clear
    );
\introut_state_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[1]\,
      Q => introut_state_r(1),
      R => clear
    );
\introut_state_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[2]\,
      Q => introut_state_r(2),
      R => clear
    );
\introut_state_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[3]\,
      Q => introut_state_r(3),
      R => clear
    );
\introut_state_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[4]\,
      Q => introut_state_r(4),
      R => clear
    );
\introut_state_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[5]\,
      Q => introut_state_r(5),
      R => clear
    );
\introut_state_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[6]\,
      Q => introut_state_r(6),
      R => clear
    );
\introut_state_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[7]\,
      Q => introut_state_r(7),
      R => clear
    );
\introut_state_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[8]\,
      Q => introut_state_r(8),
      R => clear
    );
\introut_state_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irqgen_ctrl_inst_n_17,
      D => \^irq_out_reg[9]\,
      Q => introut_state_r(9),
      R => clear
    );
irq_count_r0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => irq_count_r0_carry_n_0,
      CO(2) => irq_count_r0_carry_n_1,
      CO(1) => irq_count_r0_carry_n_2,
      CO(0) => irq_count_r0_carry_n_3,
      CYINIT => '0',
      DI(3) => irqgen_ctrl_inst_n_26,
      DI(2) => irqgen_ctrl_inst_n_27,
      DI(1) => irqgen_ctrl_inst_n_28,
      DI(0) => irqgen_ctrl_inst_n_29,
      O(3 downto 0) => NLW_irq_count_r0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => irqgen_ctrl_inst_n_18,
      S(2) => irqgen_ctrl_inst_n_19,
      S(1) => irqgen_ctrl_inst_n_20,
      S(0) => irqgen_ctrl_inst_n_21
    );
\irq_count_r0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => irq_count_r0_carry_n_0,
      CO(3) => \irq_count_r0_carry__0_n_0\,
      CO(2) => \irq_count_r0_carry__0_n_1\,
      CO(1) => \irq_count_r0_carry__0_n_2\,
      CO(0) => \irq_count_r0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => irqgen_ctrl_inst_n_38,
      DI(2) => irqgen_ctrl_inst_n_39,
      DI(1) => irqgen_ctrl_inst_n_40,
      DI(0) => irqgen_ctrl_inst_n_41,
      O(3 downto 0) => \NLW_irq_count_r0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => irqgen_ctrl_inst_n_30,
      S(2) => irqgen_ctrl_inst_n_31,
      S(1) => irqgen_ctrl_inst_n_32,
      S(0) => irqgen_ctrl_inst_n_33
    );
\irq_count_r[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => irq_count_r_reg(0),
      O => \irq_count_r[0]_i_2_n_0\
    );
\irq_count_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[0]_i_1_n_7\,
      Q => irq_count_r_reg(0),
      R => clear
    );
\irq_count_r_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \irq_count_r_reg[0]_i_1_n_0\,
      CO(2) => \irq_count_r_reg[0]_i_1_n_1\,
      CO(1) => \irq_count_r_reg[0]_i_1_n_2\,
      CO(0) => \irq_count_r_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \irq_count_r_reg[0]_i_1_n_4\,
      O(2) => \irq_count_r_reg[0]_i_1_n_5\,
      O(1) => \irq_count_r_reg[0]_i_1_n_6\,
      O(0) => \irq_count_r_reg[0]_i_1_n_7\,
      S(3 downto 1) => irq_count_r_reg(3 downto 1),
      S(0) => \irq_count_r[0]_i_2_n_0\
    );
\irq_count_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[8]_i_1_n_5\,
      Q => irq_count_r_reg(10),
      R => clear
    );
\irq_count_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[8]_i_1_n_4\,
      Q => irq_count_r_reg(11),
      R => clear
    );
\irq_count_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[12]_i_1_n_7\,
      Q => irq_count_r_reg(12),
      R => clear
    );
\irq_count_r_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_count_r_reg[8]_i_1_n_0\,
      CO(3) => \irq_count_r_reg[12]_i_1_n_0\,
      CO(2) => \irq_count_r_reg[12]_i_1_n_1\,
      CO(1) => \irq_count_r_reg[12]_i_1_n_2\,
      CO(0) => \irq_count_r_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \irq_count_r_reg[12]_i_1_n_4\,
      O(2) => \irq_count_r_reg[12]_i_1_n_5\,
      O(1) => \irq_count_r_reg[12]_i_1_n_6\,
      O(0) => \irq_count_r_reg[12]_i_1_n_7\,
      S(3 downto 0) => irq_count_r_reg(15 downto 12)
    );
\irq_count_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[12]_i_1_n_6\,
      Q => irq_count_r_reg(13),
      R => clear
    );
\irq_count_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[12]_i_1_n_5\,
      Q => irq_count_r_reg(14),
      R => clear
    );
\irq_count_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[12]_i_1_n_4\,
      Q => irq_count_r_reg(15),
      R => clear
    );
\irq_count_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[16]_i_1_n_7\,
      Q => irq_count_r_reg(16),
      R => clear
    );
\irq_count_r_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_count_r_reg[12]_i_1_n_0\,
      CO(3) => \irq_count_r_reg[16]_i_1_n_0\,
      CO(2) => \irq_count_r_reg[16]_i_1_n_1\,
      CO(1) => \irq_count_r_reg[16]_i_1_n_2\,
      CO(0) => \irq_count_r_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \irq_count_r_reg[16]_i_1_n_4\,
      O(2) => \irq_count_r_reg[16]_i_1_n_5\,
      O(1) => \irq_count_r_reg[16]_i_1_n_6\,
      O(0) => \irq_count_r_reg[16]_i_1_n_7\,
      S(3 downto 0) => irq_count_r_reg(19 downto 16)
    );
\irq_count_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[16]_i_1_n_6\,
      Q => irq_count_r_reg(17),
      R => clear
    );
\irq_count_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[16]_i_1_n_5\,
      Q => irq_count_r_reg(18),
      R => clear
    );
\irq_count_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[16]_i_1_n_4\,
      Q => irq_count_r_reg(19),
      R => clear
    );
\irq_count_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[0]_i_1_n_6\,
      Q => irq_count_r_reg(1),
      R => clear
    );
\irq_count_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[20]_i_1_n_7\,
      Q => irq_count_r_reg(20),
      R => clear
    );
\irq_count_r_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_count_r_reg[16]_i_1_n_0\,
      CO(3) => \irq_count_r_reg[20]_i_1_n_0\,
      CO(2) => \irq_count_r_reg[20]_i_1_n_1\,
      CO(1) => \irq_count_r_reg[20]_i_1_n_2\,
      CO(0) => \irq_count_r_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \irq_count_r_reg[20]_i_1_n_4\,
      O(2) => \irq_count_r_reg[20]_i_1_n_5\,
      O(1) => \irq_count_r_reg[20]_i_1_n_6\,
      O(0) => \irq_count_r_reg[20]_i_1_n_7\,
      S(3 downto 0) => irq_count_r_reg(23 downto 20)
    );
\irq_count_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[20]_i_1_n_6\,
      Q => irq_count_r_reg(21),
      R => clear
    );
\irq_count_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[20]_i_1_n_5\,
      Q => irq_count_r_reg(22),
      R => clear
    );
\irq_count_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[20]_i_1_n_4\,
      Q => irq_count_r_reg(23),
      R => clear
    );
\irq_count_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[24]_i_1_n_7\,
      Q => irq_count_r_reg(24),
      R => clear
    );
\irq_count_r_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_count_r_reg[20]_i_1_n_0\,
      CO(3) => \irq_count_r_reg[24]_i_1_n_0\,
      CO(2) => \irq_count_r_reg[24]_i_1_n_1\,
      CO(1) => \irq_count_r_reg[24]_i_1_n_2\,
      CO(0) => \irq_count_r_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \irq_count_r_reg[24]_i_1_n_4\,
      O(2) => \irq_count_r_reg[24]_i_1_n_5\,
      O(1) => \irq_count_r_reg[24]_i_1_n_6\,
      O(0) => \irq_count_r_reg[24]_i_1_n_7\,
      S(3 downto 0) => irq_count_r_reg(27 downto 24)
    );
\irq_count_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[24]_i_1_n_6\,
      Q => irq_count_r_reg(25),
      R => clear
    );
\irq_count_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[24]_i_1_n_5\,
      Q => irq_count_r_reg(26),
      R => clear
    );
\irq_count_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[24]_i_1_n_4\,
      Q => irq_count_r_reg(27),
      R => clear
    );
\irq_count_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[28]_i_1_n_7\,
      Q => irq_count_r_reg(28),
      R => clear
    );
\irq_count_r_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_count_r_reg[24]_i_1_n_0\,
      CO(3) => \NLW_irq_count_r_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \irq_count_r_reg[28]_i_1_n_1\,
      CO(1) => \irq_count_r_reg[28]_i_1_n_2\,
      CO(0) => \irq_count_r_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \irq_count_r_reg[28]_i_1_n_4\,
      O(2) => \irq_count_r_reg[28]_i_1_n_5\,
      O(1) => \irq_count_r_reg[28]_i_1_n_6\,
      O(0) => \irq_count_r_reg[28]_i_1_n_7\,
      S(3 downto 0) => irq_count_r_reg(31 downto 28)
    );
\irq_count_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[28]_i_1_n_6\,
      Q => irq_count_r_reg(29),
      R => clear
    );
\irq_count_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[0]_i_1_n_5\,
      Q => irq_count_r_reg(2),
      R => clear
    );
\irq_count_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[28]_i_1_n_5\,
      Q => irq_count_r_reg(30),
      R => clear
    );
\irq_count_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[28]_i_1_n_4\,
      Q => irq_count_r_reg(31),
      R => clear
    );
\irq_count_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[0]_i_1_n_4\,
      Q => irq_count_r_reg(3),
      R => clear
    );
\irq_count_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[4]_i_1_n_7\,
      Q => irq_count_r_reg(4),
      R => clear
    );
\irq_count_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_count_r_reg[0]_i_1_n_0\,
      CO(3) => \irq_count_r_reg[4]_i_1_n_0\,
      CO(2) => \irq_count_r_reg[4]_i_1_n_1\,
      CO(1) => \irq_count_r_reg[4]_i_1_n_2\,
      CO(0) => \irq_count_r_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \irq_count_r_reg[4]_i_1_n_4\,
      O(2) => \irq_count_r_reg[4]_i_1_n_5\,
      O(1) => \irq_count_r_reg[4]_i_1_n_6\,
      O(0) => \irq_count_r_reg[4]_i_1_n_7\,
      S(3 downto 0) => irq_count_r_reg(7 downto 4)
    );
\irq_count_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[4]_i_1_n_6\,
      Q => irq_count_r_reg(5),
      R => clear
    );
\irq_count_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[4]_i_1_n_5\,
      Q => irq_count_r_reg(6),
      R => clear
    );
\irq_count_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[4]_i_1_n_4\,
      Q => irq_count_r_reg(7),
      R => clear
    );
\irq_count_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[8]_i_1_n_7\,
      Q => irq_count_r_reg(8),
      R => clear
    );
\irq_count_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \irq_count_r_reg[4]_i_1_n_0\,
      CO(3) => \irq_count_r_reg[8]_i_1_n_0\,
      CO(2) => \irq_count_r_reg[8]_i_1_n_1\,
      CO(1) => \irq_count_r_reg[8]_i_1_n_2\,
      CO(0) => \irq_count_r_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \irq_count_r_reg[8]_i_1_n_4\,
      O(2) => \irq_count_r_reg[8]_i_1_n_5\,
      O(1) => \irq_count_r_reg[8]_i_1_n_6\,
      O(0) => \irq_count_r_reg[8]_i_1_n_7\,
      S(3 downto 0) => irq_count_r_reg(11 downto 8)
    );
\irq_count_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_count_r0_carry__0_n_0\,
      D => \irq_count_r_reg[8]_i_1_n_6\,
      Q => irq_count_r_reg(9),
      R => clear
    );
\irq_gen_ctrl_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \irq_gen_genirq_r[31]_i_2_n_0\,
      I1 => S_AXI_AWADDR(2),
      I2 => \irq_gen_genirq_r[31]_i_3_n_0\,
      I3 => S_AXI_WDATA(1),
      I4 => irq_line_handled(0),
      O => \irq_gen_ctrl_r[1]_i_1_n_0\
    );
\irq_gen_ctrl_r[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \irq_gen_genirq_r[31]_i_2_n_0\,
      I1 => S_AXI_AWADDR(2),
      I2 => \irq_gen_genirq_r[31]_i_3_n_0\,
      O => \irq_gen_ctrl_r[31]_i_1_n_0\
    );
\irq_gen_ctrl_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \irq_gen_ctrl_r_reg_n_0_[0]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \irq_gen_ctrl_r_reg_n_0_[10]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \irq_gen_ctrl_r_reg_n_0_[11]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \irq_gen_ctrl_r_reg_n_0_[12]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \irq_gen_ctrl_r_reg_n_0_[13]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \irq_gen_ctrl_r_reg_n_0_[14]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \irq_gen_ctrl_r_reg_n_0_[15]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \irq_gen_ctrl_r_reg_n_0_[16]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \irq_gen_ctrl_r_reg_n_0_[17]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \irq_gen_ctrl_r_reg_n_0_[18]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \irq_gen_ctrl_r_reg_n_0_[19]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => \irq_gen_ctrl_r[1]_i_1_n_0\,
      Q => irq_line_handled(0),
      R => clear
    );
\irq_gen_ctrl_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \irq_gen_ctrl_r_reg_n_0_[20]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \irq_gen_ctrl_r_reg_n_0_[21]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \irq_gen_ctrl_r_reg_n_0_[22]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \irq_gen_ctrl_r_reg_n_0_[23]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \irq_gen_ctrl_r_reg_n_0_[24]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \irq_gen_ctrl_r_reg_n_0_[25]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \irq_gen_ctrl_r_reg_n_0_[26]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \irq_gen_ctrl_r_reg_n_0_[27]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \irq_gen_ctrl_r_reg_n_0_[28]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \irq_gen_ctrl_r_reg_n_0_[29]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => p_0_in(0),
      R => clear
    );
\irq_gen_ctrl_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \irq_gen_ctrl_r_reg_n_0_[30]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \irq_gen_ctrl_r_reg_n_0_[31]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => p_0_in(1),
      R => clear
    );
\irq_gen_ctrl_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => p_0_in(2),
      R => clear
    );
\irq_gen_ctrl_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => p_0_in(3),
      R => clear
    );
\irq_gen_ctrl_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \irq_gen_ctrl_r_reg_n_0_[6]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \irq_gen_ctrl_r_reg_n_0_[7]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \irq_gen_ctrl_r_reg_n_0_[8]\,
      R => clear
    );
\irq_gen_ctrl_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \irq_gen_ctrl_r[31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \irq_gen_ctrl_r_reg_n_0_[9]\,
      R => clear
    );
\irq_gen_genirq_r[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \irq_gen_genirq_r[31]_i_2_n_0\,
      I1 => S_AXI_AWADDR(2),
      I2 => \irq_gen_genirq_r[31]_i_3_n_0\,
      I3 => \irq_gen_genirq_r[31]_i_4_n_0\,
      O => irq_gen_genirq_r
    );
\irq_gen_genirq_r[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXI_WDATA(29),
      I1 => S_AXI_WDATA(26),
      I2 => S_AXI_WDATA(23),
      I3 => S_AXI_WDATA(17),
      O => \irq_gen_genirq_r[31]_i_10_n_0\
    );
\irq_gen_genirq_r[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_AWADDR(1),
      I4 => S_AXI_AWADDR(0),
      O => \irq_gen_genirq_r[31]_i_2_n_0\
    );
\irq_gen_genirq_r[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \irq_gen_genirq_r[31]_i_5_n_0\,
      I1 => S_AXI_AWADDR(4),
      I2 => S_AXI_AWADDR(15),
      I3 => S_AXI_AWADDR(3),
      I4 => \irq_gen_genirq_r[31]_i_6_n_0\,
      O => \irq_gen_genirq_r[31]_i_3_n_0\
    );
\irq_gen_genirq_r[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFFF"
    )
        port map (
      I0 => \irq_gen_genirq_r[31]_i_7_n_0\,
      I1 => \irq_gen_genirq_r[31]_i_8_n_0\,
      I2 => \irq_gen_genirq_r[31]_i_9_n_0\,
      I3 => \irq_gen_genirq_r[31]_i_10_n_0\,
      I4 => \irq_gen_ctrl_r_reg_n_0_[0]\,
      O => \irq_gen_genirq_r[31]_i_4_n_0\
    );
\irq_gen_genirq_r[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXI_AWADDR(14),
      I1 => S_AXI_AWADDR(8),
      I2 => S_AXI_AWADDR(7),
      I3 => S_AXI_AWADDR(6),
      O => \irq_gen_genirq_r[31]_i_5_n_0\
    );
\irq_gen_genirq_r[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => S_AXI_AWADDR(10),
      I1 => S_AXI_AWADDR(9),
      I2 => S_AXI_AWADDR(5),
      I3 => S_AXI_AWADDR(11),
      I4 => S_AXI_AWADDR(12),
      I5 => S_AXI_AWADDR(13),
      O => \irq_gen_genirq_r[31]_i_6_n_0\
    );
\irq_gen_genirq_r[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXI_WDATA(27),
      I1 => S_AXI_WDATA(18),
      I2 => S_AXI_WDATA(31),
      I3 => S_AXI_WDATA(20),
      O => \irq_gen_genirq_r[31]_i_7_n_0\
    );
\irq_gen_genirq_r[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXI_WDATA(30),
      I1 => S_AXI_WDATA(16),
      I2 => S_AXI_WDATA(28),
      I3 => S_AXI_WDATA(19),
      O => \irq_gen_genirq_r[31]_i_8_n_0\
    );
\irq_gen_genirq_r[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => S_AXI_WDATA(22),
      I1 => S_AXI_WDATA(21),
      I2 => S_AXI_WDATA(25),
      I3 => S_AXI_WDATA(24),
      O => \irq_gen_genirq_r[31]_i_9_n_0\
    );
\irq_gen_genirq_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(0),
      Q => \irq_gen_genirq_r_reg_n_0_[0]\,
      R => clear
    );
\irq_gen_genirq_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(10),
      Q => irq_rate(4),
      R => clear
    );
\irq_gen_genirq_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(11),
      Q => irq_rate(5),
      R => clear
    );
\irq_gen_genirq_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(12),
      Q => irq_rate(6),
      R => clear
    );
\irq_gen_genirq_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(13),
      Q => irq_rate(7),
      R => clear
    );
\irq_gen_genirq_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(14),
      Q => irq_rate(8),
      R => clear
    );
\irq_gen_genirq_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(15),
      Q => irq_rate(9),
      R => clear
    );
\irq_gen_genirq_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(16),
      Q => irq_rate(10),
      R => clear
    );
\irq_gen_genirq_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(17),
      Q => irq_rate(11),
      R => clear
    );
\irq_gen_genirq_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(18),
      Q => irq_rate(12),
      R => clear
    );
\irq_gen_genirq_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(19),
      Q => irq_rate(13),
      R => clear
    );
\irq_gen_genirq_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(1),
      Q => \irq_gen_genirq_r_reg_n_0_[1]\,
      R => clear
    );
\irq_gen_genirq_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(20),
      Q => irq_amt(0),
      R => clear
    );
\irq_gen_genirq_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(21),
      Q => irq_amt(1),
      R => clear
    );
\irq_gen_genirq_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(22),
      Q => irq_amt(2),
      R => clear
    );
\irq_gen_genirq_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(23),
      Q => irq_amt(3),
      R => clear
    );
\irq_gen_genirq_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(24),
      Q => irq_amt(4),
      R => clear
    );
\irq_gen_genirq_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(25),
      Q => irq_amt(5),
      R => clear
    );
\irq_gen_genirq_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(26),
      Q => irq_amt(6),
      R => clear
    );
\irq_gen_genirq_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(27),
      Q => irq_amt(7),
      R => clear
    );
\irq_gen_genirq_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(28),
      Q => irq_amt(8),
      R => clear
    );
\irq_gen_genirq_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(29),
      Q => irq_amt(9),
      R => clear
    );
\irq_gen_genirq_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(2),
      Q => \irq_gen_genirq_r_reg_n_0_[2]\,
      R => clear
    );
\irq_gen_genirq_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(30),
      Q => irq_amt(10),
      R => clear
    );
\irq_gen_genirq_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(31),
      Q => irq_amt(11),
      R => clear
    );
\irq_gen_genirq_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(3),
      Q => \irq_gen_genirq_r_reg_n_0_[3]\,
      R => clear
    );
\irq_gen_genirq_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(6),
      Q => irq_rate(0),
      R => clear
    );
\irq_gen_genirq_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(7),
      Q => irq_rate(1),
      R => clear
    );
\irq_gen_genirq_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(8),
      Q => irq_rate(2),
      R => clear
    );
\irq_gen_genirq_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => irq_gen_genirq_r,
      D => S_AXI_WDATA(9),
      Q => irq_rate(3),
      R => clear
    );
irqgen_ctrl_inst: entity work.design_1_irq_generator_0_0_irqgen_controller
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      CO(0) => \introut_state_r0_carry__0_n_0\,
      D(15) => \^irq_out_reg[15]\,
      D(14) => \^irq_out_reg[14]\,
      D(13) => \^irq_out_reg[13]\,
      D(12) => \^irq_out_reg[12]\,
      D(11) => \^irq_out_reg[11]\,
      D(10) => \^irq_out_reg[10]\,
      D(9) => \^irq_out_reg[9]\,
      D(8) => \^irq_out_reg[8]\,
      D(7) => \^irq_out_reg[7]\,
      D(6) => \^irq_out_reg[6]\,
      D(5) => \^irq_out_reg[5]\,
      D(4) => \^irq_out_reg[4]\,
      D(3) => \^irq_out_reg[3]\,
      D(2) => \^irq_out_reg[2]\,
      D(1) => \^irq_out_reg[1]\,
      D(0) => \^irq_out_reg[0]\,
      DI(3) => irqgen_ctrl_inst_n_22,
      DI(2) => irqgen_ctrl_inst_n_23,
      DI(1) => irqgen_ctrl_inst_n_24,
      DI(0) => irqgen_ctrl_inst_n_25,
      E(0) => irqgen_ctrl_inst_n_17,
      Q(3 downto 0) => p_0_in(3 downto 0),
      S(3) => irqgen_ctrl_inst_n_18,
      S(2) => irqgen_ctrl_inst_n_19,
      S(1) => irqgen_ctrl_inst_n_20,
      S(0) => irqgen_ctrl_inst_n_21,
      clear => clear,
      \introut_state_r_reg[0]\(0) => \irq_count_r0_carry__0_n_0\,
      \introut_state_r_reg[14]\(3) => irqgen_ctrl_inst_n_34,
      \introut_state_r_reg[14]\(2) => irqgen_ctrl_inst_n_35,
      \introut_state_r_reg[14]\(1) => irqgen_ctrl_inst_n_36,
      \introut_state_r_reg[14]\(0) => irqgen_ctrl_inst_n_37,
      \irq_amt_r_reg[11]_0\(29 downto 18) => irq_amt(11 downto 0),
      \irq_amt_r_reg[11]_0\(17 downto 4) => irq_rate(13 downto 0),
      \irq_amt_r_reg[11]_0\(3) => \irq_gen_genirq_r_reg_n_0_[3]\,
      \irq_amt_r_reg[11]_0\(2) => \irq_gen_genirq_r_reg_n_0_[2]\,
      \irq_amt_r_reg[11]_0\(1) => \irq_gen_genirq_r_reg_n_0_[1]\,
      \irq_amt_r_reg[11]_0\(0) => \irq_gen_genirq_r_reg_n_0_[0]\,
      \irq_count_r_reg[0]\(15 downto 0) => introut_state_r(15 downto 0),
      irq_line_handled(0) => irq_line_handled(0),
      \irq_out_reg[14]_0\(3) => irqgen_ctrl_inst_n_30,
      \irq_out_reg[14]_0\(2) => irqgen_ctrl_inst_n_31,
      \irq_out_reg[14]_0\(1) => irqgen_ctrl_inst_n_32,
      \irq_out_reg[14]_0\(0) => irqgen_ctrl_inst_n_33,
      \irq_out_reg[14]_1\(3) => irqgen_ctrl_inst_n_38,
      \irq_out_reg[14]_1\(2) => irqgen_ctrl_inst_n_39,
      \irq_out_reg[14]_1\(1) => irqgen_ctrl_inst_n_40,
      \irq_out_reg[14]_1\(0) => irqgen_ctrl_inst_n_41,
      \irq_out_reg[14]_2\(3) => irqgen_ctrl_inst_n_46,
      \irq_out_reg[14]_2\(2) => irqgen_ctrl_inst_n_47,
      \irq_out_reg[14]_2\(1) => irqgen_ctrl_inst_n_48,
      \irq_out_reg[14]_2\(0) => irqgen_ctrl_inst_n_49,
      \irq_out_reg[6]_0\(3) => irqgen_ctrl_inst_n_26,
      \irq_out_reg[6]_0\(2) => irqgen_ctrl_inst_n_27,
      \irq_out_reg[6]_0\(1) => irqgen_ctrl_inst_n_28,
      \irq_out_reg[6]_0\(0) => irqgen_ctrl_inst_n_29,
      \irq_out_reg[6]_1\(3) => irqgen_ctrl_inst_n_42,
      \irq_out_reg[6]_1\(2) => irqgen_ctrl_inst_n_43,
      \irq_out_reg[6]_1\(1) => irqgen_ctrl_inst_n_44,
      \irq_out_reg[6]_1\(0) => irqgen_ctrl_inst_n_45,
      running_reg_0 => start_irq_gen_r_reg_n_0
    );
start_irq_gen_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \irq_gen_genirq_r[31]_i_2_n_0\,
      I1 => S_AXI_AWADDR(2),
      I2 => \irq_gen_genirq_r[31]_i_3_n_0\,
      I3 => \irq_gen_genirq_r[31]_i_4_n_0\,
      I4 => start_irq_gen_r_reg_n_0,
      O => start_irq_gen_r_i_1_n_0
    );
start_irq_gen_r_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => start_irq_gen_r_i_1_n_0,
      Q => start_irq_gen_r_reg_n_0,
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_irq_generator_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    irqgen_introut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_irq_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_irq_generator_0_0 : entity is "design_1_irq_generator_0_0,irq_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_irq_generator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_irq_generator_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_irq_generator_0_0 : entity is "irq_generator,Vivado 2023.1";
end design_1_irq_generator_0_0;

architecture STRUCTURE of design_1_irq_generator_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ARESETN : signal is "xilinx.com:signal:reset:1.0 ARESETN RST";
  attribute X_INTERFACE_PARAMETER of ARESETN : signal is "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of irqgen_introut : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irqgen_introut : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
begin
  S_AXI_ARREADY <= \<const1>\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_WREADY <= \^s_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_irq_generator_0_0_irq_generator
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S_AXI_ARADDR(15 downto 0) => S_AXI_ARADDR(15 downto 0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(15 downto 0) => S_AXI_AWADDR(15 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => \^s_axi_awready\,
      S_AXI_WVALID => S_AXI_WVALID,
      \irq_out_reg[0]\ => irqgen_introut(0),
      \irq_out_reg[10]\ => irqgen_introut(10),
      \irq_out_reg[11]\ => irqgen_introut(11),
      \irq_out_reg[12]\ => irqgen_introut(12),
      \irq_out_reg[13]\ => irqgen_introut(13),
      \irq_out_reg[14]\ => irqgen_introut(14),
      \irq_out_reg[15]\ => irqgen_introut(15),
      \irq_out_reg[1]\ => irqgen_introut(1),
      \irq_out_reg[2]\ => irqgen_introut(2),
      \irq_out_reg[3]\ => irqgen_introut(3),
      \irq_out_reg[4]\ => irqgen_introut(4),
      \irq_out_reg[5]\ => irqgen_introut(5),
      \irq_out_reg[6]\ => irqgen_introut(6),
      \irq_out_reg[7]\ => irqgen_introut(7),
      \irq_out_reg[8]\ => irqgen_introut(8),
      \irq_out_reg[9]\ => irqgen_introut(9)
    );
end STRUCTURE;
