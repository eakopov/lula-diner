// Step Event of obj_double_jump_powerup
y += movement_speed * y_direction;

// Reverse direction at boundaries
if (y <= top_boundary || y >= bottom_boundary) {
    y_direction *= -1;
}
