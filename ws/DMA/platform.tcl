# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\user\Desktop\FPGA_DMA2\FPGA_AI_v2\ws\DMA\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\user\Desktop\FPGA_DMA2\FPGA_AI_v2\ws\DMA\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {DMA}\
-hw {C:\Users\user\Desktop\FPGA_DMA2\FPGA_AI_v2\FPGA\FPGA_DMA\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/user/Desktop/FPGA_DMA2/FPGA_AI_v2/ws}

platform write
platform generate -domains 
platform generate
platform active {DMA}
platform generate
platform active {DMA}
platform generate -domains 
