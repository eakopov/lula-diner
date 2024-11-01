if (global.gamepaused) {
    // Deactivate all instances except the controller to pause the game
    instance_deactivate_layer("instances_bg");
    instance_activate_object(obj_controller);
	instance_activate_object(obj_pause);
	instance_activate_object(obj_bg);
	// Set the pause message's text color, scale, and position
    draw_set_color(c_red);  // Example: Red text color for visibility
    draw_text_transformed(room_width / 2, room_height / 2, "PAUSED", 3, 3, 0);  // Centered, scaled text
    draw_set_color(c_white);  // Reset color afterward
} else {
	// Reactivate all instances to resume the game
    instance_activate_layer("instances_bg");
	// Increment the spawn timer
spawn_timer += 1;

// Check if any customer is near the carpet area
var customer_waiting = false;  // Initialize as false

// Loop through all obj_customer instances and check their position
with (obj_customer) {
    if (point_distance(x, y, 50, 576) < 10) {
        customer_waiting = true; 
        break; 
    }
}

// spawn logic
if (spawn_timer >= spawn_interval && !customer_waiting) {
    // spawn customer off-screen at (0, 576)
    var customer = instance_create_layer(0, 576, "Instances", obj_customer);
    
    show_debug_message("Customer spawned at (0, 576)");
    
    // reset the timer
    spawn_timer = 0; 
}
}