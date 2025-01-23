function update_leaderboard(player_name, player_score) {
    // Create a new leaderboard entry
    var new_entry = {
        name: player_name,
        score: player_score,
        date: date_current_date()
    };

    // Add the entry and sort by score (descending)
    array_push(global.leaderboard, new_entry);
    global.leaderboard = array_sort(global.leaderboard, function(a, b) {
        return b.score - a.score;
    });

    // Limit to top 10 entries
    if (array_length(global.leaderboard) > 10) {
        array_resize(global.leaderboard, 10);
    }

    // Save leaderboard
    save_leaderboard();
}