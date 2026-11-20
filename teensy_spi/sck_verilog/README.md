# SCK-clocked SPI peripheral (Verilog)

A variant of `../verilog` where the SPI peripheral is clocked directly by SCK
instead of oversampling SCK with a 300 MHz clock. Everything else runs on the
100 MHz board clock. No clock wizard or Xilinx FIFO IP is needed.

Background: [`../verilog/SPI_100MHz_notes.md`](../verilog/SPI_100MHz_notes.md).

## Wiring change

**SCK moves from A5 to C45** (FPGA pin N11, IO_L13P_T2_MRCC_14). A5 (T5) is
not clock-capable. The other pins are unchanged:

| Signal | Br pin  | Teensy pin |
| ------ | ------- | ---------- |
| cs     | A2      | 0          |
| sck    | **C45** | 27         |
| miso   | A9      | 1          |
| mosi   | A6      | 26         |
| drq    | A8      | 5          |

## SPI mode

Mode 1 (CPOL = 0, CPHA = 1), the same as before. MOSI is sampled on the
falling SCK edge. MISO moves to the next bit on the falling edge, which gives
it a full SCK period to reach the controller. The first bit is on SDO as soon
as CS goes low.

## Files

| File                      |                                                                      |
| ------------------------- | -------------------------------------------------------------------- |
| `src/spi_peripheral.v`    | SCK-domain shift logic                                               |
| `src/spi_buffer.v`        | 100 MHz side: transmit FIFO, clock domain crossing, double tx buffer |
| `src/alchitry_top.v`      | top level; SCK goes through a BUFR (regional clock buffer)           |
| `constraint/alchitry.xdc` | pins, SCK clock, SPI I/O delays, clock crossing                      |
| `sim/tb_spi_buffer.v`     | testbench for `spi_buffer`: mode 1 controller, 2 ns wire delays      |

## Build and simulate

```sh
vivado -mode batch -source build.tcl     # bitstream in vivado/teensy_spi.runs/impl_1/
./flash.sh                               # write it to the Au's flash (-r: RAM only)
cd sim && ./run_sim.sh                   # expects "done: 484 bytes received, 0 errors"
```

The testbench is a functional (zero-delay RTL) simulation of `spi_buffer`,
which includes `spi_peripheral`. It covers:

- MISO/MOSI data and byte counts at 100 MHz SCK, including odd byte counts,
  0xFF filler when the FIFO runs dry, and a transfer that stops mid-byte
- SCK at 99, 73, 37 and 10 MHz, so SCK edges drift in phase against the
  100 MHz clock
- filling to full (257 bytes: 255 in the FIFO + 2 transmit buffers), and a
  byte written while full being dropped
- bytes written during a transfer, both before and after the FIFO has run dry
- reset between transfers (with an even and an odd number of bytes sent so
  far) and in the middle of a transfer
- CS edges 0.5 ns from SCK edges: CS falling just before the first rising
  edge, rising just after the last falling edge (byte counts) or just before
  it (byte is incomplete and sent again)
- SCK toggling while CS is high is ignored, and SDO is tri-stated whenever CS
  is high

It doesn't cover timing (the MISO path, synchroniser metastability), or
anything outside `spi_buffer` (`alchitry_top`, the UART). It also can't tell
whether MISO changes on the falling edge (as designed) or the rising edge:
both give the same data, only the timing differs.

## Timing results (Vivado 2024.1, xc7a35t-1)

Run `vivado -mode batch -nojournal -nolog -source timing.tcl` after a build.
It writes the reports to `vivado/` and prints a slack table for SCK at 75 and
100 MHz (edit `rates` in the script for others).

- SCK is constrained at **75 MHz** (13.33 ns): all constraints met.
- **MOSI** meets timing at 100 MHz with ~1.7 ns slack (limit ~150 MHz).
- **MISO** fails at 100 MHz by ~2.7 ns (limit ~79 MHz). SCK pin to SDO pin is
  ~9.7 ns: SCK input buffer + BUFR 3.3 ns, flip-flop + bit select 1.5 ns,
  route to the pin 1.7 ns, output buffer 3.2 ns. The constraint adds an
  assumed 3 ns for controller setup plus wires.
- These are slow-corner (worst case) numbers; a board at room temperature is
  usually noticeably faster.

## Things to know

- The first bit reaches SDO about 10 ns after CS goes low. The Teensy's
  CS-to-SCK delay plus half an SCK period must be longer than that.
- A received byte reaches the 100 MHz side about 30 ns after its last bit. If
  CS rises sooner than that (hardware CS), the top level is already back in
  IDLE and doesn't echo the last byte to the serial port.
- If the transmit FIFO runs empty during a transfer, the rest of that transfer
  sends 0xFF. A transfer that stops mid-byte doesn't use up that byte.
- LED 6 no longer shows SCK, because SCK is now a clock net.

## notes on flashing (flash.sh):

It loads the Vivado bitstream onto the Au using the Alchitry Labs command-line loader (`/usr/bin/alchitry load`). The script exits with a "build first" message when there's no bitstream.

```sh
./flash.sh            # write vivado/teensy_spi.runs/impl_1/alchitry_top.bin to flash (survives power-off)
./flash.sh -r         # load into RAM only (lost at power-off)
./flash.sh -d 1       # pick another board if several are plugged in (alchitry load -l lists them)
./flash.sh some.bin   # load a different .bin
```

- **Board type:** it defaults to `Au`, because these Alchitry projects use "Alchitry Au". If you have an Au V2, run it as `BOARD=AuV2-35T ./flash.sh`, or change the default in the script.
- **Bin file:** `build.tcl` already tells Vivado to write a `.bin` file, which is the format the loader uses, so the build doesn't need any changes.
- **Warnings:** the loader prints a few Java `WARNING: ... restricted method` lines every time it runs. They don't mean anything is wrong.
