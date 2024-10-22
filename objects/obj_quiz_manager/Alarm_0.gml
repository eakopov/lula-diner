// Alarm[0] event
global.current_question += 1;
global.answer_result = "";  // Clear the result

// Check if there are more questions, otherwise end the game
if (global.current_question >= array_length(global.questions)) {
    show_message("Quiz Complete!");  // End the quiz (you can change this to your own method)
    room_goto_next();  // Or whatever the next step is in your game
}
