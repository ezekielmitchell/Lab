module top(
    input wire [9:0] SW,
    input wire [3:0] KEY,
    output reg [9:0] LEDR
);

    reg [7:0] S;
    wire [8:0] sum_result;
    
    assign sum_result = SW[7:0] + S;
    
    always @(posedge KEY[1] or negedge KEY[0]) begin
        if (~KEY[0]) begin
            S <= 8'b0;
        end else begin
            S <= sum_result[7:0];
        end
    end
    
    always @(*) begin
        LEDR[7:0] = sum_result[7:0];
        LEDR[8] = sum_result[8];
        LEDR[9] = 1'b0;
    end

endmodule
