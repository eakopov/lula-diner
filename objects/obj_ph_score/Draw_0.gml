// Set the text color to white
draw_set_color(c_white);

// Draw the score on the screen relative to the object's position
draw_text(x - 12, y - 44, "Score: " + string(global.jump_score));

// Display the remaining time on the screen relative to the object's position
draw_text(x - 12, y - 24, "Time left: " + string(floor(global.jump_timer / room_speed)) + " seconds");
