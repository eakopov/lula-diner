/// @description sets up everything
// You can write your code in this editor
noteTimings = ds_list_create();
notes = ds_list_create();
var timingFile = file_text_open_read("rythTiming.csv");
if (timingFile != -1) {
    while (!file_text_eof(timingFile)) {
        var line = file_text_read_string(timingFile);
        if (string_length(line) > 0) {
            ds_list_add(noteTimings, ticks_to_milliseconds(real(line), 120, 192) );  // Add the note time as a real number
        }
        file_text_readln(timingFile);
    }
    file_text_close(timingFile);
} else {
    show_debug_message("Failed to load rythTiming.csv");
}
var notesFile = file_text_open_read("rythNotes.csv");


if (notesFile != -1) {
    while (!file_text_eof(notesFile)) {
        var line = file_text_read_string(notesFile);
        if (string_length(line) > 0) {
            ds_list_add(notes, real(line) );  // Add the note time as a real number
        }
        file_text_readln(notesFile);
    }
    file_text_close(notesFile);
} else {
    show_debug_message("Failed to load rythNotes.csv");
}
alarm[0] = 2 * room_speed
audio_play_sound(songTiming, 2, false);

// Display timings
for (var i = 0; i < ds_list_size(noteTimings); i++) {
    show_debug_message("Timing: " + string(ds_list_find_value(noteTimings, i)));
}

// Display notes
for (var j = 0; j < ds_list_size(notes); j++) {
    show_debug_message("Note: " + string(ds_list_find_value(notes, j)));
}

var creditsCheck = file_text_open_read("song_ryth_cred.txt");


if (creditsCheck != -1) {
    credits = "";
    while (!file_text_eof(creditsCheck)) {
        credits += file_text_readln(creditsCheck) + "\n"; // Concatenate lines
    }
    file_text_close(creditsCheck);
    show_debug_message(credits); // Example: Output all content
} else {
    show_debug_message("Failed to load song_ryth_cred.txt");
}
draw_set_color(c_white);




