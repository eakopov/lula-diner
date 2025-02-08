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

/// @description Insert description here
// You can write your code in this editor


/// @description Displays the player's points counter

/// @description Displays the player's points counter in Draw GUI (after the game is over)

if (obj_clothing_controller.ready_for_results) {
    // Get screen dimensions
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();

    // Draw a white background
    draw_set_color(c_white);
    draw_rectangle(0, 0, gui_width, gui_height, false); // Solid white background

    // Set text formatting
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // Get center of the screen
    var _x = gui_width / 2;
    var _y = gui_height / 2;

    // Ensure text renders smoothly
    //draw_set_font(fnt_custom); // Replace with a high-resolution font
    draw_text_ext(_x, _y, "Congrats, you finished with " + string(global.PointsCounter) + " points!", 20, gui_width - 40);
}
