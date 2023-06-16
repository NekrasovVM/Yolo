onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib float_sum_opt

do {wave.do}

view wave
view structure
view signals

do {float_sum.udo}

run -all

quit -force
