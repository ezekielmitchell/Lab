module top(
    input wire [9:0] SW,
    output wire [9:0] LEDR
);

wire R, S, Clk;
wire Qa, Qb;

// Connect inputs from switches
assign R = SW[0];
assign S = SW[1]; 
assign Clk = SW[3];

// RS Latch implementation using logic expressions (Figure 2b style)
assign Qa = ~(R & Clk & Qb);
assign Qb = ~(S & Clk & Qa);

// Connect outputs to LEDs
assign LEDR[0] = Qa;
assign LEDR[1] = Qb;

endmodule