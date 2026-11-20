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
| `sim/tb_spi_buffer.v`     | testbench: mode 1 controller at 100 MHz, 2 ns wire delays            |

## Build and simulate

```sh
vivado -mode batch -source build.tcl     # bitstream in vivado/teensy_spi.runs/impl_1/
./flash.sh                               # write it to the Au's flash (-r: RAM only)
cd sim && ./run_sim.sh                   # expects "done: 27 bytes received, 0 errors"
```

## Timing results (Vivado 2024.1, xc7a35t-1)

- SCK is constrained at **75 MHz** (13.33 ns): all constraints met.
- **MOSI** meets timing at 100 MHz with ~1.8 ns slack.
- **MISO** fails at 100 MHz by ~2.8 ns. SCK pin to SDO pin is ~9.8 ns, and the
  constraint adds an assumed 3 ns for controller setup plus wires.
- Change the `create_clock` period for `sck` in `alchitry.xdc` to check
  another rate.

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
