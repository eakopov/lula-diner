// Calculate the color transition based on time left
var time_percentage = global.jump_timer / (500 * room_speed); // Normalize from 1 (full time) to 0 (no time)
var timer_color = make_color_rgb(255 * (1 - time_percentage), 255 * time_percentage, 0); // Green to Red

// Set the text color for the score
draw_set_color(c_white);
draw_text(x - 12, y - 44, "Score: " + string(global.jump_score));

// Set the text color for the timer (dynamic color transition)
draw_set_color(timer_color);
draw_text(x - 12, y - 24, "Time left: " + string(floor(global.jump_timer / room_speed)) + " seconds");
