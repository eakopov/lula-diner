// Set color to white and draw the rectangle background 
draw_set_color(c_white);
draw_rectangle(room_width / 2 - 150, room_height / 2 - 50, room_width / 2 + 150, room_height / 2 + 150, false);

// Set color back to black for text
draw_set_color(c_black);

// Draw the text content on top of the white rectangle
draw_text(room_width / 2 - 100, room_height / 2, "You Win! :)");
draw_text(room_width / 2 - 100, room_height / 2 + 40, "Score: " + string(global.jump_score));

draw_set_color(c_blue);
// Check if a new best score was achieved and display the message
if (global.new_best_score) {
    draw_text(room_width / 2 - 100, room_height / 2 + 60, "New Best Score!");
}

draw_set_color(c_black);
draw_text(room_width / 2 - 100, room_height / 2 + 90, "[P] Restart Game");
draw_text(room_width / 2 - 100, room_height / 2 + 120, "[C] Continue");
