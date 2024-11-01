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

    if (global.jump_score >= 300)
    {
        instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_win_screen);
    }
    else
    {
        instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_loss_screen);
    }
}
