/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, midNote)){
	with( instance_place(x, y, midNote) ){
		instance_destroy();
		addPointsRyth(50);
		healthRecoverRyth(5);
	}	
} else {
	removePointsRyth(10);
	healthHurtRyth(10);
}	

if(global.healthRyth > 400){
	healthSet(400);
}
if(global.healthRyth < 0){
	healthSet(00);
}