if (!clicked) {
    // Set Background Color
    draw_set_color(c_white);
    draw_rectangle(0, 0, room_width, room_height, false);
    
    // Set Title Text
    draw_set_font(fnt_credits);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_text(room_width / 2, 100, "Even Scientists Need Lunch!");
    
    // Draw Lula Sprite
    var lula_x = room_width / 2;
    var lula_y = 200;
    draw_sprite(spr_lula, 0, lula_x - 50, lula_y - 20);
    
    // Instructions Text
    var text_x = room_width / 2;
    var text_y = 300;
    var line_spacing = 25;
    
    draw_text(text_x, text_y, "Click on a scientist to seat them at a table.");
    draw_text(text_x, text_y + line_spacing, "Click a tool and match it to the correct scientist.");
    draw_text(text_x, text_y + (line_spacing * 2), "Hover over portraits for hints and scientist info!");
    draw_text(text_x, text_y + (line_spacing * 3), "Goal: Serve 5 scientists and make $100!");
    draw_text(text_x, text_y + (line_spacing * 4), "Press Pause to pause, or Quit to move on!");
    
    // Draw Play Button
    draw_set_color(c_red);
    draw_rectangle(room_width / 2 - 100, room_height - 100, room_width / 2 + 100, room_height - 50, false);
    draw_set_color(c_black);
    draw_text(room_width / 2, room_height - 75, "Click to Play!");
}