/// @description Insert description here
// You can write your code in this editor

//set window size
window_set_size(1280, 720);
var display_width = display_get_width();
var display_height = display_get_height();
window_set_rectangle((display_width - 1280) / 2, (display_height - 720) / 2, 1280, 720);
surface_resize(application_surface, 1280, 720);


if(instance_exists(globals)){
	if(id != instance_find(globals, 0)){
		instance_destroy();
	}
}	

global.PointsCounter = 0;

