if(obj_instructions.clicked == true) {
    // Display player money
    draw_set_color(c_fuchsia);
    draw_set_font(fnt_pizza_room);
    //draw_set_font(font_large);
    draw_text_transformed(room_width - 110, room_height - 62, "$" + string(player_money), 2, 2, 0);
}

if (global.gamepaused) {
    draw_set_color(c_white);
	draw_text_transformed(room_width / 2 - 50, room_height / 2, "Paused", 2, 2, 0); 
    draw_set_color(c_black);  // Reset color to default
}

if (game_over) {
	var center_x = room_width / 2;
    var center_y = room_height / 2;
	draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	
// Display "You Win!" message and total score
    draw_set_color(c_green);

    var win_text = "You Win!";
	
	if (obj_controller.player_money < 100) {
		win_text = "You Lose!";	
	}
	
    var score_text = "Total Score: $" + string(obj_controller.player_money);

    draw_text_transformed(center_x, center_y - 20, win_text, 2, 2, 0);  // Display "You Win!" message
    draw_text(center_x, center_y + 20, score_text);  // Display the total score	
	draw_text(center_x, center_y + 40, "Press Space or the Quit button to move to the next mini game!");
}