# Timing reports for the routed design. Run after build.tcl, from this directory:
#   vivado -mode batch -nojournal -nolog -source timing.tcl
#
# Writes to vivado/:
#   timing_summary.rpt      full summary with the constraints in alchitry.xdc
#   timing_spi_<MHz>.rpt    MOSI, MISO and SCK<->clk_0 paths at each SCK rate
# and prints a slack table. The design is placed and routed once (for the
# period in alchitry.xdc); other rates only re-time that same routing.

set rates {75 100}

open_project ./vivado/teensy_spi.xpr
open_run impl_1

report_timing_summary -max_paths 10 -file ./vivado/timing_summary.rpt

proc worst {args} {
    set p [get_timing_paths {*}$args -max_paths 1 -nworst 1]
    if {[llength $p] == 0} { return "" }
    return [get_property SLACK $p]
}

set table {}
foreach mhz $rates {
    set per  [format %.3f [expr {1000.0 / $mhz}]]
    set half [format %.3f [expr {$per / 2.0}]]
    # same name, so the I/O delays in alchitry.xdc follow the new period
    create_clock -period $per -name sck -waveform [list 0.000 $half] [get_ports sck]

    report_timing -from [get_ports sdi] -delay_type min_max -max_paths 4 -file $f
    report_timing -to   [get_ports sdo] -delay_type min_max -max_paths 4 -file $f -append
    report_timing -from [get_clocks sck]   -to [get_clocks clk_0] -max_paths 4 -file $f -append
    report_timing -from [get_clocks clk_0] -to [get_clocks sck]   -max_paths 4 -file $f -append
    report_timing -from [get_clocks sck]   -to [get_clocks sck]   -max_paths 4 -file $f -append

    lappend table [list $mhz \
        [worst -from [get_ports sdi] -setup] [worst -from [get_ports sdi] -hold] \
        [worst -to [get_ports sdo] -setup]   [worst -to [get_ports sdo] -hold] \
        [worst -from [all_registers -clock sck] -to [all_registers -clock sck] -setup] \
        [worst -from [get_clocks clk_0] -to [get_clocks clk_0] -setup]]
}

# in a proc so batch mode doesn't echo every line
proc print_results {table} {
puts ""
puts "Worst slack (ns), negative = fails"
puts [format "%-8s %10s %10s %10s %10s %10s %10s" SCK MOSI_setup MOSI_hold MISO_setup MISO_hold sck_int clk_0]
foreach row $table {
    lassign $row mhz a b c d e g
    puts [format "%-8s %10s %10s %10s %10s %10s %10s" "${mhz}MHz" $a $b $c $d $e $g]
}
# MISO: data must reach the controller one full period after the falling
# edge, so the highest rate is 1 / (period - setup slack)
lassign [lindex $table 0] mhz a b c
set fmax [expr {1000.0 / (1000.0 / $mhz - $c)}]
puts [format "MISO limits SCK to about %.1f MHz (with the 3 ns output delay in alchitry.xdc)" $fmax]
lassign [lindex $table 0] mhz a
# MOSI is captured half a period after the launching edge
set fmax [expr {1000.0 / (2.0 * (500.0 / $mhz - $a))}]
puts [format "MOSI limits SCK to about %.1f MHz" $fmax]
}
print_results $table
