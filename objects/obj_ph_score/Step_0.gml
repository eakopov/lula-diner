// Decrease the global timer
if(global.jump_timer > 0){
	global.jump_timer -= 1;	
}

// Check if the global timer has reached 0
if (global.jump_timer <= 0)
{
	// Destroy all instances of obj_lula_jump
    with (obj_lula_jump)
    {
    instance_destroy();
    }

    // Destroy all instances of obj_ph_hoops
    with (obj_ph_hoops)
    {
       instance_destroy();
    }
	
	with (obj_ph_fail_hoops)
    {
       instance_destroy();
    }
	
	with(obj_double_jump_powerup){
		instance_destroy();
	}
	
	with(obj_speed_boost_hoop) {
		instance_destroy();
	}
	
	with(obj_double_points_hoop) {
		instance_destroy();
	}
	
	with(obj_double_jump_powerup) {
		instance_destroy();
	}
	
	with(obj_timer_powerup) {
		instance_destroy();
	}
	
	with(obj_jump_checkbox){
		instance_destroy();
	}
	
    audio_stop_sound(global.jumpmusic_id);
    global.jumpmusic_id = -1;

    if (global.jump_score >= 1050)
    {
        instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_win_screen);
    }
    else
    {
        instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_loss_screen);
    }
}
