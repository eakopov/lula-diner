// Flashing logic for invincibility
var draw_alpha = 1;

if (global.invincible) {
    if ((global.invincibility_timer div 10) mod 2 == 0) {
        draw_alpha = 0.2;
    }
}

// Power-up glow
if (global.double_jump_active || global.speed_boost_active || global.double_points_active) {
    var scale_factor = 1.5 + 0.1 * sin(current_time / 300);
    draw_set_color(c_yellow);
    draw_set_alpha(0.5 * draw_alpha);
    draw_sprite_ext(sprite_index, image_index, x, y, scale_factor, scale_factor, 0, c_yellow, 0.5 * draw_alpha);
}

// Draw player sprite with flashing alpha
draw_set_color(c_white);
draw_set_alpha(draw_alpha);
draw_sprite(sprite_index, image_index, x, y);

// Reset alpha and color so nothing else is affected!
draw_set_alpha(1);
draw_set_color(c_white);
