// Ensure global.current_question_index and global.questions are set
if (variable_global_exists("current_question_index") && global.questions != undefined && array_length_1d(global.questions) > 0) {
    var question_data = global.questions[global.current_question_index];

    // Extract and display the question and choices
    question_text = question_data[0];   // The question itself
    choice_1 = question_data[1];        // Choice 1
    choice_2 = question_data[2];        // Choice 2
    choice_3 = question_data[3];        // Choice 3
    correct_answer = question_data[4];  // The correct answer index

    show_message("Q: " + question_text + "\n1) " + choice_1 + "\n2) " + choice_2 + "\n3) " + choice_3);
} else {
    show_message("Error: No questions available. Please select a scientist.");
    instance_destroy();  // Safely destroy the question display if no questions are found
}
