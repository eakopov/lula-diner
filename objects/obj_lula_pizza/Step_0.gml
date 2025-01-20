if (target_customer != noone) {
    // Move towards the selected customer
    if (point_distance(x, y, move_target_x, move_target_y) > 5) {
        move_towards_point(move_target_x, move_target_y, move_speed);
    } else {
        // Snap Lula to the target and stop moving
        x = target_x;
        y = target_y;
        move_speed = 0;

        // Check if Lula is at the customer to take the order
        if (target_customer.ready_to_order && !order_taken) {
            target_customer.ready_to_order = false; // Prevent re-triggering
            order_taken = true;
            show_debug_message("Order taken from customer: " + string(target_customer));

            // Update customer's order
            target_customer.customer_pizza = choose("gamma", "neutron", "DSOC", "radio");
            target_customer.order_taken = true;
            show_debug_message("Order is: " + string(target_customer.customer_pizza));

            // Clear Lula's target after order is taken
            target_customer = noone;
        }
    }
}