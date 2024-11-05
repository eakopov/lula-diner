if (array_length(order_queue) > 0) {
    var current_order = order_queue[0];  // Get the first order in the queue

    // Simulate preparation time by waiting for a certain period
    preparation_timer -= 1;
    
    if (preparation_timer <= 0) {
        // Find the next available plate
        var available_plate = noone;
        for (var i = 0; i < array_length(global.plates); i++) {
            if (global.plates[i].occupied == false) {
                available_plate = global.plates[i];
                break;
            }
        }
        
        if (available_plate != noone) {
            // Create the pizza at the available plate's position
            var pizza_object = asset_get_index("obj_" + current_order.pizza_id);
            var pizza_instance = instance_create_layer(available_plate.x, available_plate.y, "Instances", pizza_object);
            
            // Assign customer_id to the pizza for tracking
            pizza_instance.customer_id = current_order.customer_id;
            pizza_instance.is_ready = true;
            available_plate.occupied = true;  // Mark the plate as occupied
            available_plate.pizza_instance = pizza_instance;  // Link the pizza to the plate
            
            // Remove the order from the queue only when pizza is correctly delivered
            array_delete(order_queue, 0, 1);

            // Reset preparation timer for the next pizza
            preparation_timer = 300;  // Adjust as needed
            show_debug_message("Pizza ready for customer: " + string(current_order.customer_id));
        }
    }
}