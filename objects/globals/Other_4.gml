/// @description Dynamically sets the window size and configures viewports for non-clothing rooms

// Default dimensions for all rooms
global.default_width = 720;
global.default_height = 720;


// Only configure the camera and viewports if the room is NOT room_clothing
if (room != room_clothing) {
    // Configure camera for Viewport 0
	global.new_width = global.default_width;
    global.new_height = global.default_height;
	
	window_set_size(global.new_width, global.new_height);
	surface_resize(application_surface, global.new_width, global.new_height);
	
    camera_set_view_size(view_camera[0], global.new_width, global.new_height);
    camera_set_view_pos(view_camera[0], 0, 0);

    // Configure Viewport 0
    view_set_visible(0, true);
    view_set_wport(0, global.new_width);
    view_set_hport(0, global.new_height);
    view_set_xport(0, 0);
    view_set_yport(0, 0);
}

else {
	
	view_enabled = true;

// Ensure window is set to correct size
window_set_size(1280 * obj_clothing_controller.SCALE_MULTIPLIER, 720 * obj_clothing_controller.SCALE_MULTIPLIER);
surface_resize(application_surface, 1280 * obj_clothing_controller.SCALE_MULTIPLIER, 720 * obj_clothing_controller.SCALE_MULTIPLIER);

// Configure viewport 0
view_set_visible(0, true);
view_set_wport(0, 1280 * obj_clothing_controller.SCALE_MULTIPLIER); // Increase width by multiplier
view_set_hport(0, 480 * obj_clothing_controller.SCALE_MULTIPLIER); // Increase height by multiplier
view_set_xport(0, 0);
view_set_yport(0, 0);

// Configure camera for viewport 0
var _cam0 = camera_create_view(
    (obj_lula_clothing.x - ((1280 * obj_clothing_controller.SCALE_MULTIPLIER) / 2)), 
    (obj_lula_clothing.y - ((720 * obj_clothing_controller.SCALE_MULTIPLIER) / 2)), 
    1280 * obj_clothing_controller.SCALE_MULTIPLIER, 
    480 * obj_clothing_controller.SCALE_MULTIPLIER, 
    0, obj_lula_clothing, -1, -1, 200, 200
);
view_set_camera(0, _cam0);

show_debug_message("Target position: " + string(obj_lula_clothing.x) + ", " + string(obj_lula_clothing.y));
show_debug_message("Camera position: " + string(camera_get_view_x(_cam0)) + ", " + string(camera_get_view_y(_cam0)));

// Configure Viewport 1
view_set_visible(1, true);
view_set_wport(1, 1280 * obj_clothing_controller.SCALE_MULTIPLIER); 
view_set_hport(1, 240 * obj_clothing_controller.SCALE_MULTIPLIER); 
view_set_xport(1, 0);
view_set_yport(1, 480 * obj_clothing_controller.SCALE_MULTIPLIER); 

// Configure camera for Viewport 1
var _cam1 = camera_create_view(
    4200, 0, 
    1280 * obj_clothing_controller.SCALE_MULTIPLIER, 
    240 * obj_clothing_controller.SCALE_MULTIPLIER, 
    false, -1, -1, -1, -1
);
view_set_camera(1, _cam1);

	
}

// Center the window on the screen
window_center();
