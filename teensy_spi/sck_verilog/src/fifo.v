// Synchronous FIFO (Alchitry library component, MIT license).
// Holds ENTRIES-1 words. dout shows the oldest word whenever empty is 0;
// assert rget to pop it, wput to push din.

module fifo #(
    parameter WIDTH   = 8,
    parameter ENTRIES = 8           // must be a power of 2
) (
    input  wire             clk,
    input  wire             rst,
    input  wire [WIDTH-1:0] din,
    input  wire             wput,
    output wire             full,
    output wire [WIDTH-1:0] dout,
    input  wire             rget,
    output wire             empty
);

    localparam ADDR_SIZE = $clog2(ENTRIES);

    reg [ADDR_SIZE-1:0] waddr       = 0;
    reg [ADDR_SIZE-1:0] waddr_delay = 0;  // write is visible one cycle later (RAM latency)
    reg [ADDR_SIZE-1:0] raddr       = 0;

    wire write = wput && !full;
    wire read  = rget && !empty;

    assign full  = (waddr + 1'b1) == raddr;
    assign empty = raddr == waddr_delay;

    // Read ahead: on a pop, address the next entry right away so that
    // dout is valid again on the next cycle.
    simple_dual_port_ram #(.WIDTH(WIDTH), .ENTRIES(ENTRIES)) ram (
        .wclk(clk), .waddr(waddr), .write_data(din), .write_enable(write),
        .rclk(clk), .raddr(read ? raddr + 1'b1 : raddr), .read_data(dout)
    );

    always @(posedge clk) begin
        if (rst) begin
            waddr       <= 0;
            waddr_delay <= 0;
            raddr       <= 0;
        end else begin
            waddr_delay <= waddr;
            if (write) waddr <= waddr + 1'b1;
            if (read)  raddr <= raddr + 1'b1;
        end
    end

endmodule
