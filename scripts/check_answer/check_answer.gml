function check_answer() {
    // Retrieve current question and answer data
    var question_data = global.questions[global.current_question];
    var correct_answer = question_data[4];  // Correct answer index
    var feedback_messages = question_data[5];  // Array of feedback messages for each answer option

    // Check if the player's answer is correct
    if (global.player_answer == correct_answer) {
        global.result_text = feedback_messages[global.player_answer - 1];
        global.score += 1;  // Increase score for correct answer
    } else {
        global.result_text = feedback_messages[global.player_answer - 1];
    }

    // Move to the next question
    global.current_question += 1;
    global.player_answer = -1;  // Reset player answer
    global.timer = 1000;  // Reset timer for next question

    // Check if quiz is complete
    if (global.current_question >= array_length(global.questions)) {
        global.quiz_completed = true;
    }
}
