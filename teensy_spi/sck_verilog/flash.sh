#!/bin/sh
# Load the Vivado bitstream onto the Alchitry Au with the Alchitry Labs loader
# (Vivado's hardware manager doesn't support the Au's FTDI programmer).
#
# Usage: ./flash.sh [-r] [-d N] [bin_file]
#   -r    load to RAM (temporary, lost at power-off) instead of flash
#   -d N  device index when several boards are connected (see: alchitry load -l)
#   bin_file defaults to the build.tcl output.
#
# Set ALCHITRY to the loader binary if it isn't on PATH, and BOARD for another
# board (one of: Au, Au+, AuV2-35T, AuV2-50T, ...).
set -e
cd "$(dirname "$0")"

ALCHITRY=${ALCHITRY:-alchitry}
BOARD=${BOARD:-Au}
MODE=--flash
DEVICE=0

while getopts rd: opt; do
    case $opt in
        r) MODE=--ram ;;
        d) DEVICE=$OPTARG ;;
        *) echo "usage: $0 [-r] [-d N] [bin_file]" >&2; exit 2 ;;
    esac
done
shift $((OPTIND - 1))

BIN=${1:-vivado/teensy_spi.runs/impl_1/alchitry_top.bin}
if [ ! -f "$BIN" ]; then
    echo "$BIN not found; build first: vivado -mode batch -source build.tcl" >&2
    exit 1
fi

echo "Loading $BIN to $BOARD ($MODE, device $DEVICE)"
# (the loader's Java runtime prints a few harmless "restricted method" warnings)
exec "$ALCHITRY" load --bin "$BIN" --board "$BOARD" $MODE --device "$DEVICE"
