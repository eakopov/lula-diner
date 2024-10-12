// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addPoints(points){
	global.PointsCounter += points;
}

function removePoints(points){
	global.PointsCounter -= points;
}	
function setPoints(points){
	global.PointsCounter = points;
}
function resetPoints(){
	global.PointsCounter = 0;
}