// Synchronous FIFO (Alchitry library component, MIT license).
// Holds ENTRIES-1 words. dout shows the oldest word whenever empty is 0;
// assert rget to pop it, wput to push din.

`default_nettype none

module fifo #(
    parameter int WIDTH   = 8,
    parameter int ENTRIES = 8       // must be a power of 2
) (
    input  wire              clk,
    input  wire              rst,
    input  wire  [WIDTH-1:0] din,
    input  wire              wput,
    output logic             full,
    output logic [WIDTH-1:0] dout,
    input  wire              rget,
    output logic             empty
);

    localparam int ADDR_SIZE = $clog2(ENTRIES);

    logic [ADDR_SIZE-1:0] waddr       = '0;
    logic [ADDR_SIZE-1:0] waddr_delay = '0;  // write is visible one cycle later (RAM latency)
    logic [ADDR_SIZE-1:0] raddr       = '0;

    logic write, read;
    assign write = wput && !full;
    assign read  = rget && !empty;

    assign full  = (waddr + 1'b1) == raddr;
    assign empty = raddr == waddr_delay;

    // Read ahead: on a pop, address the next entry right away so that
    // dout is valid again on the next cycle.
    simple_dual_port_ram #(.WIDTH(WIDTH), .ENTRIES(ENTRIES)) ram (
        .wclk(clk), .waddr(waddr), .write_data(din), .write_enable(write),
        .rclk(clk), .raddr(read ? raddr + 1'b1 : raddr), .read_data(dout)
    );

    always_ff @(posedge clk) begin
        if (rst) begin
            waddr       <= '0;
            waddr_delay <= '0;
            raddr       <= '0;
        end else begin
            waddr_delay <= waddr;
            if (write) waddr <= waddr + 1'b1;
            if (read)  raddr <= raddr + 1'b1;
        end
    end

endmodule

`default_nettype wire
