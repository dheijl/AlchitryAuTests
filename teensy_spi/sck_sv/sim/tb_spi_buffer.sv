// Testbench for spi_buffer (+ spi_peripheral, fifo, RAM): an SPI mode 1
// controller with 2 ns wire delays each way. Ends with
//   done: <n> bytes received, <e> errors

`default_nettype none

module tb;
    timeunit 1ns;
    timeprecision 1ps;

    typedef logic [7:0] u8;                 // u8'(i): loop index as an unsigned byte

    logic clk = 1'b0;
    always #5 clk = ~clk;                   // 100 MHz system clock

    logic rst = 1'b1;

    // controller side signals and wire delays (2 ns each way)
    logic m_sck = 1'b0, m_cs = 1'b1, m_mosi = 1'b0;
    logic sck, cs, sdi;
    wire  sdo, m_miso;                      // nets: z while CS is high
    assign #2 sck    = m_sck;
    assign #2 cs     = m_cs;
    assign #2 sdi    = m_mosi;
    assign #2 m_miso = sdo;

    logic [7:0] din     = '0;
    logic       din_new = 1'b0;
    logic       din_full;
    logic [7:0] dout;
    logic       drdy;
    logic       idle, rx_pending;

    spi_buffer dut (
        .clk(clk), .rst(rst), .sck(sck), .sdi(sdi), .cs(cs),
        .data_in(din), .data_in_newdata(din_new), .data_in_full(din_full),
        .sdo(sdo), .data_out(dout), .data_rdy(drdy),
        .idle(idle), .rx_pending(rx_pending)
    );

    // collect received bytes on the system side
    logic [7:0] rx_log [2048];
    int         rx_n = 0;
    always @(posedge clk) if (drdy) begin rx_log[rx_n] = dout; rx_n++; end

    int  errors = 0;
    real half   = 5.0;                      // 100 MHz SCK

    // ---------------------------------------------- checked on every clock
    // SDO must be released (tri-stated) whenever CS is high
    a_sdo_z: assert property (@(posedge clk) cs |-> sdo === 1'bz)
        else begin $error("sdo = %b while CS is high", sdo); errors++; end

    // a received byte is reported with a single-cycle pulse
    a_drdy_pulse: assert property (@(posedge clk) disable iff (rst) drdy |=> !drdy)
        else begin $error("data_rdy high for more than one cycle"); errors++; end

    // alchitry_top leaves BUSY when idle (registered once more) is high and
    // nothing is pending. A byte must never become pending after that, or
    // its data_rdy is not echoed: idle may not lead rx_pending by 2 cycles.
    a_rx_before_idle: assert property (@(posedge clk) disable iff (rst)
                                       rx_pending |-> !$past(idle, 2))
        else begin $error("byte completed after CS was seen high"); errors++; end

    // ------------------------------------------------------------- tasks
    function automatic void fail(string msg);
        $error("%s", msg);
        errors++;
    endfunction

    task automatic push(input logic [7:0] b);
        @(posedge clk) begin din <= b; din_new <= 1'b1; end
        @(posedge clk) din_new <= 1'b0;
    endtask

    // one byte, mode 1: drive on rising, sample on falling
    task automatic xfer_byte(input logic [7:0] out, output logic [7:0] in, input int nbits);
        for (int i = 7; i >= 8 - nbits; i--) begin
            m_sck = 1'b1; m_mosi = out[i];
            #(half);
            m_sck = 1'b0; in[i] = m_miso;
            #(half);
        end
    endtask

    task automatic check(input logic [7:0] got, input logic [7:0] want, input string what);
        assert (got === want)
            else fail($sformatf("%s: got %02h expected %02h", what, got, want));
    endtask

    task automatic check_count(input int got, input int want);
        assert (got == want)
            else fail($sformatf("%0d bytes received, expected %0d", got, want));
    endtask

    // full transfer of n bytes; MOSI = base+i, MISO checked against exp[]
    logic [7:0] exp [512];
    task automatic transfer(input int n, input logic [7:0] base);
        logic [7:0] b;
        int rx0 = rx_n;
        m_cs = 1'b0; #7.3;                  // CS lead time
        for (int i = 0; i < n; i++) begin
            xfer_byte(base + u8'(i), b, 8);
            check(b, exp[i], "MISO");
        end
        #3 m_cs = 1'b1;
        #200;
        check_count(rx_n - rx0, n);
        for (int i = 0; i < n; i++) check(rx_log[rx0 + i], base + u8'(i), "MOSI");
    endtask

    // transfer with CS edges close to SCK edges. CS falls `lead` ns before
    // the first rising edge. lag >= 0: CS rises `lag` ns after the last
    // falling edge. lag < 0: CS rises -lag ns before the last falling edge,
    // so the last byte is incomplete and must not be received.
    task automatic transfer_edges(input int n, input logic [7:0] base, input real lead, input real lag);
        logic [7:0] o, b;
        real d;                             // xsim rejects #(-lag)
        int rx0  = rx_n;
        int nexp = (lag < 0) ? n - 1 : n;
        m_cs = 1'b0; #(lead);
        for (int i = 0; i < n; i++) begin
            o = base + u8'(i);
            for (int j = 7; j >= 0; j--) begin
                m_sck = 1'b1; m_mosi = o[j];
                if (i == n - 1 && j == 0 && lag < 0) begin
                    d = half + lag; #(d) m_cs = 1'b1;
                    d = 0.0 - lag;  #(d) m_sck = 1'b0;
                end else begin
                    #(half);
                    m_sck = 1'b0; b[j] = m_miso;
                    if (i == n - 1 && j == 0) #(lag);
                    else #(half);
                end
            end
            if (i < nexp) check(b, exp[i], "MISO");
        end
        m_cs = 1'b1;
        #200;
        check_count(rx_n - rx0, nexp);
        for (int i = 0; i < nexp; i++) check(rx_log[rx0 + i], base + u8'(i), "MOSI");
    endtask

    // queue nq bytes (txb, txb+1, ...), then an n-byte transfer (MOSI = rxb+i)
    // that expects them on MISO, followed by 0xFF filler
    task automatic run(input int nq, input int n, input logic [7:0] txb, input logic [7:0] rxb);
        for (int j = 0; j < nq; j++) push(txb + u8'(j));
        #200;
        for (int j = 0; j < n; j++) exp[j] = (j < nq) ? txb + u8'(j) : 8'hff;
        transfer(n, rxb);
    endtask

    // the same tests at an SCK rate that drifts against the 100 MHz clock
    task automatic rate_test(input real mhz);
        half = 500.0 / mhz;
        run(20, 23, 8'h01, 8'h81);
        run(5, 5, 8'h40, 8'hc0);            // odd: changes the buffer order
        run(9, 12, 8'h60, 8'he0);
    endtask

    // ------------------------------------------------------------- tests
    int         nfull, nrx;
    logic [7:0] junk;
    realtime    t0;

    initial begin
        #103 rst = 1'b0;
        #100;

        // 1: 16 bytes queued, 7-byte transfer (odd, buffer parity carries over)
        for (int k = 0; k < 16; k++) push(8'h10 + u8'(k));
        #200;
        for (int k = 0; k < 7; k++) exp[k] = 8'h10 + u8'(k);
        transfer(7, 8'ha0);

        // 2: 12-byte transfer, FIFO runs dry after 9 -> 0xFF filler
        for (int k = 0; k < 12; k++) exp[k] = (k < 9) ? 8'h17 + u8'(k) : 8'hff;
        transfer(12, 8'hc0);

        // 3: new data, then a transfer that stops in the middle of byte 3
        push(8'h30); push(8'h31); push(8'h32); push(8'h33);
        #200;
        m_cs = 1'b0; #7.3;
        xfer_byte(8'h55, junk, 8); check(junk, 8'h30, "MISO");
        xfer_byte(8'h56, junk, 8); check(junk, 8'h31, "MISO");
        xfer_byte(8'h57, junk, 4);           // aborted byte: 0x32 not consumed
        #3 m_cs = 1'b1; #200;

        // 4: the aborted byte is sent again
        exp[0] = 8'h32; exp[1] = 8'h33; exp[2] = 8'hff;
        transfer(3, 8'he0);

        // 5: reset in between, queue more, transfer again
        rst = 1'b1; #50 rst = 1'b0; #50;
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
            push(8'h01 + u8'(nfull));
            #1 nfull++;                     // let full update
        end
        assert (nfull == 257) else fail($sformatf("full after %0d bytes, expected 257", nfull));
        push(8'h00);                        // dropped
        #200;
        for (int k = 0; k <= nfull; k++) exp[k] = (k < nfull) ? 8'h01 + u8'(k) : 8'hff;
        transfer(nfull + 1, 8'h00);
        assert (!din_full) else fail("still full after emptying");

        // 8: bytes written during a transfer. 4 queued; 4 more pushed during
        //    byte 0 are sent as bytes 4..7. The FIFO runs dry at the end of
        //    byte 6, so bytes 8..11 are filler, even though 2 more bytes are
        //    pushed during byte 9. Those go out in the next transfer.
        push(8'h80); push(8'h81); push(8'h82); push(8'h83);
        #200;
        for (int k = 0; k < 12; k++) exp[k] = (k < 8) ? 8'h80 + u8'(k) : 8'hff;
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
        assert (rx_n % 2 == 1) else fail($sformatf("test 9 needs an odd byte count, have %0d", rx_n));
        nrx = rx_n;
        rst = 1'b1; #50 rst = 1'b0; #50;
        assert (rx_n == nrx)                // wrong order -> phantom byte
            else fail($sformatf("%0d bytes received during reset", rx_n - nrx));
        run(3, 4, 8'hb0, 8'hb8);

        // 10: reset in the middle of a transfer (data of that transfer is
        //     not checked), then a normal transfer
        push(8'hc0); push(8'hc1); push(8'hc2); push(8'hc3);
        #200;
        fork
            begin
                m_cs = 1'b0; #7.3;
                for (int k = 0; k < 4; k++) xfer_byte(8'h11, junk, 8);
                #3 m_cs = 1'b1;
            end
            begin
                #(7.3 + 16 * half * 1.5) rst = 1'b1;
                #50 rst = 1'b0;
            end
        join
        #200;
        run(2, 3, 8'hd0, 8'hd8);            // FIFO was cleared: no 0xc2/0xc3

        // 11a: CS falls 0.5 ns before the first rising SCK edge and rises
        //      0.5 ns after the last falling edge: all 4 bytes count
        for (int k = 0; k < 4; k++) begin push(8'he0 + u8'(k)); exp[k] = 8'he0 + u8'(k); end
        #200;
        transfer_edges(4, 8'h20, 0.5, 0.5);

        // 11b: CS rises 0.5 ns before the last falling edge: byte 3 is
        //      incomplete, so it isn't received and 0xf3 is sent again
        for (int k = 0; k < 4; k++) begin push(8'hf0 + u8'(k)); exp[k] = 8'hf0 + u8'(k); end
        #200;
        transfer_edges(4, 8'h30, 0.5, -0.5);
        exp[0] = 8'hf3; exp[1] = 8'hff;
        transfer(2, 8'h40);

        // 11c: SCK toggling while CS is high (another device on the bus) is
        //      ignored: nothing received, nothing sent (SDO is checked by
        //      a_sdo_z on every clock)
        push(8'h50); push(8'h51);
        #200;
        nrx = rx_n;
        for (int k = 0; k < 12; k++) begin
            m_sck = 1'b1; m_mosi = k[0]; #(half);
            m_sck = 1'b0; #(half);
        end
        #200;
        assert (rx_n == nrx)
            else fail($sformatf("%0d bytes received while CS was high", rx_n - nrx));
        exp[0] = 8'h50; exp[1] = 8'h51; exp[2] = 8'hff;
        transfer(3, 8'h60);

        $display("done: %0d bytes received, %0d errors", rx_n, errors);
        $finish;
    end
endmodule

`default_nettype wire
