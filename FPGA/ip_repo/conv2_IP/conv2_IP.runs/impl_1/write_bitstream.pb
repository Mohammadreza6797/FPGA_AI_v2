
m
Command: %s
53*	vivadotcl2<
(write_bitstream -force conv2_Handler.bit2default:defaultZ4-113h px� 
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
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Unspecified I/O Standard: 100 out of 100 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2�
 "*
M_Data[31:0]M_Data2default:default")
M_STRB[3:0]M_STRB2default:default",

S_Data[23]
S_Data[23]2default:default",

S_Data[22]
S_Data[22]2default:default",

S_Data[21]
S_Data[21]2default:default",

S_Data[20]
S_Data[20]2default:default",

S_Data[19]
S_Data[19]2default:default",

S_Data[18]
S_Data[18]2default:default",

S_Data[17]
S_Data[17]2default:default",

S_Data[16]
S_Data[16]2default:default",

S_Data[15]
S_Data[15]2default:default",

S_Data[14]
S_Data[14]2default:default",

S_Data[13]
S_Data[13]2default:default",

S_Data[12]
S_Data[12]2default:default"(

S_Data[11]
S_Data[11]2default:..."/
(the first 15 of 35 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px� 
�
�Unconstrained Logical Port: 100 out of 100 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2�
 "*
M_Data[31:0]M_Data2default:default")
M_STRB[3:0]M_STRB2default:default",

S_Data[23]
S_Data[23]2default:default",

S_Data[22]
S_Data[22]2default:default",

S_Data[21]
S_Data[21]2default:default",

S_Data[20]
S_Data[20]2default:default",

S_Data[19]
S_Data[19]2default:default",

S_Data[18]
S_Data[18]2default:default",

S_Data[17]
S_Data[17]2default:default",

S_Data[16]
S_Data[16]2default:default",

S_Data[15]
S_Data[15]2default:default",

S_Data[14]
S_Data[14]2default:default",

S_Data[13]
S_Data[13]2default:default",

S_Data[12]
S_Data[12]2default:default"(

S_Data[11]
S_Data[11]2default:..."/
(the first 15 of 35 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2H
 "2
Cal_1/result0	Cal_1/result02default:default2default:default2R
 "<
Cal_1/result0/B[17:0]Cal_1/result0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2N
 "8
Cal_1/result0__0	Cal_1/result0__02default:default2default:default2X
 "B
Cal_1/result0__0/B[17:0]Cal_1/result0__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2H
 "2
Cal_1/result3	Cal_1/result32default:default2default:default2R
 "<
Cal_1/result3/B[17:0]Cal_1/result3/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2N
 "8
Cal_1/result0__0	Cal_1/result0__02default:default2default:default2X
 "B
Cal_1/result0__0/P[47:0]Cal_1/result0__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2N
 "8
Cal_1/result0__0	Cal_1/result0__02default:default2default:default2X
 "B
Cal_1/result0__0/P[47:0]Cal_1/result0__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
uPS7 block required: The PS7 cell must be used in this Zynq design in order to enable correct default configuration.%s*DRC2;
 #DRC|PS7|Zynq requires PS7 block|PS72default:default8ZZPS7-1h px� 
f
DRC finished with %s
1905*	planAhead2(
2 Errors, 6 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
92default:default2
62default:default2
02default:default2
32default:defaultZ4-41h px� 
Q

%s failed
30*	vivadotcl2#
write_bitstream2default:defaultZ4-43h px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Dec 31 22:01:43 20242default:defaultZ17-206h px� 


End Record