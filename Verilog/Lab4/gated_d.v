module top(
    input wire [9:0] SW,
    output reg [9:0] LEDR
);

wire D, Clk;

// Connect inputs from switches
assign D = SW[0];
assign Clk = SW[1];

// Gated D Latch using behavioral style (similar to Figure 5)
always @* begin
    if (Clk)
        LEDR[0] = D;
    // When Clk is low, LEDR[0] retains its value (inferred latch)
end

endmodule