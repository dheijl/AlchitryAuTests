#!/usr/bin/env python3
"""Round-trip test: PC -> Au serial port -> SPI -> Teensy -> SPI -> Au -> PC.

What alchitry_top does with the serial port (1 Mbaud, 8N1):
  - every character received is echoed back and queued for SPI (MISO)
  - a newline raises DRQ; the Teensy (Teensy_SPI, src/main.cpp) then does
    one SPI transfer and sends its fixed test text on MOSI
  - every byte received over SPI is echoed to the serial port

Per iteration this script sends one line and checks:
  1. the echo of the line
  2. the bytes the Teensy sent over SPI (MOSI direction)
  3. with --teensy: the Teensy's debug output ("RX: <hex>"), which must be
     the line followed by 0xFF filler (MISO direction)

Usage:
  ./serial_test.py                       # 10 lines, Au port auto-detected
  ./serial_test.py -n 100 --teensy auto  # also check MISO via the Teensy
  ./serial_test.py --port /dev/ttyUSB1 --length 120 -v

Things to know:
  - Lines are at most 196 bytes, the size of the Teensy's transfer. A longer
    line would leave bytes in the FPGA's SPI FIFO and spoil the next line.
  - --teensy needs the Teensy's USB serial port to itself (close any
    `pio device monitor` first) and relies on `#define DEBUG` in the
    Teensy's main.cpp for the "TX:"/"RX:" lines.
  - The Au port is found as the `-if01-port0` entry in /dev/serial/by-id/
    (interface 1 of the Au's FTDI chip; interface 0 is used by the loader).
    Use --port if that doesn't match.
  - For this design SCK is wired to C45, not A5.
"""

import argparse
import glob
import sys
import time

try:
    import serial
except ImportError:
    sys.exit("pyserial is needed: apt install python3-serial (or pip install pyserial)")

BAUD = 1_000_000

# What the Teensy sends on MOSI (tqbf in Teensy_SPI src/main.cpp). With
# --teensy the expected bytes are taken from its "TX:" line instead.
_FOX = ("the quick brown fox jumps over the lazy dog0123456789"
        "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG\r\n")
TEENSY_TX = (_FOX * 2).encode()

# The Teensy always transfers len(TEENSY_TX) bytes. A longer line would leave
# bytes in the FPGA's SPI FIFO for the next transfer. (The FPGA itself takes
# up to 257: 255 in the FIFO + 2 transmit buffers.)
MAX_LINE = len(TEENSY_TX)


def find_port(pattern, what):
    ports = sorted(glob.glob(pattern))
    if len(ports) == 1:
        return ports[0]
    if not ports:
        sys.exit(f"no {what} found ({pattern}); give the port explicitly")
    sys.exit(f"several {what} candidates, pick one: " + " ".join(ports))


def make_line(i, length):
    """Printable test line of `length` bytes, newline included."""
    head = f"{i:06d} "
    body = bytes(0x21 + (i + k) % 94 for k in range(max(0, length - len(head) - 1)))
    return (head.encode() + body)[: length - 1] + b"\n"


def read_exact(port, n, timeout):
    """Read up to n bytes, waiting at most `timeout` seconds in total."""
    buf = bytearray()
    end = time.monotonic() + timeout
    while len(buf) < n and time.monotonic() < end:
        port.timeout = max(0.0, end - time.monotonic())
        buf += port.read(n - len(buf))
    return bytes(buf)


def read_teensy_line(port, prefix, timeout):
    """Next line from the Teensy starting with `prefix`, as bytes, or None."""
    end = time.monotonic() + timeout
    while time.monotonic() < end:
        port.timeout = max(0.0, end - time.monotonic())
        line = port.readline().decode(errors="replace").strip()
        if line.startswith(prefix):
            try:
                return bytes.fromhex(line[len(prefix):].strip())
            except ValueError:
                return None
    return None


def first_diff(got, want):
    for k, (g, w) in enumerate(zip(got, want)):
        if g != w:
            return f"byte {k}: got {g:02x} expected {w:02x}"
    return f"length: got {len(got)} expected {len(want)}"


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--port", help="Au serial port (default: auto-detect)")
    ap.add_argument("--teensy", metavar="PORT",
                    help="Teensy USB serial port, or 'auto', to also check MISO")
    ap.add_argument("-n", "--count", type=int, default=10, help="lines to send (default 10)")
    ap.add_argument("--length", type=int, default=64,
                    help=f"line length incl. newline, 2..{MAX_LINE} (default 64)")
    ap.add_argument("--timeout", type=float, default=3.0,
                    help="seconds to wait for each reply (default 3)")
    ap.add_argument("-v", "--verbose", action="store_true", help="print every line")
    args = ap.parse_args()

    if not 2 <= args.length <= MAX_LINE:
        sys.exit(f"--length must be 2..{MAX_LINE}")

    # the Au's FTDI chip: interface 0 = JTAG (loader), interface 1 = UART
    au_name = args.port or find_port("/dev/serial/by-id/*-if01-port0", "Au serial port")
    au = serial.Serial(au_name, BAUD, timeout=args.timeout)

    teensy = None
    if args.teensy:
        t_name = args.teensy
        if t_name == "auto":
            t_name = find_port("/dev/serial/by-id/*Teensy*", "Teensy port")
        teensy = serial.Serial(t_name, 115200, timeout=args.timeout)

    print(f"Au: {au_name}" + (f", Teensy: {teensy.port}" if teensy else "")
          + f", {args.count} lines of {args.length} bytes")

    fails = 0
    try:
        for i in range(args.count):
            line = make_line(i, args.length)
            au.reset_input_buffer()
            if teensy:
                teensy.reset_input_buffer()
            au.write(line)

            errors = []
            echo = read_exact(au, len(line), args.timeout)
            if echo != line:
                errors.append("echo " + first_diff(echo, line))

            mosi_want = TEENSY_TX
            if teensy:
                tx = read_teensy_line(teensy, "TX:", args.timeout)
                if tx is None:
                    errors.append("no 'TX:' line from the Teensy")
                else:
                    mosi_want = tx

            mosi = read_exact(au, len(mosi_want), args.timeout)
            if mosi != mosi_want:
                errors.append("MOSI " + first_diff(mosi, mosi_want))

            if teensy:
                miso = read_teensy_line(teensy, "RX:", args.timeout)
                if miso is None:
                    errors.append("no 'RX:' line from the Teensy")
                else:
                    miso_want = line + b"\xff" * (len(miso) - len(line))
                    if miso != miso_want:
                        errors.append("MISO " + first_diff(miso, miso_want))

            extra = au.read(au.in_waiting or 0)
            if extra:
                errors.append(f"{len(extra)} unexpected extra bytes")

            if errors:
                fails += 1
                print(f"{i:6d} FAIL: " + "; ".join(errors))
            elif args.verbose:
                print(f"{i:6d} ok: {line[:-1].decode()}")
    except KeyboardInterrupt:
        print("interrupted")
        args.count = i

    print(f"{args.count - fails}/{args.count} lines OK")
    return 1 if fails else 0


if __name__ == "__main__":
    sys.exit(main())
