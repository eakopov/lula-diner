// Reverse controls and timer management

// Initialize only if the variables don't exist
if (!variable_global_exists("controls_reversed")) {
    global.controls_reversed = false; // Controls are not reversed initially
}

if (!variable_global_exists("reverse_timer")) {
    global.reverse_timer = 0; // Timer starts at 0
}
