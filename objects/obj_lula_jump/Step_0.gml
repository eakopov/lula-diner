xsp = 0;
ysp = 0;

// Step Event:
// Gravity
ysp += 0.1;

// Horizontal movement (Arrow keys and WASD)
xsp = 0;
if keyboard_check(vk_left) || keyboard_check(ord("A"))
{
    xsp = -1;
}
if keyboard_check(vk_right) || keyboard_check(ord("D"))
{
    xsp = 1;
}

// Jumping (Arrow key up or W)
if place_meeting(x, y + 1, obj_ph_jump_ground)
{
    ysp = 0; // Stop falling
    double_jumped = false; // Reset double jump when player lands
    
    if keyboard_check(vk_up) || keyboard_check(ord("W"))
    {
        ysp = -100; // Jump
    }
}
else
{
    // Double Jump Logic
    if (global.double_jump_active && !double_jumped && (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))))
    {
        ysp = -100; // Double jump
        double_jumped = true; // Mark double jump as used
    }
    
    ysp += 1; // Continue falling if not on the ground
}

// Move and collide with oSolid
move_and_collide(xsp, ysp, obj_ph_jump_ground);

// Check if player goes offscreen (outside room boundaries)
if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    room_restart(); // Reset the room
}

// Check if the player has passed through a hoop
if place_meeting(x, y, obj_ph_hoops)
{
    // Get the y-position of the hoop the player is currently passing through
    var hoop_y = instance_place(x, y, obj_ph_hoops).y;

    // Check if the player is passing upwards or downwards through the hoop
    if (y < hoop_y && ysp < 0) // Passing upwards
    {
        global.jump_score += 50; // Add 50 points for upward pass
        with (instance_place(x, y, obj_ph_hoops)) instance_destroy(); // Destroy hoop 
    }
    else if (y > hoop_y && ysp > 0) // Passing downwards
    {
        global.jump_score += 50; // Add 50 points for downward pass
        with (instance_place(x, y, obj_ph_hoops)) instance_destroy(); // Destroy hoop
    }
}

// Double Jump Timer Logic
if (global.double_jump_active) {
    global.double_jump_timer -= 1; // Decrease timer
    if (global.double_jump_timer <= 0) {
        global.double_jump_active = false; // Disable double jump when time runs out
    }
}
