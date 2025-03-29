// Difficulty selection mouse handling
if (global.show_difficulty_selection) {
    if (mouse_check_button_pressed(mb_left)) {
        if (mouse_y >= 250 && mouse_y <= 280) {
            global.questions = global.easy_questions;
            global.show_difficulty_selection = false;
            global.current_level = "easy";
        } else if (mouse_y >= 300 && mouse_y <= 330) {
            global.questions = global.medium_questions;
            global.show_difficulty_selection = false;
            global.current_level = "medium";
        } else if (mouse_y >= 350 && mouse_y <= 380) {
            global.questions = global.hard_questions;
            global.show_difficulty_selection = false;
            global.current_level = "hard";
        }
    }
} else if (!global.quiz_completed) {
    // Timer countdown
    if (global.timer > 0) {
        global.timer -= 1;
    } else {
        global.timeouts += 1;
        global.result_text = "Time's up!";
        global.current_question += 1;

        // Check if quiz is completed
        if (global.current_question >= array_length(global.questions)) {
            global.quiz_completed = true;
        } else {
            global.timer = 300;  // Reset timer for the next question
        }
    }

    // Handle answer selection
    if (mouse_check_button_pressed(mb_left)) {
        var mouse_y_pos = mouse_y;
        if (mouse_y_pos >= 300 && mouse_y_pos <= 350) {
            global.player_answer = 1;
            check_answer();
        } else if (mouse_y_pos >= 350 && mouse_y_pos <= 400) {
            global.player_answer = 2;
            check_answer();
        } else if (mouse_y_pos >= 400 && mouse_y_pos <= 450) {
            global.player_answer = 3;
            check_answer();
        }
    }
}

// After quiz completion, determine win/lose condition
if (global.quiz_completed) {
    var score_percentage = (global.score / array_length(global.questions)) * 100;
	
	global.current_instrument_index = 0; // Start with the first instrument
    global.show_instrument_popup = true; // Enable the pop-up
    global.instrument_popup_timer = 180; // Show each instrument for 3 seconds
    // Winning cases based on score percentage
    if (score_percentage >= 80 && global.current_level == "easy") {
        global.result_text = "Congratulations! You won on the Easy level!";
    } else if (score_percentage >= 70 && global.current_level == "medium") {
        global.result_text = "Great job! You won on the Medium level!";
    } else if (score_percentage >= 60 && global.current_level == "hard") {
        global.result_text = "Amazing! You won on the Hard level!";
    } 
    // Losing cases
    else if (global.timeouts >= 3) {
        global.result_text = "Too many timeouts! Try again to improve.";
    } else if (score_percentage < 50) {
        global.result_text = "Your score is too low. Try again for a better result!";
    }
}

