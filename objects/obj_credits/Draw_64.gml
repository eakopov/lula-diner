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
var y_offset = scroll_y;

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

// Sources & references section
draw_set_color(c_yellow);
draw_text(360, 420 + y_offset, "Sources & References:");
draw_set_color(c_white);

// General sources
draw_text(360, 450 + y_offset, "Preliminary Design Image: psyche.asu.edu/timeline");
draw_text(360, 470 + y_offset, "Mission Phases Info: psyche.asu.edu/timeline");
draw_text(360, 490 + y_offset, "Free Use Music: pixabay.com/P_Lorenz/drmseq");
draw_text(360, 510 + y_offset, "Jump Minigame Code: gamemaker.io/tutorials/platformer");
draw_text(360, 530 + y_offset, "Psyche Fun Facts: astronomy.com");

// Elizabeth’s Sources
draw_text(360, 560 + y_offset, "Multispectral Imager: NASA/JPL-Caltech/ASU/MSSS");
draw_text(360, 580 + y_offset, "Neutron & Gamma Spectrometers: JHUAPL/Ed Whitman");
draw_text(360, 600 + y_offset, "Magnetometer & X-Band: NASA/JPL-Caltech");

// Peter’s Sources
draw_text(360, 630 + y_offset, "GameMaker Tutorials: gamemaker.io/tutorials");
draw_text(360, 650 + y_offset, "Visuals & KB: psyche.asu.edu");
draw_text(360, 670 + y_offset, "AI Art: chatgpt.com");

// Paul's Sources
draw_text(360, 700 + y_offset, "GameMaker Tutorials: gamemaker.io/tutorials");
draw_text(360, 720 + y_offset, "Visuals: psyche.asu.edu & piskelapp.com");
draw_text(360, 740 + y_offset, "AI Art: chatgpt.com");

// Jesus’s Sources
draw_text(360, 770 + y_offset, "Song: 'RetroFuture Dirty' by Kevin MacLeod");
draw_text(360, 790 + y_offset, "Licensed under CC BY 4.0: incompetech.com");
draw_text(360, 810 + y_offset, "Assets: freepik.com, vecteezy.com, itch.io");

// Exit instructions
draw_set_color(c_red);
draw_text(360, 680, "Press ESC to return to the Main Menu");
