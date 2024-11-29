// Increment the frame count
frame_count++;

// Check if the timer has been reached
if (frame_count >= switch_timer) {
    // Reset the frame count
    frame_count = 0;

    // Hide the current layer
    var current_layer = layer_names[current_layer_index];
    layer_set_visible(current_layer, false);

    // Move to the next layer
    current_layer_index++;
    if (current_layer_index >= array_length(layer_names)) {
        current_layer_index--; // keeps layer at last
    }

    // Show the new layer
    var next_layer = layer_names[current_layer_index];
    layer_set_visible(next_layer, true);
}