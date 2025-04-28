hover_index = -1;

if (mouse_check_button_pressed(mb_left)) {
    // Toggle menu if icon is clicked
    if (position_meeting(mouse_x, mouse_y, id)) {
        menu_open = !menu_open;
    }
    // Click on menu item
    else if (menu_open) {
        var click_in_menu = false;

        for (var i = 0; i < array_length(options); i++) {
            var y_pos = y + sprite_height + 10 + (i * 32);
            if (point_in_rectangle(mouse_x, mouse_y, x, y_pos, x + 185, y_pos + 32)) {
                click_in_menu = true;

                switch (i) {
                    case 0: room_goto_next(); break;
                    case 1: room_goto_previous(); break;
                    case 2: game_restart(); break;
                    case 3:
                        global.is_muted = !global.is_muted;
                        break;
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
        var y_pos = y + sprite_height + 10 + (i * 32);
        if (point_in_rectangle(mouse_x, mouse_y, x, y_pos, x + 185, y_pos + 32)) {
            hover_index = i;
        }
    }
}

// Mute control
audio_master_gain(global.is_muted ? 0 : 1);
