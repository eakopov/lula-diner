// Define movement constants
var move_speed = 0.5; // Acceleration rate
var max_speed = 4;    // Maximum speed
var frictionForJump = 0.2;   // Slows down when no key is pressed

// Gravity
ysp += 0.1;

// Check if speed boost is active
var speed_multiplier = (global.speed_boost_active) ? 2 : 1;

// Horizontal movement (Arrow keys and WASD)
if keyboard_check(vk_left) || keyboard_check(ord("A"))
{
    xsp -= move_speed * speed_multiplier; // Apply acceleration
}
if keyboard_check(vk_right) || keyboard_check(ord("D"))
{
    xsp += move_speed * speed_multiplier; // Apply acceleration
}

// Apply friction when no movement key is pressed
if !(keyboard_check(vk_left) || keyboard_check(ord("A")) ||
     keyboard_check(vk_right) || keyboard_check(ord("D")))
{
    if (xsp > 0) xsp -= frictionForJump; // Slow down when moving right
    if (xsp < 0) xsp += frictionForJump; // Slow down when moving left

    // Stop completely if very slow
    if (abs(xsp) < frictionForJump) xsp = 0;
}

// Clamp speed to max speed
xsp = clamp(xsp, -max_speed * speed_multiplier, max_speed * speed_multiplier);

// Jumping (Arrow key up or W)
if place_meeting(x, y + 1, obj_ph_jump_ground)
{
    ysp = 0; // Stop falling
    double_jumped = false; // Reset double jump when player lands
    
    if keyboard_check(vk_up) || keyboard_check(ord("W"))
    {
        ysp = -10; // Adjusted jump height for better feel
    }
}
else
{
    // Double Jump Logic
    if (global.double_jump_active && !double_jumped && (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))))
    {
        ysp = -5; // Double jump with controlled height
        double_jumped = true;
    }
    
    ysp += 0.2; // Smooth falling gravity
}

// Move and collide with solid objects
move_and_collide(xsp, ysp, obj_ph_jump_ground);

// Check if player goes offscreen
if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    room_restart();
}

// Check if the player has passed through a hoop
// Check if the player has passed through a hoop 
if place_meeting(x, y, obj_ph_hoops) 
{
    // Get the hoop instance
    var hoop_instance = instance_place(x, y, obj_ph_hoops);
    
    // Ensure the hoop exists **and hasn't already been collected**
    if (hoop_instance != noone && !hoop_instance.collected)
    {
        // Get the x and y position of the hoop
        var hoop_x = hoop_instance.x;
        var hoop_y = hoop_instance.y;

        // Determine score multiplier
        var score_multiplier = global.double_points_active ? 2 : 1;

        if (!place_meeting(x, y, obj_ph_jump_ground)) { // Passing upward or downward
            global.jump_score += 50 * score_multiplier; // Add points
            global.hoops_passed += 1; // Increment hoop count

            // Create the burst effect at the hoop's position
            instance_create_layer(hoop_x, hoop_y, "Effects", obj_hoop_burst);

            // **Mark the hoop as collected before fading starts**
            hoop_instance.collected = true;
            hoop_instance.solid = false;
            hoop_instance.active_fade = true;

            // Check if 3 hoops have been passed to advance the text
            if (global.hoops_passed >= 3) {
                global.hoops_passed = 0; // Reset the hoop count
                global.current_text_index += 1; // Advance the text index

                // Play the phase passed sound
                audio_play_sound(phase_passed_sound, 1, false); // Sound, priority, looping (false)

                if (global.current_text_index > 7 && !global.question_in_progress && !global.question_answered) {
                    global.question_in_progress = true;
                    global.question_answered = false;
                    if(global.bonus_question_index > 9) {
                        global.leftOverTimeScore = 2 * (global.jump_timer / room_speed);
                        global.jump_timer = 0;
                    }
                }
            }
        }
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

