/// @description Insert description here
// You can write your code in this editor


//set up variable to select path
var _select = -1;


if (obj_clothing_controller.colliding_with_scientist_1) {
			//get text and node title from yarn file
			ChatterboxJump(chatterbox, "Scientist1");
			text = ChatterboxGetContent(chatterbox, 0);
			nodeTitle = ChatterboxGetCurrent(chatterbox);
		} else if (obj_clothing_controller.colliding_with_scientist_2) {
			ChatterboxJump(chatterbox, "Scientist2");
			text = ChatterboxGetContent(chatterbox, 0);
			nodeTitle = ChatterboxGetCurrent(chatterbox);
		} else if (obj_clothing_controller.colliding_with_scientist_3) {
			ChatterboxJump(chatterbox, "Scientist3");
			text = ChatterboxGetContent(chatterbox, 0);
			nodeTitle = ChatterboxGetCurrent(chatterbox);
		} else if (obj_clothing_controller.colliding_with_door) {
			ChatterboxJump(chatterbox, "Door");
			text = ChatterboxGetContent(chatterbox, 0);
			nodeTitle = ChatterboxGetCurrent(chatterbox);			
		}
		
		else text = "Help Lula Dress for Success!  Talk to the scientists in the room!";
		
		

//waiting means one line of diaglogue has been given but there are more lines, press space to advance
if ChatterboxIsWaiting(chatterbox){
	
	if keyboard_check_pressed(vk_space){
			ChatterboxContinue(chatterbox);		
			text = ChatterboxGetContent(chatterbox,0);
			nodeTitle   = ChatterboxGetCurrent(chatterbox); 
			
		}
	
	
} else
	{
		
	///this else block is for selecting an option.  The options are printed in the draw event
		
	 if (ChatterboxGetOptionCount(chatterbox))
	    {
	  
	     if (keyboard_check_released(ord("1"))) {_select = 1;  show_debug_message("option 1 recorded");}
	     if (keyboard_check_released(ord("2"))) _select = 2;      
     	
		}
		
	}
	
	

if (_select != -1)  {
	show_debug_message("inside _select != -1" );
	
	if (_select == 1  && nodeTitle = "Scientist1") {
		obj_clothing_controller.has_briefcase = true;
		show_debug_message("has briefcase set to true");
	}
	
	else if (_select == 1  && nodeTitle = "Scientist2") {
		obj_clothing_controller.has_goggles = true;
	}
	
	else if (_select == 1 && nodeTitle = "Scientist3") {
		obj_clothing_controller.has_helm = true;
	}
	
	else if(_select == 1 && nodeTitle = "Door") {
		room_goto_next();	
	}
	
	
	else if (_select == 2) {
		select = -1;
	}
	
}