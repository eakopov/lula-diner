/// @description Insert description here
// You can write your code in this editor


//set up variable to select path
var _select = -1;


if (obj_clothing_controller.colliding_with_scientist_1) {
			text = "collide scientist 1";
		} else if (obj_clothing_controller.colliding_with_scientist_2) {
			text = "collide scientist 2";
		} else if (obj_clothing_controller.colliding_with_scientist_3) {
			text = "collide scientist 3";
		}
		
		

//waiting means one line of diaglogue has been given but there are more lines, press space to advance
if ChatterboxIsWaiting(chatterbox){
	if keyboard_check_pressed(vk_space){
		ChatterboxContinue(chatterbox);
		
		if (obj_clothing_controller.colliding_with_scientist_1) {
			text = "collide scientist 1";
		} else if (obj_clothing_controller.colliding_with_scientist_2) {
			text = "collide scientist 2";
		} else if (obj_clothing_controller.colliding_with_scientist_3) {
			text = "collide scientist 3";
		} else {
			text = ChatterboxGetContent(chatterbox,0);
			nodeTitle   = ChatterboxGetCurrent(chatterbox); }
		}		
} else
	{
		
	///this else block is for selecting an option.  The options are printed in the draw event
		
 if (ChatterboxGetOptionCount(chatterbox))
    {
	  
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