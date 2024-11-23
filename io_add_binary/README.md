### A BCD adder for two 4-digit numbers a and b on the Alchitry AU FPGA kit with the IO Element board.

The 5 buttons on the IO board allow you to enter the two numbers a and b and compute the sum:

- use the up/down button to increment/decrement the currently selected digit
- use the left/right button to select the next/previous digit in a or b
- use the center button to advance state: enter a => enter b => show sum => enter a etc...

The currently selected digit is shown on leds[3:0] an the AU board

The current state (a, b, sum) is shown on io leds [2][3:0]

The currently selected digit value of or b is shown on the io board: 
  - on io_leds[0][3:0] 
  - on the seven segment display

The sum is shown on the 7 segment display until the center button is pressed again,ready for the next a value

An overflow condition is shown on the leftmost io led [2][7:7]

The code is written in Alchitry Labs Lucid, a more ergonomic version of Verilog.
The Alchitry IDE converts this to Verilog and compiles it with Vivado.

A picture of the result of adding 9999 + 9999 :

![bcd adder](https://github.com/user-attachments/assets/99d17364-7336-4259-8767-2ef69e75b5ef)
