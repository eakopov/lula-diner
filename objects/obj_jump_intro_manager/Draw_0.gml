// Draw the sprite of the object (if applicable) 
draw_self();

// Set the text color to blue
draw_set_color(c_blue);

// Updated paragraph text
var text = "Now that you're dressed, we're ready to pitch our NASA Psyche-inspired mission! " + 
           "A good pitch requires jumping through a lot of hoops!";

// Define positioning and spacing values
var x_start = x;
var x_end = x + 400;
var y_start = y;
var line_height = 20;

var warning_above_gap = 5;          // Gap between paragraph and first warning
var paragraph_to_warning_gap = 65;   // Gap after first warning line
var warning_to_instruction_gap = 15;

// Wrap the paragraph
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

var lines = string_wrap(text, x_end - x_start);

// Warning lines
var first_warning = "Watch out for obstacles!";
var remaining_warnings = [
    "Red Hoops Reverse your controls!",
    "Space rocks will Knock You Back!"
];

// Calculate total height for the pink background
var total_height = 
    array_length(lines) * line_height +
    warning_above_gap +
    line_height + // first warning
    paragraph_to_warning_gap +
    array_length(remaining_warnings) * line_height +
    warning_to_instruction_gap +
    line_height;

// Draw pink background
draw_set_color(make_color_rgb(255, 105, 180)); // Pink
draw_rectangle(x_start - 200, y_start - 10, x_end - 190, y_start + total_height, false); // filled = false

// Draw paragraph
draw_set_color(c_blue);
for (var i = 0; i < array_length(lines); i++) {
    draw_text(x_start, y_start + (i * line_height), lines[i]);
}

// Y position of first warning line after the paragraph + gap
var first_warning_y = y_start + (array_length(lines) * line_height) + warning_above_gap;
draw_text(x_start, first_warning_y, first_warning);

// Remaining warnings
var warning_y_start = first_warning_y + paragraph_to_warning_gap;
for (var j = 0; j < array_length(remaining_warnings); j++) {
    draw_text(x_start, warning_y_start + (j * line_height), remaining_warnings[j]);
}

// "Press C to continue"
var instruction_y = warning_y_start + (array_length(remaining_warnings) * line_height) + warning_to_instruction_gap;
draw_text(x_start, instruction_y, "(Press C to continue)");
