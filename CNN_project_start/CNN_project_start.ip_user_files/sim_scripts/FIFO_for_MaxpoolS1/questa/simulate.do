onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib FIFO_for_MaxpoolS1_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_for_MaxpoolS1.udo}

run -all

quit -force
