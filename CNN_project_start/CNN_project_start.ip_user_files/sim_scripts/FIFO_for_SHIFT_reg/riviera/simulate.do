onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+FIFO_for_SHIFT_reg -L xilinx_vip -L xpm -L fifo_generator_v13_2_5 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FIFO_for_SHIFT_reg xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {FIFO_for_SHIFT_reg.udo}

run -all

endsim

quit -force
