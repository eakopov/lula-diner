// Only initialize the score if it's not already set
if (!variable_global_exists("jump_score"))
{
    global.jump_score = 0; // Initialize the score only if it doesn't already exist
}

// Initialize the countdown timer only if it hasn't been set already
if (!variable_global_exists("jump_timer"))
{
    global.jump_timer = 30 * room_speed; // 30 seconds (in steps)
}
