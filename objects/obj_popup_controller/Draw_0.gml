with (obj_portrait) {
    if (popup_visible) {
        var rect_x1 = x;
        var rect_y1 = y + 100;
        var rect_x2 = x + 200;
        var rect_y2 = y + 260;

        draw_set_color(c_olive);
        draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false);

        draw_set_color(c_black);
        draw_set_font(fnt_pizza_room);
        draw_text((rect_x1 + rect_x2) / 2, rect_y1 + 10, scientist_name);
        draw_text(rect_x1 + 10, rect_y1 + 40, description);

        var tool_x = rect_x1 + 10;
        var tool_y = rect_y1 + 70;
        for (var i = 0; i < array_length(tools); i++) {
            draw_sprite(tools[i].sprite_index, 0, tool_x, tool_y);
            tool_x += 90;
            if (tool_x + 40 > rect_x2) {
                tool_x = rect_x1 + 10;
                tool_y += 40;
            }
        }
    }
}
