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

// Title
draw_text(360, 50, "Game Credits");

// Organization section
draw_set_color(c_yellow);
draw_text(360, 120, "Developed for:");
draw_set_color(c_white);
draw_text(360, 150, "NASA Psyche Mission");

// Dev section
draw_set_color(c_yellow);
draw_text(360, 210, "Developed by:");
draw_set_color(c_white);
draw_text(360, 240, "Elizabeth Akopov");
draw_text(360, 270, "Peter Dimian");
draw_text(360, 300, "Paul Provence");
draw_text(360, 330, "Jesus Ramos");
draw_text(360, 360, "Corael Thompson");

// Sponsor section
draw_set_color(c_yellow);
draw_text(360, 420, "Sponsored by:");
draw_set_color(c_white);
draw_text(360, 450, "Cassie Bowman");

// Sources & references section
draw_set_color(c_yellow);
draw_text(360, 510, "Sources & References:");
draw_set_color(c_white);
draw_text(360, 540, "- Source 1"); // to do: update later & adjust spacing as needed
draw_text(360, 570, "- Source 2");
draw_text(360, 600, "- Source 3");

// Exit instructions
draw_set_color(c_red);
draw_text(360, 680, "Press ESC to return to the Main Menu");
