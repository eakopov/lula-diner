if (!occupied && obj_controller.selected_customer != noone) {
    // Seat the selected customer at this table
    customer_id = obj_controller.selected_customer;

    // Set the customer’s X and Y based on the table’s position
    customer_id.x = x - 20;  // Align customer’s X with the table’s X
    customer_id.y = y + 60;  // Offset Y position so the customer appears below the table

    // Mark the table as occupied
    occupied = true;
    
    // Clear the selected customer
    obj_controller.selected_customer = noone;
}

if (occupied && obj_controller.selected_pizza != noone) {
    // Get the selected pizza instance
    var selected_pizza = obj_controller.selected_pizza;
    
    // Check if the customer sitting at this table matches the pizza's customer ID
    if (selected_pizza.customer_id == customer_id) {
        // Move the pizza to the table's position
        selected_pizza.x = x + 50;  // Align the pizza to the table's position
        selected_pizza.y = y + 10;

        // Start the customer eating state
        var customer = instance_nearest(x, y, obj_customer);
        customer.ready_to_eat = true;
        customer.eating_timer = 300;  // Set eating duration

        // Mark the table as having the pizza delivered
        obj_controller.selected_pizza = noone;  // Clear the selected pizza
        show_debug_message("Cheese pizza delivered to the correct customer.");
    } else {
        show_debug_message("This pizza doesn't belong to the customer at this table.");
    }
}