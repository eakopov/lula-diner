// If showing difficulty selection
if (global.show_difficulty_selection) {
    draw_text(170, 200, "Select Difficulty:");
    draw_text(170, 250, "Easy");
    draw_text(170, 300, "Medium");
    draw_text(170, 350, "Hard");
} 
// If the quiz is in progress
else if (!global.quiz_completed) {
    var question_data = global.questions[global.current_question];
    var question_text = "Question: " + question_data[0];
    var char_limit = 40;
    var line_spacing = 30;

    // Draw wrapped question text
    draw_text_wrapped(170, 200, question_text, char_limit, line_spacing);

    // Draw answer options
    draw_text(170, 300, question_data[1]);
    draw_text(170, 350, question_data[2]);
    draw_text(170, 400, question_data[3]);

    // Display score and timer
    draw_text(400, 500, "Score: " + string(global.score));
    draw_text(400, 550, "Time: " + string(global.timer div 60) + " seconds");

    // Display feedback with line-breaking
    if (global.result_text != "") {
        draw_text_wrapped(170, 450, global.result_text, char_limit, line_spacing);
    }
} 
// If the quiz is completed
else {
    // Draw win/lose message with line-breaking
    draw_text_wrapped(170, 300, global.result_text, 40, 30);

    draw_text(170, 350, "Click here to retry.");
    draw_text(170, 400, "Click here to see the leaderboard and continue to the next game.");

    // Handle mouse click to restart or continue
    if (mouse_check_button_pressed(mb_left)) {
        var mouse_y_pos = mouse_y;
        if (mouse_y_pos >= 350 && mouse_y_pos <= 380) {
            global.current_question = 0;
            global.score = 0;
            global.quiz_completed = false;
            global.timer = 1000;
            global.result_text = "";
            global.timeouts = 0;
            global.show_difficulty_selection = true;
        } else if (mouse_y_pos >= 400 && mouse_y_pos <= 430) {
            room_goto(room_leaderboard);
        }
    }
}
/// draw_text_wrapped(x, y, text, char_limit, line_spacing)
/// @param x The x position to start drawing text.
/// @param y The y position to start drawing text.
/// @param text The text to draw.
/// @param char_limit The maximum number of characters per line.
/// @param line_spacing The vertical spacing between lines.
function draw_text_wrapped(x, y, text, char_limit, line_spacing) {
    var current_y = y;
    while (string_length(text) > char_limit) {
        var split_index = char_limit;
        
        // Find the last space within the character limit
        while (string_char_at(text, split_index) != " " && split_index > 0) {
            split_index -= 1;
        }
        
        if (split_index > 0) {
            draw_text(x, current_y, string_copy(text, 1, split_index));
            text = string_copy(text, split_index + 1, string_length(text) - split_index);
        } else {
            draw_text(x, current_y, string_copy(text, 1, char_limit));
            text = string_copy(text, char_limit + 1, string_length(text) - char_limit);
        }
        
        current_y += line_spacing; // Move down to the next line
    }
    
    // Draw any remaining text
    draw_text(x, current_y, text);
}
