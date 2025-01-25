
image_xscale = global.healthRyth/100;

if(global.starterRyth){
	y += 300;
	startRyth(false);
}	

if(global.enderRyth){
	y -= 300;
	startRyth(false);
}

if(global.healthRyth > 400){
	healthSet(400);
}
if(global.healthRyth < 0){
	healthSet(00);
}