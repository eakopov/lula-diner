function check_answer() {
    var question_data = global.questions[global.current_question];
    var correct_answer = question_data[4];  // Correct answer is at index 4

    // Check if the player's answer matches the correct answer
    if (global.player_answer == correct_answer) {
        global.result_text = "Correct!";
        global.score += 1;  // Increase score for a correct answer
    } else {
        global.result_text = "Incorrect!";
    }

    // Set a delay before moving to the next question
    alarm[0] = 30;  // 30 frames delay (half a second) before proceeding
}
