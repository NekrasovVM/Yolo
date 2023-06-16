onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib float_mul_opt

do {wave.do}

view wave
view structure
view signals

do {float_mul.udo}

run -all

quit -force
