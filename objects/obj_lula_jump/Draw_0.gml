// Check for active power-ups
if (global.double_jump_active || global.speed_boost_active || global.double_points_active) {
    // Calculate a pulsating scale factor
    var scale_factor = 1.5 + 0.1 * sin(current_time / 300); // Pulsates between 1.5 and 1.6

    // Draw the glowing effect
    draw_set_color(c_yellow); // Set the glow color
    draw_set_alpha(0.5); // Make it semi-transparent
    draw_sprite_ext(sprite_index, image_index, x, y, scale_factor, scale_factor, 0, c_yellow, 0.5);
}

// Reset the alpha and color
draw_set_alpha(1);
draw_set_color(c_white);

// Draw the actual sprite
draw_sprite(sprite_index, image_index, x, y);
