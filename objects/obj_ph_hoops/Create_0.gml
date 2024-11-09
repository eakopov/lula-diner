// Randomly set the movement type
movement_type = choose("vertical", "horizontal");

// Set a speed value for movement (adjust as desired)
movement_speed = 2;

// Define movement boundaries (adjust as needed)
left_boundary = x - 50;
right_boundary = x + 50;
top_boundary = y - 50;
bottom_boundary = y + 50;

// Set initial movement direction
if (movement_type == "horizontal") {
    x_direction = choose(-1, 1); // -1 for left, 1 for right
    y_direction = 0;              // No vertical movement
} else {
    y_direction = choose(-1, 1); // -1 for up, 1 for down
    x_direction = 0;              // No horizontal movement
}
