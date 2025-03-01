// Draw the cutscene frame
var img = noone;
switch (cutscene) {
    case 0: img = luna_think_cartoon; break;
    case 1: img = luna_inspire_cartoon; break;
    case 2: img = luna_stare_cartoon; break;
	case 3: img = luna_excite_cartoon; break;
	case 4: img = luna_explain_cartoon; break;
}

// Draw the image centered on screen
if (img != noone) {
    draw_sprite(img, 0, 96, -128);
}

// Draw the black bar (50% of screen height)
var bar_height = 200;
draw_set_color(c_black);
draw_rectangle(0, room_height - bar_height, room_width, room_height, false);

// Draw the text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
switch (cutscene) {
    case 0: draw_text(room_width / 2, room_height - (bar_height / 2), "Hmmm.."); break;
    case 1: draw_text(room_width / 2, room_height - (bar_height / 2), "OK, that should do it"); break;
    case 2: draw_text(room_width / 2, room_height - (bar_height / 2), "Look at it..."); break;
	case 3: draw_text(room_width / 2, room_height - (bar_height / 2), "Its beautiful!!!"); break;
	case 4: draw_text(room_width / 2, room_height - (bar_height / 2), "alright, now all thats left is to get it inspected."); break;
}
draw_text(room_width / 2, room_height - (bar_height / 5), "Click Spacebar to continue");