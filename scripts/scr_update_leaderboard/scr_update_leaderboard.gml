/// scr_update_leaderboard
/// Adds a new score, sorts the leaderboard, and saves it

function update_leaderboard(player_name, player_score) {
    // Create a new leaderboard entry
    var new_entry = {
        name: player_name,
        score: player_score,
        date: date_current_date()
    };

    // Add the entry
    array_push(global.leaderboard, new_entry);

    // Sort the leaderboard by score in descending order
    global.leaderboard = array_sort(global.leaderboard, function(a, b) {
        return b.score - a.score; // Sort descending
    });

    // Limit to the top 10 entries
    if (array_length(global.leaderboard) > 10) {
        array_resize(global.leaderboard, 10);
    }

    // Save the leaderboard
    save_leaderboard();
}
