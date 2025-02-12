/// @description Dynamically sets the window size and configures viewports for each room

// Default dimensions for non-clothing rooms
global.default_width = 720;
global.default_height = 720;

// ================================
// Room-Specific Window & Viewport Setup
// ================================

// ===============
// Room: room_jump
// ===============
if (room == room_jump) {
    var jump_width = global.default_width;
    var jump_height = global.default_height;

    window_set_size(jump_width, jump_height);
    surface_resize(application_surface, jump_width, jump_height);

    camera_set_view_size(view_camera[0], jump_width, jump_height);
    camera_set_view_pos(view_camera[0], 0, 0);

    view_set_visible(0, true);
    view_set_wport(0, jump_width);
    view_set_hport(0, jump_height);
    view_set_xport(0, 0);
    view_set_yport(0, 0);
}

// ===============
// Room: room_pizza
// ===============
else if (room == room_pizza) {
    var pizza_width = global.default_width;
    var pizza_height = global.default_height;

    window_set_size(pizza_width, pizza_height);
    surface_resize(application_surface, pizza_width, pizza_height);

    camera_set_view_size(view_camera[0], pizza_width, pizza_height);
    camera_set_view_pos(view_camera[0], 0, 0);

    view_set_visible(0, true);
    view_set_wport(0, pizza_width);
    view_set_hport(0, pizza_height);
    view_set_xport(0, 0);
    view_set_yport(0, 0);
}

// ===============
// Room: room_deck
// ===============
else if (room == room_deck) {
    var deck_width = global.default_width;
    var deck_height = global.default_height;

    window_set_size(deck_width, deck_height);
    surface_resize(application_surface, deck_width, deck_height);

    camera_set_view_size(view_camera[0], deck_width, deck_height);
    camera_set_view_pos(view_camera[0], 0, 0);

    view_set_visible(0, true);
    view_set_wport(0, deck_width);
    view_set_hport(0, deck_height);
    view_set_xport(0, 0);
    view_set_yport(0, 0);
}

// ===============
// Room: room_rhythm
// ===============
else if (room == room_rhythm) {
    var rhythm_width = global.default_width;
    var rhythm_height = global.default_height;

    window_set_size(rhythm_width, rhythm_height);
    surface_resize(application_surface, rhythm_width, rhythm_height);

    camera_set_view_size(view_camera[0], rhythm_width, rhythm_height);
    camera_set_view_pos(view_camera[0], 0, 0);

    view_set_visible(0, true);
    view_set_wport(0, rhythm_width);
    view_set_hport(0, rhythm_height);
    view_set_xport(0, 0);
    view_set_yport(0, 0);
}

// ===============
// Room: room_clothing (UNCHANGED, Explicitly Defined)
// ===============
else if (room == room_clothing) {
    view_enabled = true;

    var clothing_width = 1280 * obj_clothing_controller.SCALE_MULTIPLIER;
    var clothing_height = 720 * obj_clothing_controller.SCALE_MULTIPLIER;

    window_set_size(clothing_width, clothing_height);
    surface_resize(application_surface, clothing_width, clothing_height);

    // Configure viewport 0
    view_set_visible(0, true);
    view_set_wport(0, clothing_width);
    view_set_hport(0, 480 * obj_clothing_controller.SCALE_MULTIPLIER);
    view_set_xport(0, 0);
    view_set_yport(0, 0);

    // Configure camera for viewport 0
    var _cam0 = camera_create_view(
        (obj_lula_clothing.x - (clothing_width / 2)), 
        (obj_lula_clothing.y - (clothing_height / 2)), 
        clothing_width, 
        480 * obj_clothing_controller.SCALE_MULTIPLIER, 
        0, obj_lula_clothing, -1, -1, 200, 200
    );
    view_set_camera(0, _cam0);

    // Configure Viewport 1
    view_set_visible(1, true);
    view_set_wport(1, clothing_width);
    view_set_hport(1, 240 * obj_clothing_controller.SCALE_MULTIPLIER);
    view_set_xport(1, 0);
    view_set_yport(1, 480 * obj_clothing_controller.SCALE_MULTIPLIER);

    // Configure camera for Viewport 1
    var _cam1 = camera_create_view(
        4200, 0, 
        clothing_width, 
        240 * obj_clothing_controller.SCALE_MULTIPLIER, 
        false, -1, -1, -1, -1
    );
    view_set_camera(1, _cam1);

    show_debug_message("Target position: " + string(obj_lula_clothing.x) + ", " + string(obj_lula_clothing.y));
    show_debug_message("Camera position: " + string(camera_get_view_x(_cam0)) + ", " + string(camera_get_view_y(_cam0)));
}

// ===============
// Default Case: All Other Rooms (Failsafe)
// ===============
else {
    var default_width = global.default_width;
    var default_height = global.default_height;

    window_set_size(default_width, default_height);
    surface_resize(application_surface, default_width, default_height);

    camera_set_view_size(view_camera[0], default_width, default_height);
    camera_set_view_pos(view_camera[0], 0, 0);

    view_set_visible(0, true);
    view_set_wport(0, default_width);
    view_set_hport(0, default_height);
    view_set_xport(0, 0);
    view_set_yport(0, 0);
}

// Center the window on the screen
window_center();
