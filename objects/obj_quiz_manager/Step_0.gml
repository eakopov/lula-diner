if (global.show_difficulty_selection) {
    // Handle difficulty selection
    if (mouse_check_button_pressed(mb_left)) {
        var mouse_y_pos = mouse_y;

        // Determine which difficulty was selected based on mouse Y position
        if (mouse_y_pos >= 250 && mouse_y_pos <= 280) {
            global.questions = global.easy_questions;
            global.show_difficulty_selection = false; // Start quiz
        } else if (mouse_y_pos >= 300 && mouse_y_pos <= 330) {
            global.questions = global.medium_questions;
            global.show_difficulty_selection = false; // Start quiz
        } else if (mouse_y_pos >= 350 && mouse_y_pos <= 380) {
            global.questions = global.hard_questions;
            global.show_difficulty_selection = false; // Start quiz
        }
    }
} else if (!global.quiz_completed) {
    // Timer countdown
    if (global.timer > 0) {
        global.timer -= 1;
    } else {
        global.result_text = "Time's up!";
        alarm[0] = 30; // Move to the next question after feedback
    }

    // Handle answer selection during the quiz
    if (mouse_check_button_pressed(mb_left)) {
        var mouse_y_pos = mouse_y;
        var answer1_y = 300;
        var answer_spacing = 50;

        // Check which answer the player selected
        if (mouse_y_pos >= answer1_y && mouse_y_pos <= answer1_y + answer_spacing) {
            global.player_answer = 1;
            check_answer();
        } else if (mouse_y_pos >= answer1_y + answer_spacing && mouse_y_pos <= answer1_y + (2 * answer_spacing)) {
            global.player_answer = 2;
            check_answer();
        } else if (mouse_y_pos >= answer1_y + (2 * answer_spacing) && mouse_y_pos <= answer1_y + (3 * answer_spacing)) {
            global.player_answer = 3;
            check_answer();
        }
    }
}
