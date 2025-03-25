// Initialize knockback movement
if (is_knocked_back) {
    // Apply knockback motion
    x += knockback_xsp;
    y += knockback_ysp;

    knockback_timer -= 1;

    // Slow down knockback over time
    knockback_xsp *= 0.9;
	knockback_ysp *= 0.9;

    if (knockback_timer <= 0) {
        is_knocked_back = false;
    }

    // Skip rest of movement code while knocked back
    return;
}

// Define movement constants 
var move_speed = 0.5;
var max_speed = 4;
var frictionForJump = 0.2;

// Gravity
ysp += 0.1;

// Check if speed boost is active
var speed_multiplier = (global.speed_boost_active) ? 2 : 1;

// Horizontal movement
if keyboard_check(vk_left) || keyboard_check(ord("A")) {
    xsp -= move_speed * speed_multiplier;
}
if keyboard_check(vk_right) || keyboard_check(ord("D")) {
    xsp += move_speed * speed_multiplier;
}

// Apply friction
if !(keyboard_check(vk_left) || keyboard_check(ord("A")) ||
     keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    if (xsp > 0) xsp -= frictionForJump;
    if (xsp < 0) xsp += frictionForJump;
    if (abs(xsp) < frictionForJump) xsp = 0;
}

// Clamp max speed
xsp = clamp(xsp, -max_speed * speed_multiplier, max_speed * speed_multiplier);

// Jumping
if place_meeting(x, y + 1, obj_ph_jump_ground) {
    ysp = 0;
    double_jumped = false;

    if keyboard_check(vk_up) || keyboard_check(ord("W")) {
        ysp = -10;
    }
} else {
    if (global.double_jump_active && !double_jumped &&
        (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))) {
        ysp = -5;
        double_jumped = true;
    }
    ysp += 0.2;
}

// Move and collide
move_and_collide(xsp, ysp, obj_ph_jump_ground);

// Offscreen reset
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    room_restart();
}

// HOOP COLLECTION
if place_meeting(x, y, obj_ph_hoops) {
    var hoop_instance = instance_place(x, y, obj_ph_hoops);
    if (hoop_instance != noone && !hoop_instance.collected) {
        var hoop_x = hoop_instance.x;
        var hoop_y = hoop_instance.y;

        var score_multiplier = global.double_points_active ? 2 : 1;

        if (!place_meeting(x, y, obj_ph_jump_ground)) {
            global.jump_score += 50 * score_multiplier;
            global.hoops_passed += 1;

            instance_create_layer(hoop_x, hoop_y, "Effects", obj_hoop_burst);

            hoop_instance.collected = true;
            hoop_instance.solid = false;
            hoop_instance.active_fade = true;

            if (global.hoops_passed >= 3) {
                global.hoops_passed = 0;
                global.current_text_index += 1;

                audio_play_sound(phase_passed_sound, 1, false);

                if (global.current_text_index > 7 &&
                    !global.question_in_progress &&
                    !global.question_answered) {
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

// COLLISION WITH DEBRIS (KNOCKBACK)
if (place_meeting(x, y, obj_space_debris)) {
    var debris = instance_place(x, y, obj_space_debris);

    if (!is_knocked_back) {
        is_knocked_back = true;
        knockback_timer = 30; // 0.5 seconds of knockback

        // Determine horizontal direction of knockback
        var dx = x - debris.x;
        var dir = (dx >= 0) ? 180 : 0; // 180 = left, 0 = right

        knockback_xsp = lengthdir_x(6, dir); // Horizontal push
        knockback_ysp = -4; // Small upward "hop" — adjust as needed

        audio_play_sound(snd_jump_knockback, 1, false);
    }
}



// POWER-UP TIMERS
if (global.double_jump_active) {
    global.double_jump_timer -= 1;
    if (global.double_jump_timer <= 0) {
        global.double_jump_active = false;
    }
}

if (global.speed_boost_active) {
    global.speed_boost_timer -= 1;
    if (global.speed_boost_timer <= 0) {
        global.speed_boost_active = false;
    }
}

if (global.double_points_active) {
    global.double_points_timer -= 1;
    if (global.double_points_timer <= 0) {
        global.double_points_active = false;
    }
}
