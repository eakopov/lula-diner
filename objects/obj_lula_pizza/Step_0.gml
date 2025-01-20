// Check if the game is paused
if (global.gamepaused) {
    return;  // Pause the game logic
}

// Movement Logic
if (current_action == "move_to_customer") {
if (move_target_x != -1 && move_target_y != -1) {
	show_debug_message("Lula Position: (" + string(x) + ", " + string(y) + ")");
    show_debug_message("Current Action: " + current_action);
    show_debug_message("Target Customer: " + string(target_customer));
    show_debug_message("Move Target: (" + string(move_target_x) + ", " + string(move_target_y) + ")");
    // Move toward the target point
	move_speed = 3;
    move_towards_point(move_target_x, move_target_y, move_speed);

    // Check if Lula has reached the target
    if (point_distance(x, y, move_target_x, move_target_y) < 50) {
        x = move_target_x;  // Snap to the target x
        y = move_target_y;  // Snap to the target y
        move_target_x = -1; // Reset target x
        move_target_y = -1; // Reset target y
		move_speed = 0;
		current_action = "take_order";
    }}
	
	if (target_customer != noone && current_action == "take_order") {
                // Interact with the customer to take their order
                with (target_customer) {
                    if (ready_to_order) {
                        customer_pizza = choose("gamma", "neutron");  // Replace with appropriate logic
                        ready_to_order = false;
                    }
                }
                target_customer = noone;  // Reset customer target
                current_action = "idle";  // Reset Lula's action
    }
	show_debug_message("Lula Position: (" + string(x) + ", " + string(y) + ")");
    show_debug_message("Current Action: " + current_action);
    show_debug_message("Target Customer: " + string(target_customer));
    show_debug_message("Move Target: (" + string(move_target_x) + ", " + string(move_target_y) + ")");
}
