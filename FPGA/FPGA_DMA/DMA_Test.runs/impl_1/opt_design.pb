
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 1781.098 ; gain = 22.0742default:defaulth px� 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
%s*common2O
;Ending Cache Timing Information Task | Checksum: 145dc2b17
2default:defaulth px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 2333.598 ; gain = 552.5002default:defaulth px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px� 
k
)Generating Script for core instance : %s 214*	chipscope2
dbg_hub2default:defaultZ16-329h px� 
�
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:3.02default:default2

dbg_hub_CV2default:defaultZ19-3806h px� 
�
;Using cached IP synthesis design for IP %s, cache-ID = %s.
286*	chipscope2+
xilinx.com:ip:xsdbm:3.02default:default2$
c363300abeb4feb82default:defaultZ16-469h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0462default:default2
2702.0472default:default2
0.0002default:defaultZ17-268h px� 
o
%s*common2V
BPhase 1 Generate And Synthesize Debug Cores | Checksum: 12532e613
2default:defaulth px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:02 ; elapsed = 00:00:23 . Memory (MB): peak = 2702.047 ; gain = 19.8282default:defaulth px� 
i

Phase %s%s
101*constraints2
2 2default:default2
Retarget2default:defaultZ18-101h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
ydesign_1_i/axi_dma_0/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/sig_last_mmap_dbeat_reg_i_1__0	ydesign_1_i/axi_dma_0/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/sig_last_mmap_dbeat_reg_i_1__02default:default2�
vdesign_1_i/axi_dma_0/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/sig_next_calc_error_reg_i_3	vdesign_1_i/axi_dma_0/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/sig_next_calc_error_reg_i_32default:default2
52default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst_i_2__0	�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst_i_2__02default:default2�
�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst_i_4__0	�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst_i_4__02default:default2
62default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/split_ongoing_i_1__0	�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/split_ongoing_i_1__02default:default2�
�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/S_AXI_AREADY_I_i_3__0	�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/S_AXI_AREADY_I_i_3__02default:default2
32default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/split_ongoing_i_1	�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/split_ongoing_i_12default:default2�
�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/S_AXI_AREADY_I_i_4	�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/S_AXI_AREADY_I_i_42default:default2
32default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst_i_1	�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst_i_12default:default2�
�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst_i_3__0	�design_1_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst_i_3__02default:default2
82default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_1__0	�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_1__02default:default2�
�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/m_axi_araddr[0]_INST_0_i_1	�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/m_axi_araddr[0]_INST_0_i_12default:default2
52default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1__0	�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1__02default:default2�
�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/m_axi_araddr[2]_INST_0_i_2	�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/m_axi_araddr[2]_INST_0_i_22default:default2
82default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_1	�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_12default:default2�
�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/m_axi_awaddr[0]_INST_0_i_1	�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/m_axi_awaddr[0]_INST_0_i_12default:default2
52default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1	�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_12default:default2�
�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_2	�design_1_i/axi_mem_intercon/s00_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_22default:default2
42default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_1__0	�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_1__02default:default2�
�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/m_axi_araddr[0]_INST_0_i_1	�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/m_axi_araddr[0]_INST_0_i_12default:default2
52default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1__0	�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1__02default:default2�
�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/m_axi_araddr[2]_INST_0_i_2	�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/ar.ar_pipe/m_axi_araddr[2]_INST_0_i_22default:default2
82default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_1	�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][11]_srl32_i_12default:default2�
�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/m_axi_awaddr[0]_INST_0_i_1	�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/m_axi_awaddr[0]_INST_0_i_12default:default2
52default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_1	�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_12default:default2�
�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_2	�design_1_i/axi_mem_intercon/s01_couplers/auto_us/inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/si_register_slice_inst/aw.aw_pipe/USE_RTL_FIFO.data_srl_reg[31][13]_srl32_i_22default:default2
42default:default8Z31-1287h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
32default:default2
72default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
S
%s*common2:
&Phase 2 Retarget | Checksum: fac96185
2default:defaulth px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:03 ; elapsed = 00:00:24 . Memory (MB): peak = 2702.047 ; gain = 19.8282default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
192default:default2
1132default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
922default:defaultZ31-1021h px� 
u

Phase %s%s
101*constraints2
3 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
v
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
82default:default2
162default:defaultZ31-138h px� 
`
%s*common2G
3Phase 3 Constant propagation | Checksum: 160b90784
2default:defaulth px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:03 ; elapsed = 00:00:24 . Memory (MB): peak = 2702.047 ; gain = 19.8282default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
4872default:default2
13442default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2(
Constant propagation2default:default2
762default:defaultZ31-1021h px� 
f

Phase %s%s
101*constraints2
4 2default:default2
Sweep2default:defaultZ18-101h px� 
P
%s*common27
#Phase 4 Sweep | Checksum: a46b815b
2default:defaulth px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:04 ; elapsed = 00:00:25 . Memory (MB): peak = 2702.047 ; gain = 19.8282default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
3352default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
11162default:defaultZ31-1021h px� 
r

Phase %s%s
101*constraints2
5 2default:default2%
BUFG optimization2default:defaultZ18-101h px� 
\
%s*common2C
/Phase 5 BUFG optimization | Checksum: a46b815b
2default:defaulth px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:04 ; elapsed = 00:00:25 . Memory (MB): peak = 2702.047 ; gain = 19.8282default:defaulth px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px� 
|

Phase %s%s
101*constraints2
6 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px� 
f
%s*common2M
9Phase 6 Shift Register Optimization | Checksum: a46b815b
2default:defaulth px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:04 ; elapsed = 00:00:25 . Memory (MB): peak = 2702.047 ; gain = 19.8282default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
x

Phase %s%s
101*constraints2
7 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px� 
b
%s*common2I
5Phase 7 Post Processing Netlist | Checksum: a96cf488
2default:defaulth px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:04 ; elapsed = 00:00:25 . Memory (MB): peak = 2702.047 ; gain = 19.8282default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2+
Post Processing Netlist2default:default2
902default:defaultZ31-1021h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |              19  |             113  |                                             92  |
|  Constant propagation         |             487  |            1344  |                                             76  |
|  Sweep                        |               0  |             335  |                                           1116  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                             90  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.023 . Memory (MB): peak = 2702.047 ; gain = 0.0002default:defaulth px� 
b
%s*common2I
5Ending Logic Optimization Task | Checksum: 108c49cb4
2default:defaulth px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:04 ; elapsed = 00:00:26 . Memory (MB): peak = 2702.047 ; gain = 19.8282default:defaulth px� 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px� 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px� 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


*pwropth px� 
e

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px� 
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02default:default2
112default:defaultZ34-162h px� 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201h px� 
�
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
132default:default2
02default:default2
222default:defaultZ34-65h px� 
f
%s*common2M
9Ending PowerOpt Patch Enables Task | Checksum: 10379d56c
2default:defaulth px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.117 . Memory (MB): peak = 2789.367 ; gain = 0.0002default:defaulth px� 
b
%s*common2I
5Ending Power Optimization Task | Checksum: 10379d56c
2default:defaulth px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 2789.367 ; gain = 87.3202default:defaulth px� 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px� 
]
%s*common2D
0Ending Final Cleanup Task | Checksum: 10379d56c
2default:defaulth px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.003 . Memory (MB): peak = 2789.367 ; gain = 0.0002default:defaulth px� 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0202default:default2
2789.3672default:default2
0.0002default:defaultZ17-268h px� 
c
%s*common2J
6Ending Netlist Obfuscation Task | Checksum: 1e2497e06
2default:defaulth px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.023 . Memory (MB): peak = 2789.367 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
682default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:00:222default:default2
00:00:422default:default2
2789.3672default:default2
1030.3442default:defaultZ17-268h px� 
�
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0762default:default2
2789.3672default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]C:/Users/Mohammadreza/Desktop/DMA_TEST/DMA_Test/DMA_Test.runs/impl_1/design_1_wrapper_opt.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
ureport_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
cC:/Users/Mohammadreza/Desktop/DMA_TEST/DMA_Test/DMA_Test.runs/impl_1/design_1_wrapper_drc_opted.rptcC:/Users/Mohammadreza/Desktop/DMA_TEST/DMA_Test/DMA_Test.runs/impl_1/design_1_wrapper_drc_opted.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 


End Record