// Create Event for obj_question_display
var question_data = global.questions[global.current_question_index];

// Display question text and options
draw_text(100, 100, question_data[0]);  // Question
draw_text(100, 150, question_data[1]);  // Option 1
draw_text(100, 200, question_data[2]);  // Option 2
draw_text(100, 250, question_data[3]);  // Option 3
