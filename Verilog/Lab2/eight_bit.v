module eight_bit(
    input wire [9:0] SW,
    output wire [9:0] LEDR
);

// 8-bit wide 2-to-1 multiplexer
// sw9 as select, sw7-0 as x input, create y input from upper bits
// when sw9=0, output x (sw7-0) to ledr7-0
// when sw9=1, output y (shifted pattern) to ledr7-0

wire [7:0] x_input = SW[7:0];
wire [7:0] y_input = {SW[7:4], SW[3:0]}; // create second input pattern
wire select = SW[9];

assign LEDR[7:0] = select ? y_input : x_input;
assign LEDR[8] = select; // show select state
assign LEDR[9] = 1'b0;

endmodule