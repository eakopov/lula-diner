if (array_length(order_queue) > 0) {
    var current_order = order_queue[0];  // Get the first order in the queue
	
    // Simulate preparation time by waiting for a certain period
    preparation_timer -= 1;
    
    if (preparation_timer <= 0) {
        // Pizza is ready, place it on the counter
		var pizza_object = asset_get_index("obj_" + current_order.pizza_id);
        var pizza_instance = instance_create_layer(46, 678, "Instances", pizza_object);  // Create pizza at counter position
        
		pizza_instance.customer_id = current_order.customer_id;  // Attach the customer ID to the pizza
        pizza_instance.is_ready = true;
		
        // Remove the order from the queue
        array_delete(order_queue, 0, 1);
        
        // Reset the preparation timer for the next pizza
        preparation_timer = 300;  // Example time for next pizza
        
    }
}