/// @description moves and despawns
if(!global.pausedRyth){
	y += 352*delta_time/1000000
}	



if(y >= 756){
	healthHurtRyth(10);
	instance_destroy()
}	