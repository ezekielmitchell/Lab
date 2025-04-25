//** Ezekiel A. Mitchell **//
// ECEGR 2220_01
// Lab 02

module multiplexer(
	// Inputs
	input [7:0] x,
	input [7:0] y,
	input s,
	
	// Outputs
	output [7:0] m
);

assign m = (~s&x) | (s&y);

endmodule