
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.74 ; elapsed = 00:00:00.49 . Memory (MB): peak = 1914.203 ; gain = 0.000 ; free physical = 4348 ; free virtual = 118072default:defaulth px? 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
h
%s*common2O
;Ending Cache Timing Information Task | Checksum: 22e40ac8a
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2335.762 ; gain = 421.559 ; free physical = 3959 ; free virtual = 114322default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
T
%s*common2;
'Phase 1 Retarget | Checksum: 1d4278370
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.12 ; elapsed = 00:00:00.05 . Memory (MB): peak = 2623.652 ; gain = 0.000 ; free physical = 3712 ; free virtual = 111852default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
42default:default2
292default:defaultZ31-389h px? 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
`
%s*common2G
3Phase 2 Constant propagation | Checksum: 1c8929a0a
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.13 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2623.652 ; gain = 0.000 ; free physical = 3713 ; free virtual = 111852default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
82default:defaultZ31-389h px? 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px? 
Q
%s*common28
$Phase 3 Sweep | Checksum: 16723fe09
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.2 ; elapsed = 00:00:00.13 . Memory (MB): peak = 2623.652 ; gain = 0.000 ; free physical = 3713 ; free virtual = 111852default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
2462default:defaultZ31-389h px? 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
]
%s*common2D
0Phase 4 BUFG optimization | Checksum: 16723fe09
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.22 ; elapsed = 00:00:00.14 . Memory (MB): peak = 2655.668 ; gain = 32.016 ; free physical = 3713 ; free virtual = 111852default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
?
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px? 
g
%s*common2N
:Phase 5 Shift Register Optimization | Checksum: 16723fe09
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.23 ; elapsed = 00:00:00.14 . Memory (MB): peak = 2655.668 ; gain = 32.016 ; free physical = 3713 ; free virtual = 111852default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
6 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
c
%s*common2J
6Phase 6 Post Processing Netlist | Checksum: 1c00979c8
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.23 ; elapsed = 00:00:00.15 . Memory (MB): peak = 2655.668 ; gain = 32.016 ; free physical = 3713 ; free virtual = 111852default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px? 
/
Opt_design Change Summary
*commonh px? 
/
=========================
*commonh px? 


*commonh px? 


*commonh px? 
?
z-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Retarget                     |               4  |              29  |                                              0  |
|  Constant propagation         |               0  |               8  |                                              0  |
|  Sweep                        |               0  |             246  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2655.668 ; gain = 0.000 ; free physical = 3713 ; free virtual = 111852default:defaulth px? 
a
%s*common2H
4Ending Logic Optimization Task | Checksum: f60ffd36
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.31 ; elapsed = 00:00:00.19 . Memory (MB): peak = 2655.668 ; gain = 32.016 ; free physical = 3713 ; free virtual = 111852default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
a
%s*common2H
4Ending Power Optimization Task | Checksum: f60ffd36
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2655.668 ; gain = 0.000 ; free physical = 3712 ; free virtual = 111852default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
\
%s*common2C
/Ending Final Cleanup Task | Checksum: f60ffd36
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2655.668 ; gain = 0.000 ; free physical = 3712 ; free virtual = 111852default:defaulth px? 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2655.6682default:default2
0.0002default:default2
37122default:default2
111852default:defaultZ17-722h px? 
b
%s*common2I
5Ending Netlist Obfuscation Task | Checksum: f60ffd36
2default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2655.668 ; gain = 0.000 ; free physical = 3712 ; free virtual = 111852default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
312default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:00:062default:default2
00:00:062default:default2
2655.6682default:default2
741.4652default:default2
37122default:default2
111852default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.172default:default2
00:00:00.042default:default2
2703.6912default:default2
40.0202default:default2
36992default:default2
111732default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2h
T/home/stephen/dev/fpga/pynq-z2/lab1/vivado/lab1.runs/impl_1/design_1_wrapper_opt.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
ureport_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
Z/home/stephen/dev/fpga/pynq-z2/lab1/vivado/lab1.runs/impl_1/design_1_wrapper_drc_opted.rptZ/home/stephen/dev/fpga/pynq-z2/lab1/vivado/lab1.runs/impl_1/design_1_wrapper_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 


End Record