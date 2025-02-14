/// @description Displays the player's points counter

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
var text_scale = 2;

// Draw the points counter with scaling
draw_text_transformed(_x, _y, string(global.PointsCounter), text_scale, text_scale, 0);
