audio_stop_all();

spawn_timer = 0;
spawn_interval = 120; // time between customer spawns
selected_customer = noone;  // start with no customer selected
selected_tool = noone;
player_money = 0;
game_paused = false;
game_over = false;
customers_remaining = 5;
spawn_counter = 0;

global.tools = [obj_DSOC, obj_gamma, obj_magnetrometer, obj_multispectral, obj_neutron, obj_radio];
global.plates = array_create(7);

// Assign each plate instance to the array
global.plates[0] = plate_0;
global.plates[1] = plate_1;
global.plates[2] = plate_2;
global.plates[3] = plate_3;
global.plates[4] = plate_4;
global.plates[5] = plate_5;
global.plates[6] = plate_6;

//unique customer_id
global.customer_counter = 0;