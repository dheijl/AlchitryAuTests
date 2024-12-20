# SPI Slave test

Proof of concept for SPI communication between the AU + Br and a Seeed Wio Terminal.

The AU uses the following pins on the Br:

- cs = A2 -> WIO pin 24
- sck = A5 -> WIO pin 23
- miso = A9 -> WIO pin 21
- mosi = A6 -> WIO pin 19
- data_rdy = A8 -> WIO pin 13 (D0)

What does it do:

- you type input characters on the serial terminal in Labs V2
- these are echoed on the serial terminal and stored in a tx fifo
- as soon as you type a newline the data_ready pin is asserted
- the WIO uses this pin as a trigger to start SPI transmit/receives until the data_ready line is no longer asserted and shows the received data on the TFT
- the AU sets the data_ready pin low when the tx fifo has been emptied by the SPI transfer(s)

For the corresponding WIO terminal terminal project source, see [here](https://github.com/dheijl/wio_spi).
