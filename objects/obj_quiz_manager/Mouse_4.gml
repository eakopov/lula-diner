/// Difficulty selection mouse handling
if (global.show_difficulty_selection) {
    if (mouse_check_button_pressed(mb_left)) {
        if (mouse_y >= 250 && mouse_y <= 280) {
            global.questions = shuffle_array(global.easy_questions); // Shuffle easy questions
            global.show_difficulty_selection = false;
            global.current_level = "easy";
        } else if (mouse_y >= 300 && mouse_y <= 330) {
            global.questions = shuffle_array(global.medium_questions); // Shuffle medium questions
            global.show_difficulty_selection = false;
            global.current_level = "medium";
        } else if (mouse_y >= 350 && mouse_y <= 380) {
            global.questions = shuffle_array(global.hard_questions); // Shuffle hard questions
            global.show_difficulty_selection = false;
            global.current_level = "hard";
        }
    }
}

// If answering a question
if (!global.show_difficulty_selection && !global.quiz_completed) {
    if (mouse_y >= global.answer1_y && mouse_y <= global.answer1_y + 30) {
        global.player_answer = 1;
        check_answer();
    } else if (mouse_y >= global.answer2_y && mouse_y <= global.answer2_y + 30) {
        global.player_answer = 2;
        check_answer();
    } else if (mouse_y >= global.answer3_y && mouse_y <= global.answer3_y + 30) {
        global.player_answer = 3;
        check_answer();
    }
}

// If quiz is completed, choose to retry or go to the next room
if (global.quiz_completed) {
    if (mouse_y >= 400 && mouse_y <= 430) {
        global.current_question = 0;
        global.score = 0;
        global.quiz_completed = false;
        global.show_difficulty_selection = true;
        global.result_text = "";
    } else if (mouse_y >= 450 && mouse_y <= 480) {
        room_goto(room_next);
    }
}

