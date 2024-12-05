function check_answer() {
    var question_data = global.questions[global.current_question];
    var correct_answer = question_data[4];  // Correct answer index

    if (global.player_answer == correct_answer) {
        global.result_text = question_data[5][global.player_answer - 1];  // Correct feedback message
        global.score += 1;
        audio_play_sound(snd_correct, 1, false);
    } else {
        global.result_text = question_data[5][global.player_answer - 1];  // Incorrect feedback message
        audio_play_sound(snd_wrong, 1, false);
    }

    // Set a delay before moving to the next question
    global.move_to_next_question = false;  // Flag to wait for the delay
    alarm[0] = 90;  // Adjust this delay (e.g., 90 frames for ~1.5 seconds)
    
    global.player_answer = -1;  // Reset player answer
	
}
