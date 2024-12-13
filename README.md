# AlchitryAuTests

 ## Some tests with the Alchitry Au FPGA kit

 - [io_add_decimal](https://github.com/dheijl/AlchitryAuTests/tree/main/io_add_decimal) : enter 2 4 digit numbers on the 7 segement display, add them using a bcd adder, and show the sum on the display.

 - [io_add_binary](https://github.com/dheijl/AlchitryAuTests/tree/main/io_add_binary) : enter 2 4 digit numbers on the 7 segement display, add them using a binary adder, and show the sum on the display.

 - [WIO-SPIO](https://github.com/dheijl/AlchitryAuTests/tree/main/WIO_SPIO) : prrof of concept SPI communication between AU with Br and Seed WIO terminal. 

 - the other folders are just experiments to arrive at the above, like following the Lucid V2 tutorials.

### Surprise:
Contrary to what I would have expected, using the BCD adder is more resource efficient than using the binary adder, I assume the conversions BCD => binary => BCD are the cause of that:

-  **io_add_decimal**

```
---------------------------------------------------------------------------------
Detailed RTL Component Info : 
+---Adders : 
	   3 Input    5 Bit       Adders := 4     
	   2 Input    4 Bit       Adders := 6     
	   2 Input    2 Bit       Adders := 1     
+---Registers : 
	                4 Bit    Registers := 13    
	                2 Bit    Registers := 6     
	                1 Bit    Registers := 5     
+---Muxes : 
	   2 Input    4 Bit        Muxes := 7     
	   4 Input    4 Bit        Muxes := 2     
	   3 Input    4 Bit        Muxes := 12    
	   2 Input    2 Bit        Muxes := 1     
	   2 Input    1 Bit        Muxes := 10    
	   3 Input    1 Bit        Muxes := 1     
---------------------------------------------------------------------------------
Finished RTL Component Statistics 
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Part Resource Summary
---------------------------------------------------------------------------------
Part Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
---------------------------------------------------------------------------------

```
- **io_add_binary**

```
---------------------------------------------------------------------------------
Detailed RTL Component Info : 
+---Adders : 
	   3 Input   17 Bit       Adders := 4     
	   2 Input   15 Bit       Adders := 1     
	   3 Input   14 Bit       Adders := 4     
	   3 Input    9 Bit       Adders := 2     
	   2 Input    4 Bit       Adders := 2     
	   2 Input    2 Bit       Adders := 1     
+---Registers : 
	                4 Bit    Registers := 13    
	                2 Bit    Registers := 6     
	                1 Bit    Registers := 5     
+---Muxes : 
	   2 Input   17 Bit        Muxes := 4     
	   3 Input   15 Bit        Muxes := 1     
	   4 Input    4 Bit        Muxes := 2     
	   2 Input    4 Bit        Muxes := 3     
	   3 Input    4 Bit        Muxes := 12    
	   2 Input    2 Bit        Muxes := 1     
	   2 Input    1 Bit        Muxes := 10    
	   3 Input    1 Bit        Muxes := 1     
---------------------------------------------------------------------------------
Finished RTL Component Statistics 
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Part Resource Summary
---------------------------------------------------------------------------------
Part Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
---------------------------------------------------------------------------------

```
