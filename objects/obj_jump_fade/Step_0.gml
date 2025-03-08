// Fade out before restart
if (fading_out) {
    image_alpha += fade_speed;
    if (image_alpha >= 1) {
        image_alpha = 1; // Ensure it's fully black
        global.fading_in = true; // Set BEFORE restarting
		global.jumpmusic_id = audio_play_sound(jump_minigame_music, 1, true); // Holds the audio index for the jump music
        room_restart(); // Restart the room
    }
}

// Fade in after restart
if (global.fading_in) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        image_alpha = 0;
        global.fading_in = false; // Reset AFTER fade-in is complete
    }
}
