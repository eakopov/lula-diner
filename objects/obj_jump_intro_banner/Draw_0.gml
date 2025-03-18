// Define dimensions
var banner_width = 600;
var banner_height = 100;

// Draw pink background (filled)
draw_set_color(make_color_rgb(255, 105, 180)); 
draw_rectangle(x, y, x + banner_width, y + banner_height, false); 

// Draw blue outline
draw_set_color(c_blue);
draw_rectangle(x, y, x + banner_width, y + banner_height, true); 

// Set text properties
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_blue);

// Scale the text manually
var text_x = x + banner_width / 2;
var text_y = y + banner_height / 2;
var scale = 2;

// Draw the scaled text
draw_text_transformed(text_x, text_y, "Lula is Jumping Through Hoops!",  scale, scale, 0);
