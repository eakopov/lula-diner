// Draw the sprite of the object
draw_self();

draw_set_halign(fa_center);

// Set the text color to black
draw_set_color(c_black);

// Define text content
var text = "Your pitch went off without a hitch! " + 
           "You jumped through those hoops like a pro! " +
           "After a well-done pitch to NASA, I think lunch is in order! " +
           "Let's head to the NASA Psyche diner!";

// Define text bounds **relative to object position**
var x_start = x;  // Start at the object's X position
var max_width = 410;  // Maximum width for wrapping
var y_start = y;  // Start at the object's Y position
var line_height = 24; 

// **Function to wrap text properly**
function string_wrap(_text, _max_width) {
    var words = string_split(_text, " "); // Split text into words
    var lines = []; // Store wrapped lines
    var current_line = ""; // Build the current line

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];

        // If adding the word exceeds max width, start a new line
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

// **Wrap the text into multiple lines**
var lines = string_wrap(text, max_width);

// **Draw each wrapped line relative to the object's position**
for (var i = 0; i < array_length(lines); i++) {
    draw_text(x_start, y_start + (i * line_height), lines[i]);
}

// **Draw Performance Rating on a separate line below wrapped text**
draw_text(x_start, y_start + (array_length(lines) * line_height) + 30, "Performance Rating: " + global.jumpResults);

draw_set_color(c_yellow);
// **Draw New Best Score if applicable**
if (global.new_best_score) {
    draw_text(x_start, y_start + (array_length(lines) * line_height) + 60, "New Best Score!");
}

draw_set_color(c_black);
// **Additional Spacing for the "Press C to Continue" text**
draw_text(x_start, y_start + (array_length(lines) * line_height) + 90, "(Press C to continue)");
