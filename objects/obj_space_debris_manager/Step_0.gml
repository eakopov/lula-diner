// Randomly spawn debris 
if (irandom(30) == 0) {
    var spawn_x = choose(-32, room_width + 32); // Offscreen left or right
    var spawn_y = irandom_range(0, room_height);

    instance_create_layer(spawn_x, spawn_y, "Instances", obj_space_debris);
}
