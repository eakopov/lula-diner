if (array_length(order_queue) > 0) {
    var current_order = order_queue[0];  // Get the first order in the queue
    
    // Simulate preparation time by waiting for a certain period
    preparation_timer -= 1;
    
    if (preparation_timer <= 0) {
        // Pizza is ready, place it on the counter
        instance_create_layer(46, 678, "Instances", obj_cheese);  // Create pizza at counter position
        obj_cheese.customer_id = current_order;  // Attach the customer ID to the pizza
		obj_cheese.is_ready = true;
		
        // Remove the order from the queue
        array_delete(order_queue, 0, 1);
        
        // Reset the preparation timer for the next pizza
        preparation_timer = 300;  // Example time for next pizza
        
    }
}