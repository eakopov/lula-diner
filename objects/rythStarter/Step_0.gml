/// @description add rythem game
// You can write your code in this editor
var shows = "";
var songPosition = songPos;
if(!global.pausedRyth){
	songPosition = (delta_time / 1000) + songPos;
}	

for(var i = 0; i < ds_list_size(noteTimings); i++){
	var noteTime = ds_list_find_value(noteTimings, i);
	var note = ds_list_find_value(notes, i);
	shows += string(note)+ ", ";
	if(songPos < noteTime && songPosition >= noteTime && !global.pausedRyth){
		
		
		switch(note){
			case 0:
				instance_create_layer(384, -64, "notes", leftNote);
			break;
			case 1:
				instance_create_layer(512, -64, "notes", midNote);
			break;
			case 2:
				instance_create_layer(640, -64, "notes", rigntNotes);
		}	
		
	}	
}
songPos = songPosition;

if(!audio_is_playing(singinID)){
	addPoints(global.PointsCounter_ryth);
	if(global.PointsCounter_ryth > 7648){
		setRankRyth(0);
	} else if(global.PointsCounter_ryth > 6843) {
		setRankRyth(1);
	} else if(global.PointsCounter_ryth > 5635) {
		setRankRyth(2);
	} else if(global.PointsCounter_ryth > 4025) {
		setRankRyth(3);
	} else if(global.PointsCounter_ryth > 2013) {
		setRankRyth(4);
	} else {
		setRankRyth(5);
	}
	instance_create_layer(64, 32, "endRyth", winPrompt);
	instance_create_layer(224, 608, "endRyth", resumrButton);
	var myLayer = layer_get_id("Instances");
	layer_set_visible(myLayer, false);
	myLayer = layer_get_id("backgroundInstance");
	layer_set_visible(myLayer, false);
	myLayer = layer_get_id("backgroundInstance_1");
	layer_set_visible(myLayer, false);
	myLayer = layer_get_id("backgroundInstance_2");
	layer_set_visible(myLayer, false);
	myLayer = layer_get_id("backgroundInstance_3");
	layer_set_visible(myLayer, false);
	myLayer = layer_get_id("backgroundInstance_4");
	layer_set_visible(myLayer, false);
	myLayer = layer_get_id("backgroundInstance_5");
	layer_set_visible(myLayer, false);

	instance_destroy();
}	