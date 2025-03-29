if (array_length(order_queue) > 0) {
    var current_order = order_queue[0];  // Get the first order in the queue

    // Simulate preparation time by waiting for a certain period
    preparation_timer -= 1;

    // Find the next available plate
    var available_plate = noone;
    for (var i = 0; i < array_length(global.plates); i++) {
        if (!global.plates[i].occupied) {
            available_plate = global.plates[i];
            break;
        }
    }

    // Proceed with tool preparation only if a plate is available
    if (available_plate != noone && preparation_timer <= 0) {
        // Reset the preparation timer for the next tool
        preparation_timer = 300;  // Adjust as needed for preparation time
        
        // Create the tool at the available plate's position
        var tool_object = asset_get_index("obj_" + current_order.tool_id);
        var tool_instance = instance_create_layer(available_plate.x, available_plate.y, "Instances", tool_object);
        audio_play_sound(snd_bell, 0, false);
		show_debug_message("Creating tool at x: " + string(available_plate.x) + " y: " + string(available_plate.y));

        // Assign customer_id to the tool for tracking
        tool_instance.customer_id = current_order.customer_id;
        tool_instance.is_ready = true;
        
        // Mark the plate as occupied and link the tool to the plate
        available_plate.occupied = true;
        available_plate.tool_instance = tool_instance;

        // Remove the order from the queue after placing it on a plate
        array_delete(order_queue, 0, 1);
        
        show_debug_message("tool ready for customer: " + string(current_order.customer_id));
    }
}
