onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bram_for_weights_opt

do {wave.do}

view wave
view structure
view signals

do {bram_for_weights.udo}

run -all

quit -force
