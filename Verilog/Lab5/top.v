module t_flipflop(
    input wire T,
    input wire clk,
    input wire clear_n,
    output reg Q
);
    always @(posedge clk or negedge clear_n) begin
        if (!clear_n)
            Q <= 1'b0;
        else if (T)
            Q <= ~Q;
    end
endmodule

module counter_4bit(
    input wire clk,
    input wire enable,
    input wire clear_n,
    output wire [3:0] Q
);
    wire t0, t1, t2, t3;
    
    assign t0 = enable;
    assign t1 = enable & Q[0];
    assign t2 = enable & Q[0] & Q[1];
    assign t3 = enable & Q[0] & Q[1] & Q[2];
    
    t_flipflop ff0(.T(t0), .clk(clk), .clear_n(clear_n), .Q(Q[0]));
    t_flipflop ff1(.T(t1), .clk(clk), .clear_n(clear_n), .Q(Q[1]));
    t_flipflop ff2(.T(t2), .clk(clk), .clear_n(clear_n), .Q(Q[2]));
    t_flipflop ff3(.T(t3), .clk(clk), .clear_n(clear_n), .Q(Q[3]));
endmodule

module hex_decoder(
    input wire [3:0] hex,
    output reg [6:0] display
);
    always @(*) begin
        case(hex)
            4'h0: display = 7'b1000000;
            4'h1: display = 7'b1111001;
            4'h2: display = 7'b0100100;
            4'h3: display = 7'b0110000;
            4'h4: display = 7'b0011001;
            4'h5: display = 7'b0010010;
            4'h6: display = 7'b0000010;
            4'h7: display = 7'b1111000;
            4'h8: display = 7'b0000000;
            4'h9: display = 7'b0010000;
            4'hA: display = 7'b0001000;
            4'hB: display = 7'b0000011;
            4'hC: display = 7'b1000110;
            4'hD: display = 7'b0100001;
            4'hE: display = 7'b0000110;
            4'hF: display = 7'b0001110;
            default: display = 7'b1111111;
        endcase
    end
endmodule

module top(
    input wire [1:0] SW,
    input wire [0:0] KEY,
    output wire [6:0] HEX0,
    output wire [6:0] HEX1
);
    wire [3:0] count_value;
    
    counter_4bit counter(
        .clk(KEY[0]),
        .enable(SW[1]),
        .clear_n(SW[0]),
        .Q(count_value)
    );
    
    hex_decoder hex0_decoder(
        .hex(count_value),
        .display(HEX0)
    );
    
    hex_decoder hex1_decoder(
        .hex(4'b0000),
        .display(HEX1)
    );
endmodule