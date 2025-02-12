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

// Define text and bounds **relative to the object's position**
var x_start = x + 2;  // Small offset from the object's x position
var x_end = x + 338;  // Keeps width same but relative
var y_start = y + 1;  // Small offset from the object's y position
var line_height = 20; // Vertical spacing between lines

// Calculate the maximum line width
var max_width = x_end - x_start;

// Handle different game states
if (global.current_text_index < 8) {
    text = global.psyche_mission_phases[global.current_text_index];
} else {
    // Bonus Round Handling
    if(global.bonusmusic_id == -1) { 
        audio_stop_sound(global.jumpmusic_id);
        global.jumpmusic_id = -1;
        global.bonusmusic_id = audio_play_sound(bonusmusic, 1, true);
    }

    if (global.jump_timer > 0) {
        if (global.question_in_progress) {
            if (!global.question_answered) {
                // Show the current question
                var qIndex = global.bonus_question_index; 
                var question_data = global.mc_questions[qIndex]; 
                var question_text = question_data[0] 
                                   + "\n1) " + question_data[1]
                                   + "\n2) " + question_data[2]
                                   + "\n3) " + question_data[3]
                                   + "\n4) " + question_data[4];

                text = question_text;
            } else {
                // Show answer feedback
                text = global.current_answer_feedback;
            }
        } else { 
            // Waiting for next question
            text = "Waiting for the next question... Keep collecting hoops!";
        }
    } 
    else if (global.bonus_question_index >= array_length(global.mc_questions)) { 
        text = "All Phases and Questions Passed! 1000 Bonus Points! Good Job! :) You had " 
        + string(global.leftOverTimeScore / 2) 
        + " seconds left and earned " 
        + string(global.leftOverTimeScore) 
        + " extra points!";

        if (bonusOver == -1) {
            global.jump_score += 1000;
            audio_play_sound(bonuspoints, 1, false); // Play bonus sound once
            audio_stop_sound(global.bonusmusic_id);
            bonusOver = 1;
        }
    } else {
        text = "All Phases Passed! Good Job! :)";
        if (bonusOver == -1) {
            audio_stop_sound(global.bonusmusic_id);
            bonusOver = 1;
        }	    
    }
}

// **Text Wrapping Function**
function string_wrap(_text, _max_width) {
    var words = string_split(_text, " "); // Split text into words
    var lines = []; // Store wrapped lines
    var current_line = ""; // Build the current line

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];
        if (string_width(current_line + " " + word) > _max_width) {
            array_push(lines, current_line); // Save current line
            current_line = word; // Start new line
        } else {
            current_line += (current_line == "") ? word : " " + word;
        }
    }

    if (current_line != "") {
        array_push(lines, current_line);
    }

    return lines;
}

// **Wrap the text and draw it at relative position**
var lines = string_wrap(text, max_width);
for (var i = 0; i < array_length(lines); i++) {
    draw_text(x_start, y_start + (i * line_height), lines[i]);
}
