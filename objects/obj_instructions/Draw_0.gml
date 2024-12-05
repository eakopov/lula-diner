// Set the text color and alignment
draw_set_color(c_white);
draw_set_font(fnt_pizza_room);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Define the instructional text
var instructions_text1 = "Click on a scientist to select them and seat them at an empty table.";
var instructions_text2 = "Click on a tool prepared by chef and match it to the correct scientist.";
var instructions_text3 = "Hover over the portraits for hints and information about the scientists!";
var instructions_text4 = "Goal: Serve 5 scientists and make $100!";
var instructions_text5 = "Press Pause to pause the game or Quit to move on to the next game!";

// Position the text in the gray area at the top of the screen
var text_x = room_width / 2;
var text_y = 30; // Adjust this value based on how much space you have after resizing the windows
var line_spacing = 20;

// Draw the text on the screen
draw_text(text_x, text_y, instructions_text1);
draw_text(text_x, text_y + line_spacing, instructions_text2);
draw_text(text_x, text_y + (line_spacing * 2), instructions_text3);
draw_text(text_x, text_y + (line_spacing * 3), instructions_text4);
draw_text(text_x, text_y + (line_spacing * 4), instructions_text5);