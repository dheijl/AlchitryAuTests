#!/bin/sh
# Timing reports for the routed design (run build.sh first). Writes
# vivado/timing_summary.rpt and vivado/timing_spi_<MHz>.rpt and prints a slack
# table for the SCK rates in timing.tcl (edit `rates` there for others).
#
# Set VIVADO_BIN if Vivado is not in ~/tools/Xilinx/Vivado/2024.1/bin.
set -e
cd "$(dirname "$0")"

B=${VIVADO_BIN:-$HOME/tools/Xilinx/Vivado/2024.1/bin}

if [ ! -f vivado/teensy_spi.runs/impl_1/alchitry_top.bin ]; then
    echo "no routed design found; build first: ./build.sh" >&2
    exit 1
fi

exec "$B/vivado" -mode batch -nojournal -nolog -source timing.tcl
