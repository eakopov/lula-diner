/// @description Insert description here
// You can write your code in this editor

ChatterboxLoadFromFile("llamaStub.yarn");
chatterbox = ChatterboxCreate("llamaStub.yarn");

if (room == room_start) {
	ChatterboxJump(chatterbox,"Start");
} else if (room == room_clothing) {
	ChatterboxJump(chatterbox,"ClothingGame");
} else if (room == room_jump) {
	ChatterboxJump(chatterbox,"JumpGame");
}  else if (room == room_pizza) {
	ChatterboxJump(chatterbox,"PizzaGame");
}  else if (room == room_deck) {
	ChatterboxJump(chatterbox,"DeckGame");
}  else if (room == room_rhythm) {
	ChatterboxJump(chatterbox,"RhythmGame");
} else if (room == room_end) {
	ChatterboxJump(chatterbox,"End");
}

textWidth = 400;
lineHeight = 28;

text = ChatterboxGetContent(chatterbox, 0);
nodeTitle = ChatterboxGetCurrent(chatterbox);

