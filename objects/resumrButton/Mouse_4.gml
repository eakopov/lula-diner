/// @description Insert description here
// You can write your code in this editor
if (room_next(room) != -1) {
	audio_stop_all();
	if(global.mode == "story"){
		room_goto_next();
	} else {
		room_goto(room_intro);
	}	
    
} else {
    show_message("No more rooms to go to!");
}