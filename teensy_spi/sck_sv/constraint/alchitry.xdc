set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
# clk => 100000000Hz
create_clock -period 10.0 -name clk_0 -waveform {0.000 5.0} [get_ports clk]

set_property PACKAGE_PIN P6 [get_ports {rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]

set_property PACKAGE_PIN K13 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN K12 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN L14 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN L13 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

set_property PACKAGE_PIN M16 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

set_property PACKAGE_PIN M14 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]

set_property PACKAGE_PIN M12 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

set_property PACKAGE_PIN N16 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]

set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]

set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]

# SCK is a real clock now: header C45 = N11 (IO_L13P_T2_MRCC_14, clock-capable).
# It used to be on A5 (T5), which is not clock-capable: move the wire!
set_property PACKAGE_PIN N11 [get_ports {sck}]
set_property IOSTANDARD LVCMOS33 [get_ports {sck}]

set_property PACKAGE_PIN R5 [get_ports {sdi}]
set_property IOSTANDARD LVCMOS33 [get_ports {sdi}]

set_property PACKAGE_PIN P8 [get_ports {sdo}]
set_property IOSTANDARD LVCMOS33 [get_ports {sdo}]
# fast edges for MISO (saves ~1 ns); add a 22-33 ohm series resistor if it rings
set_property SLEW FAST [get_ports {sdo}]
set_property DRIVE 16 [get_ports {sdo}]

set_property PACKAGE_PIN T8 [get_ports {cs}]
set_property IOSTANDARD LVCMOS33 [get_ports {cs}]

set_property PACKAGE_PIN R8 [get_ports {drq}]
set_property IOSTANDARD LVCMOS33 [get_ports {drq}]

# ------------------------------------------------------------- SPI timing
# SPI mode 1: the controller changes MOSI on the rising edge and samples MISO
# on the falling edge.
# Constrained for 75 MHz (13.33 ns). At 100 MHz (10 ns) MOSI still meets
# timing, but MISO misses by ~2.8 ns: SCK pin -> SDO pin is ~9.8 ns, plus the
# 3 ns output delay below. Change the period to check other rates.
create_clock -period 13.333 -name sck -waveform {0.000 6.667} [get_ports sck]

# MOSI: controller clock-to-out plus wire, relative to the rising edge.
# We capture on the falling edge (half a period later).
set_input_delay -clock sck -max 3.0 [get_ports sdi]
set_input_delay -clock sck -min 0.0 [get_ports sdi]

# MISO: launched on a falling edge, sampled by the controller on the next
# falling edge. -max = controller setup + wire, -min = -(controller hold).
set_output_delay -clock sck -clock_fall -max 3.0 [get_ports sdo]
set_output_delay -clock sck -clock_fall -min -1.0 [get_ports sdo]

# CS is asynchronous: it resets the bit counter, enables SDO and is
# synchronised into clk_0. The SPI protocol gives it plenty of margin.
set_false_path -from [get_ports cs]

# Crossings between sck and clk_0 are handled by the toggle handshake in
# spi_buffer.v: only bound the routing delay.
#  sck -> clk_0: rx_byte must arrive before the synchronised rx_toggle
#  clk_0 -> sck: a freed tx buffer is rewritten <= 40 ns after the byte
#                ends and used again 80 ns (8 SCK periods) after it
set_max_delay -datapath_only -from [get_clocks sck]   -to [get_clocks clk_0] 5.0
set_max_delay -datapath_only -from [get_clocks clk_0] -to [get_clocks sck]   20.0

