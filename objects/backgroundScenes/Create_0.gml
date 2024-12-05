// List of layer names to switch between
layer_names = ["backgroundInstance", "backgroundInstance_1", 
"backgroundInstance_2", "backgroundInstance_3", "backgroundInstance_4", "backgroundInstance_5"];

// Variable to track the current layer
current_layer_index = 0;
layer_set_visible(layer_names[current_layer_index], true);
// Timer to manage switching
switch_timer = 10 * room_speed; // 10 seconds in frames
frame_count = 0; // Counts frames to track time