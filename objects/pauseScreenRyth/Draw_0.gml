/// @description Insert description here
// You can write your code in this editor
if (global.pausedRyth && !global.enderRyth) {
    // Dim the screen with a transparent overlay
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

    // Draw pause text
    draw_set_color(c_white);
    draw_text(room_width / 2 - string_width("Game Paused") / 2, room_height / 2 - 20, "Game Paused");
    draw_text(room_width / 2 - string_width("Press P to Resume") / 2, room_height / 2 + 20, "Press P to Resume");
	draw_text(room_width / 2 - string_width("Press R to Restart") / 2, room_height / 2 + 40, "Press R to Restart");
}

if (global.pausedRyth && global.enderRyth) {
    // Dim the screen with a transparent overlay
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

    // Draw pause text
    draw_set_color(c_white);
    draw_text(room_width / 2 - string_width("Game Over") / 2, room_height / 2 - 20, "Game Over");
    draw_text(room_width / 2 - string_width("You Loose") / 2, room_height / 2, "You Loose");
	draw_text(room_width / 2 - string_width("Press R to Restart") / 2, room_height / 2 + 40, "Press R to Restart");
}