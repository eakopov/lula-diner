function check_answer() {
    var question_data = global.questions[global.current_question];
    var correct_answer = question_data[4];

    if (global.player_answer == correct_answer) {
        global.result_text = "Correct Answer!";
        global.score += 1;
    } else {
        global.result_text = "Wrong Answer!";
    }

    global.current_question += 1;

    // Check if there are more questions; if not, mark quiz as completed
    if (global.current_question >= array_length(global.questions)) {
        global.quiz_completed = true;
    }

    // Reset answer for next question
    global.player_answer = -1;
    global.timer = 300; // Reset timer for the next question
}
