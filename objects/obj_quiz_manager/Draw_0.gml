if (global.show_difficulty_selection) {
    // Draw the difficulty selection screen
    draw_text(170, 200, "Select Difficulty:");
    draw_text(170, 250, "Easy");
    draw_text(170, 300, "Medium");
    draw_text(170, 350, "Hard");
} else if (!global.quiz_completed) {
    // Draw current question and answers if quiz is in progress
// Draw current question and answers if quiz is in progress
var question_data = global.questions[global.current_question];
var question_text = "Question: " + question_data[0];

// Define a character limit per line (adjust this number as needed)
var char_limit = 40; // Adjust based on desired line length

// Check if the question is longer than the character limit
if (string_length(question_text) > char_limit) {
    // Find the last space within the character limit to avoid splitting words
    var split_index = char_limit;
    while (string_char_at(question_text, split_index) != " " && split_index > 0) {
        split_index -= 1;
    }

    // If a space was found within the limit, split at that point
    if (split_index > 0) {
        var line1 = string_copy(question_text, 1, split_index);
        var line2 = string_copy(question_text, split_index + 1, string_length(question_text) - split_index);

        // Draw the two lines separately
        draw_text(170, 200, line1);
        draw_text(170, 230, line2); // Second line slightly lower
    } else {
        // If no space was found, just split at char_limit
        var line1 = string_copy(question_text, 1, char_limit);
        var line2 = string_copy(question_text, char_limit + 1, string_length(question_text) - char_limit);

        draw_text(170, 200, line1);
        draw_text(170, 230, line2);
    }
} else {
    // If the question is short enough, draw it on a single line
    draw_text(170, 200, question_text);
}

    draw_text(170, 300, question_data[1]);
    draw_text(170, 350, question_data[2]);
    draw_text(170, 400, question_data[3]);

    // Display score and timer
    draw_text(400, 500, "Score: " + string(global.score));
    draw_text(400, 550, "Time: " + string(global.timer div 60) + " seconds");

    // Display feedback if answer was correct or incorrect
    if (global.result_text != "") {
        draw_text(170, 450, global.result_text);
    }
} else {
    // Show end screen options
    draw_text(170, 300, "Quiz completed! Final Score: " + string(global.score));
    draw_text(170, 350, "Click here to retry.");
    draw_text(170, 400, "Click here to continue to the next game.");

    // Handle mouse click to restart or continue
    if (mouse_check_button_pressed(mb_left)) {
        var mouse_y_pos = mouse_y;
        if (mouse_y_pos >= 400 && mouse_y_pos <= 430) {
            global.current_question = 0;
            global.score = 0;
            global.quiz_completed = false;
            global.timer = 300;
            global.result_text = "";
            global.show_difficulty_selection = true; // Return to difficulty selection
        } else if (mouse_y_pos >= 450 && mouse_y_pos <= 480) {
            room_goto(room_deck);  // Move to the next game room
        }
    }
}
