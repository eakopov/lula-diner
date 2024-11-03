// Check for player's answer using mouse input
if (mouse_check_button_pressed(mb_left)) {
    var mouse_y_pos = mouse_y;

    // Assuming the player clicks on one of the answers
    var answer1_y = 210;
    var answer2_y = 250;
    var answer3_y = 290;

    // Determine which answer was selected based on mouse click position
    if (mouse_y_pos >= answer1_y && mouse_y_pos <= answer1_y + 40) {
        global.player_answer = 1;  // Player selects option 1
        check_answer();
    } else if (mouse_y_pos >= answer2_y && mouse_y_pos <= answer2_y + 40) {
        global.player_answer = 2;  // Player selects option 2
        check_answer();
    } else if (mouse_y_pos >= answer3_y && mouse_y_pos <= answer3_y + 40) {
        global.player_answer = 3;  // Player selects option 3
        check_answer();
    }
}
// Only count down if the quiz isn't completed
if (!global.quiz_completed && global.timer > 0) {
    global.timer -= 1;  // Countdown by 1 frame each step

    // If timer reaches 0, move to the next question and mark as incorrect
    if (global.timer == 0) {
        global.result_text = "Time's up!";
        alarm[0] = 30;  // Move to next question after showing "Time's up!" feedback
    }
}
// Check for player's answer using mouse input
if (!global.quiz_completed && mouse_check_button_pressed(mb_left)) {
    var mouse_y_pos = mouse_y;
    var answer1_y = 150;  // Y position for Answer 1
    var answer_spacing = 50;  // Spacing between answers

    // Check which answer the player selected based on mouse click position
    if (mouse_y_pos >= answer1_y && mouse_y_pos <= answer1_y + answer_spacing) {
        global.player_answer = 1;
        check_answer();
    } else if (mouse_y_pos >= answer1_y + answer_spacing && mouse_y_pos <= answer1_y + (2 * answer_spacing)) {
        global.player_answer = 2;
        check_answer();
    } else if (mouse_y_pos >= answer1_y + (2 * answer_spacing) && mouse_y_pos <= answer1_y + (3 * answer_spacing)) {
        global.player_answer = 3;
        check_answer();
    }
}
