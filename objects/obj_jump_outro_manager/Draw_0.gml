// Draw the sprite of the object
draw_self();

draw_set_halign(fa_center);

// Set the text color to blue
draw_set_color(c_blue);

// Define text content
var text = "Your pitch went off without a hitch! " + 
           "You jumped through those hoops like a pro! " +
           "After a well-done pitch to NASA, I think lunch is in order! " +
           "Let's head to the NASA Psyche diner!";

// Define text bounds **relative to object position**
var x_start = x;
var max_width = 410;
var y_start = y;
var line_height = 24;

var extra_spacing = 175;       // Distance between main text and extra section
var rect_padding = 10;         // Padding for both rectangles
var extra_rect_padding = 12;   // Extra padding for bottom rectangle

// ========== Text Wrapping Function ==========
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

// Wrap main text
var lines = string_wrap(text, max_width);

// ====== Draw first pink rectangle (main text) ======
var text_height = array_length(lines) * line_height;
var rect_x1 = x_start - max_width / 2 - rect_padding;
var rect_x2 = x_start + max_width / 2 + rect_padding;
var rect_y1 = y_start - rect_padding;
var rect_y2 = y_start + text_height + rect_padding;

draw_set_color(make_color_rgb(255, 105, 180)); // Pink
draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2-20, false);

// Draw main wrapped text
draw_set_color(c_blue);
for (var i = 0; i < array_length(lines); i++) {
    draw_text(x_start, y_start + (i * line_height), lines[i]);
}

// Draw second pink rectangle (extra text) ======
var extra_section_y = y_start + text_height + extra_spacing;
var extra_lines = 3; // Up to 3 lines: rating, best score, press C
var extra_rect_top = extra_section_y - extra_rect_padding;
var extra_rect_bot = extra_section_y + (extra_lines * line_height) + extra_rect_padding;

draw_set_color(make_color_rgb(255, 105, 180)); // Pink
draw_rectangle(rect_x1+80, extra_rect_top, rect_x2-80, extra_rect_bot, false);

// Draw extra text block
draw_set_color(c_blue);
draw_text(x_start, extra_section_y, "Performance Rating: " + global.jumpResults);

if (global.new_best_score) {
    draw_text(x_start, extra_section_y + 30, "New Best Score!");
}

draw_text(x_start, extra_section_y + 60, "(Press C to continue)");
