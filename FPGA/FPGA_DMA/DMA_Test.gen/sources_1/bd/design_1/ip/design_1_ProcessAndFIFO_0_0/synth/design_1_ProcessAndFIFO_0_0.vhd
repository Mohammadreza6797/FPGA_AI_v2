-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:ProcessAndFIFO:1.0
-- IP Revision: 9

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_ProcessAndFIFO_0_0 IS
  PORT (
    ClK : IN STD_LOGIC;
    InputReady : IN STD_LOGIC;
    NotFull : OUT STD_LOGIC;
    DataIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    LastIn : IN STD_LOGIC;
    STRBIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    OutputReady : IN STD_LOGIC;
    NotEmpty : OUT STD_LOGIC;
    DataOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    LastOut : OUT STD_LOGIC;
    STRBOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END design_1_ProcessAndFIFO_0_0;

ARCHITECTURE design_1_ProcessAndFIFO_0_0_arch OF design_1_ProcessAndFIFO_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_ProcessAndFIFO_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ProcessAndFIFO IS
    PORT (
      ClK : IN STD_LOGIC;
      InputReady : IN STD_LOGIC;
      NotFull : OUT STD_LOGIC;
      DataIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      LastIn : IN STD_LOGIC;
      STRBIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      OutputReady : IN STD_LOGIC;
      NotEmpty : OUT STD_LOGIC;
      DataOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      LastOut : OUT STD_LOGIC;
      STRBOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT ProcessAndFIFO;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_ProcessAndFIFO_0_0_arch: ARCHITECTURE IS "ProcessAndFIFO,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_ProcessAndFIFO_0_0_arch : ARCHITECTURE IS "design_1_ProcessAndFIFO_0_0,ProcessAndFIFO,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_ProcessAndFIFO_0_0_arch: ARCHITECTURE IS "design_1_ProcessAndFIFO_0_0,ProcessAndFIFO,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ProcessAndFIFO,x_ipVersion=1.0,x_ipCoreRevision=9,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_ProcessAndFIFO_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ClK: SIGNAL IS "XIL_INTERFACENAME ClK, ASSOCIATED_BUSIF ProcessOutput:ProcessInput, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ClK: SIGNAL IS "xilinx.com:signal:clock:1.0 ClK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF DataIn: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessInput TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF DataOut: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessOutput TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF InputReady: SIGNAL IS "XIL_INTERFACENAME ProcessInput, FREQ_HZ 50000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF InputReady: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessInput TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF LastIn: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessInput TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF LastOut: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessOutput TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF NotEmpty: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessOutput TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF NotFull: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessInput TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF OutputReady: SIGNAL IS "XIL_INTERFACENAME ProcessOutput, FREQ_HZ 50000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF OutputReady: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessOutput TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF STRBIn: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessInput TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF STRBOut: SIGNAL IS "xilinx.com:interface:axis:1.0 ProcessOutput TSTRB";
BEGIN
  U0 : ProcessAndFIFO
    PORT MAP (
      ClK => ClK,
      InputReady => InputReady,
      NotFull => NotFull,
      DataIn => DataIn,
      LastIn => LastIn,
      STRBIn => STRBIn,
      OutputReady => OutputReady,
      NotEmpty => NotEmpty,
      DataOut => DataOut,
      LastOut => LastOut,
      STRBOut => STRBOut
    );
END design_1_ProcessAndFIFO_0_0_arch;
