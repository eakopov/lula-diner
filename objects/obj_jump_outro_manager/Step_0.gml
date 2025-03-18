// Check if the "C" key is pressed
if (keyboard_check_pressed(ord("C"))) {
	global.new_best_score = false;
    room_goto_next(); // Move to the next room
}
