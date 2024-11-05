global.current_question += 1;
global.result_text = ""; // Clear feedback text
global.player_answer = -1; // Reset player answer
global.timer = 300; // Reset timer for the next question

// Check if there are more questions, otherwise mark quiz as completed
if (global.current_question >= array_length(global.questions)) {
    global.quiz_completed = true;
}
