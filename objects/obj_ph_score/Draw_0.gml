// Set the text color to white
draw_set_color(c_white);

// Draw the score on the screen
draw_text(20, 20, "Score: " + string(global.jump_score));

// Display the remaining time on the screen
draw_text(20, 40, "Time left: " + string(floor(global.jump_timer / room_speed)) + " seconds");