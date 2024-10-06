/// @description Insert description here
// You can write your code in this editor

var _select = -1;

if ChatterboxIsWaiting(chatterbox){
 if keyboard_check_pressed(vk_space){
  ChatterboxContinue(chatterbox);
  text = ChatterboxGetContent(chatterbox,0);
  nodeTitle   = ChatterboxGetCurrent(chatterbox); }
} else {
 if (ChatterboxGetOptionCount(chatterbox)) //If Chatterbox is presenting the user with some options, check for that
    {
	  // What the user selected.
     //You'll need more of these if you have more than three options, of course!
     if (keyboard_check_released(ord("1"))) _select = 1;      
     if (keyboard_check_released(ord("2"))) _select = 2;      
     	
	}
}

if (_select != -1)  {
	
	if (_select == 1) {
		
		room_goto_next();
	}
	
	else if (_select == 2) {
		game_end();	
	}
	
}