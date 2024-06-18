onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib verify_write_read_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {verify_write_read.udo}

run -all

quit -force
