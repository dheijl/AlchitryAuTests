set_property SRC_FILE_INFO {cfile:/home/danny/alchitry/teensy_spi/cores/clk_300mhz/clk_300mhz.xdc rfile:../../../../clk_300mhz/clk_300mhz.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
