-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Feb 19 17:47:52 2020
-- Host        : ECTET-1360-04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/hsb2790/Downloads/Lab_3/lab_3/src/ip/design_1_lab_0_0/design_1_lab_0_0_sim_netlist.vhdl
-- Design      : design_1_lab_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lab_0_0_lab is
  port (
    output : out STD_LOGIC;
    duty : in STD_LOGIC_VECTOR ( 20 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    period : in STD_LOGIC_VECTOR ( 20 downto 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_lab_0_0_lab : entity is "lab";
end design_1_lab_0_0_lab;

architecture STRUCTURE of design_1_lab_0_0_lab is
  signal \count_sig1__6_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_n_1\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_n_2\ : STD_LOGIC;
  signal \count_sig1__6_carry__0_n_3\ : STD_LOGIC;
  signal \count_sig1__6_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry__1_n_2\ : STD_LOGIC;
  signal \count_sig1__6_carry__1_n_3\ : STD_LOGIC;
  signal \count_sig1__6_carry_i_1_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry_i_2_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry_i_3_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry_i_4_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry_i_5_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry_i_6_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry_i_7_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry_i_8_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry_n_0\ : STD_LOGIC;
  signal \count_sig1__6_carry_n_1\ : STD_LOGIC;
  signal \count_sig1__6_carry_n_2\ : STD_LOGIC;
  signal \count_sig1__6_carry_n_3\ : STD_LOGIC;
  signal \count_sig1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count_sig1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count_sig1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count_sig1_carry__0_n_2\ : STD_LOGIC;
  signal \count_sig1_carry__0_n_3\ : STD_LOGIC;
  signal count_sig1_carry_i_1_n_0 : STD_LOGIC;
  signal count_sig1_carry_i_2_n_0 : STD_LOGIC;
  signal count_sig1_carry_i_3_n_0 : STD_LOGIC;
  signal count_sig1_carry_i_4_n_0 : STD_LOGIC;
  signal count_sig1_carry_n_0 : STD_LOGIC;
  signal count_sig1_carry_n_1 : STD_LOGIC;
  signal count_sig1_carry_n_2 : STD_LOGIC;
  signal count_sig1_carry_n_3 : STD_LOGIC;
  signal \count_sig[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_5_n_0\ : STD_LOGIC;
  signal count_sig_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \count_sig_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal output_sig : STD_LOGIC;
  signal output_sig_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 20 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_count_sig1__6_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_sig1__6_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_sig1__6_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_sig1__6_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_count_sig1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_sig1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_sig1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_sig_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_sig_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of output_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of output_sig_i_1 : label is "soft_lutpair0";
begin
\count_sig1__6_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_sig1__6_carry_n_0\,
      CO(2) => \count_sig1__6_carry_n_1\,
      CO(1) => \count_sig1__6_carry_n_2\,
      CO(0) => \count_sig1__6_carry_n_3\,
      CYINIT => '0',
      DI(3) => \count_sig1__6_carry_i_1_n_0\,
      DI(2) => \count_sig1__6_carry_i_2_n_0\,
      DI(1) => \count_sig1__6_carry_i_3_n_0\,
      DI(0) => \count_sig1__6_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_count_sig1__6_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_sig1__6_carry_i_5_n_0\,
      S(2) => \count_sig1__6_carry_i_6_n_0\,
      S(1) => \count_sig1__6_carry_i_7_n_0\,
      S(0) => \count_sig1__6_carry_i_8_n_0\
    );
\count_sig1__6_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig1__6_carry_n_0\,
      CO(3) => \count_sig1__6_carry__0_n_0\,
      CO(2) => \count_sig1__6_carry__0_n_1\,
      CO(1) => \count_sig1__6_carry__0_n_2\,
      CO(0) => \count_sig1__6_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count_sig1__6_carry__0_i_1_n_0\,
      DI(2) => \count_sig1__6_carry__0_i_2_n_0\,
      DI(1) => \count_sig1__6_carry__0_i_3_n_0\,
      DI(0) => \count_sig1__6_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_count_sig1__6_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_sig1__6_carry__0_i_5_n_0\,
      S(2) => \count_sig1__6_carry__0_i_6_n_0\,
      S(1) => \count_sig1__6_carry__0_i_7_n_0\,
      S(0) => \count_sig1__6_carry__0_i_8_n_0\
    );
\count_sig1__6_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(14),
      I1 => duty(14),
      I2 => duty(15),
      I3 => count_sig_reg(15),
      O => \count_sig1__6_carry__0_i_1_n_0\
    );
\count_sig1__6_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(12),
      I1 => duty(12),
      I2 => duty(13),
      I3 => count_sig_reg(13),
      O => \count_sig1__6_carry__0_i_2_n_0\
    );
\count_sig1__6_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(10),
      I1 => duty(10),
      I2 => duty(11),
      I3 => count_sig_reg(11),
      O => \count_sig1__6_carry__0_i_3_n_0\
    );
\count_sig1__6_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(8),
      I1 => duty(8),
      I2 => duty(9),
      I3 => count_sig_reg(9),
      O => \count_sig1__6_carry__0_i_4_n_0\
    );
\count_sig1__6_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(14),
      I1 => duty(14),
      I2 => count_sig_reg(15),
      I3 => duty(15),
      O => \count_sig1__6_carry__0_i_5_n_0\
    );
\count_sig1__6_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(12),
      I1 => duty(12),
      I2 => count_sig_reg(13),
      I3 => duty(13),
      O => \count_sig1__6_carry__0_i_6_n_0\
    );
\count_sig1__6_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(10),
      I1 => duty(10),
      I2 => count_sig_reg(11),
      I3 => duty(11),
      O => \count_sig1__6_carry__0_i_7_n_0\
    );
\count_sig1__6_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(8),
      I1 => duty(8),
      I2 => count_sig_reg(9),
      I3 => duty(9),
      O => \count_sig1__6_carry__0_i_8_n_0\
    );
\count_sig1__6_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig1__6_carry__0_n_0\,
      CO(3) => \NLW_count_sig1__6_carry__1_CO_UNCONNECTED\(3),
      CO(2) => load,
      CO(1) => \count_sig1__6_carry__1_n_2\,
      CO(0) => \count_sig1__6_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count_sig1__6_carry__1_i_1_n_0\,
      DI(1) => \count_sig1__6_carry__1_i_2_n_0\,
      DI(0) => \count_sig1__6_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_count_sig1__6_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \count_sig1__6_carry__1_i_4_n_0\,
      S(1) => \count_sig1__6_carry__1_i_5_n_0\,
      S(0) => \count_sig1__6_carry__1_i_6_n_0\
    );
\count_sig1__6_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(20),
      I1 => duty(20),
      O => \count_sig1__6_carry__1_i_1_n_0\
    );
\count_sig1__6_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(18),
      I1 => duty(18),
      I2 => duty(19),
      I3 => count_sig_reg(19),
      O => \count_sig1__6_carry__1_i_2_n_0\
    );
\count_sig1__6_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(16),
      I1 => duty(16),
      I2 => duty(17),
      I3 => count_sig_reg(17),
      O => \count_sig1__6_carry__1_i_3_n_0\
    );
\count_sig1__6_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => duty(20),
      I1 => count_sig_reg(20),
      O => \count_sig1__6_carry__1_i_4_n_0\
    );
\count_sig1__6_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(18),
      I1 => duty(18),
      I2 => count_sig_reg(19),
      I3 => duty(19),
      O => \count_sig1__6_carry__1_i_5_n_0\
    );
\count_sig1__6_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(16),
      I1 => duty(16),
      I2 => count_sig_reg(17),
      I3 => duty(17),
      O => \count_sig1__6_carry__1_i_6_n_0\
    );
\count_sig1__6_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(6),
      I1 => duty(6),
      I2 => duty(7),
      I3 => count_sig_reg(7),
      O => \count_sig1__6_carry_i_1_n_0\
    );
\count_sig1__6_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(4),
      I1 => duty(4),
      I2 => duty(5),
      I3 => count_sig_reg(5),
      O => \count_sig1__6_carry_i_2_n_0\
    );
\count_sig1__6_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(2),
      I1 => duty(2),
      I2 => duty(3),
      I3 => count_sig_reg(3),
      O => \count_sig1__6_carry_i_3_n_0\
    );
\count_sig1__6_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => duty(0),
      I2 => duty(1),
      I3 => count_sig_reg(1),
      O => \count_sig1__6_carry_i_4_n_0\
    );
\count_sig1__6_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(6),
      I1 => duty(6),
      I2 => count_sig_reg(7),
      I3 => duty(7),
      O => \count_sig1__6_carry_i_5_n_0\
    );
\count_sig1__6_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(4),
      I1 => duty(4),
      I2 => count_sig_reg(5),
      I3 => duty(5),
      O => \count_sig1__6_carry_i_6_n_0\
    );
\count_sig1__6_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(2),
      I1 => duty(2),
      I2 => count_sig_reg(3),
      I3 => duty(3),
      O => \count_sig1__6_carry_i_7_n_0\
    );
\count_sig1__6_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => duty(0),
      I2 => count_sig_reg(1),
      I3 => duty(1),
      O => \count_sig1__6_carry_i_8_n_0\
    );
count_sig1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count_sig1_carry_n_0,
      CO(2) => count_sig1_carry_n_1,
      CO(1) => count_sig1_carry_n_2,
      CO(0) => count_sig1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_count_sig1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count_sig1_carry_i_1_n_0,
      S(2) => count_sig1_carry_i_2_n_0,
      S(1) => count_sig1_carry_i_3_n_0,
      S(0) => count_sig1_carry_i_4_n_0
    );
\count_sig1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count_sig1_carry_n_0,
      CO(3) => \NLW_count_sig1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => p_1_in,
      CO(1) => \count_sig1_carry__0_n_2\,
      CO(0) => \count_sig1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_count_sig1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \count_sig1_carry__0_i_1_n_0\,
      S(1) => \count_sig1_carry__0_i_2_n_0\,
      S(0) => \count_sig1_carry__0_i_3_n_0\
    );
\count_sig1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(18),
      I1 => period(18),
      I2 => period(20),
      I3 => count_sig_reg(20),
      I4 => period(19),
      I5 => count_sig_reg(19),
      O => \count_sig1_carry__0_i_1_n_0\
    );
\count_sig1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(15),
      I1 => period(15),
      I2 => period(17),
      I3 => count_sig_reg(17),
      I4 => period(16),
      I5 => count_sig_reg(16),
      O => \count_sig1_carry__0_i_2_n_0\
    );
\count_sig1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(12),
      I1 => period(12),
      I2 => period(14),
      I3 => count_sig_reg(14),
      I4 => period(13),
      I5 => count_sig_reg(13),
      O => \count_sig1_carry__0_i_3_n_0\
    );
count_sig1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(9),
      I1 => period(9),
      I2 => period(11),
      I3 => count_sig_reg(11),
      I4 => period(10),
      I5 => count_sig_reg(10),
      O => count_sig1_carry_i_1_n_0
    );
count_sig1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(6),
      I1 => period(6),
      I2 => period(8),
      I3 => count_sig_reg(8),
      I4 => period(7),
      I5 => count_sig_reg(7),
      O => count_sig1_carry_i_2_n_0
    );
count_sig1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(3),
      I1 => period(3),
      I2 => period(5),
      I3 => count_sig_reg(5),
      I4 => period(4),
      I5 => count_sig_reg(4),
      O => count_sig1_carry_i_3_n_0
    );
count_sig1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => period(0),
      I2 => period(2),
      I3 => count_sig_reg(2),
      I4 => period(1),
      I5 => count_sig_reg(1),
      O => count_sig1_carry_i_4_n_0
    );
\count_sig[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => p_1_in,
      I1 => load,
      I2 => count_sig_reg(0),
      O => \count_sig[0]_i_2_n_0\
    );
\count_sig[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(3),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(3),
      O => \count_sig[0]_i_3_n_0\
    );
\count_sig[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(2),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(2),
      O => \count_sig[0]_i_4_n_0\
    );
\count_sig[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(1),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(1),
      O => \count_sig[0]_i_5_n_0\
    );
\count_sig[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => p_1_in,
      I2 => load,
      O => \count_sig[0]_i_6_n_0\
    );
\count_sig[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(15),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(15),
      O => \count_sig[12]_i_2_n_0\
    );
\count_sig[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(14),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(14),
      O => \count_sig[12]_i_3_n_0\
    );
\count_sig[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(13),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(13),
      O => \count_sig[12]_i_4_n_0\
    );
\count_sig[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(12),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(12),
      O => \count_sig[12]_i_5_n_0\
    );
\count_sig[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(19),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(19),
      O => \count_sig[16]_i_2_n_0\
    );
\count_sig[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(18),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(18),
      O => \count_sig[16]_i_3_n_0\
    );
\count_sig[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(17),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(17),
      O => \count_sig[16]_i_4_n_0\
    );
\count_sig[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(16),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(16),
      O => \count_sig[16]_i_5_n_0\
    );
\count_sig[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(20),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(20),
      O => \count_sig[20]_i_2_n_0\
    );
\count_sig[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(7),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(7),
      O => \count_sig[4]_i_2_n_0\
    );
\count_sig[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(6),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(6),
      O => \count_sig[4]_i_3_n_0\
    );
\count_sig[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(5),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(5),
      O => \count_sig[4]_i_4_n_0\
    );
\count_sig[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(4),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(4),
      O => \count_sig[4]_i_5_n_0\
    );
\count_sig[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(11),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(11),
      O => \count_sig[8]_i_2_n_0\
    );
\count_sig[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(10),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(10),
      O => \count_sig[8]_i_3_n_0\
    );
\count_sig[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(9),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(9),
      O => \count_sig[8]_i_4_n_0\
    );
\count_sig[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => plusOp(8),
      I1 => p_1_in,
      I2 => load,
      I3 => count_sig_reg(8),
      O => \count_sig[8]_i_5_n_0\
    );
\count_sig_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[0]_i_1_n_7\,
      Q => count_sig_reg(0)
    );
\count_sig_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_sig_reg[0]_i_1_n_0\,
      CO(2) => \count_sig_reg[0]_i_1_n_1\,
      CO(1) => \count_sig_reg[0]_i_1_n_2\,
      CO(0) => \count_sig_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count_sig[0]_i_2_n_0\,
      O(3) => \count_sig_reg[0]_i_1_n_4\,
      O(2) => \count_sig_reg[0]_i_1_n_5\,
      O(1) => \count_sig_reg[0]_i_1_n_6\,
      O(0) => \count_sig_reg[0]_i_1_n_7\,
      S(3) => \count_sig[0]_i_3_n_0\,
      S(2) => \count_sig[0]_i_4_n_0\,
      S(1) => \count_sig[0]_i_5_n_0\,
      S(0) => \count_sig[0]_i_6_n_0\
    );
\count_sig_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[8]_i_1_n_5\,
      Q => count_sig_reg(10)
    );
\count_sig_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[8]_i_1_n_4\,
      Q => count_sig_reg(11)
    );
\count_sig_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[12]_i_1_n_7\,
      Q => count_sig_reg(12)
    );
\count_sig_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[8]_i_1_n_0\,
      CO(3) => \count_sig_reg[12]_i_1_n_0\,
      CO(2) => \count_sig_reg[12]_i_1_n_1\,
      CO(1) => \count_sig_reg[12]_i_1_n_2\,
      CO(0) => \count_sig_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[12]_i_1_n_4\,
      O(2) => \count_sig_reg[12]_i_1_n_5\,
      O(1) => \count_sig_reg[12]_i_1_n_6\,
      O(0) => \count_sig_reg[12]_i_1_n_7\,
      S(3) => \count_sig[12]_i_2_n_0\,
      S(2) => \count_sig[12]_i_3_n_0\,
      S(1) => \count_sig[12]_i_4_n_0\,
      S(0) => \count_sig[12]_i_5_n_0\
    );
\count_sig_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[12]_i_1_n_6\,
      Q => count_sig_reg(13)
    );
\count_sig_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[12]_i_1_n_5\,
      Q => count_sig_reg(14)
    );
\count_sig_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[12]_i_1_n_4\,
      Q => count_sig_reg(15)
    );
\count_sig_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[16]_i_1_n_7\,
      Q => count_sig_reg(16)
    );
\count_sig_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[12]_i_1_n_0\,
      CO(3) => \count_sig_reg[16]_i_1_n_0\,
      CO(2) => \count_sig_reg[16]_i_1_n_1\,
      CO(1) => \count_sig_reg[16]_i_1_n_2\,
      CO(0) => \count_sig_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[16]_i_1_n_4\,
      O(2) => \count_sig_reg[16]_i_1_n_5\,
      O(1) => \count_sig_reg[16]_i_1_n_6\,
      O(0) => \count_sig_reg[16]_i_1_n_7\,
      S(3) => \count_sig[16]_i_2_n_0\,
      S(2) => \count_sig[16]_i_3_n_0\,
      S(1) => \count_sig[16]_i_4_n_0\,
      S(0) => \count_sig[16]_i_5_n_0\
    );
\count_sig_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[16]_i_1_n_6\,
      Q => count_sig_reg(17)
    );
\count_sig_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[16]_i_1_n_5\,
      Q => count_sig_reg(18)
    );
\count_sig_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[16]_i_1_n_4\,
      Q => count_sig_reg(19)
    );
\count_sig_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[0]_i_1_n_6\,
      Q => count_sig_reg(1)
    );
\count_sig_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[20]_i_1_n_7\,
      Q => count_sig_reg(20)
    );
\count_sig_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_sig_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_sig_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_sig_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \count_sig[20]_i_2_n_0\
    );
\count_sig_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[0]_i_1_n_5\,
      Q => count_sig_reg(2)
    );
\count_sig_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[0]_i_1_n_4\,
      Q => count_sig_reg(3)
    );
\count_sig_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[4]_i_1_n_7\,
      Q => count_sig_reg(4)
    );
\count_sig_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[0]_i_1_n_0\,
      CO(3) => \count_sig_reg[4]_i_1_n_0\,
      CO(2) => \count_sig_reg[4]_i_1_n_1\,
      CO(1) => \count_sig_reg[4]_i_1_n_2\,
      CO(0) => \count_sig_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[4]_i_1_n_4\,
      O(2) => \count_sig_reg[4]_i_1_n_5\,
      O(1) => \count_sig_reg[4]_i_1_n_6\,
      O(0) => \count_sig_reg[4]_i_1_n_7\,
      S(3) => \count_sig[4]_i_2_n_0\,
      S(2) => \count_sig[4]_i_3_n_0\,
      S(1) => \count_sig[4]_i_4_n_0\,
      S(0) => \count_sig[4]_i_5_n_0\
    );
\count_sig_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[4]_i_1_n_6\,
      Q => count_sig_reg(5)
    );
\count_sig_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[4]_i_1_n_5\,
      Q => count_sig_reg(6)
    );
\count_sig_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[4]_i_1_n_4\,
      Q => count_sig_reg(7)
    );
\count_sig_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[8]_i_1_n_7\,
      Q => count_sig_reg(8)
    );
\count_sig_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[4]_i_1_n_0\,
      CO(3) => \count_sig_reg[8]_i_1_n_0\,
      CO(2) => \count_sig_reg[8]_i_1_n_1\,
      CO(1) => \count_sig_reg[8]_i_1_n_2\,
      CO(0) => \count_sig_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[8]_i_1_n_4\,
      O(2) => \count_sig_reg[8]_i_1_n_5\,
      O(1) => \count_sig_reg[8]_i_1_n_6\,
      O(0) => \count_sig_reg[8]_i_1_n_7\,
      S(3) => \count_sig[8]_i_2_n_0\,
      S(2) => \count_sig[8]_i_3_n_0\,
      S(1) => \count_sig[8]_i_4_n_0\,
      S(0) => \count_sig[8]_i_5_n_0\
    );
\count_sig_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[8]_i_1_n_6\,
      Q => count_sig_reg(9)
    );
output_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => output_sig,
      I1 => enable,
      O => output
    );
output_sig_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in,
      I1 => load,
      I2 => output_sig,
      O => output_sig_i_1_n_0
    );
output_sig_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => output_sig_i_1_n_0,
      Q => output_sig
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => count_sig_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => count_sig_reg(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => count_sig_reg(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => count_sig_reg(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => count_sig_reg(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \NLW_plusOp_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3 downto 0) => count_sig_reg(20 downto 17)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_lab_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    period : in STD_LOGIC_VECTOR ( 20 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 20 downto 0 );
    output : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_lab_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_lab_0_0 : entity is "design_1_lab_0_0,lab,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_lab_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_lab_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_lab_0_0 : entity is "lab,Vivado 2019.1";
end design_1_lab_0_0;

architecture STRUCTURE of design_1_lab_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_lab_0_0_lab
     port map (
      clk => clk,
      duty(20 downto 0) => duty(20 downto 0),
      enable => enable,
      output => output,
      period(20 downto 0) => period(20 downto 0),
      reset => reset
    );
end STRUCTURE;
