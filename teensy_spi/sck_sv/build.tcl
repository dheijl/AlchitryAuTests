# Build the bitstream with Vivado (batch mode), run from this directory:
#   vivado -mode batch -source build.tcl
set projDir "./vivado"
set projName "teensy_spi"
set device xc7a35tftg256-1

if {[file exists $projDir]} { file delete -force $projDir }
create_project $projName $projDir -part $device
set_property design_mode RTL [get_filesets sources_1]

add_files -fileset sources_1 [glob ./src/*.sv]     ;# .sv: read as SystemVerilog
set_property top alchitry_top [get_filesets sources_1]
read_xdc [list ./constraint/alchitry.xdc ./constraint/au_props.xdc]

set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
