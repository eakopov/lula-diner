// Explicitly set GUI to 720x720
display_set_gui_size(720, 720);

// Set font and alignment
draw_set_font(fnt_credits);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set background color
draw_set_color(c_black);
draw_rectangle(0, 0, 720, 720, false);

// Set text color
draw_set_color(c_white);

// Apply scroll offset
var y_offset = scroll_y; // scroll_y must be updated in Step

// Title
draw_text(360, 50 + y_offset, "Game Credits");

// Organization section
draw_set_color(c_yellow);
draw_text(360, 120 + y_offset, "Developed for:");
draw_set_color(c_white);
draw_text(360, 150 + y_offset, "NASA Psyche Mission");

// Dev section
draw_set_color(c_yellow);
draw_text(360, 210 + y_offset, "Developed by:");
draw_set_color(c_white);
draw_text(360, 240 + y_offset, "Elizabeth Akopov");
draw_text(360, 270 + y_offset, "Peter Dimian");
draw_text(360, 300 + y_offset, "Paul Provence");
draw_text(360, 330 + y_offset, "Jesus Ramos");
draw_text(360, 360 + y_offset, "Corael Thompson");

// Sponsor section
draw_set_color(c_yellow);
draw_text(360, 420 + y_offset, "Sponsored by:");
draw_set_color(c_white);
draw_text(360, 450 + y_offset, "Cassie Bowman");

// Sources & references section
draw_set_color(c_yellow);
draw_text(360, 510 + y_offset, "Sources & References:");
draw_set_color(c_white);
draw_text(360, 540 + y_offset, "- Source 1"); // to do: update later & adjust spacing as needed
draw_text(360, 570 + y_offset, "- Source 2");
draw_text(360, 600 + y_offset, "- Source 3");

// Exit instructions (optional: don't scroll this one)
draw_set_color(c_red);
draw_text(360, 680, "Press ESC to return to the Main Menu");
