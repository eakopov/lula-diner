if (keyboard_check_pressed(ord("P")))
{
    global.jump_score = 0;
    global.jump_timer = 30 * room_speed; // 30 seconds (in steps)
    room_restart(); // Restart the room
	instance_destroy();
}

