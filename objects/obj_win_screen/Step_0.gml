if (keyboard_check_pressed(ord("P")))
{
	global.jump_score = 0;
    global.jump_timer = 500 * room_speed; // 500 seconds (in steps)
    audio_stop_sound(global.bonusmusic_id);
	global.bonusmusic_id = -1;
    global.bonus_question_index = 0;
	global.current_text_index = 0
	global.leftOverTimeScore = 0;
    room_restart(); // Restart the room
	instance_destroy();
}
if (keyboard_check_pressed(ord("C")))
{
	global.jump_score = 0;
    global.jump_timer = 500 * room_speed; // 30 seconds (in steps)
    audio_stop_sound(global.bonusmusic_id);
	global.bonusmusic_id = -1;
    global.bonus_question_index = 0;
	global.current_text_index = 0
	global.leftOverTimeScore = 0;
    room_goto_next(); // Go to the next room
}

