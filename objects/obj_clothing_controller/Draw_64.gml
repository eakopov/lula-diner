// Viewport dimensions
var view_x = 0;            // Horizontal start of the viewport
var view_y = 480 * obj_clothing_controller.SCALE_MULTIPLIER;  // Vertical start of the viewport
var view_w = 1280 * obj_clothing_controller.SCALE_MULTIPLIER; // Width of the viewport
var view_h = 240 * obj_clothing_controller.SCALE_MULTIPLIER; // Height of the viewport

// Border properties
var border_thickness = 4 * obj_clothing_controller.SCALE_MULTIPLIER; // Thickness of the border
draw_set_color(c_white);   // Border color

// Draw the top border
draw_rectangle(view_x, view_y - border_thickness, 
               view_x + view_w, view_y, false);

// Draw the bottom border
draw_rectangle(view_x, view_y + view_h - border_thickness, 
               view_x + view_w, view_y + view_h, false);

// Draw the left border
draw_rectangle(view_x - border_thickness, view_y, 
               view_x, view_y + view_h, false);

// Draw the right border
draw_rectangle(view_x + view_w - border_thickness, view_y, 
               view_x + view_w, view_y + view_h, false);
