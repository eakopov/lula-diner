// Script: check_answer()

function check_answer() {
    var question_data = global.questions[global.current_question];
    var correct_answer = question_data[4];  // The index of the correct answer
    var feedback_messages = question_data[5];  // Array of feedback messages for each answer option

    // Check if the player's answer is correct or incorrect
    if (global.player_answer == correct_answer) {
        global.result_text = feedback_messages[global.player_answer - 1]; // Set the feedback message for correct answer
        audio_play_sound(snd_correct, 1, false);  // Play correct answer sound
        global.score += 1;  // Increase score for a correct answer
    } else {
        global.result_text = feedback_messages[global.player_answer - 1]; // Set the feedback message for incorrect answer
        audio_play_sound(snd_wrong, 1, false);  // Play incorrect answer sound
    }

    // Move to the next question or end the quiz if there are no more questions
    global.current_question += 1;
    if (global.current_question >= array_length(global.questions)) {
        global.quiz_completed = true;
    }

    global.player_answer = -1;  // Reset player answer
}
