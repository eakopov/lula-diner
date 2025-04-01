// Draw the sprite of the object (if applicable) 
draw_self();

// Set the text color to blue for the text later
draw_set_color(c_blue);

// Define text content
var text = "Now that you're dressed professionally, we're ready to pitch our NASA Psyche-inspired mission! " + 
           "An effective pitch sometimes requires jumping through a lot of hurdles and challenges to be successful, " +
           "or in this case jumping through hoops!";

// Define text bounds **relative to object position**
var x_start = x;  
var x_end = x + 400;  
var y_start = y;  
var line_height = 20; 

// Function to wrap text at the given max width
function string_wrap(_text, _max_width) {
    var words = string_split(_text, " ");
    var lines = [];
    var current_line = "";

    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];
        if (string_width(current_line + " " + word) > _max_width) {
            array_push(lines, current_line);
            current_line = word;
        } else {
            current_line += (current_line == "") ? word : " " + word;
        }
    }

    if (current_line != "") {
        array_push(lines, current_line);
    }

    return lines;
}

// Wrap the text
var lines = string_wrap(text, x_end - x_start);

// Calculate height of all lines (including instruction text)
var total_height = (array_length(lines) + 1) * line_height + 10;

// Draw the pink background rectangle (behind text)
draw_set_color(make_color_rgb(255, 105, 180)); // Pink
draw_rectangle(x_start - 200, y_start - 10, x_end - 190, y_start + total_height, false); // false = filled

// Draw the text over the rectangle
draw_set_color(c_blue);
for (var i = 0; i < array_length(lines); i++) {
    draw_text(x_start, y_start + (i * line_height), lines[i]);
}

// Instruction line
draw_text(x_start, y_start + (array_length(lines) * line_height) + 10, "(Press C to continue)");
