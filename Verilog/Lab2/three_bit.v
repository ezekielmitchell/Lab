module three_bit(
    input wire [9:0] SW,
    output reg [9:0] LEDR
);

// 3-bit wide 5-to-1 multiplexer
// sw9-7 as 3-bit select input
// create five 3-bit inputs from available switches

wire [2:0] select = SW[9:7];
wire [2:0] u = SW[2:0];    // input u
wire [2:0] v = SW[5:3];    // input v  
wire [2:0] w = {SW[6], SW[1:0]}; // input w
wire [2:0] x = {SW[6], SW[4:3]}; // input x
wire [2:0] y = SW[6:4];    // input y

always @(*) begin
    LEDR[9:7] = select; // show select value
    LEDR[6:3] = SW[6:3]; // show upper input bits
    
    case(select)
        3'b000: LEDR[2:0] = u;
        3'b001: LEDR[2:0] = v;
        3'b010: LEDR[2:0] = w;
        3'b011: LEDR[2:0] = x;
        3'b100: LEDR[2:0] = y;
        default: LEDR[2:0] = 3'b000;
    endcase
end

endmodule