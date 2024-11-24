// Define progress bar dimensions
var bar_x = 31; // Starting X position
var bar_y = 154; // Starting Y position (under timer)
var bar_width = 195; // Total width of the progress bar
var bar_height = 20; // Height of the progress bar

// Set the number of actual phases (6 phases, ignoring index 0 in the array)
var total_phases = 6;

// Adjust the current phase index to exclude the introduction
var current_phase_index = global.current_text_index;

// Draw the full pink progress bar (background)
draw_set_color(make_color_rgb(255, 105, 180)); // Pink color
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Calculate the width of each phase segment
var phase_step = bar_width / total_phases;

// Draw white rectangles for incomplete phases
draw_set_color(c_white);
for (var i = current_phase_index; i < total_phases; i++) {
    var rect_start_x = bar_x + (i * phase_step);
    var rect_end_x = rect_start_x + phase_step;
    draw_rectangle(rect_start_x, bar_y, rect_end_x, bar_y + bar_height, false);
}

// Draw markers for each phase
draw_set_color(c_black);
for (var i = 0; i <= total_phases; i++) {
    var marker_x = bar_x + (i * phase_step);
    draw_line(marker_x, bar_y, marker_x, bar_y + bar_height); // Draw marker line
}

// Draw phase labels
draw_set_color(c_white);
for (var i = 1; i <= total_phases; i++) { // Start from P1 (ignore the intro phase)
    var label_x = bar_x + ((i - 0.5) * phase_step); // Center label between markers
    draw_text(label_x - 10, bar_y + bar_height + 5, "P" + string(i)); // Adjust offsets as needed
}

// Function to wrap text
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

// Draw the wrapped text above the progress bar
var text_top = "Phases Of The Mission You've Completed";
var wrapped_lines = string_wrap(text_top, bar_width); // Wrap the text to fit within the bar width
var text_y_start = bar_y - 45; // Move the text higher above the progress bar

for (var i = 0; i < array_length(wrapped_lines); i++) {
    var line_x = bar_x + (bar_width / 2) - (string_width(wrapped_lines[i]) / 2); // Center each line
    var line_y = text_y_start + (i * 15); // Space lines 15 pixels apart
    draw_text(line_x, line_y, wrapped_lines[i]);
}

// Draw the explanation text below the progress bar
var text_bottom = "(P = Phases, P1 = Phase 1)";
var text_bottom_x = bar_x + (bar_width / 2) - (string_width(text_bottom) / 2); // Center the text
var text_bottom_y = bar_y + bar_height + 35; // Position below the progress bar
draw_text(text_bottom_x, text_bottom_y, text_bottom);
