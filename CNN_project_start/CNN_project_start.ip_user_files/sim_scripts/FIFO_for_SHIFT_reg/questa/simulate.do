onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib FIFO_for_SHIFT_reg_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_for_SHIFT_reg.udo}

run -all

quit -force
