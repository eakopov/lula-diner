// Check if the "C" key is pressed
if (keyboard_check_pressed(ord("C"))) {
	audio_stop_all();
    room_goto_next(); // Move to the next room
}
