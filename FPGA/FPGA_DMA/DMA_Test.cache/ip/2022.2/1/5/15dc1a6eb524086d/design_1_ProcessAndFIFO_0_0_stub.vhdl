-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Jan 20 20:45:50 2025
-- Host        : DESKTOP-TT327LJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ProcessAndFIFO_0_0_stub.vhdl
-- Design      : design_1_ProcessAndFIFO_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ClK,InputReady,NotFull,DataIn[31:0],LastIn,STRBIn[3:0],OutputReady,NotEmpty,DataOut[31:0],LastOut,STRBOut[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ProcessAndFIFO,Vivado 2022.2";
begin
end;
