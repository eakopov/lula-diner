/// @description Insert description here
// You can write your code in this editor
if (room_next(room) != -1) {
    room_goto_next();
} else {
    show_message("No more rooms to skip to!");
}
