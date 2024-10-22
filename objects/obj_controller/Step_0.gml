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
 