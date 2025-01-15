if (state == "moving_to_customer") {
    // Move towards target
    move_towards_point(target_x, target_y, 3);  // Adjust speed as needed

    // Check if Lula has reached the customer
    if (point_distance(x, y, target_x, target_y) < 5) {
        x = target_x;  // Snap to target
        y = target_y;
        state = "taking_order";
    }
}

if (state == "taking_order") {
    // Logic for taking the order
    show_debug_message("Taking order from customer");
    // Trigger order logic here
    state = "idle";  // Reset to idle after taking order
}
