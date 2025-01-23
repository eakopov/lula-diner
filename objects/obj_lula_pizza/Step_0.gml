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

        // Determine the direction to move
        var _dx = move_target_x + 50 - x;
        var _dy = move_target_y - 50 - y;

        // Normalize direction vector
        var _distance = point_distance(x, y, move_target_x + 50, move_target_y - 50);
        if (_distance > 0) {
            _dx /= _distance;
            _dy /= _distance;
        }

        // Set movement speed
        move_speed = 3;

        // Check for collision along the movement path
        if (!collision_line(x, y, x + _dx * move_speed, y + _dy * move_speed, obj_collision, false, true)) {
            // Move Lula
            x += _dx * move_speed;
            y += _dy * move_speed;
        } else {
            // Stop movement if a collision is detected
            move_speed = 0;
            show_debug_message("Collision detected! Adjusting path...");
        }

        // Check if Lula has reached the target
        if (_distance < 5) {
            x = move_target_x + 50;  // Snap to the target x
            y = move_target_y - 50;  // Snap to the target y
            move_target_x = -1; // Reset target x
            move_target_y = -1; // Reset target y
            speed = 0;
            current_action = "take_order";
            show_debug_message("WE DID THIS PART SUCCESSFULLY");
        }
    }

    if (target_customer != noone && current_action == "take_order") {
        // Interact with the customer to take their order
        with (target_customer) {
            if (ready_to_order) {
                switch (object_index) {
                    case obj_bell:
                        customer_pizza = "multispectral";
                        break;
                    case obj_brauer:
                        customer_pizza = "magnetrometer";
                        break;
                    case obj_lawrence:
                        customer_pizza = "magnetrometer";
                        break;
                    case obj_zuber:
                        customer_pizza = choose("DSOC", "radio");
                        break;
                    default:
                        show_debug_message("Wrong object index indicated");
                        break;
                }

                ready_to_order = false;

                receive_order(id, customer_pizza);

                obj_controller.selected_customer = noone;
                order_taken = true;
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
