# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/stephen/dev/fpga/pynq-z2/lab1/vitis/mat_mul_system/_ide/scripts/debugger_mat_mul-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/stephen/dev/fpga/pynq-z2/lab1/vitis/mat_mul_system/_ide/scripts/debugger_mat_mul-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-23727093-0"}
fpga -file /home/stephen/dev/fpga/pynq-z2/lab1/vitis/mat_mul/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/stephen/dev/fpga/pynq-z2/lab1/vitis/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/stephen/dev/fpga/pynq-z2/lab1/vitis/mat_mul/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/stephen/dev/fpga/pynq-z2/lab1/vitis/mat_mul/Debug/mat_mul.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
