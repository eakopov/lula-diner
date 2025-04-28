if (menu_open) {
    for (var i = 0; i < array_length(options); i++) {
        var y_pos = y + sprite_height + 10 + (i * button_height);

        if (mouse_y >= y_pos && mouse_y <= y_pos + button_height &&
            mouse_x >= x && mouse_x <= x + button_width) {

            switch (i) {
                case 0: room_goto_next(); break;
                case 1: room_goto_previous(); break;
                case 2: game_restart(); break;
                case 3:
                    global.is_muted = !global.is_muted;
                    break;
                case 4:
                    global.volume_level += 0.1;
                    if (global.volume_level > 1.0) global.volume_level = 0.0;
                    options[4] = "Volume: " + string(floor(global.volume_level * 100)) + "%";
                    break;
            }
        }
    }
}