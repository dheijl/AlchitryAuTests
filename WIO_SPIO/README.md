# SPI Slave test

Proof of concept for SPI communication between the Alchitry AU FPGA + Br breakout board and a Seeed Wio Terminal (120 MHz Microchip SAMD51).

The AU uses the following pins on the Br:

- cs = A2 -> WIO pin 24 (yellow)
- sck = A5 -> WIO pin 23 (orange)
- miso = A9 -> WIO pin 21 (red)
- mosi = A6 -> WIO pin 19 (brown)
- data_rdy = A8 -> WIO pin 13 (D0) (black)
- GND -> WIO pin 20 (green)

![20241221_195832](https://github.com/user-attachments/assets/a2b7ce7a-c2fb-4f7d-8c81-f1626e4b6d0d)

What does it do:

- you type input characters on the serial terminal in Labs V2
- these are echoed on the serial terminal and stored in a tx fifo on the AU
- as soon as you type a newline or the tx fifo (256 bytes) is full, the data_ready pin is asserted
- the WIO uses this pin as a trigger to start fixed lenght SPI transmit/receive sessions until the data_ready line is no longer asserted
- the WIO shows the received SPI data on the TFT
- the serial terminal in Labs V2 shows the received SPI data
- the AU sets the data_ready pin low when the tx fifo has been emptied by the SPI transfer(s) of the WIO

For the corresponding WIO terminal project source, see [here](https://github.com/dheijl/wio_spi).

The SPI communication works only reliable up to 12 MHz, while reception on the AU worked at 24 MHz, the WIO missed bits when receiving at speeds > 12 MHz.
Because I didn't know if the SPI 12 MHz limitation was situated at the WIO side, I did the same experiment with a Teensy 4.1 5 (600 MHz Cortex M7 NXP IMXRT1062DVJ6). 
See [source code](https://github.com/dheijl/Teensy_SPI).

Wiring:

- cs = A2 -> Teensy pin 0 (yellow)
- sck = A5 -> Teensy pin 27 (orange)
- miso = A9 -> Teensy pin 1 (red)
- mosi = A6 -> Teensy pin 26 (brown)
- data_rdy = A8 -> Teensy pin 5 (IN2) (black)
- GND -> Teensy GND (green)

![20241229_180750-EDIT](https://github.com/user-attachments/assets/f7f43510-f85a-43ee-8b5f-6201d4f0a7b9)

Unfortunately it looks like the speed limitation is on the AU side, as the Teensy fared slightly worse: 24 MHz was totally unusable, only 12 MHz was rock solid. 16 MHz worked but with an occasional bit missed.
