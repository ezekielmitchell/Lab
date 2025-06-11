module counter (
    input             clock,
    input             reset_n,
    output reg [n-1:0] Q
);

    parameter n = 8;
    parameter k = 10;

    always @(posedge clock or negedge reset_n)
    begin
        if (~reset_n)
            Q <= 'd0;
        else
        begin
            if (Q == k - 1)
                Q <= 'd0;
            else
                Q <= Q + 1;
        end
    end

endmodule