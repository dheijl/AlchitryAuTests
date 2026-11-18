# Notes: getting the SPI peripheral from ~40 MHz towards 100 MHz

Reference notes from a Claude Code session (2026-11-18) about the Verilog SPI
peripheral in `src/spi_peripheral.v` / `src/spi_buffer.v`.

## Question 1: The maximum SCK I get is about 40 MHz. What is needed for 100 MHz?

Short answer: the current design can't reach 100 MHz, because of the way it
samples SPI. It needs a different design, and above roughly 50 MHz the wiring
and the Teensy also start to limit the speed.

### Why the current design stops around 40 MHz

`spi_peripheral.v` doesn't use SCK as a clock. It **oversamples** SCK, SDI and
CS on `fast_clk` (300 MHz) and finds edges in logic (`sck_reg`). Each SCK
half-period needs several `fast_clk` cycles: one to register the input, one
for the edge detect, plus margin for jitter, skew and the duty cycle. The
measured result was about 8 samples per bit (300 MHz / 38 MHz), which is
typical.

At that ratio, 100 MHz SCK would need an internal clock of 600–800 MHz. The
Artix-7 -1 fabric can't run that (a 400 MHz clock already gave timing
failures). Oversampling with ISERDES (the XAPP523 approach) could technically
do it, but it's far too much work for SPI.

### What a 100 MHz design needs

1. **Clock the shift registers directly from SCK.** This is how real
   100 MHz+ SPI chips work:
   - Shift MOSI into an 8-bit register on the SCK sample edge, and shift MISO
     out on the opposite edge.
   - Use CS as an asynchronous reset for the bit counter, so each transfer
     starts aligned.
   - When a byte is complete, copy it into a holding register and toggle a
     flag. Pass that flag through a 2-flip-flop synchronizer into the 100 MHz
     system clock domain. At 100 MHz a byte lasts 80 ns, which gives plenty of
     time to cross. The transmit byte goes the other way: the system side
     writes it into a register at least one byte-time before the SCK side
     loads it.
   - You then don't need the 300 MHz clock wizard at all. The SCK side does
     only shifting, and everything else runs at 100 MHz. You also don't need
     the Xilinx async FIFO with SCK as its write clock. That's a bad fit
     because SCK stops between transfers, so the last byte would never be
     pushed through.

2. **Put SCK on a clock-capable pin**, so it can reach a BUFG through the
   dedicated clock route. The current SCK pin isn't clock-capable (see
   question 2 below). The fallback, `CLOCK_DEDICATED_ROUTE FALSE`, gives
   variable skew and is risky at 100 MHz.

3. **Add real I/O timing constraints**:
   - `create_clock -period 10 [get_ports sck]`
   - `set_input_delay` / `set_output_delay` on SDI/SDO relative to SCK
   - SCK declared asynchronous to `clk_0`
   - `IOB TRUE` on the input and output registers, so their timing is fixed

4. **Fix the MISO round trip. At 100 MHz this is probably the real wall.**
   The master sends an SCK edge and expects the next MISO bit about half a
   period (5 ns) later. Rough budget:

   | Step                  | Delay              |
   |-----------------------|--------------------|
   | wire to the FPGA      | ~1 ns              |
   | input buffer and BUFG | ~2–3 ns            |
   | clock to output pad   | ~4 ns              |
   | wire back             | ~1 ns              |
   | **Total**             | **~8–9 ns > 5 ns** |

   That only works if the master samples MISO later. The i.MX RT1062 LPSPI has
   a delayed-sample option (the `SAMPLE` bit in `CFGR1`), so it's worth
   looking at on the Teensy side. Alternatively, run the FPGA → Teensy
   direction at a lower rate.

5. **Replace the wiring.** 10 cm jumpers with LVCMOS33 edges will ring and
   couple into each other at 100 MHz. Use short soldered connections or a
   small PCB, a ground return next to each signal, and probably series
   termination resistors of about 22–33 Ω at the drivers. Setting a lower
   `DRIVE` or `SLEW SLOW` on `sdo` may also help.

6. **Check the Teensy itself.** The RT1062 datasheet's LPSPI master timing is
   specified well below 100 MHz (check the exact figure in the datasheet), and
   its LPSPI clock root sets which SCK frequencies are possible at all.
   38 MHz may already be past what's guaranteed. Measure what the Teensy
   actually puts out with a scope before blaming the FPGA.

### Realistic outcome

- With an SCK-clocked design and decent wiring, **50–60 MHz in both
  directions** is plausible. Teensy → FPGA alone might go higher.
- Reaching **100 MHz in both directions** needs delayed MISO sampling on the
  master, a short PCB-grade connection, and a master that can actually
  generate a clean 100 MHz SCK.

## Question 2: Which pins are clock-capable?

Checked with Vivado 2024.1 (`~/tools/Xilinx/Vivado/2024.1`) on
`xc7a35tftg256-1`. The FPGA pins were mapped to Au V1 header names using the
pin table in Alchitry Labs 2.0.63 (`AuPin`). The mapping checks out against
the pins this project already uses (A2=T8, A5=T5, A6=R5, A8=R8, A9=P8).

### Current SPI pins: none are clock-capable

| Signal | Header | FPGA pin | Function |
|---|---|---|---|
| sck | A5 | T5 | IO_L23N_T3_A02_D18_14 |
| sdi | A6 | R5 | IO_L23P_T3_A03_D19_14 |
| cs  | A2 | T8 | IO_L21N_T3_DQS_A06_D22_14 |
| sdo | A9 | P8 | IO_L20P_T3_A08_D24_14 |
| drq | A8 | R8 | IO_L20N_T3_A07_D23_14 |
| (board clock) | CLOCK | N14 | IO_L12P_T1_MRCC_14 |

### Clock-capable pins on the headers

A single-ended clock must go on the **P side** of a clock-capable pair.

| Header | FPGA pin | Function | Use for SCK? |
|---|---|---|---|
| **C45** | N11 | IO_L13P_T2_**MRCC**_14 | **Best choice**: multi-region and in the same bank (14) as the other SPI pins |
| C42 | N13 | IO_L11P_T1_SRCC_14 | Yes (single-region) |
| C48 | P10 | IO_L14P_T2_SRCC_14 | Yes (single-region) |
| B39 | D4 | IO_L12P_T1_MRCC_35 | Yes, but in bank 35 |
| B33 | F5 | IO_L13P_T2_MRCC_35 | Yes, but in bank 35 |
| B42 | E3 | IO_L11P_T1_SRCC_35 | Yes, but in bank 35 |
| B12 | F4 | IO_L14P_T2_SRCC_35 | Yes, but in bank 35 |
| C43 (P13), C46 (N12), C49 (P11) | — | N side, bank 14 | No |
| D11 (P14) | — | N side of the board clock pair (N14) | No |
| B40 (C4), B34 (E5), B43 (D3), B11 (F3) | — | N side, bank 35 | No |
| — | bank 15 clock pins | — | No: all taken by the DDR3 |

### Recommendation: move SCK to C45 (N11, MRCC)

- Alchitry constraint `constraint/SPI.acf`: `pin sck C45` instead of
  `pin sck A5`
- Vivado constraint `verilog/constraint/alchitry.xdc`:
  `set_property PACKAGE_PIN N11 [get_ports {sck}]`
- On the Br, move the orange wire from A5 to C45.

With the current oversampling design, moving the pin changes nothing. It only
matters once `spi_peripheral` clocks its shift registers directly from SCK.

### Vivado query used

```tcl
link_design -part xc7a35tftg256-1
foreach pp [get_package_pins -filter {IS_CLK_CAPABLE}] {
  puts [format "%-4s bank=%s func=%s" [get_property NAME $pp] \
        [get_property BANK $pp] [get_property PIN_FUNC $pp]]
}
```

Run with `vivado -mode batch -nojournal -nolog -source pins.tcl`.

## Possible next step

Write an SCK-clocked `spi_peripheral.v` with a toggle-flag handoff into the
100 MHz domain, plus the matching XDC timing constraints, as a drop-in
replacement for the oversampling version.
