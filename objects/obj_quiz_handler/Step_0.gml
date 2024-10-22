// Progress to the next question when player answers
if (mouse_check_button_pressed(mb_left)) {
    if (global.current_question_index < array_length_1d(global.questions) - 1) {
        global.current_question_index += 1;  // Move to the next question
        instance_create_layer(100, 100, "LayerName", obj_question_display);  // Display the next question
    } else {
        show_message("Quiz complete!");
    }
}
