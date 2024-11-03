// Alarm[0] event
global.current_question += 1;
global.answer_result = "";  // Clear the result

// Check if there are more questions, otherwise end the game
if (global.current_question >= array_length(global.questions)) {
    show_message("Quiz Complete!");  // End the quiz (you can change this to your own method)
    room_goto_next();  // Or whatever the next step is in your game
}

// Move to the next question
global.current_question += 1;
global.result_text = "";  // Clear feedback text
global.player_answer = -1;  // Reset player answer
global.timer = 300;  // Reset timer for the next question

// Check if there are more questions; if not, mark quiz as complete
if (global.current_question >= array_length(global.questions)) {
    global.quiz_completed = true;  // Mark quiz as completed
}
