spawn_timer += 1;

if (spawn_timer >= spawn_interval) {
    // Spawn customer near the entrance
    var customer = instance_create_layer(45, 570, "Instances", obj_customer);
    spawn_timer = 0;  // Reset timer
}
