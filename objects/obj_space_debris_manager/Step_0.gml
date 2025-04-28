// Randomly spawn debris 
if (irandom(30) == 0) {
    var spawn_x = choose(-32, room_width + 32); // Offscreen left or right
    var spawn_y = irandom_range(0, room_height);

    if (global.jump_score >= 5000) {
        if (irandom(1) == 0) {
            instance_create_layer(spawn_x, spawn_y, "Instances", obj_space_debris_mars);
        } else {
            instance_create_layer(spawn_x, spawn_y, "Instances", obj_space_debris_jupiter);
        }
    } else {
        instance_create_layer(spawn_x, spawn_y, "Instances", obj_space_debris);
    }
}
