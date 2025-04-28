draw_self(); // Show the dropdown icon

// Constants
var icon_size = 24;
var button_width = 185;
var button_height = 32;
var icon_margin = 8;
var font_color = c_yellow;
var font_shadow = c_black;

if (menu_open) {
    for (var i = 0; i < array_length(options); i++) {
        var y_pos = y + sprite_height + 10 + (i * button_height);

        // Highlight background
        draw_set_color((i == hover_index) ? make_color_rgb(40, 40, 40) : make_color_rgb(25, 25, 25));
        draw_rectangle(x, y_pos, x + button_width, y_pos + button_height, false);

        // Icon Positioning
        var icon_x = x + icon_margin;
        var icon_y = y_pos + (button_height div 2) - (icon_size div 2);

        if (i < array_length(option_icons) && sprite_exists(option_icons[i])) {
            var scale = icon_size / max(sprite_get_width(option_icons[i]), sprite_get_height(option_icons[i]));
            draw_sprite_ext(option_icons[i], 0, icon_x, icon_y, scale, scale, 0, c_white, 1);
        }

        // Text Positioning
        var text_x = icon_x + icon_size + icon_margin;
        var text_y = y_pos + (button_height div 2) - (string_height(options[i]) div 2);

        draw_set_color(font_shadow); draw_text(text_x + 1, text_y + 1, options[i]);
        draw_set_color(font_color);  draw_text(text_x, text_y, options[i]);
    }
}
