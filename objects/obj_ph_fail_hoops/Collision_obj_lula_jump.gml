global.controls_reversed = true;
global.reverse_timer = 600; // 10 seconds at 60 FPS

// Show the reverse message
with (obj_reverse_message) {
   visible = true;
}

instance_destroy();

// Check the failure type and apply the corresponding effect
/*if (failure_type == "decrease_timer")
{
    global.jump_timer -= room_speed * 5; // Reduces timer by 5 seconds
    instance_destroy(); // Remove the failure hoop after collision
}

// Choose a random mission setback
var setback_text = global.mission_setbacks[irandom(array_length(global.mission_setbacks) - 1)];

// Create a setback text object at the fail hoop's position
var setback_instance = instance_create_layer(x, y, "Instances", obj_setback_text);

// Assign the setback text to the object
setback_instance.text = setback_text;


/*
else if (failure_type == "end_game")
{	
	global.jump_timer = 0;
	
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
	
    // Update the loss message
    global.loss_message = "You hit a bad hoop! Game over!";
    
    // Show the loss screen
    instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_loss_screen);
    
    // Destroy the failure hoop to prevent further collisions
    instance_destroy();
} */

