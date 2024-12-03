// Draw the checkbox outline
draw_set_color(c_black);
draw_rectangle(x, y, x + 20, y + 20, false);

// Draw the checkbox fill if checked
if (is_checked) {
    draw_set_color(c_blue);
    draw_rectangle(x + 4, y + 4, x + 16, y + 16, false); // Smaller filled square inside
}

// Draw the label
draw_set_color(c_white);
draw_text(x + 30, y + 4, label_text);
