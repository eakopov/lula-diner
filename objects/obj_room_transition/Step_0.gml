if (global.questions_answered >= array_length(global.questions)) {
    // Move to the next room
    room_goto_next();
}
