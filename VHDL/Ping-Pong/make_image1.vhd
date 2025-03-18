-- Generate the image: square ball moving up and down in the center of the screen
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

entity make_image1 is
port(
vsync:  in std_logic;
pixel_row:  in integer range 0 to 480; 
pixel_column: in integer range 0 to 640;
button1: in std_logic;
button2: in std_logic;
red, green, blue: out std_logic_vector(7 downto 0));
end;

architecture image of make_image1 is
SIGNAL ball_on: STD_LOGIC;
SIGNAL size : integer range 0 to 20;   
SIGNAL ball_y_motion: integer range -10 to 10; 
SIGNAL ball_y_pos: integer range 0 to 480:= 50; 
SIGNAL ball_x_pos:    integer range 0 to 640:= 50; 
CONSTANT bottom_of_screen: integer := 480;
CONSTANT top_of_screen: integer := 1;
SIGNAL ball_x_motion: integer range -10 to 10;
CONSTANT right_of_screen: integer:= 640;
CONSTANT left_of_screen: integer := 1;
TYPE my_rom is array (0 to 20) of std_logic_vector (0 to 20);
CONSTANT round_shape: my_rom  := (
		"111111111111111111111",
		"111111111111111111111",
		"111111111111111111111",
		"111111100000000000000",
		"111111100000000000000",
		"111111100000000000000",
		"111111100000000000000",
		"111111100000000000000",
		"111111100000000000000",
		"111111111111111111111",
		"111111111111111111111",
		"111111100000000000000",
		"111111100000000000000",
		"111111100000000000000",
		"111111100000000000000",
		"111111100000000000000",
		"111111100000000000000",
		"111111100000000000000",
		"111111111111111111111",
		"111111111111111111111",
		"111111111111111111111");
CONSTANT wdth: integer:= 10;
SIGNAL wall_on: STD_LOGIC:= '0';
SIGNAL ballwallpad: STD_LOGIC_VECTOR (0 to 2);
CONSTANT padw: integer:= 5;
CONSTANT padh: integer:= 10;
CONSTANT padx: integer:= 12;
SIGNAL pady: integer range 12 to 629:= 12;
SIGNAL pad_on: STD_LOGIC;
SIGNAL pad_y_motion: integer range -10 to 10;
SIGNAL button12: STD_LOGIC_VECTOR (0 to 1);
BEGIN 
size <= round_shape'length-1;  --size of ball
-- ball_x_pos <= 320;   -- x position of ball's left top corner 
-- x position of the square goes from (ball_x_pos) to (ball_x_pos + size)
-- y position of the square goes from (ball_y_pos) to (ball_y_pos + size)
------------------------------------
ballwallpad <= ball_on & wall_on & pad_on;
button12 <= button1 & button2;
--check if pixel scanned in located within the square ball
check_pixel:  PROCESS (ball_x_pos, ball_y_pos, pixel_column, pixel_row, size)
   BEGIN                                 
IF (pixel_column >= ball_x_pos) AND (pixel_column <= ball_x_pos + size) AND  
      (pixel_row >= ball_y_pos) AND (pixel_row <= ball_y_pos + size)  
      THEN
ball_on <= round_shape(pixel_row - ball_y_pos)(pixel_column - ball_x_pos); 
  ELSE
ball_on <= '0';
END IF;
END PROCESS;
check_wall: PROCESS (all)
BEGIN
IF (pixel_column <= wdth) OR (pixel_column >= (right_of_screen - wdth)) OR  
      (pixel_row <= wdth) OR (pixel_row >= (bottom_of_screen - wdth))  
      THEN
wall_on <= '1'; 
  ELSE
wall_on <= '0';
END IF;
END PROCESS;
check_pad: PROCESS (all)
BEGIN
IF (pixel_column >= padx) AND (pixel_column <= padx + padw) AND
(pixel_row >= pady) AND (pixel_row <= pady + padh)
THEN
pad_on <= '1';
ELSE
pad_on <= '0';
END IF;
END PROCESS;
-------------------------------- 
setcolor:  PROCESS (ballwallpad)
BEGIN
CASE ballwallpad IS
WHEN "100" =>
red <=  (OTHERS => '1');  -- make the ball red
green <= (OTHERS => '0'); -- turn off green when displaying ball
blue  <= (OTHERS => '0'); -- turn off blue when displaying ball
WHEN "010" =>
red <=  (OTHERS => '0');  -- make the border green
green <= (OTHERS => '1'); -- turn off green when displaying ball
blue  <= (OTHERS => '0'); 
WHEN "001" =>
red <=  (OTHERS => '0');  -- make the pad blue
green <= (OTHERS => '0'); -- turn off green when displaying ball
blue  <= (OTHERS => '1'); 
WHEN OTHERS =>
red <=  (OTHERS => '1');  -- the background will be white (all colors set to 1 makes white)
green <= (OTHERS => '1');
blue  <= (OTHERS => '1'); 
END CASE;
END PROCESS;
------------------------------------ 
--update position of ball once every screen refresh cycle
y_motion: PROCESS 
BEGIN 
WAIT UNTIL (vsync'event AND vsync = '1');           
IF ((ball_y_pos + size) = (bottom_of_screen - wdth)) OR ((ball_y_pos + size = pady) AND (ball_x_pos >= padx) AND (ball_x_pos <= padx + padw))  THEN   --reached bottom of monitor   
ball_y_motion <= - 1;                  -- start moving up by 1 pixel
ELSIF 
(ball_y_pos = (top_of_screen + wdth)) OR ((ball_y_pos = pady + padh) AND (ball_x_pos >= padx) AND (ball_x_pos <= padx + padw)) THEN      -- reached top of monitor          
ball_y_motion <= 1;                         -- start moving down by 1 pixel
END IF; 
ball_y_pos <= ball_y_pos + ball_y_motion; --compute next position in the y-axis 
END PROCESS;
x_motion: PROCESS
BEGIN 
WAIT UNTIL (vsync'event AND vsync = '1');           
IF ((ball_x_pos + size) = (right_of_screen - wdth)) OR ((ball_x_pos + size = padx) AND (ball_y_pos >= pady) AND (ball_y_pos <= pady + padh)) THEN   --reached bottom of monitor   
ball_x_motion <= - 1;                  -- start moving left by 1 pixel
ELSIF 
(ball_x_pos = (left_of_screen + wdth)) OR ((ball_x_pos = padx + padw) AND (ball_y_pos >= pady) AND (ball_y_pos <= pady + padh))THEN      -- reached top of monitor          
ball_x_motion <= 1;                         -- start moving right by 1 pixel
END IF; 
ball_x_pos <= ball_x_pos + ball_x_motion; --compute next position in the x-axis 
END PROCESS;
pad_move: PROCESS 
BEGIN 
WAIT UNTIL (vsync'event AND vsync = '1');           
CASE button12 IS
WHEN "10" =>
IF (pady > top_of_screen + wdth) THEN
pad_y_motion <= -1;
ELSE
pad_y_motion <= 0;
END IF;
WHEN "01" =>
IF (pady + padh < bottom_of_screen - wdth) THEN
pad_y_motion <= 1;
ELSE
pad_y_motion <= 0;
END IF;
WHEN OTHERS =>
pad_y_motion <= 0;
END CASE;
pady <= pady + pad_y_motion; --compute next position in the y-axis 
END PROCESS;
END;
