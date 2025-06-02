module top(
    input wire [9:0] SW,
    output reg [9:0] LEDR
);

wire D, Clk;

// Connect inputs from switches
assign D = SW[0];
assign Clk = SW[1];

// Gated D Latch - behavioral style similar to Figure 5
always @* begin
    if (Clk)
        LEDR[0] = D;
end

// Positive-edge triggered D flip-flop
always @(posedge Clk) begin
    LEDR[1] <= D;
end

// Negative-edge triggered D flip-flop  
always @(negedge Clk) begin
    LEDR[2] <= D;
end

endmodule