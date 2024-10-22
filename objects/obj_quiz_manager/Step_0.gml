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
