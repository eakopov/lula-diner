// Esc key press 
if (keyboard_check_pressed(vk_escape)) {
    room_goto(room_intro); // Go back to the intro screen
}

// Scroll upward
scroll_y -= scroll_speed;