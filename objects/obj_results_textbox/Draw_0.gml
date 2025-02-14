/// @description Insert description here
// You can write your code in this editor


/// @description Displays the player's points counter

if(obj_clothing_controller.ready_for_results) {
// Draw the sprite (if needed)
draw_self();

// Set text formatting
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set position (adjust as needed)
var _x = x; // Centered on sprite
var _y = y; // Centered on sprite

// Scale factor (2x bigger text)
var text_scale = 1;

// Draw the points counter with scaling
draw_text_transformed(_x, _y, "Congrats, you finished with " + string(global.PointsCounter) + " points!", text_scale, text_scale, 0);
}