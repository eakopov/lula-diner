// Function to wrap text into multiple lines
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

// Draw the wrapped text with fading
draw_set_alpha(text_alpha);
draw_set_color(c_red);

// Wrap the text
var wrapped_lines = string_wrap(text, 70); // Maximum line width of 50 x-units
var line_height = 20; // Drop down by 20 y-units per line

// Draw each line
for (var i = 0; i < array_length(wrapped_lines); i++) {
    draw_text(x, y + (i * line_height), wrapped_lines[i]);
}

// Reset alpha for other objects
draw_set_alpha(1);


