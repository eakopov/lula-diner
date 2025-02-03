if (!occupied && obj_controller.selected_customer != noone) {
    // Seat the selected customer at this table
    customer_id = obj_controller.selected_customer;

    // Check if the selected customer instance is still valid
    if (instance_exists(customer_id)) {
        // Set the customer’s X and Y based on the table’s position
        customer_id.x = x - 20;  // Align customer’s X with the table’s X
        customer_id.y = y + 60;  // Offset Y position so the customer appears below the table

        // Mark the table as occupied and set the customer as ready to order
        occupied = true;
        customer_id.seated = true;

        // Clear the selected customer
        obj_controller.selected_customer = noone;
    } else {
        show_debug_message("Selected customer no longer exists.");
    }
}

if (occupied && obj_controller.selected_tool != noone) {
    // Move Lula to the table
    with (obj_lula_pizza) {
        move_target_x = other.x;
        move_target_y = other.y;
        current_action = "deliver_tool";
    }
}

// Logic to deliver the tool once Lula reaches the table
if (obj_lula_pizza.current_action == "deliver_tool") {
    if (point_distance(x, y, obj_lula_pizza.move_target_x, obj_lula_pizza.move_target_y) < 5) {
        x = obj_lula_pizza.move_target_x;
        y = obj_lula_pizza.move_target_y;
        obj_lula_pizza.move_target_x = -1;
        obj_lula_pizza.move_target_y = -1;
        speed = 0;

        var selected_tool = obj_controller.selected_tool;

        // Check if the tool matches the customer's request
        if (instance_exists(selected_tool) && instance_exists(customer_id)) {
            var customer = instance_nearest(x, y, obj_customer);
            
            if (customer.required_tool == selected_tool.tool_type) {
                // Deliver tool
                selected_tool.x = x + 50;
                selected_tool.y = y + 10;
                
                customer.ready_to_use_tool = true;
                customer.using_tool_timer = 300;
                
                // Clear the selected tool
                obj_controller.selected_tool = noone;
                instance_destroy(selected_tool);
                show_debug_message("Correct tool delivered to the customer.");
            } else {
                // Wrong tool, keep holding it
                show_debug_message("Wrong tool! Lula keeps holding the tool.");
            }
        }
        obj_lula_pizza.current_action = "idle";
    }
}