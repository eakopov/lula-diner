if (keyboard_check_pressed(vk_space))
{
    room_goto_next()
}

// If a question is in progress (in the bonus round)
if (global.question_in_progress) {

    // If the user has NOT answered yet, wait for key input (1–4)
    if (!global.question_answered) {
        // Check which key is pressed
        if (keyboard_check_pressed(ord("1")) ||
            keyboard_check_pressed(ord("2")) ||
            keyboard_check_pressed(ord("3")) ||
            keyboard_check_pressed(ord("4")))
        {
            // Convert the pressed key to an answer index (0,1,2,3)
            var selected_answer;
            if (keyboard_check_pressed(ord("1"))) { selected_answer = 0; }
            if (keyboard_check_pressed(ord("2"))) { selected_answer = 1; }
            if (keyboard_check_pressed(ord("3"))) { selected_answer = 2; }
            if (keyboard_check_pressed(ord("4"))) { selected_answer = 3; }
            
            // Retrieve the question data
            var qIndex = global.bonus_question_index;
            var question_data = global.mc_questions[qIndex];
            var correct_index = question_data[5]; // The correct answer index
            
            // Check correctness
            if (selected_answer == correct_index) {
                global.current_answer_feedback = "Correct! Great job! +200 Points :)";
				global.jump_score+=200;
            } else {
                // Display the corresponding incorrect feedback
                global.current_answer_feedback = global.mc_incorrect_feedback[qIndex];
            }
            
            // The user has answered
            global.question_answered = true;
            // Start a 5-second feedback timer
            global.answer_feedback_timer = 10 * room_speed;
        }
    }
    else {
        // The user has answered, so show feedback for at least 5 seconds
        global.answer_feedback_timer -= 1;
        
        if (global.answer_feedback_timer <= 0) {
            // After 5 seconds, move to the next question
            global.question_in_progress = false; 
            global.question_answered = false;
            global.current_answer_feedback = "";
            global.bonus_question_index += 1;
        }
    }
}
