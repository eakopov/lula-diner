// Only initialize the score if it's not already set 
if (!variable_global_exists("jump_score")) {
    global.jump_score = 0; // Initialize the score only if it doesn't already exist
}

// Initialize the countdown timer only if it hasn't been set already
if (!variable_global_exists("jump_timer")) {
    global.jump_timer = 200 * room_speed; // 200 seconds (in steps)
}

// Initialize the time warning trigger (prevents multiple activations)
if (!variable_global_exists("time_warning_triggered")) {
    global.time_warning_triggered = false; // Ensures warning is only triggered once
}

// Initialize the time warning music ID
if (!variable_global_exists("time_warning_music_id")) {
    global.time_warning_music_id = -1; // No music playing initially
}
