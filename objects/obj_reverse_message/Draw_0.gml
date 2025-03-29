// Set the text color to red
draw_set_color(c_red);

// Define the text
var text_message = "Bad Hoop! Controls Reversed!";

// Draw the text at the specified position
draw_text(x, y + 50, text_message);

// Calculate the width and height of the text
var text_width = string_width(text_message);
var text_height = string_height(text_message);

// Draw a red rectangle around the text (not filled)
draw_rectangle(x, y + 43, x + text_width, y + 50 + text_height, true);
