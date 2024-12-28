# SPI Slave test

Proof of concept for SPI communication between the AU + Br and a Seeed Wio Terminal.

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
