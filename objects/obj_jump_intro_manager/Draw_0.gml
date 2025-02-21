// Draw the sprite of the object (if applicable)
draw_self();

// Set the text color to black
draw_set_color(c_black);

// Define text content
var text = "Now that you're dressed professionally, we're ready to pitch our NASA Psyche-inspired mission! " + 
           "An effective pitch sometimes requires jumping through a lot of hurdles and challenges to be successful, " +
           "or in this case jumping through hoops!";

// Define text bounds **relative to object position**
var x_start = x;  // Start at the object's X position
var x_end = x + 400;  // Maximum width
var y_start = y;  // Start at the object's Y position
var line_height = 20; // Vertical spacing between lines

// Function to wrap text at the given max width
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

// Wrap the text into multiple lines
var lines = string_wrap(text, x_end - x_start);

// Draw each wrapped line relative to the object's position
for (var i = 0; i < array_length(lines); i++) {
    draw_text(x_start, y_start + (i * line_height), lines[i]);
}

// Display message to instruct the user to press C to continue
draw_text(x_start, y_start + (array_length(lines) * line_height) + 10, "(Press C to continue)");
