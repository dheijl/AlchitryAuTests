transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fifo_256  -L xpm -L fifo_generator_v13_2_10 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_256 xil_defaultlib.glbl

do {fifo_256.udo}

run 1000ns

endsim

quit -force
