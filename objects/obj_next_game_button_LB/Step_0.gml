if (mouse_check_button_pressed(mb_left)) {
    // Check if the mouse is inside the button area
    if (mouse_x >= button_x && mouse_x <= button_x + button_width &&
        mouse_y >= button_y && mouse_y <= button_y + button_height) {
        // Debugging: Confirm the button was clicked
        show_debug_message("Next Game Button Clicked!");

        // Navigate to the next game
        if (room_exists(room_rhythm)) { // Replace 'room_next_game' with your next room's name
            room_goto(room_rhythm);
            show_debug_message("Navigating to room_next_game...");
        } else {
            show_debug_message("Error: room_next_game does not exist!");
        }
    }
}
