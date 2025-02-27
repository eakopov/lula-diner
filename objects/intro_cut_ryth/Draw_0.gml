// Draw the cutscene frame
var img = noone;
switch (cutscene) {
    case 0: img = luna_excite_cartoon; break;
    case 1: img = luna_explain_cartoon; break;
    case 2: img = luna_think_cartoon; break;
	case 3: img = luna_inspire_cartoon; break;
	case 4: img = luna_go_cartoon; break;
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
    case 0: draw_text(room_width / 2, room_height - (bar_height / 2), "YAY!! I have eveything I need to do this!"); break;
    case 1: draw_text(room_width / 2, room_height - (bar_height / 2), "now all I have to is build it."); break;
    case 2: draw_text(room_width / 2, room_height - (bar_height / 2), "is there anything left to consider?"); break;
	case 3: draw_text(room_width / 2, room_height - (bar_height / 2), "No, I'm sure i got everything!"); break;
	case 4: draw_text(room_width / 2, room_height - (bar_height / 2), "OK!! LET'S DO THIS!! LET'S GOOOOO!!!"); break;
}
draw_text(room_width / 2, room_height - (bar_height / 5), "Click Spacebar to continue");