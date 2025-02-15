// Initialize Lula's variables
move_target_x = -1;  // Target x-coordinate for movement
move_target_y = -1;  // Target y-coordinate for movement
move_speed = 0;      // Speed of Lula's movement
current_action = "idle"; // Current action Lula is performing
target_customer = noone; // The customer Lula is interacting with
target_tool = noone; // The tool Lula is interacting with
tool_attached = noone; // Stores the tool Lula is holding
scientist_tool = ""; // Tracks the tool for customers
path_id = -1;		 // Stores the path
path_indx = noone;	 // Path following variable
path_active = false; // variable to track path for Lula's movement
global.nav_grid = mp_grid_create(0, 0, room_width div 16, room_height div 16, 16, 16); // Walk path grid creation
// Obstacles for the path grid for Lula to avoid
mp_grid_add_instances(global.nav_grid, obj_table, false); // Tables
mp_grid_add_instances(global.nav_grid, obj_counter, false); // Counter