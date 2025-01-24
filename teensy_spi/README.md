# SPI Slave test

SPI speed test between the AU with Br and a Teensy 4.1.


Wiring:

- cs = A2 -> Teensy pin 0 (yellow)
- sck = A5 -> Teensy pin 27 (orange)
- miso = A9 -> Teensy pin 1 (red)
- mosi = A6 -> Teensy pin 26 (brown)
- data_rdy = A8 -> Teensy pin 5 (IN2) (black)
- GND -> Teensy GND (green)

![20241229_180750-EDIT](https://github.com/user-attachments/assets/f7f43510-f85a-43ee-8b5f-6201d4f0a7b9)

When [testing SPI](https://github.com/dheijl/AlchitryAuTests/tree/main/WIO_SPIO) with the WIO terminal (120 MHz SAMD51), I could get the AU to receive correctly at 24 MHz, but the WIO got garbage at any speed above 12 MHz.

So I did this SPI speedtest with a Teensy 4.1 (600 MHz NXP Cortex M7) to see what would happen. 

With the Teensy this SPI code works reliably in both directions up to 20 MHz, anything above misses bits, and send/receive start missing bits at the same speed, contrary to the WIO test. In theory the 100 MHz AU  could go up to 25 MHz (with 4 SCK samples per SCK tick), but 20 MHz is not bad for "bit-banging". Perhaps not using 10 cm jumper wires but shorter soldered connections could even go higher.

I used an Ili9341 display with the Teensy to display test results at 30 MHz SPI without problems.


The Teensy project is [here](https://github.com/dheijl/Teensy_SPI).


