# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\NekrasovVladiimir\CNN_project_start\vitis\Top_YOLOv3_Tiny_Project\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\NekrasovVladiimir\CNN_project_start\vitis\Top_YOLOv3_Tiny_Project\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Top_YOLOv3_Tiny_Project}\
-hw {E:\NekrasovVladiimir\CNN_project_start\Top_YOLOv3_Tiny_Project.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/NekrasovVladiimir/CNN_project_start/vitis}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {Top_YOLOv3_Tiny_Project}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/vitis/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/vitis/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform active {Top_YOLOv3_Tiny_Project}
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/vitis/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/vitis/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/vitis/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform active {Top_YOLOv3_Tiny_Project}
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/vitis/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/vitis/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform config -updatehw {E:/NekrasovVladiimir/AXU2CGB_EN/AXU2CGB_EN/course_s2/15_pl_read_write_ps_ddr/vitis/top.xsa}
platform generate -domains 
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/Top_YOLOv3_Tiny_Project.xsa}
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform active {Top_YOLOv3_Tiny_Project}
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform active {Top_YOLOv3_Tiny_Project}
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
platform config -updatehw {E:/NekrasovVladiimir/CNN_project_start/Top_YOLOv3_Tiny_Project.xsa}
platform generate -domains 
bsp reload
domain active {zynqmp_fsbl}
bsp reload
domain active {zynqmp_pmufw}
bsp reload
platform active {Top_YOLOv3_Tiny_Project}
