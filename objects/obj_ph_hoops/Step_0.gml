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

if (active_fade)
{
    // Gradually shrink the hoop
    image_xscale -= shrink_speed;
    image_yscale -= shrink_speed;
    
    // Gradually fade out
    image_alpha -= fade_speed;
    
    // Destroy the hoop when it's too small or fully transparent
    if (image_alpha <= 0 || image_xscale <= 0.1)
    {
        instance_destroy();
    }
}
