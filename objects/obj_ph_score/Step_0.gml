// Array of objects to destroy
var objects_to_destroy = [
    obj_ph_hoops, 
    obj_ph_fail_hoops, 
    obj_double_jump_powerup, 
    obj_speed_boost_hoop, 
    obj_double_points_hoop, 
    obj_timer_powerup, 
    obj_jump_checkbox,
	obj_lula_jump
];

// Decrease the global timer
if(global.jump_timer > 0){
	global.jump_timer -= 1;	
}

// Check if the global timer has reached 0
if (global.jump_timer <= 0)
{
    // Loop through and destroy all instances of each object
    for (var i = 0; i < array_length(objects_to_destroy); i++) {
    with (objects_to_destroy[i]) {
        instance_destroy();
       }
    }
	
    audio_stop_sound(global.jumpmusic_id);
    global.jumpmusic_id = -1;
	
	audio_stop_sound(global.time_warning_music_id);
	global.time_warning_music_id = -1;

    if (global.jump_score >= 1050)
    {
        instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_win_screen);
    }
    else
    {
        instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_loss_screen);
    }
}

// Convert jump_timer to seconds
var time_left = global.jump_timer / room_speed;

// **Trigger warning music at exactly 100 seconds remaining**
if (time_left == 100 && !global.time_warning_triggered) { 
    // Stop all current music
    audio_stop_sound(global.jumpmusic_id);
    audio_stop_sound(global.bonusmusic_id);
    global.jumpmusic_id = -1;
    global.bonusmusic_id = -1;

    // Play warning sound (only once)
    audio_play_sound(time_warning_sound, 1, false);

    // Start the warning music
    global.time_warning_music_id = audio_play_sound(time_warning_music, 1, true);

    // Set flag to prevent re-triggering
    global.time_warning_triggered = true;
}

// Ensure no other music can play while time warning music is active
if (audio_is_playing(global.time_warning_music_id)) {
    audio_stop_sound(global.jumpmusic_id);
    audio_stop_sound(global.bonusmusic_id);
    global.jumpmusic_id = -1;
    global.bonusmusic_id = -1;
}
