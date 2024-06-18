onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+verify_write_read -L xilinx_vip -L xpm -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.verify_write_read xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {verify_write_read.udo}

run -all

endsim

quit -force
