/// @description Insert description here
// You can write your code in this editor

instance_create_layer(480, -64, "Instances", rythStarter);
instance_create_layer(160, -64, "notes", leftNote);
instance_create_layer(160, -64, "backgroundInstance", backgroundVideo);
var myLayer = layer_get_id("IntroRyth");
layer_set_visible(myLayer, false);
myLayer = layer_get_id("Instances");
layer_set_visible(myLayer, true);
instance_destroy();