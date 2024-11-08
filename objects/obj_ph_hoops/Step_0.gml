// Step Event of obj_hoop

if (movement_type == "horizontal") {
    x += movement_speed * x_direction;

    // Reverse direction if reaching boundaries
    if (x <= left_boundary || x >= right_boundary) {
        x_direction *= -1;
    }
} else if (movement_type == "vertical") {
    y += movement_speed * y_direction;

    // Reverse direction if reaching boundaries
    if (y <= top_boundary || y >= bottom_boundary) {
        y_direction *= -1;
    }
}
