// Calculate the color transition based on time left
var time_percentage = global.jump_timer / (200 * room_speed); // Normalize from 1 (full time) to 0 (no time)
var timer_color = make_color_rgb(255 * (1 - time_percentage), 255 * time_percentage, 0); // Green to Red

// Calculate time left in seconds
var time_left = floor(global.jump_timer / room_speed);

// Set the text color for the score
draw_set_color(c_white);
draw_text(x - 12, y - 44, "Score: " + string(global.jump_score));

// Set the text color for the timer (dynamic color transition)
draw_set_color(timer_color);

// **Blink effect when time is ≤ 100 seconds**
if (time_left <= 100) {
    var blink_alpha = (current_time mod 1000 < 500) ? 1 : 0.5; // Alternate every half-second
    draw_set_alpha(blink_alpha);
}

// Draw the time left
draw_text(x - 12, y - 24, "Time left: " + string(time_left) + " seconds");

// Reset alpha back to normal
draw_set_alpha(1);
