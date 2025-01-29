	if(global.pausedRyth){
		unpauseRyth();
		audio_resume_all();
	} else {
		pauseRyth();
		audio_pause_all();
	}	