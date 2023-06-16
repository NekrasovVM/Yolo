# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\NekrasovVladiimir\CNN_project_start\vitis\my_project_system\_ide\scripts\debugger_my_project-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\NekrasovVladiimir\CNN_project_start\vitis\my_project_system\_ide\scripts\debugger_my_project-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source E:/Xilinx/Vitis/2020.2/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210512180081-14711093-0"}
fpga -file E:/NekrasovVladiimir/CNN_project_start/vitis/my_project/_ide/bitstream/Top_YOLOv3_Tiny_Project.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/NekrasovVladiimir/CNN_project_start/vitis/Top_YOLOv3_Tiny_Project/export/Top_YOLOv3_Tiny_Project/hw/Top_YOLOv3_Tiny_Project.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow E:/NekrasovVladiimir/CNN_project_start/vitis/Top_YOLOv3_Tiny_Project/export/Top_YOLOv3_Tiny_Project/sw/Top_YOLOv3_Tiny_Project/boot/fsbl.elf
set bp_28_28_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_28_28_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow E:/NekrasovVladiimir/CNN_project_start/vitis/my_project/Debug/my_project.elf
configparams force-mem-access 0
bpadd -addr &main
