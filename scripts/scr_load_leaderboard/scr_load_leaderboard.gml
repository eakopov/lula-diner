/// scr_load_leaderboard - Load leaderboard data
function load_leaderboard() {
    if (file_exists("leaderboard.json")) {
        var file = file_text_open_read("leaderboard.json");
        var leaderboard_json = file_text_read_string(file);
        global.leaderboard = json_decode(leaderboard_json);
        file_text_close(file);
    } else {
        global.leaderboard = [];
    }
}
