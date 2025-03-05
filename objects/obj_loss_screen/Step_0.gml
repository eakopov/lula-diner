if (keyboard_check_pressed(ord("P")))
{
	global.jump_score = 0;
    global.jump_timer = 200 * room_speed; // 200 seconds (in steps)
    audio_stop_sound(global.bonusmusic_id);
	global.bonusmusic_id = -1;
    global.bonus_question_index = 0;
	global.current_text_index = 0
	global.leftOverTimeScore = 0;
	global.jumpmusic_id = audio_play_sound(jump_minigame_music, 1, true); // Holds the audio index for the jump music
	
    with (obj_jump_fade) {
        fading_out = true;
    }
	
	instance_destroy();
}

