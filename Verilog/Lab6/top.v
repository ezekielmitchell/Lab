module top (
    input             CLOCK_50,
    input      [3:0]  KEY,
    input      [9:0]  SW,
    output     [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

    reg [25:0] clock_divider;
    reg [5:0]  seconds, minutes;
    reg [4:0]  hours;
    wire       one_hz_enable;

    assign one_hz_enable = (clock_divider == 26'd49999999);

    always @(posedge CLOCK_50 or negedge KEY[0])
    begin
        if (!KEY[0]) 
        begin
            clock_divider <= 0;
            seconds       <= 0;
            minutes       <= 37;
            hours         <= 1;
        end 
        else 
        begin
            clock_divider <= clock_divider + 1;
            if (one_hz_enable)
            begin
                clock_divider <= 0;
                
                if (KEY[3])
                begin
                    seconds <= 0;
                    if (SW[9:4] < 60)
                        minutes <= SW[9:4];
                    if (SW[3:0] < 24)
                        hours <= SW[3:0];
                end
                else
                begin
                    if (seconds == 59) 
                    begin
                        seconds <= 0;
                        if (minutes == 59) 
                        begin
                            minutes <= 0;
                            if (hours == 23) 
                            begin
                                hours <= 0;
                            end 
                            else 
                            begin
                                hours <= hours + 1;
                            end
                        end 
                        else 
                        begin
                            minutes <= minutes + 1;
                        end
                    end 
                    else 
                    begin
                        seconds <= seconds + 1;
                    end
                end
            end
        end
    end

    bin_to_7seg sec_lsb_disp (seconds % 10, HEX0);
    bin_to_7seg sec_msb_disp (seconds / 10, HEX1);
    bin_to_7seg min_lsb_disp (minutes % 10, HEX2);
    bin_to_7seg min_msb_disp (minutes / 10, HEX3);
    bin_to_7seg hr_lsb_disp  (hours % 10,   HEX4);
    bin_to_7seg hr_msb_disp  (hours / 10,   HEX5);

endmodule