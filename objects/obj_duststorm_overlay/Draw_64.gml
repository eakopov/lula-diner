if (global.dust_storm_active) {
    global.dust_storm_timer -= 1;

    draw_set_color(make_color_rgb(194, 124, 14)); // Dusty orange
    draw_set_alpha(0.4 + 0.1 * sin(current_time / 80));
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

    draw_set_alpha(1);

    if (global.dust_storm_timer <= 0) {
        global.dust_storm_active = false;
		obj_lula_jump.sprite_index = spr_luna_Walk_1;
        instance_destroy();
    }
} else {
    instance_destroy();
}
