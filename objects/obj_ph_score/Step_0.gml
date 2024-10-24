// Decrease the global timer
global.jump_timer -= 1;

// Check if the global timer has reached 0
if (global.jump_timer <= 0)
{
    room_goto_next(); // Go to the next room
}
