hover_index = -1;

if (mouse_check_button_pressed(mb_left)) {
    // Clicked this object = toggle menu
    if (position_meeting(mouse_x, mouse_y, id)) {
        menu_open = !menu_open;
    }
    // If clicked outside menu area = close it
    else if (menu_open) {
        var click_in_menu = false;
        for (var i = 0; i < array_length(options); i++) {
            var y_pos = icon_y + icon_size + 10 + (i * button_height);
            if (point_in_rectangle(mouse_x, mouse_y, icon_x, y_pos, icon_x + button_width, y_pos + button_height)) {
                click_in_menu = true;
                switch (i) {
                    case 0: room_goto_next(); break;
                    case 1: room_goto_previous(); break;
                    case 2: game_restart(); break;
                }
                menu_open = false;
            }
        }
        if (!click_in_menu) menu_open = false;
    }
}

// Hover effect
if (menu_open) {
    for (var i = 0; i < array_length(options); i++) {
        var y_pos = icon_y + icon_size + 10 + (i * button_height);
        if (point_in_rectangle(mouse_x, mouse_y, icon_x, y_pos, icon_x + button_width, y_pos + button_height)) {
            hover_index = i;
        }
    }
}
