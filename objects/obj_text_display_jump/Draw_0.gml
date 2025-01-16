// Check if the global checkbox is set to hide the text display
if (global.checkbox_is_checked) {
    // Do not draw anything if the checkbox indicates hiding
    return;
}

// Draw the sprite of obj_text_display_jump
draw_self();

// Set the text color to black
draw_set_color(c_black);

var text = "";
// Define text and bounds
if(global.current_text_index < 8) {
	text = global.psyche_mission_phases[global.current_text_index]; // Get the current text
} else {
	if (global.jump_timer > 0) {
           text = global.bonus_nasa_questions[global.bonus_question_index]; //sets text to placeholder question
        } else if (global.bonus_question_index >= 5) { 
           text = "All Phases and Question Past! Bonus Points! Good Job! :)"
        } else {
           text = "All Phases Past! Good Job! :)"
        }
}
var x_start = 322; // Starting x position
var x_end = 660;   // Ending x position
var y_start = 65; // Starting y position
var line_height = 20; // Vertical spacing between lines

// Calculate the maximum line width
var max_width = x_end - x_start;

// Inline function for string wrapping
function string_wrap(_text, _max_width) {
    var words = string_split(_text, " "); // Split text into words
    var lines = []; // Store wrapped lines
    var current_line = ""; // Build the current line

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];
        // Check if adding the next word exceeds the width
        if (string_width(current_line + " " + word) > _max_width) {
            array_push(lines, current_line); // Save the current line
            current_line = word; // Start a new line
        } else {
            current_line += (current_line == "") ? word : " " + word; // Add the word to the line
        }
    }

    // Add the final line
    if (current_line != "") {
        array_push(lines, current_line);
    }

    return lines;
}

// Split the text into multiple lines
var lines = string_wrap(text, max_width);

// Draw each line
for (var i = 0; i < array_length(lines); i++) {
    draw_text(x_start, y_start + (i * line_height), lines[i]);
}
