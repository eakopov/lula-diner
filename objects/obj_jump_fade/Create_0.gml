// Ensure global.fading_in is initialized before use
if (!variable_global_exists("fading_in")) {
    global.fading_in = false; // Default to false
}

image_alpha = global.fading_in ? 1 : 0; // If fading_in is true, start fully black
fade_speed = 0.02; // Speed of fading
fading_out = false; // Starts false, changes on game over
