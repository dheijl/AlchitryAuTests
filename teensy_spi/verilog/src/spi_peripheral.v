// SPI peripheral (slave), hand translated from source/spi_peripheral.luc
//
// Based on the Alchitry spi_peripheral (MIT license, (c) 2024 Alchitry),
// modified by Danny Heijl:
//  - the first byte of a transfer is not wasted if there is data to send
//  - SDO is high impedance while CS is high, so a shared SPI bus is not disturbed
//
// All SPI inputs are oversampled on clk, which must be several times faster
// than SCK (200 MHz clk -> ~26-29 MHz SCK, 100 MHz clk -> ~20 MHz SCK).

module spi_peripheral #(
    parameter CPOL = 0,         // clock polarity: 0 = SCK idles low, 1 = idles high
    parameter CPHA = 0          // clock phase: 0 = sample on leading edge, 1 = on trailing edge
) (
    input  wire       clk,
    input  wire       rst,
    input  wire       cs,       // chip select, active low
    input  wire       sdi,      // MOSI
    output wire       sdo,      // MISO, tri-stated while not selected
    input  wire       sck,
    output reg        done = 1'b0,      // 1-cycle pulse: byte received
    input  wire [7:0] data_in,          // next byte to send
    output reg  [7:0] data_out = 8'h00  // last byte received
);

    // synchronised / buffered inputs
    reg       cs_reg      = 1'b0;
    reg       sdi_reg     = 1'b0;
    reg [1:0] sck_reg     = 2'b00;      // {previous, current}
    reg [7:0] data_in_reg = 8'h00;

    reg [2:0] bit_ct = 3'd0;            // counts 7 down to 0 (MSB first)
    reg [7:0] data   = 8'h00;           // byte being shifted out
    reg       sdo_reg = 1'b0;
    reg       sdo_en  = 1'b0;           // 0 = SDO is high impedance

    // When CPOL and CPHA differ we sample on the falling SCK edge,
    // when they are equal on the rising edge.
    localparam [1:0] EDGE_FLIP  = (CPOL != CPHA) ? 2'b11 : 2'b00;
    wire read_edge  = (sck_reg == (2'b01 ^ EDGE_FLIP));
    wire write_edge = (sck_reg == (2'b10 ^ EDGE_FLIP));

    // On a writing edge the new bit goes straight to the pin (one clk earlier
    // than via sdo_reg) to gain setup time at high SCK rates.
    assign sdo = (!cs_reg && write_edge) ? data[bit_ct] :
                 sdo_en                  ? sdo_reg      : 1'bz;

    always @(posedge clk) begin
        cs_reg      <= cs;
        sdi_reg     <= sdi;
        sck_reg     <= {sck_reg[0], sck};
        data_in_reg <= data_in;

        done <= 1'b0;
        data <= data_in;                // keep tracking the byte to send

        if (cs_reg) begin               // not selected
            bit_ct <= 3'd7;
            sdo_en <= 1'b0;             // release the bus
        end else if (read_edge) begin
            data_out[bit_ct] <= sdi_reg;
            bit_ct <= bit_ct - 3'd1;
            if (bit_ct == 3'd0) begin   // last bit of the byte
                done <= 1'b1;
                data <= data_in_reg;
            end
        end else if (write_edge) begin
            sdo_reg <= data[bit_ct];
            sdo_en  <= 1'b1;
        end

        if (rst) begin
            bit_ct <= 3'd0;
            data   <= 8'h00;
        end
    end

endmodule
