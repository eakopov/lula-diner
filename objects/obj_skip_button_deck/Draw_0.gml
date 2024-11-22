// Draw button background
draw_rectangle_color(button_x, button_y, button_x + button_width, button_y + button_height, c_red, c_red, c_red, c_red, 1);

// Draw button text
draw_set_color(c_white);
draw_text(button_x + 20, button_y + 10, "Skip");
