// Draw current question and answers if quiz is not completed
if (!global.quiz_completed) {
    var question_data = global.questions[global.current_question];
    draw_text(150, 100, "Question: " + question_data[0]);
    draw_text(150, 150, question_data[1]);
    draw_text(150, 200, question_data[2]);
    draw_text(150, 250, question_data[3]);

    // Display score and timer
    draw_text(500, 100, "Score: " + string(global.score));
    draw_text(500, 150, "Time: " + string(global.timer div 60) + " seconds");

    // Display feedback (e.g., Correct!, Incorrect!, Time's up!)
    if (global.result_text != "") {
        draw_text(150, 300, global.result_text);
    }
} else {
    // Show end screen options
    draw_text(150, 350, "Quiz completed! Final Score: " + string(global.score));
    draw_text(150, 400, "Click here to retry.");

    // Check for mouse click to restart game
    if (mouse_check_button_pressed(mb_left) && mouse_y >= 400 && mouse_y <= 430) {
        global.current_question = 0;
        global.score = 0;
        global.quiz_completed = false;
        global.timer = 300;
        global.result_text = "";
    }
}
