global.is_paused = !global.is_paused;

if (global.is_paused) {
    // Stop all movement and other step events in the game
    audio_pause_all();  // for when music gets added
    game_set_speed(0, gamespeed_fps);  // Set game speed to 0 to pause
	show_debug_message("Pause button clicked. Paused state: " + string(global.is_paused));

} else {
    // Resume game movement and other events
    audio_resume_all();  // for when music gets added
    game_set_speed(60, gamespeed_fps);  // Set game speed back to normal
}