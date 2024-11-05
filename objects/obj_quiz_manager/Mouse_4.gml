// If selecting difficulty
if (global.show_difficulty_selection) {
    if (mouse_y >= global.easy_y && mouse_y <= global.easy_y + 30) {
        global.questions = global.easy_questions;
        global.show_difficulty_selection = false;
    } else if (mouse_y >= global.medium_y && mouse_y <= global.medium_y + 30) {
        global.questions = global.medium_questions;
        global.show_difficulty_selection = false;
    } else if (mouse_y >= global.hard_y && mouse_y <= global.hard_y + 30) {
        global.questions = global.hard_questions;
        global.show_difficulty_selection = false;
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
