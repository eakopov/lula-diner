/// @description Insert description here
// You can write your code in this editor

 if (wait_timer > 0) {
        wait_timer--; // Countdown each frame	
		show_debug_message("counting down");
 }
 
 else {room_goto(room_credits);}
 
 