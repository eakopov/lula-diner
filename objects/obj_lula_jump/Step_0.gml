// Create Event:
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
    if keyboard_check(vk_up) || keyboard_check(ord("W"))
    {
        ysp = -2; // Jump
    }
}
else
{
    ysp += 0.1; // Continue falling if not on the ground
}

// Move and collide with oSolid
move_and_collide(xsp, ysp, obj_ph_jump_ground);

// Check if player goes offscreen (outside room boundaries)
if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    room_restart(); // Reset the room
}