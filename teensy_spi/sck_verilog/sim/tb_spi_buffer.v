`timescale 1ns/1ps
module tb;
    reg clk = 0;
    always #5 clk = ~clk;                   // 100 MHz system clock

    reg rst = 1;
    // controller side signals and wire delays (2 ns each way)
    reg  m_sck = 0, m_cs = 1, m_mosi = 0;
    wire sck, cs, sdi, sdo, m_miso;
    assign #2 sck = m_sck;
    assign #2 cs  = m_cs;
    assign #2 sdi = m_mosi;
    assign #2 m_miso = sdo;

    reg  [7:0] din = 0;
    reg        din_new = 0;
    wire       din_full;
    wire [7:0] dout;
    wire       drdy;

    spi_buffer dut (
        .clk(clk), .rst(rst), .sck(sck), .sdi(sdi), .cs(cs),
        .data_in(din), .data_in_newdata(din_new), .data_in_full(din_full),
        .sdo(sdo), .data_out(dout), .data_rdy(drdy)
    );

    // collect received bytes on the system side
    reg [7:0] rx_log [0:255];
    integer   rx_n = 0;
    always @(posedge clk) if (drdy) begin rx_log[rx_n] = dout; rx_n = rx_n + 1; end

    integer errors = 0;
    real    half = 5.0;                     // 100 MHz SCK

    task push(input [7:0] b);
        begin
            @(posedge clk) begin din <= b; din_new <= 1; end
            @(posedge clk) din_new <= 0;
        end
    endtask

    // one byte, mode 1: drive on rising, sample on falling
    task xfer_byte(input [7:0] out, output [7:0] in, input integer nbits);
        integer i;
        begin
            for (i = 7; i >= 8 - nbits; i = i - 1) begin
                m_sck = 1; m_mosi = out[i];
                #(half);
                m_sck = 0; in[i] = m_miso;
                #(half);
            end
        end
    endtask

    task check(input [7:0] got, input [7:0] exp, input [8*16-1:0] what);
        if (got !== exp) begin
            $display("ERROR %0s: got %02h expected %02h @%0t", what, got, exp, $time);
            errors = errors + 1;
        end
    endtask

    // full transfer of n bytes; MOSI = base+i, MISO checked against exp[]
    reg [7:0] exp [0:31];
    task transfer(input integer n, input [7:0] base);
        integer i; reg [7:0] b; integer rx0;
        begin
            rx0 = rx_n;
            m_cs = 0; #7.3;                 // CS lead time
            for (i = 0; i < n; i = i + 1) begin
                xfer_byte(base + i, b, 8);
                check(b, exp[i], "MISO");
            end
            #3 m_cs = 1;
            #200;
            if (rx_n - rx0 != n) begin
                $display("ERROR: %0d bytes received, expected %0d", rx_n - rx0, n);
                errors = errors + 1;
            end
            for (i = 0; i < n; i = i + 1) check(rx_log[rx0 + i], base + i, "MOSI");
        end
    endtask

    integer k; reg [7:0] junk;
    initial begin
        #103 rst = 0;
        #100;

        // 1: 16 bytes queued, 7-byte transfer (odd, buffer parity carries over)
        for (k = 0; k < 16; k = k + 1) push(8'h10 + k);
        #200;
        for (k = 0; k < 7; k = k + 1) exp[k] = 8'h10 + k;
        transfer(7, 8'ha0);

        // 2: 12-byte transfer, FIFO runs dry after 9 -> 0xFF filler
        for (k = 0; k < 12; k = k + 1) exp[k] = (k < 9) ? 8'h17 + k : 8'hff;
        transfer(12, 8'hc0);

        // 3: new data, then a transfer that stops in the middle of byte 3
        push(8'h30); push(8'h31); push(8'h32); push(8'h33);
        #200;
        m_cs = 0; #7.3;
        xfer_byte(8'h55, junk, 8); check(junk, 8'h30, "MISO");
        xfer_byte(8'h56, junk, 8); check(junk, 8'h31, "MISO");
        xfer_byte(8'h57, junk, 4);           // aborted byte: 0x32 not consumed
        #3 m_cs = 1; #200;

        // 4: the aborted byte is sent again
        exp[0] = 8'h32; exp[1] = 8'h33; exp[2] = 8'hff;
        transfer(3, 8'he0);

        // 5: reset in between, queue more, transfer again
        rst = 1; #50 rst = 0; #50;
        push(8'h41); push(8'h42);
        #200;
        exp[0] = 8'h41; exp[1] = 8'h42; exp[2] = 8'hff;
        transfer(3, 8'h70);

        $display("done: %0d bytes received, %0d errors", rx_n, errors);
        $finish;
    end
endmodule
