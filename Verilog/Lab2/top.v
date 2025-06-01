module top(
    input wire [9:0] SW,
    output reg [6:0] HEX0,
    output wire [9:0] LEDR
);

// 7-segment decoder for helo display
// sw2-0 as input code, output to hex0
// segments active low

assign LEDR = SW; // show input switches

always @(*) begin
    case(SW[2:0])
        3'b000: HEX0 = 7'b0001001; // h: segments 1,2,4,5,6 on
        3'b001: HEX0 = 7'b0000110; // e: segments 0,2,3,5,6 on  
        3'b010: HEX0 = 7'b1000111; // l: segments 1,2,5,6 on
        3'b011: HEX0 = 7'b1000000; // o: segments 0,1,2,5,6 on
        default: HEX0 = 7'b1111111; // blank: all segments off
    endcase
end

endmodule