// Check the failure type and apply the corresponding effect
if (failure_type == "decrease_timer")
{
    global.jump_timer -= room_speed * 5; // Reduces timer by 5 seconds
    instance_destroy(); // Remove the failure hoop after collision
}
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
	
    // Update the loss message
    global.loss_message = "You hit a bad hoop! Sorry, game over!";
    
    // Show the loss screen
    instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_loss_screen);
    
    // Destroy the failure hoop to prevent further collisions
    instance_destroy();
}

