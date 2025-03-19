-- Generate the image: square ball moving up and down in the center of the screen
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

entity make_image1 is
	port(
		vsync:  in std_logic;
		pixel_row:  in integer range 0 to 480; 
		pixel_column: in integer range 0 to 640;
		switch: in std_logic_vector(0 to 9);
		button: in std_logic;
		red, green, blue: out std_logic_vector(7 downto 0));
end;

architecture image of make_image1 is
	SIGNAL digit_on: 		STD_LOGIC;
	CONSTANT size: 			integer := 20;   
	CONSTANT digit_y_pos: 	 integer := 280; 
	TYPE positions is array (0 to 9) of integer;
	CONSTANT position: positions := (39, 98, 157, 216, 275, 334, 393, 452, 511, 570);
	SIGNAL digit: integer range 0 to 9:= 0;
	TYPE my_rom is array (0 to 20) of std_logic_vector (0 to 20);
	CONSTANT one: my_rom  := ("000000000000000000000",
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
	CONSTANT zero: my_rom :=
("000000000000000000000",
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

	signal digitlook: my_rom;
	SIGNAL combocheck: std_logic;
	CONSTANT correct: std_logic_vector(0 to 9):= "1000000001";

BEGIN 
	digit <= 1 when ((pixel_column >= position(1)) AND (pixel_column <= position(1) + size)) else
				2  when ((pixel_column >= position(2)) AND (pixel_column <= position(2) + size)) else
				3  when ((pixel_column >= position(3)) AND (pixel_column <= position(3) + size)) else
				4  when ((pixel_column >= position(4)) AND (pixel_column <= position(4) + size)) else
				5  when ((pixel_column >= position(5)) AND (pixel_column <= position(5) + size)) else
				6  when ((pixel_column >= position(6)) AND (pixel_column <= position(6) + size)) else
				7  when ((pixel_column >= position(7)) AND (pixel_column <= position(7) + size)) else
				8  when ((pixel_column >= position(8)) AND (pixel_column <= position(8) + size)) else
				9  when ((pixel_column >= position(9)) AND (pixel_column <= position(9) + size)) else
				0; -- uses a lot of gates for no reason, but a process somehow does not work with this program 
				
	--size of a digit
	with switch(digit) select
		digitlook <= one when '1',
						zero when OTHERS;
	with switch select
		combocheck <= '1' when correct,
						  '0' when OTHERS;
						  
	
	check_pixel:  PROCESS (pixel_column, pixel_row, digit, digitlook)
   BEGIN	                                
		IF (pixel_column >= position(digit)) AND (pixel_column <= position(digit) + size) AND  
 	   	(pixel_row >= digit_y_pos) AND (pixel_row <= digit_y_pos + size)  
      THEN
			digit_on <= NOT digitlook(pixel_row - digit_y_pos)(pixel_column - position(digit));
 		ELSE
			digit_on <= '0';
		END IF;
	END PROCESS;
	
--------------------------------	
	setcolor:  PROCESS (digit_on, button, combocheck)
	BEGIN
		CASE digit_on IS
			WHEN '1' =>
				red <=  (OTHERS => '0');  
				green <= (OTHERS => '0'); 
				blue  <= (OTHERS => '0'); 
			WHEN OTHERS =>
				red <=  (OTHERS => button OR (NOT combocheck));  -- the background will be green if combo is correct, or red if combo is not
				green <= (OTHERS => button OR combocheck);
				blue  <= (OTHERS => button); -- turns off when button is pressed to allow either green or blue to show
		END CASE;
		
	END PROCESS;
------------------------------------	
END;