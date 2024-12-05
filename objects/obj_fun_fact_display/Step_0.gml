if (global.show_fun_fact) {
    // Decrease the global alpha value over time
    global.fade_alpha -= global.fade_speed;

    // When fully faded, hide the fun fact and reset the alpha
    if (global.fade_alpha <= 0) {
        global.fade_alpha = 0; // Clamp to 0
        global.show_fun_fact = false; // Hide the fun fact
    }
} else {
    // Reset the alpha when a new fun fact is triggered
    global.fade_alpha = 1;
}
