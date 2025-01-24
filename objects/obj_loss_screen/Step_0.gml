if (keyboard_check_pressed(ord("P")))
{
    global.jump_score = 0;
    global.jump_timer = 500 * room_speed; // 30 seconds (in steps)
    audio_stop_sound(global.bonusmusic_id);
    room_restart(); // Restart the room
	instance_destroy();
}

