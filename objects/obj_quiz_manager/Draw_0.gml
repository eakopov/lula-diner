// If showing difficulty selection
if (global.show_difficulty_selection) {
    // Draw the difficulty selection screen
    draw_text(170, 200, "Select Difficulty:");
    draw_text(170, 250, "Easy");
    draw_text(170, 300, "Medium");
    draw_text(170, 350, "Hard");
} 

// If the quiz is in progress
else if (!global.quiz_completed) {
    // Draw current question and answers if quiz is in progress
    var question_data = global.questions[global.current_question];
    var question_text = "Question: " + question_data[0];

    // Define a character limit per line for splitting long text
    var char_limit = 40;

    // Check if the question text exceeds the character limit
    if (string_length(question_text) > char_limit) {
        // Find the last space within the character limit to avoid splitting words
        var split_index = char_limit;
        while (string_char_at(question_text, split_index) != " " && split_index > 0) {
            split_index -= 1;
        }

        // Split the question text across two lines
        var line1, line2;
        if (split_index > 0) {
            line1 = string_copy(question_text, 1, split_index);
            line2 = string_copy(question_text, split_index + 1, string_length(question_text) - split_index);
        } else {
            line1 = string_copy(question_text, 1, char_limit);
            line2 = string_copy(question_text, char_limit + 1, string_length(question_text) - char_limit);
        }

        // Draw the question text on two lines
        draw_text(170, 200, line1);
        draw_text(170, 230, line2);
    } else {
        // Draw the question text on a single line if short enough
        draw_text(170, 200, question_text);
    }

    // Draw answer options
    draw_text(170, 300, question_data[1]);
    draw_text(170, 350, question_data[2]);
    draw_text(170, 400, question_data[3]);

    // Display score and timer
    draw_text(400, 500, "Score: " + string(global.score));
    draw_text(400, 550, "Time: " + string(global.timer div 60) + " seconds");

    // Display feedback message with line-breaking if needed
    if (global.result_text != "") {
        var feedback_text = global.result_text;
        
        // Line-breaking for feedback
        if (string_length(feedback_text) > char_limit) {
            var feedback_split_index = char_limit;
            while (string_char_at(feedback_text, feedback_split_index) != " " && feedback_split_index > 0) {
                feedback_split_index -= 1;
            }
            if (feedback_split_index > 0) {
                var feedback_line1 = string_copy(feedback_text, 1, feedback_split_index);
                var feedback_line2 = string_copy(feedback_text, feedback_split_index + 1, string_length(feedback_text) - feedback_split_index);
                draw_text(170, 450, feedback_line1);
                draw_text(170, 480, feedback_line2);
            } else {
                var feedback_line1 = string_copy(feedback_text, 1, char_limit);
                var feedback_line2 = string_copy(feedback_text, char_limit + 1, string_length(feedback_text) - char_limit);
                draw_text(170, 450, feedback_line1);
                draw_text(170, 480, feedback_line2);
            }
        } else {
            draw_text(170, 450, feedback_text);
        }
    }
} 

// If the quiz is completed
else {
    // Show end screen options
    draw_text(170, 300, "Quiz completed! Final Score: " + string(global.score));
    draw_text(170, 350, "Click here to retry.");
    draw_text(170, 400, "Click here to continue to the next game.");

    // Handle mouse click to restart or continue
    if (mouse_check_button_pressed(mb_left)) {
        var mouse_y_pos = mouse_y;
        if (mouse_y_pos >= 350 && mouse_y_pos <= 380) {
            // Reset variables for a new game
            global.current_question = 0;
            global.score = 0;
            global.quiz_completed = false;
            global.timer = 1000;
            global.result_text = "";
            global.show_difficulty_selection = true; // Show difficulty selection again
        } else if (mouse_y_pos >= 400 && mouse_y_pos <= 430) {
            room_goto(room_deck);  // Move to the next game room
        }
    }
}
