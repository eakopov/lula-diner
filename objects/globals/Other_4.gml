/// @description Dynamically sets the window size and configures viewports for non-clothing rooms

// Default dimensions for all rooms
global.default_width = 720;
global.default_height = 720;

// Dimensions for room_clothing
var clothing_width = 1280;
var clothing_height = 720;

// Determine new dimensions based on the room
if (room == room_clothing) {
    global.new_width = clothing_width;
    global.new_height = clothing_height;
} else {
    global.new_width = global.default_width;
    global.new_height = global.default_height;
}

// Set window size and resize application surface
window_set_size(global.new_width, global.new_height);
surface_resize(application_surface, global.new_width, global.new_height);

// Only configure the camera and viewports if the room is NOT room_clothing
if (room != room_clothing) {
    // Configure camera for Viewport 0
    camera_set_view_size(view_camera[0], global.new_width, global.new_height);
    camera_set_view_pos(view_camera[0], 0, 0);

    // Configure Viewport 0
    view_set_visible(0, true);
    view_set_wport(0, global.new_width);
    view_set_hport(0, global.new_height);
    view_set_xport(0, 0);
    view_set_yport(0, 0);
}

// Center the window on the screen
window_center();
