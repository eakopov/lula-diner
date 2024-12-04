xsp = 0;
ysp = 0;

// Step Event:
// Gravity
ysp += 0.1;

// Horizontal movement (Arrow keys and WASD)
xsp = 0;

// Check if speed boost is active
var speed_multiplier = (global.speed_boost_active) ? 2 : 1; // Double speed when boosted

if keyboard_check(vk_left) || keyboard_check(ord("A"))
{
    xsp = -2 * speed_multiplier;
}
if keyboard_check(vk_right) || keyboard_check(ord("D"))
{
    xsp = 2 * speed_multiplier;
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

    // Determine score multiplier
    var score_multiplier = global.double_points_active ? 2 : 1;
	
	    if (y < hoop_y && ysp < 0) || (y > hoop_y && ysp > 0) { // Passing upward or downward
        global.jump_score += 50 * score_multiplier; // Add points
        global.hoops_passed += 1; // Increment hoop count

        // Check if 3 hoops have been passed to advance the text
        if (global.hoops_passed >= 3) {
            global.hoops_passed = 0; // Reset the hoop count
            if (global.current_text_index < 7) {
                global.current_text_index += 1; // Advance the text index
				    
        // Play the phase passed sound
        audio_play_sound(phase_passed_sound, 1, false); // Sound, priority, looping (false)
             }
           }
		}
		
		with (instance_place(x, y, obj_ph_hoops)) instance_destroy(); // Destroy hoop
    
	// Check if all phases are completed
    if (global.current_text_index == 7) {
        // Show the win screen
        global.jump_timer = 0;
    }
}

// Double Jump Timer Logic
if (global.double_jump_active) {
    global.double_jump_timer -= 1; // Decrease timer
    if (global.double_jump_timer <= 0) {
        global.double_jump_active = false; // Disable double jump when time runs out
    }
}

// Speed Boost Timer Logic
if (global.speed_boost_active) {
    global.speed_boost_timer -= 1;
    if (global.speed_boost_timer <= 0) {
        global.speed_boost_active = false; // Disable speed boost when time runs out
    }
}

// Double Points Timer Logic
if (global.double_points_active) {
    global.double_points_timer -= 1; // Decrease timer
    if (global.double_points_timer <= 0) {
        global.double_points_active = false; // Disable double points when time runs out
    }
}

