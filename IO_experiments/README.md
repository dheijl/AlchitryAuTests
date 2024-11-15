A BCD adder for two 4-digit numbers a and b

The 5 buttons on the IO board allow you to enter the two numbers a and b and compute the sum:

- use the up/down button to increment/decrement the currently selected digit
- use the left/right button to select the next/previous digit in a or b
- use the center button to advance state: enter a => enter b => show sum => enter a etc...

The currently selected digit is shown on leds[3:0]

The currently selected digit value is shown 
     - on io_leds[0][3:0] 
     - on the seven segment display

The sum is shown on the 7 segment display until the center button is pressed again

Overflow is shown on the leftmost io led

A picture of the result of adding 9999 + 9999 :

![bcd adder](https://github.com/user-attachments/assets/99d17364-7336-4259-8767-2ef69e75b5ef)
