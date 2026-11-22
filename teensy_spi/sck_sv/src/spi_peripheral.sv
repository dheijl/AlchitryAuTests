// SPI peripheral (slave), SCK-clocked version, SPI mode 1 (CPOL = 0, CPHA = 1).
//
// Unlike the earlier oversampling version, SCK is used as a real clock, so the
// SPI rate is no longer limited to a fraction of the system clock. SCK must be
// on a clock-capable pin (P side of an MRCC/SRCC pair), see alchitry.xdc.
//
// Everything in this module runs on SCK. The system side (spi_buffer) talks
// to it through registers that only change at known moments, see
// "Clock domain crossing" below.
//
// Receive (MOSI): the controller changes MOSI on the rising SCK edge, we sample
// it on the falling edge. After the 8th bit the byte is copied into rx_byte and
// rx_toggle flips. rx_byte then stays stable for a full byte time.
//
// Transmit (MISO): the controller samples MISO on the falling edge. We move to
// the next bit on that same falling edge (instead of on the rising edge, as
// mode 1 nominally does). That gives the new bit a full SCK period to reach
// the controller instead of half a period, which is what makes high SCK rates
// possible. The first bit (MSB) is on SDO as soon as CS goes low.
//
// Clock domain crossing:
//  - Two transmit buffers, tx_byte0 and tx_byte1, are written by the system
//    side. rx_toggle selects which one is being sent. When a byte completes,
//    rx_toggle flips and the buffer just sent is free: the system side
//    refills it while the other one is being shifted out. It is used again
//    8 SCK periods later.
//  - rx_toggle is not reset by CS, so the buffer order carries over from one
//    transfer to the next. A transfer that ends mid-byte doesn't flip it.

`default_nettype none

module spi_peripheral (
    input  wire        sck,
    input  wire        cs,          // chip select, active low
    input  wire        sdi,         // MOSI
    output wire        sdo,         // MISO, tri-stated while not selected (a net: may be z)
    // received data (SCK domain, synchronised in spi_buffer)
    output logic [7:0] rx_byte   = 8'h00,  // last complete byte received
    output logic       rx_toggle = 1'b0,   // flips when rx_byte is updated
    // transmit buffers (system domain, see above)
    input  wire  [7:0] tx_byte0,
    input  wire  [7:0] tx_byte1
);

    logic [2:0] bit_ct = '0;        // bits done in the current byte
    logic [6:0] shift  = '0;        // MOSI bits 7..1 of the current byte

    // bit counter, held at 0 while CS is high
    always_ff @(negedge sck or posedge cs) begin
        if (cs)
            bit_ct <= '0;
        else
            bit_ct <= bit_ct + 3'd1;
    end

    always_ff @(negedge sck) begin
        shift <= {shift[5:0], sdi};
        if (bit_ct == 3'd7) begin   // 8th bit: byte complete (implies CS low)
            rx_byte   <= {shift, sdi};
            rx_toggle <= ~rx_toggle;
        end
    end

    // MSB first: bit 7 - bit_ct (= ~bit_ct) of the selected buffer
    logic [7:0] tx;
    assign tx  = rx_toggle ? tx_byte1 : tx_byte0;
    assign sdo = cs ? 1'bz : tx[~bit_ct];

endmodule

`default_nettype wire
