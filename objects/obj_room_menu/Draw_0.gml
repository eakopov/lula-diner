// Menu Icon
draw_self(); // To Make sure the menu icon sprite shows

// Constants
var icon_size = 24;
var button_width = 185;
var button_height = 32;
var icon_margin = 8;
var menu_spacing = 4; // space between icon and menu
var font_color = c_yellow;
var font_shadow = c_black;

// Menu
if (menu_open) {
    // Base Y offset: show menu BELOW the icon
    var menu_y_start = y + sprite_height + menu_spacing;

    for (var i = 0; i < array_length(options); i++) {
        var y_pos = menu_y_start + (i * button_height);

        // Hover highlight
        draw_set_color((i == hover_index) ? make_color_rgb(40,40,40) : make_color_rgb(25,25,25));
        draw_rectangle(x, y_pos, x + button_width, y_pos + button_height, false);

        // Icon Drawing 
        if (sprite_exists(option_icons[i])) {
            var icon_x = x + icon_margin;
            var icon_y = y_pos + (button_height - icon_size) div 2;
            var scale = icon_size / max(sprite_get_width(option_icons[i]), sprite_get_height(option_icons[i]));
            draw_sprite_ext(option_icons[i], 0, icon_x, icon_y, scale, scale, 0, c_white, 1);
        }

        //  Text Drawing (to the right of the icon)
        var text_x = x + icon_size + 2 * icon_margin;
        var text_y = y_pos + (button_height div 2) - 8;

        draw_set_color(font_shadow); draw_text(text_x + 1, text_y + 1, options[i]);
        draw_set_color(font_color);  draw_text(text_x, text_y, options[i]);
    }
}
