if (mouse_check_button_pressed(mb_left)) {
    // Check if the mouse is inside the test rectangle area
    if (mouse_x >= 100 && mouse_x <= 150 && mouse_y >= 100 && mouse_y <= 150) {
        // Debugging: Confirm the test rectangle was clicked
        show_debug_message("Test Rectangle Clicked!");
        
		// Stop all music
        audio_stop_all();
		
		// Reset game state
        global.current_question = 0; // Reset the question index
        global.show_difficulty_selection = true; // Show difficulty selection screen
        global.quiz_completed = false; // Reset quiz completion flag
        global.score = 0; // Reset score
        // Navigate to the desired room
        if (room_exists(room_deck)) {
            room_goto(room_deck); // Navigate to start room
            show_debug_message("Navigating to room_deck...");
        } else {
            show_debug_message("Error: room_start does not exist!");
        }
    }
}