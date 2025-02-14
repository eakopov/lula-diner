// Set text color to black
draw_set_color(c_black);

// Define progress text
var progress_text = "Hoops Passed: " + string(global.hoops_passed) + "/3";

// Define text position
var text_x = x + 10;  // Adjust X position relative to the object's position
var text_y = y + 374; // Adjust Y position relative to the object's position


// Define rectangle padding
var padding_x = 10; // Extra space around text width
var padding_y = 5;  // Extra space around text height

// Get text width and height
var text_width = string_width(progress_text);
var text_height = string_height(progress_text);

// Draw the rectangle outline around the text
draw_rectangle(text_x - padding_x, text_y - padding_y, 
               text_x + text_width + padding_x, text_y + text_height + padding_y, true);

// Draw the text inside the rectangle
draw_text(text_x, text_y, progress_text);
