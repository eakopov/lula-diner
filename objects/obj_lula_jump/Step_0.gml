if (invincible) {
    invincibility_timer -= 1;
    if (invincibility_timer <= 0) {
        invincible = false;
    }
}

// Initialize knockback movement
if (is_knocked_back) {
    x += knockback_xsp;
    y += knockback_ysp;
    knockback_timer -= 1;

    // Slow down knockback over time
    knockback_xsp *= 0.9;
    knockback_ysp *= 0.9;

    if (knockback_timer <= 0) {
        sprite_index = spr_luna_Walk_1;
        is_knocked_back = false;
    }

    // Skip movement while knocked back
    return;
}

// Freeze/Shiver Logic
if (is_frozen) {
    freeze_timer -= 1;

    // Shivering effect (oscillate left/right slightly)
    x += sin(current_time / 100) * 2; 

    if (freeze_timer <= 0) {
        is_frozen = false;
        sprite_index = spr_luna_Walk_1;
		
		// After being frozen become invincible
        invincible = true;
        invincibility_timer = 300;
    }

    // Skip rest of step logic while frozen
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

// REVERSE CONTROLS LOGIC
var left_key = (global.controls_reversed) ? vk_right : vk_left;
var right_key = (global.controls_reversed) ? vk_left : vk_right;

// Horizontal movement
if keyboard_check(left_key) || keyboard_check(ord("A")) {
    xsp -= move_speed * speed_multiplier;
}
if keyboard_check(right_key) || keyboard_check(ord("D")) {
    xsp += move_speed * speed_multiplier;
}

// Apply friction
if !(keyboard_check(left_key) || keyboard_check(ord("A")) ||
     keyboard_check(right_key) || keyboard_check(ord("D"))) {
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
            global.jump_score += 100 * score_multiplier;
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

// Handle reversed controls timer
if (global.controls_reversed) {
    global.reverse_timer -= 1;
    if (global.reverse_timer <= 0) {
        global.controls_reversed = false;
        
        // Hide the reverse message
        with (obj_reverse_message) {
            visible = false;
        }
    }
}

// COLLISION WITH DEBRIS (Knockback or Freeze)
if (!invincible && place_meeting(x, y, obj_space_debris)) {
    var debris = instance_place(x, y, obj_space_debris);

    // Check if it's the big sprite or score is 2000+
    if (debris.sprite_index == spr_space_debris_big || global.jump_score >= 2000) {
        // Freeze instead of knockback
        is_frozen = true;
        freeze_timer = 180; // 3 seconds at 60 fps
        sprite_index = spr_luna_walk_sad;
		
		// Create the ice block overlay
        instance_create_layer(x, y, "Instances", obj_ice_block);
    } else {
        // Normal knockback logic
        is_knocked_back = true;
        knockback_timer = 30;
        sprite_index = spr_luna_walk_sad;

        var dx = x - debris.x;
        var dir = (dx >= 0) ? 180 : 0;
        knockback_xsp = lengthdir_x(15, dir);
        knockback_ysp = -9;

        audio_play_sound(snd_jump_knockback, 1, false);

        invincible = true;
        invincibility_timer = 300;
    }
}

// COLLISION WITH MARS DEBRIS (Dust Storm)
if (!invincible && place_meeting(x, y, obj_space_debris_mars)) {
    var mars_debris = instance_place(x, y, obj_space_debris_mars);

    if (!global.dust_storm_active) {
        global.dust_storm_active = true;
        global.dust_storm_timer = room_speed * 7; // 7 seconds
        instance_create_layer(0, 0, "Effects", obj_duststorm_overlay);
    }

    // Set invincibility for the duration of the storm
    invincible = true;
    invincibility_timer = room_speed * 7;

    sprite_index = spr_luna_walk_sad;
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
