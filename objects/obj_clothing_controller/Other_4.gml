// Define basic camera properties
var cam_width = 1280;
var cam_height = 720;
var border_x = 120;   // Horizontal buffer
var border_y = 120;   // Vertical buffer

// Create the camera with a follow speed of 0 (no smoothing, no tilt)
var camera = camera_create_view(0, 0, cam_width, cam_height, 0, obj_lula_clothing, border_x, border_y, cam_width, cam_height);

// Assign the camera to Viewport 0
view_set_camera(0, camera);

// Set the viewport’s display size to match the window size
view_wport[0] = display_get_width();   // Full screen width
view_hport[0] = display_get_height();  // Full screen height
view_visible[0] = true;
