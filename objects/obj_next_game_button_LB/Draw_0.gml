// Draw button background
//draw_rectangle_color(button_x, button_y, button_x + button_width, button_y + button_height, c_blue, c_blue, c_blue, c_blue, 1);

// Draw button text
draw_set_color(c_white);
draw_text(button_x + 10, button_y + 10, "Next Game");

// Debugging
show_debug_message("Next Game Button Drawn!");
