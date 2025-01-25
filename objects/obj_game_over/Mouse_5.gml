/// Step Event of obj_game_over

// Restart the game
if (keyboard_check_pressed(ord("R"))) {
    room_restart(); // Restarts the current room (or change to room_goto(room_game) for a specific room)
}

// Go to the leaderboard room
if (keyboard_check_pressed(ord("L"))) {
    room_goto(room_leaderboard); // Replace with your leaderboard room's name
}
