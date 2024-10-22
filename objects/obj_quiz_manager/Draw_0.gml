// Only proceed if the questions array is initialized
if (array_length(global.questions) > 0) {
    var question_data = global.questions[global.current_question];

    // Drawing the question and answers
    var frame_x = 150;
    var frame_y = 150;
    var question_x_offset = 30;
    var answer_y_offset = 40;

    // Draw the question
    draw_text(frame_x + question_x_offset, frame_y + 20, "Question: " + question_data[0]);

    // Draw the answers
    draw_text(frame_x + question_x_offset, frame_y + 60, question_data[1]);  // Answer 1
    draw_text(frame_x + question_x_offset, frame_y + 60 + answer_y_offset, question_data[2]);  // Answer 2
    draw_text(frame_x + question_x_offset, frame_y + 60 + (2 * answer_y_offset), question_data[3]);  // Answer 3
}
