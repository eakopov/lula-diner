// Check if the global checkbox is set to hide the text display  
if (global.checkbox_is_checked) {
    return; // Do not draw anything if text should be hidden
}

// Draw the sprite of obj_text_display_jump
draw_self();

// Set text alignment
draw_set_halign(fa_left);  
draw_set_color(c_black); // Set text color to black

// Define text position **relative to object**
var x_start = x + 2;
var x_end = x + 338;
var y_start = y + 1;
var line_height = 20; 
var max_width = x_end - x_start; 

var text = "";
var text_lines = []; // Stores lines to draw

// Check if we're in the **main phase** or **bonus round**
if (global.current_text_index < 8) {
    // Normal phase text
    text_lines = string_wrap(global.psyche_mission_phases[global.current_text_index], max_width);
} 
else {
    // Bonus round logic
    if (global.bonusmusic_id == -1) { 
        audio_stop_sound(global.jumpmusic_id);
        global.jumpmusic_id = -1;
        global.bonusmusic_id = audio_play_sound(bonusmusic, 1, true);
    }

    if (global.jump_timer > 0) {
        if (global.question_in_progress) {
            if (!global.question_answered) {
                // **Extract question & answers separately**
                var qIndex = global.bonus_question_index;
                var question_data = global.mc_questions[qIndex];

                var question_text = question_data[0];  // Question itself
                var answers_text = [
                    "1) " + question_data[1],
                    "2) " + question_data[2],
                    "3) " + question_data[3],
                    "4) " + question_data[4]
                ]; 

                // Wrap question text separately
                text_lines = string_wrap(question_text, max_width);

                // Add extra spacing after question before answers
                text_lines[array_length(text_lines) - 1] += "\n"; // Newline after question
                
                // Add each answer on a new line
                for (var i = 0; i < array_length(answers_text); i++) {
                    array_push(text_lines, answers_text[i]);
                }
            } 
            else {
                // Show answer feedback
                text_lines = string_wrap(global.current_answer_feedback, max_width);
            }
        } 
        else { 
            // Waiting for the next question
            text_lines = string_wrap("Waiting for the next question... Keep collecting hoops!", max_width);
        }
    } 
    else if (global.bonus_question_index >= array_length(global.mc_questions)) { 
        // End of bonus round text
        // Ensure wrapping is correct by splitting into separate lines
        text_lines = []; // Reset array to store text lines

        array_push(text_lines, "All Phases and Questions Passed!");
        array_push(text_lines, "1000 Bonus Points! Good Job! :)");
        array_push(text_lines, "You had " + string(global.leftOverTimeScore / 2) + " seconds left");
        array_push(text_lines, "and earned " + string(global.leftOverTimeScore) + " extra points!");

        if (bonusOver == -1) {
            global.jump_score += 1000;
            audio_play_sound(bonuspoints, 1, false); 
            audio_stop_sound(global.bonusmusic_id);
            bonusOver = 1;
        }
    } 
    else {
        text_lines = string_wrap("All Phases Passed! Good Job! :)", max_width);
        if (bonusOver == -1) {
            audio_stop_sound(global.bonusmusic_id);
            bonusOver = 1;
        }	    
    }
}

// **Function to wrap text properly**
function string_wrap(_text, _max_width) {
    var words = string_split(_text, " "); 
    var lines = []; 
    var current_line = ""; 

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];
        if (string_width(current_line + " " + word) > _max_width) {
            array_push(lines, current_line); 
            current_line = word; 
        } 
        else {
            current_line += (current_line == "") ? word : " " + word;
        }
    }

    if (current_line != "") {
        array_push(lines, current_line);
    }

    return lines;
}

// **Draw all lines of text properly**
for (var i = 0; i < array_length(text_lines); i++) {
    draw_text(x_start, y_start + (i * line_height), text_lines[i]);
}
