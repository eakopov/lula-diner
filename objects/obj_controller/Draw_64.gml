// Display player money
draw_set_color(c_fuchsia);
//draw_set_font(font_large);
draw_text_transformed(room_width - 140, room_height - 82, "$" + string(player_money), 2, 2, 0);