/// obj_game_over - Game Over Event
var player_name = "Player"; // Replace with player input system if needed
var player_score = global.score; // Use the player's final score

// Example achievements (adjust logic based on actual game conditions)
var player_achievements = [];
if (player_score > 500) array_push(player_achievements, "Master Scientist");
if (player_score > 1000) array_push(player_achievements, "Llama Science Legend");
if (global.perfect_rounds == true) array_push(player_achievements, "Flawless Victory");

// Update leaderboard
with (obj_leaderboard_controller) {
    update_leaderboard(player_name, player_score, player_achievements);
}
