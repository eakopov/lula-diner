// Define arrow dimensions
var arrow_width = 189;
var arrow_height = 100;
var arrow_tip_width = 50; // Width of the arrowhead

// Set colors
var fill_color = make_color_rgb(255, 105, 180); // Pink fill
var outline_color = c_blue; // Blue outline

// Get object position
var x1 = x; 
var y1 = y;
var x2 = x1 + arrow_width; 
var y2 = y1 + arrow_height;

// **Step 1: Draw the filled arrow (pink)**
draw_set_color(fill_color);

// Draw the arrow's main rectangle (body)
draw_rectangle(x1, y1 + arrow_height / 4, x1 + (arrow_width - arrow_tip_width), y2 - arrow_height / 4, false);

// Draw the arrowhead (triangle) using primitives
draw_primitive_begin(pr_trianglelist);
draw_vertex(x1 + (arrow_width - arrow_tip_width), y1);  // Top right
draw_vertex(x1 + (arrow_width - arrow_tip_width), y2);  // Bottom right
draw_vertex(x2, y1 + arrow_height / 2);                // Arrow tip
draw_primitive_end();

// **Step 2: Draw the blue outline using lines**
draw_set_color(outline_color);

// Outline the main rectangle (body)
draw_line(x1, y1 + arrow_height / 4, x1 + (arrow_width - arrow_tip_width), y1 + arrow_height / 4); // Top line
draw_line(x1, y2 - arrow_height / 4, x1 + (arrow_width - arrow_tip_width), y2 - arrow_height / 4); // Bottom line
draw_line(x1, y1 + arrow_height / 4, x1, y2 - arrow_height / 4); // Left side

// Outline the arrowhead (triangle)
draw_line(x1 + (arrow_width - arrow_tip_width), y1, x2, y1 + arrow_height / 2); // Top diagonal line
draw_line(x1 + (arrow_width - arrow_tip_width), y2, x2, y1 + arrow_height / 2); // Bottom diagonal line
draw_line(x1 + (arrow_width - arrow_tip_width), y1, x1 + (arrow_width - arrow_tip_width), y2); // Vertical line at arrowhead base
