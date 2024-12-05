/// @description Insert description here
// You can write your code in this editor
if(canPause){
	if(global.pausedRyth){
		unpauseRyth();
		audio_resume_all();
	} else {
		pauseRyth();
		audio_pause_all();
	}	
}	