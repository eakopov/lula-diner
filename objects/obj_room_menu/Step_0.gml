hover_index = -1;

if (mouse_check_button(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, icon_x, icon_y, icon_x + icon_size, icon_y + icon_size)) {
        menu_open = !menu_open;
    }

    if (menu_open) {
        for (var i = 0; i < array_length(options); i++) {
            var y_pos = icon_y + icon_size + (i * button_height);
            if (point_in_rectangle(mouse_x, mouse_y, icon_x, y_pos, icon_x + button_width, y_pos + button_height)) {
                switch (i) {
                    case 0: room_goto_next(); break;
                    case 1: room_goto_previous(); break;
                    case 2: game_restart(); break;
                }
                menu_open = false;
            }
        }
    }
}

// Hover effect
if (menu_open) {
    for (var i = 0; i < array_length(options); i++) {
        var y_pos = icon_y + icon_size + (i * button_height);
        if (point_in_rectangle(mouse_x, mouse_y, icon_x, y_pos, icon_x + button_width, y_pos + button_height)) {
            hover_index = i;
        }
    }
}
