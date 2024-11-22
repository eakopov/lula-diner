if (mouse_check_button_pressed(mb_left)) {
    // Check if the mouse is inside the button area
    if (mouse_x >= button_x && mouse_x <= button_x + button_width &&
        mouse_y >= button_y && mouse_y <= button_y + button_height) {
        // Reset game state and return to the start or end
        global.current_question = 0; // Reset the question index
        global.show_difficulty_selection = true; // Show the difficulty selection screen
        global.quiz_completed = false; // Reset quiz completion flag
        global.score = 0; // Reset the score
        room_goto(room_start); // Go back to the start room (or room_end if you prefer)
    }
}
