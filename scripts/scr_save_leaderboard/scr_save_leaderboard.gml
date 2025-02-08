function save_leaderboard() {
    var leaderboard_json = json_encode(global.leaderboard); // Convert to JSON
    var file = file_text_open_write("leaderboard.json");
    file_text_write_string(file, leaderboard_json);
    file_text_close(file);
}