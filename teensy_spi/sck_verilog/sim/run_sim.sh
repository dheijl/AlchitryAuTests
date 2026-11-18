#!/bin/sh
# Simulate spi_buffer + spi_peripheral with Vivado xsim.
# Run from this directory: ./run_sim.sh
# Set VIVADO_BIN if Vivado is not in ~/tools/Xilinx/Vivado/2024.1/bin.
set -e
B=${VIVADO_BIN:-$HOME/tools/Xilinx/Vivado/2024.1/bin}
S=../../src
mkdir -p work && cd work
$B/xvlog ../tb_spi_buffer.v $S/spi_peripheral.v $S/spi_buffer.v $S/fifo.v $S/simple_dual_port_ram.v
$B/xelab -timescale 1ns/1ps -debug off tb -s tb
$B/xsim tb -R | grep -E 'ERROR|done'
