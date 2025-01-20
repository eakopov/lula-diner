// Initialize movement-related variables
move_speed = 2;  // Movement speed for Lula
move_target_x = x;  // Target x-coordinate for movement
move_target_y = y;  // Target y-coordinate for movement

// Initialize action-related variables
current_action = "";  // Tracks what Lula is currently doing ("take_order", "deliver_tool", etc.)
action_complete = false;  // Tracks whether the current action is finished

target_customer = noone;