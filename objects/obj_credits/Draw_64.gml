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

// Alphabetized sources list
var sources = [
    "AI Art: chatgpt.com",
    "Assets: freepik.com, vecteezy.com, itch.io",
    "Free Use Music: pixabay.com/P_Lorenz/drmseq",
    "GameMaker Tutorials: gamemaker.io/tutorials",
    "Jump Minigame Code: gamemaker.io/tutorials/platformer",
    "Licensed under CC BY 4.0: incompetech.com",
    "Magnetometer & X-Band: NASA/JPL-Caltech",
    "Mission Phases Info: psyche.asu.edu/timeline",
    "Multispectral Imager: NASA/JPL-Caltech/ASU/MSSS",
    "Neutron & Gamma Spectrometers: JHUAPL/Ed Whitman",
    "Preliminary Design Image: psyche.asu.edu/timeline",
    "Psyche Fun Facts: astronomy.com",
    "Song: 'RetroFuture Dirty' by Kevin MacLeod",
    "Visuals & KB: psyche.asu.edu",
    "Visuals: psyche.asu.edu & piskelapp.com"
];

// Fix spacing between sources
var base_y = 450 + y_offset;
for (var i = 0; i < array_length(sources); i++) {
    draw_text(360, base_y + (i * 25), sources[i]);
}

// Exit instructions (not scrolled)
draw_set_color(c_red);
draw_text(360, 680, "Press ESC to return to the Main Menu");
