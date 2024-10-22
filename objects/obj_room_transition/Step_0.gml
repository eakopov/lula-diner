if (global.questions_answered >= array_length(global.questions)) {
    var next_step = show_message_ext("Quiz completed! Do you want to go back to the scientist room?", "Yes", "No");
    if (next_step == 1) {
        room_goto(room_select_scientist);  // Go back to scientist selection room
    } else {
        room_goto(room_end);  // Move to the next room
    }
}
