# SCK-clocked SPI peripheral (SystemVerilog)

The SystemVerilog version of [`../sck_verilog`](../sck_verilog): the same
design, logic and testbench, written in SystemVerilog.

A variant of `../verilog` where the SPI peripheral is clocked directly by SCK
instead of oversampling SCK with a 300 MHz clock. Everything else runs on the
100 MHz board clock. No clock wizard or Xilinx FIFO IP is needed.

Background: [`../verilog/SPI_100MHz_notes.md`](../verilog/SPI_100MHz_notes.md).

## SystemVerilog conventions

- `` `default_nettype none `` at the top of every file (reset to `wire` at the
  end), so a misspelt signal name is an error instead of a new 1-bit wire.
  Because of that, inputs are `input wire` (a `logic` net): xsim rejects
  `input logic` when there is no default net type.
- Outputs and internal signals are `logic`. `sdo` stays a `wire` all the way
  up, because it is a tri-state net (`z` while CS is high).
- `always_ff` and `always_comb` instead of `always`, so the tools report
  latches and signals driven from two places.
- State machines use `typedef enum`, parameters are `int`, and constants that
  are compared with counters are sized casts (`CTR_SIZE'(...)`).
- `spi_buffer`: the `load` task is replaced by an `always_comb` block that
  decides which transmit buffer to load (and with what); the `always_ff`
  block applies it.
- Testbench: `automatic` tasks, `int`/`string`, `assert ... else $error`, and
  three concurrent assertions that are checked on every clock: `a_sdo_z` (SDO
  is `z` whenever CS is high), `a_drdy_pulse` (`data_rdy` is a one-cycle
  pulse) and `a_rx_before_idle` (a byte never completes after the top level
  could have seen CS high, see below).

For Zed/slang: one workspace can only hold one copy of each module, so
`../.slang/server.json` indexes either `sck_sv` or `sck_verilog`, not both.
`.slang/server.json` here is for opening `sck_sv` as its own workspace.

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
| `src/spi_peripheral.sv`   | SCK-domain shift logic                                               |
| `src/spi_buffer.sv`       | 100 MHz side: transmit FIFO, clock domain crossing, double tx buffer |
| `src/alchitry_top.sv`     | top level; SCK goes through a BUFR (regional clock buffer)           |
| `src/fifo.sv`, `src/simple_dual_port_ram.sv`, `src/uart_*.sv`, `src/reset_conditioner.sv` | Alchitry library components (MIT), converted to SystemVerilog |
| `constraint/alchitry.xdc` | pins, SCK clock, SPI I/O delays, clock crossing                      |
| `sim/tb_spi_buffer.sv`    | testbench for `spi_buffer`: mode 1 controller, 2 ns wire delays      |

## Build and simulate

```sh
./sim.sh                                 # testbench: "done: 484 bytes received, 0 errors"
./build.sh                               # bitstream + .bin in vivado/teensy_spi.runs/impl_1/
./timing.sh                              # slack table for SCK at 75 and 100 MHz
./flash.sh                               # write it to the Au's flash (-r: RAM only)
./serial_test.py -n 100 --teensy auto    # round trip over serial + SPI with the Teensy
```

`./build.sh -t -f` builds, prints the timing table and flashes in one go.
All scripts exit non-zero on failure (`sim.sh` when the testbench reports
errors, `build.sh` when no `.bin` was produced). They look for Vivado in
`~/tools/Xilinx/Vivado/2024.1/bin`; set `VIVADO_BIN` for another location.
`build.sh` (`build.tcl`) and `sim.sh` (`sim/run_sim.sh`) are thin wrappers, so
the Tcl and the simulation script can still be run directly:

```sh
vivado -mode batch -source build.tcl
cd sim && ./run_sim.sh
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
  is high (checked on every clock by `a_sdo_z`)
- `data_rdy` is never high for two cycles in a row (`a_drdy_pulse`)
- a byte that completes just before CS rises is still pending before the
  top level sees CS high (`a_rx_before_idle`)

It doesn't cover timing (the MISO path, synchroniser metastability), or
anything outside `spi_buffer` (`alchitry_top`, the UART). It also can't tell
whether MISO changes on the falling edge (as designed) or the rising edge:
both give the same data, only the timing differs.

## Timing results (Vivado 2024.1, xc7a35t-1)

Run `./timing.sh` (or `vivado -mode batch -nojournal -nolog -source timing.tcl`) after a build.
It writes the reports to `vivado/` and prints a slack table for SCK at 75 and
100 MHz (edit `rates` in the script for others). Diagrams of the data flow
and timing paths are in [`docs/timing.md`](docs/timing.md).

- SCK is constrained at **75 MHz** (13.33 ns): all constraints met.
- **MOSI** meets timing at 100 MHz with ~1.5 ns slack (limit ~140 MHz).
- **MISO** fails at 100 MHz by ~2.7 ns (limit ~79 MHz). SCK pin to SDO pin is
  ~9.7 ns: SCK input buffer + BUFR 3.3 ns, flip-flop + bit select 1.5 ns,
  route to the pin 1.7 ns, output buffer 3.2 ns. The constraint adds an
  assumed 3 ns for controller setup plus wires.
- These are slow-corner (worst case) numbers; a board at room temperature is
  usually noticeably faster.

## Hardware setup

The Au is the SPI peripheral, a Teensy 4.1 running
[Teensy_SPI](https://github.com/dheijl/Teensy_SPI) (PlatformIO) is the
controller, on its SPI1 port (pins in the table under
[Wiring change](#wiring-change), plus GND). The PC talks to both over USB:

```
PC ──USB serial (1 Mbaud)──> Au ──SPI (mode 1)──> Teensy 4.1 ──USB serial──> PC
                             <──────────────────                (TX:/RX: debug)
```

1. The PC sends a line to the Au's serial port. The Au echoes each character
   and queues it in its SPI transmit FIFO.
2. The newline raises DRQ. The Teensy waits for DRQ, then does one 196-byte
   SPI transfer: it sends its fixed test text on MOSI and receives the queued
   line (followed by 0xFF filler) on MISO.
3. The Au echoes every byte it received over SPI to the serial port. The
   Teensy prints what it sent and received as `TX:`/`RX:` hex lines on its
   own USB serial port (and on its ILI9341 display).

`serial_test.py` drives this loop and checks the echo, the MOSI bytes and,
with `--teensy`, the MISO bytes from the Teensy's `RX:` line. The SCK rate is
set in the Teensy sketch (`SPISettings` in `src/main.cpp`).

## Hardware test results

Tested on the Au with the Teensy (Teensy_SPI sketch), jumper wires between
the boards, `serial_test.py --length 196` (full 196-byte transfers):

| SCK requested | SCK actual | Test                         | Result                                   |
| ------------- | ---------- | ---------------------------- | ---------------------------------------- |
| 50 MHz        | 48 MHz     | `-n 1000 --teensy auto` (+ MISO) | 1000/1000 OK                         |
| 75 MHz        | 60 MHz     | `-n 1000` (echo + MOSI)      | 1000/1000 OK                             |
| 75 MHz        | 60 MHz     | `-n 1000 --teensy auto` (+ MISO) | 1000/1000 OK                         |
| 79 MHz        | 60 MHz     | `-n 1000 --teensy auto` (+ MISO) | 1000/1000 OK                         |
| 80 MHz        | 80 MHz     | `-n 1000 --teensy auto` (+ MISO) | 0/1000 OK: every line fails          |
| 100 MHz       | 120 MHz    | `-n 1000 --teensy auto`      | fails on the first line: MOSI byte 0 wrong (`7f` instead of `74`), no `RX:` line from the Teensy |

The Teensy can't produce every SCK rate. Its SPI peripheral clock is
720 MHz / 3 = 240 MHz, and SCK is that divided by a whole number of 2 or
more, rounded to the nearest rate at or below the `SPISettings` request
(Teensy core `libraries/SPI/SPI.cpp`). The possible rates are 120, 80, 60,
48, 40 ... MHz, so any request from 61 to 79 MHz runs at 60 MHz.

60 MHz is the highest working rate (requested as 75 MHz in the sketch); 80 MHz
fails on every line. That agrees with the timing analysis, which puts the
MISO limit at ~79 MHz in the slow corner, but the hardware can only say the
real limit is somewhere between 60 and 80 MHz. To test in between, the LPSPI
clock source or divider in `CCM_CBCMR` would have to be changed after
`SPI1.begin()`.

At 120 MHz (requested as 100 MHz) MOSI (Teensy -> Au) fails on the first byte.
That is below the ~140 MHz MOSI timing limit, but with little margin left
for the board-to-board wiring (ringing on SCK can produce extra clock edges)
and the Teensy's own MOSI output timing.

Before testing: make sure the Au runs this design's bitstream (`./flash.sh`)
and SCK is on C45, and close `pio device monitor` when using `--teensy`.
After a failed run, reset the Au: an aborted transfer can leave bytes in the
SPI FIFO that spoil the next run.

## Things to know

- The first bit reaches SDO about 10 ns after CS goes low. The Teensy's
  CS-to-SCK delay plus half an SCK period must be longer than that.
- A received byte reaches the 100 MHz side about 30 ns after its last bit.
  The top level uses the CS synchroniser in `spi_buffer` (`idle`) plus one
  more register, so it sees CS rise one clock after a byte completing at the
  same moment shows up on `rx_pending`. It stays in BUSY while a byte is
  pending, so the last byte is echoed even with hardware CS.
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

## the actual hardware:

<img width="3896" height="2112" alt="20261128_162450" src="https://github.com/user-attachments/assets/2172efb1-71eb-4e3e-afa4-31d4eeabf004" />


