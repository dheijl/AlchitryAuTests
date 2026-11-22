#!/bin/sh
# Build the bitstream (and the .bin that flash.sh loads) with Vivado in batch
# mode, from build.tcl. The vivado/ project directory is recreated each time.
#
# Usage: ./build.sh [-t] [-f]
#   -t   also run timing.sh afterwards (slack table for SCK at 75 and 100 MHz)
#   -f   also run flash.sh afterwards (write the .bin to the Au's flash)
#
# Set VIVADO_BIN if Vivado is not in ~/tools/Xilinx/Vivado/2024.1/bin.
# Vivado's output goes to the terminal; the run logs are in
# vivado/teensy_spi.runs/{synth_1,impl_1}/runme.log.
set -e
cd "$(dirname "$0")"

B=${VIVADO_BIN:-$HOME/tools/Xilinx/Vivado/2024.1/bin}
TIMING=0
FLASH=0

while getopts tf opt; do
    case $opt in
        t) TIMING=1 ;;
        f) FLASH=1 ;;
        *) echo "usage: $0 [-t] [-f]" >&2; exit 2 ;;
    esac
done

"$B/vivado" -mode batch -nojournal -nolog -source build.tcl

# wait_on_run doesn't fail the script when synthesis or implementation fails,
# so check for the result instead
BIN=vivado/teensy_spi.runs/impl_1/alchitry_top.bin
if [ ! -f "$BIN" ]; then
    echo "build failed: $BIN not created, see vivado/teensy_spi.runs/*/runme.log" >&2
    exit 1
fi
echo "built $BIN"

[ $TIMING = 1 ] && ./timing.sh
[ $FLASH = 1 ] && ./flash.sh
exit 0
