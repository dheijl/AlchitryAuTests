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
    reg [7:0] rx_log [0:2047];
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

    task check(input [7:0] got, input [7:0] want, input [8*16-1:0] what);
        if (got !== want) begin
            $display("ERROR %0s: got %02h expected %02h @%0t", what, got, want, $time);
            errors = errors + 1;
        end
    endtask

    // full transfer of n bytes; MOSI = base+i, MISO checked against exp[]
    reg [7:0] exp [0:511];
    task transfer(input integer n, input [7:0] base);
        integer i; reg [7:0] b; integer rx0;
        begin
            rx0 = rx_n;
            m_cs = 0; #7.3;                 // CS lead time
            for (i = 0; i < n; i = i + 1) begin
                xfer_byte(base + i[7:0], b, 8);
                check(b, exp[i], "MISO");
            end
            #3 m_cs = 1;
            #200;
            if (rx_n - rx0 != n) begin
                $display("ERROR: %0d bytes received, expected %0d", rx_n - rx0, n);
                errors = errors + 1;
            end
            for (i = 0; i < n; i = i + 1) check(rx_log[rx0 + i], base + i[7:0], "MOSI");
        end
    endtask

    // queue nq bytes (txb, txb+1, ...), then an n-byte transfer (MOSI = rxb+i)
    // that expects them on MISO, followed by 0xFF filler
    task run(input integer nq, input integer n, input [7:0] txb, input [7:0] rxb);
        integer j;
        begin
            for (j = 0; j < nq; j = j + 1) push(txb + j[7:0]);
            #200;
            for (j = 0; j < n; j = j + 1) exp[j] = (j < nq) ? txb + j[7:0] : 8'hff;
            transfer(n, rxb);
        end
    endtask

    // the same tests at an SCK rate that drifts against the 100 MHz clock
    task rate_test(input real mhz);
        begin
            half = 500.0 / mhz;
            run(20, 23, 8'h01, 8'h81);
            run(5, 5, 8'h40, 8'hc0);        // odd: changes the buffer order
            run(9, 12, 8'h60, 8'he0);
        end
    endtask

    integer k, nfull; reg [7:0] junk; realtime t0;
    initial begin
        #103 rst = 0;
        #100;

        // 1: 16 bytes queued, 7-byte transfer (odd, buffer parity carries over)
        for (k = 0; k < 16; k = k + 1) push(8'h10 + k[7:0]);
        #200;
        for (k = 0; k < 7; k = k + 1) exp[k] = 8'h10 + k[7:0];
        transfer(7, 8'ha0);

        // 2: 12-byte transfer, FIFO runs dry after 9 -> 0xFF filler
        for (k = 0; k < 12; k = k + 1) exp[k] = (k < 9) ? 8'h17 + k[7:0] : 8'hff;
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

        // 6: SCK rates that drift in phase against the 100 MHz clock
        rate_test(99.0);
        rate_test(73.0);
        rate_test(37.0);
        rate_test(10.0);
        half = 5.0;

        // 7: fill to full: 255 in the FIFO + the 2 transmit buffers. A byte
        //    written while full is dropped. Then send everything + 1 filler.
        nfull = 0;
        while (!din_full && nfull < 300) begin
            push(8'h01 + nfull[7:0]);
            #1 nfull = nfull + 1;            // let full update
        end
        if (nfull != 257) begin
            $display("ERROR: full after %0d bytes, expected 257", nfull);
            errors = errors + 1;
        end
        push(8'h00);                        // dropped
        #200;
        for (k = 0; k <= nfull; k = k + 1) exp[k] = (k < nfull) ? 8'h01 + k[7:0] : 8'hff;
        transfer(nfull + 1, 8'h00);
        if (din_full) begin
            $display("ERROR: still full after emptying");
            errors = errors + 1;
        end

        // 8: bytes written during a transfer. 4 queued; 4 more pushed during
        //    byte 0 are sent as bytes 4..7. The FIFO runs dry at the end of
        //    byte 6, so bytes 8..11 are filler, even though 2 more bytes are
        //    pushed during byte 9. Those go out in the next transfer.
        push(8'h80); push(8'h81); push(8'h82); push(8'h83);
        #200;
        for (k = 0; k < 12; k = k + 1) exp[k] = (k < 8) ? 8'h80 + k[7:0] : 8'hff;
        t0 = $realtime;
        fork
            transfer(12, 8'h90);
            begin
                #(7.3 + 4 * half);
                push(8'h84); push(8'h85); push(8'h86); push(8'h87);
                #(t0 + 7.3 + 16 * half * 9 + 4 * half - $realtime);
                push(8'h88); push(8'h89);
            end
        join
        exp[0] = 8'h88; exp[1] = 8'h89; exp[2] = 8'hff;
        transfer(3, 8'ha0);

        // 9: reset while an odd number of bytes has been received, so the
        //    SPI side is sending from buffer 1 (rx_toggle isn't reset)
        if (rx_n % 2 == 0) run(1, 1, 8'h5a, 8'ha5);
        if (rx_n % 2 != 1) begin
            $display("ERROR: test 9 needs an odd byte count, have %0d", rx_n);
            errors = errors + 1;
        end
        k = rx_n;
        rst = 1; #50 rst = 0; #50;
        if (rx_n != k) begin                // wrong order -> phantom byte
            $display("ERROR: %0d bytes received during reset", rx_n - k);
            errors = errors + 1;
        end
        run(3, 4, 8'hb0, 8'hb8);

        // 10: reset in the middle of a transfer (data of that transfer is
        //     not checked), then a normal transfer
        push(8'hc0); push(8'hc1); push(8'hc2); push(8'hc3);
        #200;
        fork
            begin
                m_cs = 0; #7.3;
                for (k = 0; k < 4; k = k + 1) xfer_byte(8'h11, junk, 8);
                #3 m_cs = 1;
            end
            begin
                #(7.3 + 16 * half * 1.5) rst = 1;
                #50 rst = 0;
            end
        join
        #200;
        run(2, 3, 8'hd0, 8'hd8);            // FIFO was cleared: no 0xc2/0xc3

        $display("done: %0d bytes received, %0d errors", rx_n, errors);
        $finish;
    end
endmodule
