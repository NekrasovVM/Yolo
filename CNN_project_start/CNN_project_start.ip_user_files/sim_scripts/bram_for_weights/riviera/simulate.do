onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+bram_for_weights -L xilinx_vip -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bram_for_weights xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {bram_for_weights.udo}

run -all

endsim

quit -force
