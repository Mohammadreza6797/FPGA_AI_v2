-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Jan 20 20:45:50 2025
-- Host        : DESKTOP-TT327LJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Mohammadreza/Desktop/DMA_TEST/DMA_Test/DMA_Test.gen/sources_1/bd/design_1/ip/design_1_ProcessAndFIFO_0_0/design_1_ProcessAndFIFO_0_0_sim_netlist.vhdl
-- Design      : design_1_ProcessAndFIFO_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ProcessAndFIFO_0_0_ProcessAndFIFO is
  port (
    NotFull : out STD_LOGIC;
    NotEmpty : out STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    LastOut : out STD_LOGIC;
    InputReady : in STD_LOGIC;
    ClK : in STD_LOGIC;
    OutputReady : in STD_LOGIC;
    DataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    LastIn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ProcessAndFIFO_0_0_ProcessAndFIFO : entity is "ProcessAndFIFO";
end design_1_ProcessAndFIFO_0_0_ProcessAndFIFO;

architecture STRUCTURE of design_1_ProcessAndFIFO_0_0_ProcessAndFIFO is
  signal Cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Cnt1 : STD_LOGIC;
  signal \Cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \^lastout\ : STD_LOGIC;
  signal LastOut_i_1_n_0 : STD_LOGIC;
  signal LastOut_i_2_n_0 : STD_LOGIC;
  signal Rp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Rp[0]_i_1_n_0\ : STD_LOGIC;
  signal \Rp[1]_i_1_n_0\ : STD_LOGIC;
  signal \Rp[2]_i_1_n_0\ : STD_LOGIC;
  signal \U0/_n_0\ : STD_LOGIC;
  signal Wp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Wp[0]_i_1_n_0\ : STD_LOGIC;
  signal \Wp[1]_i_1_n_0\ : STD_LOGIC;
  signal \Wp[2]_i_1_n_0\ : STD_LOGIC;
  signal last : STD_LOGIC;
  signal last_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in4_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_out2_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of NotFull_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Rp[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Rp[2]_i_1\ : label is "soft_lutpair2";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_0_0 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_0_0 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_0_0 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_0_0 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_0_0 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of myBuff_reg_0_7_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of myBuff_reg_0_7_0_0 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of myBuff_reg_0_7_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of myBuff_reg_0_7_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of myBuff_reg_0_7_0_0 : label is 0;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_10_10 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_10_10 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_10_10 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_10_10 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_10_10 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_10_10 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_10_10 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_10_10 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_10_10 : label is 10;
  attribute ram_slice_end of myBuff_reg_0_7_10_10 : label is 10;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_11_11 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_11_11 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_11_11 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_11_11 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_11_11 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_11_11 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_11_11 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_11_11 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_11_11 : label is 11;
  attribute ram_slice_end of myBuff_reg_0_7_11_11 : label is 11;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_12_12 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_12_12 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_12_12 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_12_12 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_12_12 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_12_12 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_12_12 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_12_12 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_12_12 : label is 12;
  attribute ram_slice_end of myBuff_reg_0_7_12_12 : label is 12;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_13_13 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_13_13 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_13_13 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_13_13 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_13_13 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_13_13 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_13_13 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_13_13 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_13_13 : label is 13;
  attribute ram_slice_end of myBuff_reg_0_7_13_13 : label is 13;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_14_14 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_14_14 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_14_14 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_14_14 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_14_14 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_14_14 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_14_14 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_14_14 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_14_14 : label is 14;
  attribute ram_slice_end of myBuff_reg_0_7_14_14 : label is 14;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_15_15 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_15_15 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_15_15 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_15_15 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_15_15 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_15_15 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_15_15 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_15_15 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_15_15 : label is 15;
  attribute ram_slice_end of myBuff_reg_0_7_15_15 : label is 15;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_16_16 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_16_16 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_16_16 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_16_16 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_16_16 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_16_16 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_16_16 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_16_16 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_16_16 : label is 16;
  attribute ram_slice_end of myBuff_reg_0_7_16_16 : label is 16;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_17_17 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_17_17 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_17_17 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_17_17 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_17_17 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_17_17 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_17_17 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_17_17 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_17_17 : label is 17;
  attribute ram_slice_end of myBuff_reg_0_7_17_17 : label is 17;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_18_18 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_18_18 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_18_18 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_18_18 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_18_18 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_18_18 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_18_18 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_18_18 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_18_18 : label is 18;
  attribute ram_slice_end of myBuff_reg_0_7_18_18 : label is 18;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_19_19 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_19_19 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_19_19 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_19_19 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_19_19 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_19_19 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_19_19 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_19_19 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_19_19 : label is 19;
  attribute ram_slice_end of myBuff_reg_0_7_19_19 : label is 19;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_1_1 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_1_1 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_1_1 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_1_1 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_1_1 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_1_1 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_1_1 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_1_1 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_1_1 : label is 1;
  attribute ram_slice_end of myBuff_reg_0_7_1_1 : label is 1;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_20_20 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_20_20 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_20_20 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_20_20 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_20_20 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_20_20 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_20_20 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_20_20 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_20_20 : label is 20;
  attribute ram_slice_end of myBuff_reg_0_7_20_20 : label is 20;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_21_21 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_21_21 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_21_21 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_21_21 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_21_21 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_21_21 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_21_21 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_21_21 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_21_21 : label is 21;
  attribute ram_slice_end of myBuff_reg_0_7_21_21 : label is 21;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_22_22 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_22_22 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_22_22 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_22_22 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_22_22 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_22_22 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_22_22 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_22_22 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_22_22 : label is 22;
  attribute ram_slice_end of myBuff_reg_0_7_22_22 : label is 22;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_23_23 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_23_23 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_23_23 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_23_23 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_23_23 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_23_23 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_23_23 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_23_23 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_23_23 : label is 23;
  attribute ram_slice_end of myBuff_reg_0_7_23_23 : label is 23;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_24_24 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_24_24 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_24_24 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_24_24 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_24_24 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_24_24 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_24_24 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_24_24 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_24_24 : label is 24;
  attribute ram_slice_end of myBuff_reg_0_7_24_24 : label is 24;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_25_25 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_25_25 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_25_25 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_25_25 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_25_25 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_25_25 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_25_25 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_25_25 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_25_25 : label is 25;
  attribute ram_slice_end of myBuff_reg_0_7_25_25 : label is 25;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_26_26 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_26_26 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_26_26 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_26_26 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_26_26 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_26_26 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_26_26 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_26_26 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_26_26 : label is 26;
  attribute ram_slice_end of myBuff_reg_0_7_26_26 : label is 26;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_27_27 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_27_27 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_27_27 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_27_27 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_27_27 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_27_27 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_27_27 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_27_27 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_27_27 : label is 27;
  attribute ram_slice_end of myBuff_reg_0_7_27_27 : label is 27;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_28_28 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_28_28 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_28_28 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_28_28 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_28_28 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_28_28 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_28_28 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_28_28 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_28_28 : label is 28;
  attribute ram_slice_end of myBuff_reg_0_7_28_28 : label is 28;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_29_29 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_29_29 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_29_29 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_29_29 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_29_29 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_29_29 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_29_29 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_29_29 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_29_29 : label is 29;
  attribute ram_slice_end of myBuff_reg_0_7_29_29 : label is 29;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_2_2 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_2_2 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_2_2 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_2_2 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_2_2 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_2_2 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_2_2 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_2_2 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_2_2 : label is 2;
  attribute ram_slice_end of myBuff_reg_0_7_2_2 : label is 2;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_30_30 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_30_30 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_30_30 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_30_30 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_30_30 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_30_30 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_30_30 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_30_30 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_30_30 : label is 30;
  attribute ram_slice_end of myBuff_reg_0_7_30_30 : label is 30;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_31_31 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_31_31 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_31_31 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_31_31 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_31_31 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_31_31 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_31_31 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_31_31 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_31_31 : label is 31;
  attribute ram_slice_end of myBuff_reg_0_7_31_31 : label is 31;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_3_3 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_3_3 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_3_3 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_3_3 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_3_3 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_3_3 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_3_3 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_3_3 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_3_3 : label is 3;
  attribute ram_slice_end of myBuff_reg_0_7_3_3 : label is 3;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_4_4 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_4_4 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_4_4 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_4_4 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_4_4 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_4_4 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_4_4 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_4_4 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_4_4 : label is 4;
  attribute ram_slice_end of myBuff_reg_0_7_4_4 : label is 4;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_5_5 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_5_5 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_5_5 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_5_5 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_5_5 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_5_5 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_5_5 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_5_5 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_5_5 : label is 5;
  attribute ram_slice_end of myBuff_reg_0_7_5_5 : label is 5;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_6_6 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_6_6 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_6_6 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_6_6 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_6_6 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_6_6 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_6_6 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_6_6 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_6_6 : label is 6;
  attribute ram_slice_end of myBuff_reg_0_7_6_6 : label is 6;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_7_7 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_7_7 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_7_7 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_7_7 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_7_7 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_7_7 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_7_7 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_7_7 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_7_7 : label is 7;
  attribute ram_slice_end of myBuff_reg_0_7_7_7 : label is 7;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_8_8 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_8_8 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_8_8 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_8_8 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_8_8 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_8_8 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_8_8 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_8_8 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_8_8 : label is 8;
  attribute ram_slice_end of myBuff_reg_0_7_8_8 : label is 8;
  attribute RTL_RAM_BITS of myBuff_reg_0_7_9_9 : label is 256;
  attribute RTL_RAM_NAME of myBuff_reg_0_7_9_9 : label is "U0/myBuff_reg";
  attribute RTL_RAM_TYPE of myBuff_reg_0_7_9_9 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of myBuff_reg_0_7_9_9 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of myBuff_reg_0_7_9_9 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of myBuff_reg_0_7_9_9 : label is 0;
  attribute ram_addr_end of myBuff_reg_0_7_9_9 : label is 7;
  attribute ram_offset of myBuff_reg_0_7_9_9 : label is 0;
  attribute ram_slice_begin of myBuff_reg_0_7_9_9 : label is 9;
  attribute ram_slice_end of myBuff_reg_0_7_9_9 : label is 9;
begin
  LastOut <= \^lastout\;
\Cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56969694"
    )
        port map (
      I0 => OutputReady,
      I1 => InputReady,
      I2 => Cnt(0),
      I3 => Cnt(1),
      I4 => Cnt(2),
      O => \Cnt[0]_i_1_n_0\
    );
\Cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD42BD40"
    )
        port map (
      I0 => OutputReady,
      I1 => InputReady,
      I2 => Cnt(0),
      I3 => Cnt(1),
      I4 => Cnt(2),
      O => \Cnt[1]_i_1_n_0\
    );
\Cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD4000"
    )
        port map (
      I0 => OutputReady,
      I1 => InputReady,
      I2 => Cnt(0),
      I3 => Cnt(1),
      I4 => Cnt(2),
      O => \Cnt[2]_i_1_n_0\
    );
\Cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => \Cnt[0]_i_1_n_0\,
      Q => Cnt(0),
      R => '0'
    );
\Cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => \Cnt[1]_i_1_n_0\,
      Q => Cnt(1),
      R => '0'
    );
\Cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => \Cnt[2]_i_1_n_0\,
      Q => Cnt(2),
      R => '0'
    );
\DataOut[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(0),
      I1 => p_0_in4_out,
      I2 => p_1_out(0),
      I3 => \U0/_n_0\,
      I4 => p_2_out(0),
      O => p_1_out2_out(0)
    );
\DataOut[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(10),
      I1 => p_0_in4_out,
      I2 => p_1_out(10),
      I3 => \U0/_n_0\,
      I4 => p_2_out(10),
      O => p_1_out2_out(10)
    );
\DataOut[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(11),
      I1 => p_0_in4_out,
      I2 => p_1_out(11),
      I3 => \U0/_n_0\,
      I4 => p_2_out(11),
      O => p_1_out2_out(11)
    );
\DataOut[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(12),
      I1 => p_0_in4_out,
      I2 => p_1_out(12),
      I3 => \U0/_n_0\,
      I4 => p_2_out(12),
      O => p_1_out2_out(12)
    );
\DataOut[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(13),
      I1 => p_0_in4_out,
      I2 => p_1_out(13),
      I3 => \U0/_n_0\,
      I4 => p_2_out(13),
      O => p_1_out2_out(13)
    );
\DataOut[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(14),
      I1 => p_0_in4_out,
      I2 => p_1_out(14),
      I3 => \U0/_n_0\,
      I4 => p_2_out(14),
      O => p_1_out2_out(14)
    );
\DataOut[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(15),
      I1 => p_0_in4_out,
      I2 => p_1_out(15),
      I3 => \U0/_n_0\,
      I4 => p_2_out(15),
      O => p_1_out2_out(15)
    );
\DataOut[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(16),
      I1 => p_0_in4_out,
      I2 => p_1_out(16),
      I3 => \U0/_n_0\,
      I4 => p_2_out(16),
      O => p_1_out2_out(16)
    );
\DataOut[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(17),
      I1 => p_0_in4_out,
      I2 => p_1_out(17),
      I3 => \U0/_n_0\,
      I4 => p_2_out(17),
      O => p_1_out2_out(17)
    );
\DataOut[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(18),
      I1 => p_0_in4_out,
      I2 => p_1_out(18),
      I3 => \U0/_n_0\,
      I4 => p_2_out(18),
      O => p_1_out2_out(18)
    );
\DataOut[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(19),
      I1 => p_0_in4_out,
      I2 => p_1_out(19),
      I3 => \U0/_n_0\,
      I4 => p_2_out(19),
      O => p_1_out2_out(19)
    );
\DataOut[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(1),
      I1 => p_0_in4_out,
      I2 => p_1_out(1),
      I3 => \U0/_n_0\,
      I4 => p_2_out(1),
      O => p_1_out2_out(1)
    );
\DataOut[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(20),
      I1 => p_0_in4_out,
      I2 => p_1_out(20),
      I3 => \U0/_n_0\,
      I4 => p_2_out(20),
      O => p_1_out2_out(20)
    );
\DataOut[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(21),
      I1 => p_0_in4_out,
      I2 => p_1_out(21),
      I3 => \U0/_n_0\,
      I4 => p_2_out(21),
      O => p_1_out2_out(21)
    );
\DataOut[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(22),
      I1 => p_0_in4_out,
      I2 => p_1_out(22),
      I3 => \U0/_n_0\,
      I4 => p_2_out(22),
      O => p_1_out2_out(22)
    );
\DataOut[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(23),
      I1 => p_0_in4_out,
      I2 => p_1_out(23),
      I3 => \U0/_n_0\,
      I4 => p_2_out(23),
      O => p_1_out2_out(23)
    );
\DataOut[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(24),
      I1 => p_0_in4_out,
      I2 => p_1_out(24),
      I3 => \U0/_n_0\,
      I4 => p_2_out(24),
      O => p_1_out2_out(24)
    );
\DataOut[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(25),
      I1 => p_0_in4_out,
      I2 => p_1_out(25),
      I3 => \U0/_n_0\,
      I4 => p_2_out(25),
      O => p_1_out2_out(25)
    );
\DataOut[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(26),
      I1 => p_0_in4_out,
      I2 => p_1_out(26),
      I3 => \U0/_n_0\,
      I4 => p_2_out(26),
      O => p_1_out2_out(26)
    );
\DataOut[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(27),
      I1 => p_0_in4_out,
      I2 => p_1_out(27),
      I3 => \U0/_n_0\,
      I4 => p_2_out(27),
      O => p_1_out2_out(27)
    );
\DataOut[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(28),
      I1 => p_0_in4_out,
      I2 => p_1_out(28),
      I3 => \U0/_n_0\,
      I4 => p_2_out(28),
      O => p_1_out2_out(28)
    );
\DataOut[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(29),
      I1 => p_0_in4_out,
      I2 => p_1_out(29),
      I3 => \U0/_n_0\,
      I4 => p_2_out(29),
      O => p_1_out2_out(29)
    );
\DataOut[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(2),
      I1 => p_0_in4_out,
      I2 => p_1_out(2),
      I3 => \U0/_n_0\,
      I4 => p_2_out(2),
      O => p_1_out2_out(2)
    );
\DataOut[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(30),
      I1 => p_0_in4_out,
      I2 => p_1_out(30),
      I3 => \U0/_n_0\,
      I4 => p_2_out(30),
      O => p_1_out2_out(30)
    );
\DataOut[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(31),
      I1 => p_0_in4_out,
      I2 => p_1_out(31),
      I3 => \U0/_n_0\,
      I4 => p_2_out(31),
      O => p_1_out2_out(31)
    );
\DataOut[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(3),
      I1 => p_0_in4_out,
      I2 => p_1_out(3),
      I3 => \U0/_n_0\,
      I4 => p_2_out(3),
      O => p_1_out2_out(3)
    );
\DataOut[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(4),
      I1 => p_0_in4_out,
      I2 => p_1_out(4),
      I3 => \U0/_n_0\,
      I4 => p_2_out(4),
      O => p_1_out2_out(4)
    );
\DataOut[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(5),
      I1 => p_0_in4_out,
      I2 => p_1_out(5),
      I3 => \U0/_n_0\,
      I4 => p_2_out(5),
      O => p_1_out2_out(5)
    );
\DataOut[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(6),
      I1 => p_0_in4_out,
      I2 => p_1_out(6),
      I3 => \U0/_n_0\,
      I4 => p_2_out(6),
      O => p_1_out2_out(6)
    );
\DataOut[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(7),
      I1 => p_0_in4_out,
      I2 => p_1_out(7),
      I3 => \U0/_n_0\,
      I4 => p_2_out(7),
      O => p_1_out2_out(7)
    );
\DataOut[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(8),
      I1 => p_0_in4_out,
      I2 => p_1_out(8),
      I3 => \U0/_n_0\,
      I4 => p_2_out(8),
      O => p_1_out2_out(8)
    );
\DataOut[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataIn(9),
      I1 => p_0_in4_out,
      I2 => p_1_out(9),
      I3 => \U0/_n_0\,
      I4 => p_2_out(9),
      O => p_1_out2_out(9)
    );
\DataOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(0),
      Q => DataOut(0),
      R => '0'
    );
\DataOut_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(10),
      Q => DataOut(10),
      R => '0'
    );
\DataOut_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(11),
      Q => DataOut(11),
      R => '0'
    );
\DataOut_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(12),
      Q => DataOut(12),
      R => '0'
    );
\DataOut_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(13),
      Q => DataOut(13),
      R => '0'
    );
\DataOut_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(14),
      Q => DataOut(14),
      R => '0'
    );
\DataOut_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(15),
      Q => DataOut(15),
      R => '0'
    );
\DataOut_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(16),
      Q => DataOut(16),
      R => '0'
    );
\DataOut_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(17),
      Q => DataOut(17),
      R => '0'
    );
\DataOut_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(18),
      Q => DataOut(18),
      R => '0'
    );
\DataOut_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(19),
      Q => DataOut(19),
      R => '0'
    );
\DataOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(1),
      Q => DataOut(1),
      R => '0'
    );
\DataOut_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(20),
      Q => DataOut(20),
      R => '0'
    );
\DataOut_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(21),
      Q => DataOut(21),
      R => '0'
    );
\DataOut_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(22),
      Q => DataOut(22),
      R => '0'
    );
\DataOut_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(23),
      Q => DataOut(23),
      R => '0'
    );
\DataOut_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(24),
      Q => DataOut(24),
      R => '0'
    );
\DataOut_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(25),
      Q => DataOut(25),
      R => '0'
    );
\DataOut_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(26),
      Q => DataOut(26),
      R => '0'
    );
\DataOut_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(27),
      Q => DataOut(27),
      R => '0'
    );
\DataOut_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(28),
      Q => DataOut(28),
      R => '0'
    );
\DataOut_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(29),
      Q => DataOut(29),
      R => '0'
    );
\DataOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(2),
      Q => DataOut(2),
      R => '0'
    );
\DataOut_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(30),
      Q => DataOut(30),
      R => '0'
    );
\DataOut_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(31),
      Q => DataOut(31),
      R => '0'
    );
\DataOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(3),
      Q => DataOut(3),
      R => '0'
    );
\DataOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(4),
      Q => DataOut(4),
      R => '0'
    );
\DataOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(5),
      Q => DataOut(5),
      R => '0'
    );
\DataOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(6),
      Q => DataOut(6),
      R => '0'
    );
\DataOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(7),
      Q => DataOut(7),
      R => '0'
    );
\DataOut_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(8),
      Q => DataOut(8),
      R => '0'
    );
\DataOut_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => Cnt1,
      D => p_1_out2_out(9),
      Q => DataOut(9),
      R => '0'
    );
LastOut_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^lastout\,
      I1 => LastOut_i_2_n_0,
      I2 => Cnt1,
      O => LastOut_i_1_n_0
    );
LastOut_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000C0A00"
    )
        port map (
      I0 => last,
      I1 => LastIn,
      I2 => Cnt(2),
      I3 => Cnt(0),
      I4 => InputReady,
      I5 => Cnt(1),
      O => LastOut_i_2_n_0
    );
LastOut_reg: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => '1',
      D => LastOut_i_1_n_0,
      Q => \^lastout\,
      R => '0'
    );
NotEmpty_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => OutputReady,
      I1 => InputReady,
      I2 => Cnt(0),
      I3 => Cnt(1),
      I4 => Cnt(2),
      O => Cnt1
    );
NotEmpty_reg: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => '1',
      D => Cnt1,
      Q => NotEmpty,
      R => '0'
    );
NotFull_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF777F"
    )
        port map (
      I0 => Cnt(2),
      I1 => Cnt(1),
      I2 => Cnt(0),
      I3 => InputReady,
      I4 => OutputReady,
      O => p_0_in
    );
NotFull_reg: unisim.vcomponents.FDRE
     port map (
      C => ClK,
      CE => '1',
      D => p_0_in,
      Q => NotFull,
      R => '0'
    );
\Rp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => Cnt(2),
      I1 => Cnt(1),
      I2 => Cnt(0),
      I3 => InputReady,
      I4 => OutputReady,
      I5 => Rp(0),
      O => \Rp[0]_i_1_n_0\
    );
\Rp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => Rp(0),
      I1 => Cnt1,
      I2 => Rp(1),
      O => \Rp[1]_i_1_n_0\
    );
\Rp[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Rp(0),
      I1 => Rp(1),
      I2 => Cnt1,
      I3 => Rp(2),
      O => \Rp[2]_i_1_n_0\
    );
\Rp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => \Rp[0]_i_1_n_0\,
      Q => Rp(0),
      R => '0'
    );
\Rp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => \Rp[1]_i_1_n_0\,
      Q => Rp(1),
      R => '0'
    );
\Rp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => \Rp[2]_i_1_n_0\,
      Q => Rp(2),
      R => '0'
    );
\U0/\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Rp(0),
      I1 => Wp(0),
      I2 => Wp(2),
      I3 => Rp(2),
      I4 => Wp(1),
      I5 => Rp(1),
      O => \U0/_n_0\
    );
\Wp[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF7F00"
    )
        port map (
      I0 => Cnt(2),
      I1 => Cnt(1),
      I2 => Cnt(0),
      I3 => InputReady,
      I4 => Wp(0),
      O => \Wp[0]_i_1_n_0\
    );
\Wp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F777777708888888"
    )
        port map (
      I0 => Wp(0),
      I1 => InputReady,
      I2 => Cnt(0),
      I3 => Cnt(1),
      I4 => Cnt(2),
      I5 => Wp(1),
      O => \Wp[1]_i_1_n_0\
    );
\Wp[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Wp(0),
      I1 => Wp(1),
      I2 => p_0_in4_out,
      I3 => Wp(2),
      O => \Wp[2]_i_1_n_0\
    );
\Wp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => \Wp[0]_i_1_n_0\,
      Q => Wp(0),
      R => '0'
    );
\Wp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => \Wp[1]_i_1_n_0\,
      Q => Wp(1),
      R => '0'
    );
\Wp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => \Wp[2]_i_1_n_0\,
      Q => Wp(2),
      R => '0'
    );
last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E2E2E2"
    )
        port map (
      I0 => last,
      I1 => p_0_in4_out,
      I2 => LastIn,
      I3 => LastOut_i_2_n_0,
      I4 => Cnt1,
      O => last_i_1_n_0
    );
last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ClK,
      CE => '1',
      D => last_i_1_n_0,
      Q => last,
      R => '0'
    );
myBuff_reg_0_7_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(0),
      DPO => p_2_out(0),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(0),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_0_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => InputReady,
      I1 => Cnt(0),
      I2 => Cnt(1),
      I3 => Cnt(2),
      O => p_0_in4_out
    );
myBuff_reg_0_7_10_10: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(10),
      DPO => p_2_out(10),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(10),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_11_11: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(11),
      DPO => p_2_out(11),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(11),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_12_12: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(12),
      DPO => p_2_out(12),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(12),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_13_13: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(13),
      DPO => p_2_out(13),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(13),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_14_14: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(14),
      DPO => p_2_out(14),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(14),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_15_15: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(15),
      DPO => p_2_out(15),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(15),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_16_16: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(16),
      DPO => p_2_out(16),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(16),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_17_17: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(17),
      DPO => p_2_out(17),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(17),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_18_18: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(18),
      DPO => p_2_out(18),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(18),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_19_19: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(19),
      DPO => p_2_out(19),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(19),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(1),
      DPO => p_2_out(1),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(1),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_20_20: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(20),
      DPO => p_2_out(20),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(20),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_21_21: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(21),
      DPO => p_2_out(21),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(21),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_22_22: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(22),
      DPO => p_2_out(22),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(22),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_23_23: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(23),
      DPO => p_2_out(23),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(23),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_24_24: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(24),
      DPO => p_2_out(24),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(24),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_25_25: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(25),
      DPO => p_2_out(25),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(25),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_26_26: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(26),
      DPO => p_2_out(26),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(26),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_27_27: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(27),
      DPO => p_2_out(27),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(27),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_28_28: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(28),
      DPO => p_2_out(28),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(28),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_29_29: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(29),
      DPO => p_2_out(29),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(29),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(2),
      DPO => p_2_out(2),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(2),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_30_30: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(30),
      DPO => p_2_out(30),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(30),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_31_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(31),
      DPO => p_2_out(31),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(31),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(3),
      DPO => p_2_out(3),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(3),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(4),
      DPO => p_2_out(4),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(4),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(5),
      DPO => p_2_out(5),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(5),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(6),
      DPO => p_2_out(6),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(6),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(7),
      DPO => p_2_out(7),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(7),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_8_8: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(8),
      DPO => p_2_out(8),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(8),
      WCLK => ClK,
      WE => p_0_in4_out
    );
myBuff_reg_0_7_9_9: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Wp(0),
      A1 => Wp(1),
      A2 => Wp(2),
      A3 => '0',
      A4 => '0',
      D => DataIn(9),
      DPO => p_2_out(9),
      DPRA0 => Rp(0),
      DPRA1 => Rp(1),
      DPRA2 => Rp(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => p_1_out(9),
      WCLK => ClK,
      WE => p_0_in4_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ProcessAndFIFO_0_0 is
  port (
    ClK : in STD_LOGIC;
    InputReady : in STD_LOGIC;
    NotFull : out STD_LOGIC;
    DataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    LastIn : in STD_LOGIC;
    STRBIn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    OutputReady : in STD_LOGIC;
    NotEmpty : out STD_LOGIC;
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    LastOut : out STD_LOGIC;
    STRBOut : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ProcessAndFIFO_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ProcessAndFIFO_0_0 : entity is "design_1_ProcessAndFIFO_0_0,ProcessAndFIFO,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ProcessAndFIFO_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ProcessAndFIFO_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ProcessAndFIFO_0_0 : entity is "ProcessAndFIFO,Vivado 2022.2";
end design_1_ProcessAndFIFO_0_0;

architecture STRUCTURE of design_1_ProcessAndFIFO_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of ClK : signal is "xilinx.com:signal:clock:1.0 ClK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ClK : signal is "XIL_INTERFACENAME ClK, ASSOCIATED_BUSIF ProcessOutput:ProcessInput, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of InputReady : signal is "xilinx.com:interface:axis:1.0 ProcessInput TVALID";
  attribute x_interface_parameter of InputReady : signal is "XIL_INTERFACENAME ProcessInput, FREQ_HZ 50000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of LastIn : signal is "xilinx.com:interface:axis:1.0 ProcessInput TLAST";
  attribute x_interface_info of LastOut : signal is "xilinx.com:interface:axis:1.0 ProcessOutput TLAST";
  attribute x_interface_info of NotEmpty : signal is "xilinx.com:interface:axis:1.0 ProcessOutput TVALID";
  attribute x_interface_info of NotFull : signal is "xilinx.com:interface:axis:1.0 ProcessInput TREADY";
  attribute x_interface_info of OutputReady : signal is "xilinx.com:interface:axis:1.0 ProcessOutput TREADY";
  attribute x_interface_parameter of OutputReady : signal is "XIL_INTERFACENAME ProcessOutput, FREQ_HZ 50000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of DataIn : signal is "xilinx.com:interface:axis:1.0 ProcessInput TDATA";
  attribute x_interface_info of DataOut : signal is "xilinx.com:interface:axis:1.0 ProcessOutput TDATA";
  attribute x_interface_info of STRBIn : signal is "xilinx.com:interface:axis:1.0 ProcessInput TSTRB";
  attribute x_interface_info of STRBOut : signal is "xilinx.com:interface:axis:1.0 ProcessOutput TSTRB";
begin
  STRBOut(3) <= \<const1>\;
  STRBOut(2) <= \<const1>\;
  STRBOut(1) <= \<const1>\;
  STRBOut(0) <= \<const1>\;
U0: entity work.design_1_ProcessAndFIFO_0_0_ProcessAndFIFO
     port map (
      ClK => ClK,
      DataIn(31 downto 0) => DataIn(31 downto 0),
      DataOut(31 downto 0) => DataOut(31 downto 0),
      InputReady => InputReady,
      LastIn => LastIn,
      LastOut => LastOut,
      NotEmpty => NotEmpty,
      NotFull => NotFull,
      OutputReady => OutputReady
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
