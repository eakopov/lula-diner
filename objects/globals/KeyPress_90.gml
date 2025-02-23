/// @description Insert description here
// You can write your code in this editor

if (room != room_ending) {
	
	
    global.clothingResult = "S";
    global.pizzaResult = "S";
    global.jumpResult = "S";
    global.quizResult = "S";
    global.rhythmResult = "S";
	
	show_debug_message("set results to S, going to ending room");
	
	show_debug_message("global.clothingResult: " + string(global.clothingResult));
	show_debug_message("global.pizzaResult: " + string(global.pizzaResult));
	show_debug_message("global.jumpResult: " + string(global.jumpResult));
	show_debug_message("global.quizResult: " + string(global.quizResult));
	show_debug_message("global.rhythmResult: " + string(global.rhythmResult));
	
	room_goto(room_ending);
	
}