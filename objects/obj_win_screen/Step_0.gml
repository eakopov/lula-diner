if (keyboard_check_pressed(ord("P")))
{
	global.jump_score = 0;
    global.jump_timer = 500 * room_speed; // 500 seconds (in steps)
    audio_stop_sound(global.bonusmusic_id);
	global.bonusmusic_id = -1;
    global.bonus_question_index = 0;
	global.current_text_index = 0
	global.leftOverTimeScore = 0;
    global.jumpmusic_id = audio_play_sound(jump_minigame_music, 1, true); // Holds the audio index for the jump music
    room_restart(); // Restart the room
	instance_destroy();
}
if (keyboard_check_pressed(ord("C")))
{
	// Determine the player's rank based on global.jump_score
    if (global.jump_score >= 10000) {
        global.jumpResults = "S";
    } 
    else if (global.jump_score >= 7500) {
        global.jumpResults = "A";
    } 
    else if (global.jump_score >= 5000) {
        global.jumpResults = "B";
    } 
    else {
        global.jumpResults = "C"; // Anything below B is a C
    }
	
	global.jump_score = 0;
    global.jump_timer = 500 * room_speed; // 30 seconds (in steps)
    audio_stop_sound(global.bonusmusic_id);
	global.bonusmusic_id = -1;
    global.bonus_question_index = 0;
	global.current_text_index = 0
	global.leftOverTimeScore = 0;
	
	
    room_goto_next(); // Go to the next room
}

