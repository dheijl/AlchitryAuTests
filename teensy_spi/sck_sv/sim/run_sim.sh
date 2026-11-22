#!/bin/sh
# Simulate spi_buffer + spi_peripheral with Vivado xsim.
# Run from anywhere: ./run_sim.sh (or ../sim.sh). Exits non-zero on errors.
# Set VIVADO_BIN if Vivado is not in ~/tools/Xilinx/Vivado/2024.1/bin.
set -e
cd "$(dirname "$0")"
B=${VIVADO_BIN:-$HOME/tools/Xilinx/Vivado/2024.1/bin}
S=../../src
mkdir -p work && cd work
$B/xvlog -sv ../tb_spi_buffer.sv $S/spi_peripheral.sv $S/spi_buffer.sv $S/fifo.sv $S/simple_dual_port_ram.sv
$B/xelab -timescale 1ns/1ps -debug off tb -s tb
# $error messages start with "Error:"; the last line is "done: N bytes received, M errors"
out=$($B/xsim tb -R)
echo "$out" | grep -E 'Error|ERROR|done' || true
echo "$out" | grep -q 'done: .* 0 errors' || { echo "simulation FAILED" >&2; exit 1; }
