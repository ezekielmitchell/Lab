-- Rollan Cabalar | Ezekiel Mitchell
-- ECEGR 2210: Programmable Devices
-- Final Project: FPGA Security System

--- This program utilizes an FPGA to act as a combinational security systems
--- which can be implemented in residential and commercial zones for private access
--- through requiring a specific switch combination to allow access.


library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

-- This program creates an interactive display showing digits and changing background colors
entity make_image1 is
    port(
        vsync: in std_logic;                            -- Vertical sync signal from display
        pixel_row: in integer range 0 to 480;           -- Current pixel row position
        pixel_column: in integer range 0 to 640;        -- Current pixel column position
        switch: in std_logic_vector(0 to 9);            -- Input switches to control what's shown
        button: in std_logic;                           -- Button for additional control
        red, green, blue: out std_logic_vector(7 downto 0)); -- Color output signals
end;

architecture image of make_image1 is
    SIGNAL digit_on: STD_LOGIC;                         -- Indicates when we're drawing a digit
    CONSTANT size: integer := 20;                       -- Size of the digits (20x20 pixels)
    CONSTANT digit_y_pos: integer := 280;               -- Vertical position of digits
    TYPE positions is array (0 to 9) of integer;        -- Array type to store horizontal positions
    CONSTANT position: positions := (39, 98, 157, 216, 275, 334, 393, 452, 511, 570); -- Positions for digits 0-9
    SIGNAL digit: integer range 0 to 9 := 0;            -- Current digit being processed
    
    -- Below defines what the digits look like (pixel patterns)
    TYPE my_rom is array (0 to 20) of std_logic_vector (0 to 20);
    -- Pixel pattern for digit "1"
    CONSTANT one: my_rom := ("000000000000000000000",
                             "000000000000000000000",
                             "000000000000000000000",
                             "000000001111100000000",
                             "000000011111100000000",
                             "000000111111100000000",
                             "000001111111100000000",
                             "000011111111100000000",
                             "000000011111100000000",
                             "000000011111100000000",
                             "000000011111100000000",
                             "000000011111100000000",
                             "000000011111100000000",
                             "000000011111100000000",
                             "000000011111100000000",
                             "000011111111111110000",
                             "000011111111111110000",
                             "000011111111111110000",
                             "000000000000000000000",
                             "000000000000000000000",
                             "000000000000000000000");
    -- Pixel pattern for digit "0"
    CONSTANT zero: my_rom := ("000000000000000000000",
                             "000000000000000000000",
                             "000000000000000000000",
                             "000000001111100000000",
                             "000001111111111100000",
                             "000011111111111110000",
                             "000111111101111111000",
                             "000111111000111111000",
                             "000111110000011111000",
                             "000111110000011111000",
                             "000111110000011111000",
                             "000111110000011111000",
                             "000111111000111111000",
                             "000111111000111111000",
                             "000111111101111111000",
                             "000011111111111110000",
                             "000001111111111100000",
                             "000000001111100000000",
                             "000000000000000000000",
                             "000000000000000000000",
                             "000000000000000000000");
    signal digitlook: my_rom;                          -- The actual pixel pattern being used
    SIGNAL combocheck: std_logic;                      -- Checks if the switch combination is correct
    CONSTANT correct: std_logic_vector(0 to 9) := "1000000001"; -- The correct combination pattern
BEGIN
    -- Determine which digit we're currently drawing based on pixel column position
    digit <= 1 when ((pixel_column >= position(1)) AND (pixel_column <= position(1) + size)) else
             2 when ((pixel_column >= position(2)) AND (pixel_column <= position(2) + size)) else
             3 when ((pixel_column >= position(3)) AND (pixel_column <= position(3) + size)) else
             4 when ((pixel_column >= position(4)) AND (pixel_column <= position(4) + size)) else
             5 when ((pixel_column >= position(5)) AND (pixel_column <= position(5) + size)) else
             6 when ((pixel_column >= position(6)) AND (pixel_column <= position(6) + size)) else
             7 when ((pixel_column >= position(7)) AND (pixel_column <= position(7) + size)) else
             8 when ((pixel_column >= position(8)) AND (pixel_column <= position(8) + size)) else
             9 when ((pixel_column >= position(9)) AND (pixel_column <= position(9) + size)) else
             0;

    -- Choose which digit pattern to show (1 or 0) based on switch position
    with switch(digit) select
        digitlook <= one when '1',
                     zero when OTHERS;
    
    -- Check if switches match the correct combination
    with switch select
        combocheck <= '1' when correct,
                      '0' when OTHERS;

    -- Process that determines if the current pixel is part of a digit
    check_pixel: PROCESS (pixel_column, pixel_row, digit, digitlook)
    BEGIN
        -- Check if current pixel is within a digit area
        IF (pixel_column >= position(digit)) AND (pixel_column <= position(digit) + size) AND
           (pixel_row >= digit_y_pos) AND (pixel_row <= digit_y_pos + size)
        THEN
            -- Look up if this pixel should be on or off based on the digit pattern
            digit_on <= NOT digitlook(pixel_row - digit_y_pos)(pixel_column - position(digit));
        ELSE
            -- Not in a digit area, so this pixel is background
            digit_on <= '0';
        END IF;
    END PROCESS;

    -- Process that sets the pixel color based on whether it's a digit or background
    setcolor: PROCESS (digit_on, button, combocheck)
    BEGIN
        CASE digit_on IS
            WHEN '1' =>
                -- Digit pixels are black
                red <= (OTHERS => '0');
                green <= (OTHERS => '0');
                blue <= (OTHERS => '0');
            WHEN OTHERS =>
                -- Background color changes:
                -- Red if combination is wrong
                red <= (OTHERS => button OR (NOT combocheck));
                -- Green if combination is correct
                green <= (OTHERS => button OR combocheck);
                -- Blue is only on when button is not pressed
                blue <= (OTHERS => button);
        END CASE;
    END PROCESS;
END;