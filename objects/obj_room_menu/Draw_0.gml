draw_self(); // Draw the menu icon sprite

if (menu_open) {
    for (var i = 0; i < array_length(options); i++) {
        var y_pos = icon_y + icon_size + (i * button_height);

        // Draw background with hover effect
        if (i == hover_index) {
            draw_set_color(c_dkgray); // Hover background
        } else {
            draw_set_color(make_color_rgb(20, 20, 20)); // Default background
        }
        draw_rectangle(icon_x, y_pos, icon_x + button_width, y_pos + button_height, false);

        // Optional drop shadow
        draw_set_color(c_black);
        draw_text(icon_x + 11, y_pos + 11, options[i]); // shadow

        // Main text
        draw_set_color(c_yellow);
        draw_text(icon_x + 10, y_pos + 10, options[i]);
    }
}
