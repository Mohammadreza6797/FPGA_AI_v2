// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan 20 20:45:50 2025
// Host        : DESKTOP-TT327LJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ProcessAndFIFO_0_0_sim_netlist.v
// Design      : design_1_ProcessAndFIFO_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ProcessAndFIFO
   (NotFull,
    NotEmpty,
    DataOut,
    LastOut,
    InputReady,
    ClK,
    OutputReady,
    DataIn,
    LastIn);
  output NotFull;
  output NotEmpty;
  output [31:0]DataOut;
  output LastOut;
  input InputReady;
  input ClK;
  input OutputReady;
  input [31:0]DataIn;
  input LastIn;

  wire ClK;
  wire [2:0]Cnt;
  wire Cnt1;
  wire \Cnt[0]_i_1_n_0 ;
  wire \Cnt[1]_i_1_n_0 ;
  wire \Cnt[2]_i_1_n_0 ;
  wire [31:0]DataIn;
  wire [31:0]DataOut;
  wire InputReady;
  wire LastIn;
  wire LastOut;
  wire LastOut_i_1_n_0;
  wire LastOut_i_2_n_0;
  wire NotEmpty;
  wire NotFull;
  wire OutputReady;
  wire [2:0]Rp;
  wire \Rp[0]_i_1_n_0 ;
  wire \Rp[1]_i_1_n_0 ;
  wire \Rp[2]_i_1_n_0 ;
  wire \U0/_n_0 ;
  wire [2:0]Wp;
  wire \Wp[0]_i_1_n_0 ;
  wire \Wp[1]_i_1_n_0 ;
  wire \Wp[2]_i_1_n_0 ;
  wire last;
  wire last_i_1_n_0;
  wire p_0_in;
  wire p_0_in4_out;
  wire [31:0]p_1_out;
  wire [31:0]p_1_out2_out;
  wire [31:0]p_2_out;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h56969694)) 
    \Cnt[0]_i_1 
       (.I0(OutputReady),
        .I1(InputReady),
        .I2(Cnt[0]),
        .I3(Cnt[1]),
        .I4(Cnt[2]),
        .O(\Cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFD42BD40)) 
    \Cnt[1]_i_1 
       (.I0(OutputReady),
        .I1(InputReady),
        .I2(Cnt[0]),
        .I3(Cnt[1]),
        .I4(Cnt[2]),
        .O(\Cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFD4000)) 
    \Cnt[2]_i_1 
       (.I0(OutputReady),
        .I1(InputReady),
        .I2(Cnt[0]),
        .I3(Cnt[1]),
        .I4(Cnt[2]),
        .O(\Cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_reg[0] 
       (.C(ClK),
        .CE(1'b1),
        .D(\Cnt[0]_i_1_n_0 ),
        .Q(Cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_reg[1] 
       (.C(ClK),
        .CE(1'b1),
        .D(\Cnt[1]_i_1_n_0 ),
        .Q(Cnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_reg[2] 
       (.C(ClK),
        .CE(1'b1),
        .D(\Cnt[2]_i_1_n_0 ),
        .Q(Cnt[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[0]_i_1 
       (.I0(DataIn[0]),
        .I1(p_0_in4_out),
        .I2(p_1_out[0]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[0]),
        .O(p_1_out2_out[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[10]_i_1 
       (.I0(DataIn[10]),
        .I1(p_0_in4_out),
        .I2(p_1_out[10]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[10]),
        .O(p_1_out2_out[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[11]_i_1 
       (.I0(DataIn[11]),
        .I1(p_0_in4_out),
        .I2(p_1_out[11]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[11]),
        .O(p_1_out2_out[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[12]_i_1 
       (.I0(DataIn[12]),
        .I1(p_0_in4_out),
        .I2(p_1_out[12]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[12]),
        .O(p_1_out2_out[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[13]_i_1 
       (.I0(DataIn[13]),
        .I1(p_0_in4_out),
        .I2(p_1_out[13]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[13]),
        .O(p_1_out2_out[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[14]_i_1 
       (.I0(DataIn[14]),
        .I1(p_0_in4_out),
        .I2(p_1_out[14]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[14]),
        .O(p_1_out2_out[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[15]_i_1 
       (.I0(DataIn[15]),
        .I1(p_0_in4_out),
        .I2(p_1_out[15]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[15]),
        .O(p_1_out2_out[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[16]_i_1 
       (.I0(DataIn[16]),
        .I1(p_0_in4_out),
        .I2(p_1_out[16]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[16]),
        .O(p_1_out2_out[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[17]_i_1 
       (.I0(DataIn[17]),
        .I1(p_0_in4_out),
        .I2(p_1_out[17]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[17]),
        .O(p_1_out2_out[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[18]_i_1 
       (.I0(DataIn[18]),
        .I1(p_0_in4_out),
        .I2(p_1_out[18]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[18]),
        .O(p_1_out2_out[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[19]_i_1 
       (.I0(DataIn[19]),
        .I1(p_0_in4_out),
        .I2(p_1_out[19]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[19]),
        .O(p_1_out2_out[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[1]_i_1 
       (.I0(DataIn[1]),
        .I1(p_0_in4_out),
        .I2(p_1_out[1]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[1]),
        .O(p_1_out2_out[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[20]_i_1 
       (.I0(DataIn[20]),
        .I1(p_0_in4_out),
        .I2(p_1_out[20]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[20]),
        .O(p_1_out2_out[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[21]_i_1 
       (.I0(DataIn[21]),
        .I1(p_0_in4_out),
        .I2(p_1_out[21]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[21]),
        .O(p_1_out2_out[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[22]_i_1 
       (.I0(DataIn[22]),
        .I1(p_0_in4_out),
        .I2(p_1_out[22]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[22]),
        .O(p_1_out2_out[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[23]_i_1 
       (.I0(DataIn[23]),
        .I1(p_0_in4_out),
        .I2(p_1_out[23]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[23]),
        .O(p_1_out2_out[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[24]_i_1 
       (.I0(DataIn[24]),
        .I1(p_0_in4_out),
        .I2(p_1_out[24]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[24]),
        .O(p_1_out2_out[24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[25]_i_1 
       (.I0(DataIn[25]),
        .I1(p_0_in4_out),
        .I2(p_1_out[25]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[25]),
        .O(p_1_out2_out[25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[26]_i_1 
       (.I0(DataIn[26]),
        .I1(p_0_in4_out),
        .I2(p_1_out[26]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[26]),
        .O(p_1_out2_out[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[27]_i_1 
       (.I0(DataIn[27]),
        .I1(p_0_in4_out),
        .I2(p_1_out[27]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[27]),
        .O(p_1_out2_out[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[28]_i_1 
       (.I0(DataIn[28]),
        .I1(p_0_in4_out),
        .I2(p_1_out[28]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[28]),
        .O(p_1_out2_out[28]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[29]_i_1 
       (.I0(DataIn[29]),
        .I1(p_0_in4_out),
        .I2(p_1_out[29]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[29]),
        .O(p_1_out2_out[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[2]_i_1 
       (.I0(DataIn[2]),
        .I1(p_0_in4_out),
        .I2(p_1_out[2]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[2]),
        .O(p_1_out2_out[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[30]_i_1 
       (.I0(DataIn[30]),
        .I1(p_0_in4_out),
        .I2(p_1_out[30]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[30]),
        .O(p_1_out2_out[30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[31]_i_1 
       (.I0(DataIn[31]),
        .I1(p_0_in4_out),
        .I2(p_1_out[31]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[31]),
        .O(p_1_out2_out[31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[3]_i_1 
       (.I0(DataIn[3]),
        .I1(p_0_in4_out),
        .I2(p_1_out[3]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[3]),
        .O(p_1_out2_out[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[4]_i_1 
       (.I0(DataIn[4]),
        .I1(p_0_in4_out),
        .I2(p_1_out[4]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[4]),
        .O(p_1_out2_out[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[5]_i_1 
       (.I0(DataIn[5]),
        .I1(p_0_in4_out),
        .I2(p_1_out[5]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[5]),
        .O(p_1_out2_out[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[6]_i_1 
       (.I0(DataIn[6]),
        .I1(p_0_in4_out),
        .I2(p_1_out[6]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[6]),
        .O(p_1_out2_out[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[7]_i_1 
       (.I0(DataIn[7]),
        .I1(p_0_in4_out),
        .I2(p_1_out[7]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[7]),
        .O(p_1_out2_out[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[8]_i_1 
       (.I0(DataIn[8]),
        .I1(p_0_in4_out),
        .I2(p_1_out[8]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[8]),
        .O(p_1_out2_out[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DataOut[9]_i_1 
       (.I0(DataIn[9]),
        .I1(p_0_in4_out),
        .I2(p_1_out[9]),
        .I3(\U0/_n_0 ),
        .I4(p_2_out[9]),
        .O(p_1_out2_out[9]));
  FDRE \DataOut_reg[0] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[0]),
        .Q(DataOut[0]),
        .R(1'b0));
  FDRE \DataOut_reg[10] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[10]),
        .Q(DataOut[10]),
        .R(1'b0));
  FDRE \DataOut_reg[11] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[11]),
        .Q(DataOut[11]),
        .R(1'b0));
  FDRE \DataOut_reg[12] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[12]),
        .Q(DataOut[12]),
        .R(1'b0));
  FDRE \DataOut_reg[13] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[13]),
        .Q(DataOut[13]),
        .R(1'b0));
  FDRE \DataOut_reg[14] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[14]),
        .Q(DataOut[14]),
        .R(1'b0));
  FDRE \DataOut_reg[15] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[15]),
        .Q(DataOut[15]),
        .R(1'b0));
  FDRE \DataOut_reg[16] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[16]),
        .Q(DataOut[16]),
        .R(1'b0));
  FDRE \DataOut_reg[17] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[17]),
        .Q(DataOut[17]),
        .R(1'b0));
  FDRE \DataOut_reg[18] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[18]),
        .Q(DataOut[18]),
        .R(1'b0));
  FDRE \DataOut_reg[19] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[19]),
        .Q(DataOut[19]),
        .R(1'b0));
  FDRE \DataOut_reg[1] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[1]),
        .Q(DataOut[1]),
        .R(1'b0));
  FDRE \DataOut_reg[20] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[20]),
        .Q(DataOut[20]),
        .R(1'b0));
  FDRE \DataOut_reg[21] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[21]),
        .Q(DataOut[21]),
        .R(1'b0));
  FDRE \DataOut_reg[22] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[22]),
        .Q(DataOut[22]),
        .R(1'b0));
  FDRE \DataOut_reg[23] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[23]),
        .Q(DataOut[23]),
        .R(1'b0));
  FDRE \DataOut_reg[24] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[24]),
        .Q(DataOut[24]),
        .R(1'b0));
  FDRE \DataOut_reg[25] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[25]),
        .Q(DataOut[25]),
        .R(1'b0));
  FDRE \DataOut_reg[26] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[26]),
        .Q(DataOut[26]),
        .R(1'b0));
  FDRE \DataOut_reg[27] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[27]),
        .Q(DataOut[27]),
        .R(1'b0));
  FDRE \DataOut_reg[28] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[28]),
        .Q(DataOut[28]),
        .R(1'b0));
  FDRE \DataOut_reg[29] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[29]),
        .Q(DataOut[29]),
        .R(1'b0));
  FDRE \DataOut_reg[2] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[2]),
        .Q(DataOut[2]),
        .R(1'b0));
  FDRE \DataOut_reg[30] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[30]),
        .Q(DataOut[30]),
        .R(1'b0));
  FDRE \DataOut_reg[31] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[31]),
        .Q(DataOut[31]),
        .R(1'b0));
  FDRE \DataOut_reg[3] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[3]),
        .Q(DataOut[3]),
        .R(1'b0));
  FDRE \DataOut_reg[4] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[4]),
        .Q(DataOut[4]),
        .R(1'b0));
  FDRE \DataOut_reg[5] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[5]),
        .Q(DataOut[5]),
        .R(1'b0));
  FDRE \DataOut_reg[6] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[6]),
        .Q(DataOut[6]),
        .R(1'b0));
  FDRE \DataOut_reg[7] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[7]),
        .Q(DataOut[7]),
        .R(1'b0));
  FDRE \DataOut_reg[8] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[8]),
        .Q(DataOut[8]),
        .R(1'b0));
  FDRE \DataOut_reg[9] 
       (.C(ClK),
        .CE(Cnt1),
        .D(p_1_out2_out[9]),
        .Q(DataOut[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE0)) 
    LastOut_i_1
       (.I0(LastOut),
        .I1(LastOut_i_2_n_0),
        .I2(Cnt1),
        .O(LastOut_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000000C0A00)) 
    LastOut_i_2
       (.I0(last),
        .I1(LastIn),
        .I2(Cnt[2]),
        .I3(Cnt[0]),
        .I4(InputReady),
        .I5(Cnt[1]),
        .O(LastOut_i_2_n_0));
  FDRE LastOut_reg
       (.C(ClK),
        .CE(1'b1),
        .D(LastOut_i_1_n_0),
        .Q(LastOut),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    NotEmpty_i_1
       (.I0(OutputReady),
        .I1(InputReady),
        .I2(Cnt[0]),
        .I3(Cnt[1]),
        .I4(Cnt[2]),
        .O(Cnt1));
  FDRE NotEmpty_reg
       (.C(ClK),
        .CE(1'b1),
        .D(Cnt1),
        .Q(NotEmpty),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF777F)) 
    NotFull_i_1
       (.I0(Cnt[2]),
        .I1(Cnt[1]),
        .I2(Cnt[0]),
        .I3(InputReady),
        .I4(OutputReady),
        .O(p_0_in));
  FDRE NotFull_reg
       (.C(ClK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(NotFull),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \Rp[0]_i_1 
       (.I0(Cnt[2]),
        .I1(Cnt[1]),
        .I2(Cnt[0]),
        .I3(InputReady),
        .I4(OutputReady),
        .I5(Rp[0]),
        .O(\Rp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Rp[1]_i_1 
       (.I0(Rp[0]),
        .I1(Cnt1),
        .I2(Rp[1]),
        .O(\Rp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Rp[2]_i_1 
       (.I0(Rp[0]),
        .I1(Rp[1]),
        .I2(Cnt1),
        .I3(Rp[2]),
        .O(\Rp[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Rp_reg[0] 
       (.C(ClK),
        .CE(1'b1),
        .D(\Rp[0]_i_1_n_0 ),
        .Q(Rp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rp_reg[1] 
       (.C(ClK),
        .CE(1'b1),
        .D(\Rp[1]_i_1_n_0 ),
        .Q(Rp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rp_reg[2] 
       (.C(ClK),
        .CE(1'b1),
        .D(\Rp[2]_i_1_n_0 ),
        .Q(Rp[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \U0/ 
       (.I0(Rp[0]),
        .I1(Wp[0]),
        .I2(Wp[2]),
        .I3(Rp[2]),
        .I4(Wp[1]),
        .I5(Rp[1]),
        .O(\U0/_n_0 ));
  LUT5 #(
    .INIT(32'h80FF7F00)) 
    \Wp[0]_i_1 
       (.I0(Cnt[2]),
        .I1(Cnt[1]),
        .I2(Cnt[0]),
        .I3(InputReady),
        .I4(Wp[0]),
        .O(\Wp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF777777708888888)) 
    \Wp[1]_i_1 
       (.I0(Wp[0]),
        .I1(InputReady),
        .I2(Cnt[0]),
        .I3(Cnt[1]),
        .I4(Cnt[2]),
        .I5(Wp[1]),
        .O(\Wp[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \Wp[2]_i_1 
       (.I0(Wp[0]),
        .I1(Wp[1]),
        .I2(p_0_in4_out),
        .I3(Wp[2]),
        .O(\Wp[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Wp_reg[0] 
       (.C(ClK),
        .CE(1'b1),
        .D(\Wp[0]_i_1_n_0 ),
        .Q(Wp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Wp_reg[1] 
       (.C(ClK),
        .CE(1'b1),
        .D(\Wp[1]_i_1_n_0 ),
        .Q(Wp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Wp_reg[2] 
       (.C(ClK),
        .CE(1'b1),
        .D(\Wp[2]_i_1_n_0 ),
        .Q(Wp[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    last_i_1
       (.I0(last),
        .I1(p_0_in4_out),
        .I2(LastIn),
        .I3(LastOut_i_2_n_0),
        .I4(Cnt1),
        .O(last_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(ClK),
        .CE(1'b1),
        .D(last_i_1_n_0),
        .Q(last),
        .R(1'b0));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_0_0
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[0]),
        .DPO(p_2_out[0]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[0]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  LUT4 #(
    .INIT(16'h2AAA)) 
    myBuff_reg_0_7_0_0_i_1
       (.I0(InputReady),
        .I1(Cnt[0]),
        .I2(Cnt[1]),
        .I3(Cnt[2]),
        .O(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_10_10
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[10]),
        .DPO(p_2_out[10]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[10]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_11_11
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[11]),
        .DPO(p_2_out[11]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[11]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_12_12
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[12]),
        .DPO(p_2_out[12]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[12]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_13_13
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[13]),
        .DPO(p_2_out[13]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[13]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_14_14
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[14]),
        .DPO(p_2_out[14]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[14]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_15_15
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[15]),
        .DPO(p_2_out[15]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[15]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_16_16
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[16]),
        .DPO(p_2_out[16]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[16]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_17_17
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[17]),
        .DPO(p_2_out[17]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[17]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_18_18
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[18]),
        .DPO(p_2_out[18]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[18]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_19_19
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[19]),
        .DPO(p_2_out[19]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[19]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_1_1
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[1]),
        .DPO(p_2_out[1]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[1]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_20_20
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[20]),
        .DPO(p_2_out[20]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[20]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_21_21
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[21]),
        .DPO(p_2_out[21]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[21]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_22_22
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[22]),
        .DPO(p_2_out[22]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[22]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_23_23
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[23]),
        .DPO(p_2_out[23]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[23]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_24_24
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[24]),
        .DPO(p_2_out[24]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[24]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_25_25
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[25]),
        .DPO(p_2_out[25]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[25]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_26_26
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[26]),
        .DPO(p_2_out[26]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[26]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_27_27
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[27]),
        .DPO(p_2_out[27]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[27]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_28_28
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[28]),
        .DPO(p_2_out[28]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[28]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_29_29
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[29]),
        .DPO(p_2_out[29]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[29]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_2_2
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[2]),
        .DPO(p_2_out[2]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[2]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_30_30
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[30]),
        .DPO(p_2_out[30]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[30]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_31_31
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[31]),
        .DPO(p_2_out[31]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[31]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_3_3
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[3]),
        .DPO(p_2_out[3]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[3]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_4_4
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[4]),
        .DPO(p_2_out[4]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[4]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_5_5
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[5]),
        .DPO(p_2_out[5]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[5]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_6_6
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[6]),
        .DPO(p_2_out[6]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[6]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_7_7
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[7]),
        .DPO(p_2_out[7]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[7]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_8_8
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[8]),
        .DPO(p_2_out[8]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[8]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/myBuff_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    myBuff_reg_0_7_9_9
       (.A0(Wp[0]),
        .A1(Wp[1]),
        .A2(Wp[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DataIn[9]),
        .DPO(p_2_out[9]),
        .DPRA0(Rp[0]),
        .DPRA1(Rp[1]),
        .DPRA2(Rp[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_1_out[9]),
        .WCLK(ClK),
        .WE(p_0_in4_out));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ProcessAndFIFO_0_0,ProcessAndFIFO,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ProcessAndFIFO,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ClK,
    InputReady,
    NotFull,
    DataIn,
    LastIn,
    STRBIn,
    OutputReady,
    NotEmpty,
    DataOut,
    LastOut,
    STRBOut);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ClK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ClK, ASSOCIATED_BUSIF ProcessOutput:ProcessInput, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ClK;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessInput TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME ProcessInput, FREQ_HZ 50000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input InputReady;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessInput TREADY" *) output NotFull;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessInput TDATA" *) input [31:0]DataIn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessInput TLAST" *) input LastIn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessInput TSTRB" *) input [3:0]STRBIn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessOutput TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME ProcessOutput, FREQ_HZ 50000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input OutputReady;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessOutput TVALID" *) output NotEmpty;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessOutput TDATA" *) output [31:0]DataOut;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessOutput TLAST" *) output LastOut;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 ProcessOutput TSTRB" *) output [3:0]STRBOut;

  wire \<const1> ;
  wire ClK;
  wire [31:0]DataIn;
  wire [31:0]DataOut;
  wire InputReady;
  wire LastIn;
  wire LastOut;
  wire NotEmpty;
  wire NotFull;
  wire OutputReady;

  assign STRBOut[3] = \<const1> ;
  assign STRBOut[2] = \<const1> ;
  assign STRBOut[1] = \<const1> ;
  assign STRBOut[0] = \<const1> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ProcessAndFIFO U0
       (.ClK(ClK),
        .DataIn(DataIn),
        .DataOut(DataOut),
        .InputReady(InputReady),
        .LastIn(LastIn),
        .LastOut(LastOut),
        .NotEmpty(NotEmpty),
        .NotFull(NotFull),
        .OutputReady(OutputReady));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
