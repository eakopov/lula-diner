/// @description sets up everything
// You can write your code in this editor
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

