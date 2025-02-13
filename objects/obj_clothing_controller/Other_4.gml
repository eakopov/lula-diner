//@description  Set up room size, viewports, and cameras for room_clothing



ChatterboxLoadFromFile("clothing_game_random.yarn");
global.chatterbox_clothing = ChatterboxCreate("clothing_game_random.yarn");
ChatterboxVariableDefault("rand_branch", -1);
ChatterboxVariableDefault("outcome", -1);

