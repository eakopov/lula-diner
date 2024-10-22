spawn_timer += 1;

if (spawn_timer >= spawn_interval) {
    // Spawn customer near the entrance
    var customer = instance_create_layer(45, 570, "Instances", obj_customer);
    spawn_timer = 0;  // Reset timer
}

show_debug_message("Spawning customer");  // This will print to the output window

spawn_timer += 1;  // Increment the timer
if (spawn_timer >= spawn_interval) {
    var customer = instance_create_layer(50, 450, "Instances", obj_customer);
    show_debug_message("Customer spawned");
    spawn_timer = 0;  // Reset the timer
}