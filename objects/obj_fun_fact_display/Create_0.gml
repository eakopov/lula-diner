// Alpha value for fading
if (!variable_global_exists("fade_alpha")) {
    global.fade_alpha = 1; // Fully visible at the start
}
if (!variable_global_exists("fade_speed")) {
    global.fade_speed = 0.005; // Speed at which the text fades
}