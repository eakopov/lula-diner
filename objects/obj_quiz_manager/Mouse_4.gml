// Mouse Left Pressed Event on Answer 1 (First option)
if (mouse_y >= global.answer1_y && mouse_y <= global.answer1_y + 50) {
    global.player_answer = 1;
}

// Mouse Left Pressed Event on Answer 2 (Second option)
if (mouse_y >= global.answer2_y && mouse_y <= global.answer2_y + 50) {
    global.player_answer = 2;
}

// Mouse Left Pressed Event on Answer 3 (Third option)
if (mouse_y >= global.answer3_y && mouse_y <= global.answer3_y + 50) {
    global.player_answer = 3;
}
