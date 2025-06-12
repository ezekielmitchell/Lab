module top(
    // Inputs
    input wire [7:0] A,
    input wire       Clock,
    input wire       Reset_n,

    // Outputs
    output reg [7:0] S,
    output reg       Overflow
);

    // Internal wire for the 9-bit result of the addition
    wire [8:0] temp_sum;

    // The combinational logic for the adder
    // {Overflow, S} is a 9-bit value.
    assign temp_sum = S + A;

    // The sequential logic for the registers
    // This always block is triggered on the positive edge of the clock
    // or the negative edge of the reset signal.
    always @(posedge Clock or negedge Reset_n)
    begin
        if (!Reset_n) // Active-low asynchronous reset
        begin
            S <= 8'b0;
            Overflow <= 1'b0;
        end
        else // On the rising edge of the clock
        begin
            S <= temp_sum[7:0];
            Overflow <= temp_sum[8]; // Capture the carry-out bit
        end
    end

endmodule
