/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, rigntNotes) && !global.pausedRyth){
	with( instance_place(x, y, rigntNotes) ){
		instance_destroy();
		addPointsRyth(50);
	}	
} else {
	removePointsRyth(10);
}	