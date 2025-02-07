/// @description Insert description here
// You can write your code in this editor


//create chatterbox and load yarn file

ChatterboxLoadFromFile("clothing_game_random.yarn");
chatterbox = ChatterboxCreate("clothing_game_random.yarn");

chatterbox = ChatterboxCreate("clothing_game_random.yarn");
if (is_undefined(chatterbox)) {
    show_debug_message("Error: chatterbox failed to initialize!");
}

//determine which node from yarn file to load based on room name

ChatterboxJump(chatterbox, "Start");


//variables for text box set up
textWidth = 400;
lineHeight = 28;


//get text and node title from yarn file
text = ChatterboxGetContent(chatterbox, 0);
node_title = ChatterboxGetCurrent(chatterbox);

