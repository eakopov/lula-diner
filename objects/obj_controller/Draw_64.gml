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
    
    // Set background to white
    draw_set_color(c_white);
    draw_rectangle(0, 0, room_width, room_height, false);
    
    draw_set_font(fnt_credits);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // Display "You Win!" message and total score
    draw_set_color(c_green);

    var win_text = "You Win!";
    
    if (obj_controller.player_money < 50) {
        draw_set_color(c_red);
        win_text = "You Lose!";	
    }
    
    var score_text = "Total Score: $" + string(obj_controller.player_money);

    draw_text_transformed(center_x, center_y - 40, win_text, 2, 2, 0);
    
    // Draw Score
    draw_set_color(c_black);
    draw_text(center_x, center_y + 10, score_text);

    // Draw Instruction Text (Inside a Rectangle)
    var rect_x1 = center_x - 250;
    var rect_x2 = center_x + 250;
    var rect_y1 = center_y + 40;
    var rect_y2 = center_y + 80;
    
    draw_set_color(c_black);
    draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false); // Outline rectangle
    draw_set_color(c_white);
    draw_text(center_x, center_y + 60, "Press Space to move to the next mini game!");
}