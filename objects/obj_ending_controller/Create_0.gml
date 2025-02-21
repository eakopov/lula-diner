/// @description Insert description here
// You can write your code in this editor

SCALE_MULTIPLIER = 1;

POINTS_LOW = 100;
POINTS_MEDIUM = 200;
POINTS_HIGH = 300;

ending = "";

ending_sprite = spr_lula_walk;

//Select ending case

if (global.PointsCounter < POINTS_LOW || global.PointsCounter == POINTS_LOW) {
	ending = "low";
}

else if (global.PointsCounter > POINTS_LOW && (global.PointsCounter < POINTS_MEDIUM || global.PointsCounter == POINTS_MEDIUM)) {
	ending = "medium";
}

else if ((global.PointsCounter > POINTS_MEDIUM  || global.PointsCounter == POINTS_MEDIUM) && global.PointsCounter < POINTS_HIGH) {
	ending ="high";	
}

else if (global.PointsCounter > POINTS_HIGH || global.PointsCounter == POINTS_HIGH) {
	ending = "best";	
}