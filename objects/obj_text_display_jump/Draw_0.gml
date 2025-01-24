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
if (global.current_text_index < 8) {
    // Use the normal phase text
    text = global.psyche_mission_phases[global.current_text_index];
} else {
    //In the "bonus" round (global.current_text_index >= 8)
    
    // If there's time left in the bonus round, display questions from the `global.mc_questions` array
    if (global.jump_timer > 0) {
	    if (global.question_in_progress) {
        if (!global.question_answered) {
            // Show the question 
            var qIndex = global.bonus_question_index; 
            var question_data = global.mc_questions[qIndex]; 
            
            var question_text = question_data[0] 
                               + "\n1) " + question_data[1]
                               + "\n2) " + question_data[2]
                               + "\n3) " + question_data[3]
                               + "\n4) " + question_data[4];
            
            text = question_text;
        } else {
            // If the user answered, display feedback
            text = global.current_answer_feedback;
        }
      }
    }
    // If bonus_question_index is out of range or time is up, fallback messages:
    else if (global.bonus_question_index >= array_length(global.mc_questions)) { 
        text = "All Phases and Questions Passed! 1000 Bonus Points! Good Job! :)";
		global.jump_score += 1000;
		
		// Play the bonus points sound
        audio_play_sound(bonuspoints, 1, false); // Sound, priority, looping (false)
    } else {
        text = "All Phases Passed! Good Job! :)";
    }
}

// X/Y bounds for text drawing
var x_start = 322; // Starting x position
var x_end = 660;   // Ending x position
var y_start = 65;  // Starting y position
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
