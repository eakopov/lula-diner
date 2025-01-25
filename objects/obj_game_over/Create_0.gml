/// Create Event of obj_game_over

// Get the player's score
var player_name = "Player"; // player names if needed
var player_score = global.score; // Use the final player score

// Update the leaderboard
with (obj_leaderboard_controller) {
    update_leaderboard(player_name, player_score); // Add the player's score to the leaderboard
}

// Display a message or setup Game Over visuals
game_restart_message = "Game Over! Your score was: " + string(player_score) + "\nCheck the leaderboard!";
