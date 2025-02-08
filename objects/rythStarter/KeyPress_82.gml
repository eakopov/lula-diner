if(canPause){
	if(global.pausedRyth){
		room_restart();
	}
}	

if(global.pausedRyth && global.enderRyth){
	room_restart();
}