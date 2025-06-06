// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ticks_to_milliseconds(ticks, bpm, resolution) {
    var ms_per_tick = 60000 / (bpm * resolution); // Calculate milliseconds per tick
    return ticks * ms_per_tick;  // Convert ticks to milliseconds
}

function addPointsRyth(points){
	global.PointsCounter_ryth += points;
}

function removePointsRyth(points){
	global.PointsCounter_ryth -= points;
	if(global.PointsCounter_ryth < 0){
		global.PointsCounter_ryth = 0;
	}	
}	
function setPointsRyth(points){
	global.PointsCounter_ryth = points;
}
function resetPointsRyth(){
	global.PointsCounter_ryth = 0;
}
function setRankRyth(rank){
	global.rankRyth = rank;
}	
function pauseRyth(){
	global.pausedRyth = true;
}	
function unpauseRyth(){
	global.pausedRyth = false;
}	

function healthSet(points){
	global.healthRyth = points;
}	

function healthHurtRyth(points){
	global.healthRyth -= points;
	
}	

function healthRecoverRyth(points){
	global.healthRyth += points;
}

function startRyth(points){
	global.starterRyth = points;
}

function endRyth(points){
	global.enderRyth = points;
}