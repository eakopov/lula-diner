/// scr_update_leaderboard - Adds player score & achievements
function update_leaderboard(player_name, player_score, player_achievements) {
    var new_entry = {
        name: player_name,
        score: player_score,
        achievements: player_achievements
    };

    // Add entry and sort by highest score
    array_push(global.leaderboard, new_entry);
    global.leaderboard = array_sort(global.leaderboard, function(a, b) {
        return b.score - a.score; // Sort descending by score
    });

    // Keep only the top 10 scores
    if (array_length(global.leaderboard) > 10) {
        array_resize(global.leaderboard, 10);
    }

    save_leaderboard(); // Save the updated leaderboard
}
