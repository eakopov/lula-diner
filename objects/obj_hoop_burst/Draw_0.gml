// Set transparency for fade-out effect
draw_set_alpha(image_alpha);

// Set color for burst effect
draw_set_color(c_yellow);

// Draw the expanding burst circle
draw_circle(x, y, image_xscale * 20, false); // Adjust the multiplier for size

// Reset draw settings
draw_set_alpha(1);
draw_set_color(c_white);

