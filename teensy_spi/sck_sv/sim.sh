#!/bin/sh
# Run the spi_buffer testbench (sim/tb_spi_buffer.sv) with Vivado xsim.
# Exits non-zero if the testbench reports errors. See sim/run_sim.sh.
set -e
exec "$(dirname "$0")/sim/run_sim.sh"
