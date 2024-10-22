if (!ready_to_seat) {
    // Move the customer to the carpet at (50, 576)
    move_towards_point(50, 576, move_speed);
    
    // Check if the customer is close enough to the carpet and stop them
    if (point_distance(x, y, 50, 576) < 5) {
        ready_to_seat = true;  // Mark the customer as ready to be seated
        x = 50;  // Snap customer to carpet X position
        y = 576;  // Snap customer to carpet Y position

        // The customer should now wait here until interacted with
        speed = 0;  // Completely stop movement
    }
}

if (ready_to_seat && !ready_to_order) {
    order_timer -= 1;  // Count down the timer
    
    if (order_timer <= 0) {
        ready_to_order = true;  // customer is ready to order
        show_debug_message("Customer is ready to order");
    }
}
