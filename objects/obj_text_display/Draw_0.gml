// Get the current question data from the global questions array
var question_data = global.questions[global.current_question];

// Display the question and answer options on the screen
draw_text(50, 50, question_data[0]);  // The question itself
draw_text(50, 100, question_data[1]);  // Option 1
draw_text(50, 150, question_data[2]);  // Option 2
draw_text(50, 200, question_data[3]);  // Option 3
