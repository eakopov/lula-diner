if (popup_showing && popup_alpha > 0) {
    var px = 266;
    var py = 381;
    var box_width = 180;
    var box_height = 52;

    // Draw the pink background rectangle with alpha
    draw_set_alpha(popup_alpha);
    draw_set_color(make_color_rgb(255, 105, 180)); // Pink
    draw_rectangle(px, py, px + box_width, py + box_height, false);

    // Draw blue text centered in the rectangle
    draw_set_color(c_blue);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(px + box_width/2, py + box_height/2, popup_text);

    // Reset to default
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
    draw_set_color(c_white);
}
