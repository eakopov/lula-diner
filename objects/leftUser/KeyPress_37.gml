/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, leftNote)){
	with( instance_place(x, y, leftNote) ){
		instance_destroy();
	}	
}