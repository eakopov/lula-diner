/// obj_leaderboard_display - Draw Event

var x_start = 200;
var y_start = 100;
var line_height = 30;

draw_text(x_start, y_start, "Leaderboard - Top 10 Players");
y_start += 50;

for (var i = 0; i < array_length(global.leaderboard); i++) {
    var entry = global.leaderboard[i];
    var text = string(i + 1) + ". " + entry.name + " - " + string(entry.score);
    
    // Display achievements
    var achievement_text = "";
    for (var j = 0; j < array_length(entry.achievements); j++) {
        achievement_text += "[" + entry.achievements[j] + "] ";
    }

    draw_text(x_start, y_start, text);
    draw_text(x_start + 300, y_start, achievement_text);
    y_start += line_height;
}

if (array_length(global.leaderboard) == 0) {
    draw_text(200, 150, "No leaderboard data available.");
}

var y_start = 150;
for (var i = 0; i < array_length(global.leaderboard); i++) {
    var entry = global.leaderboard[i];
    var text = string(i + 1) + ". " + entry.name + " - " + string(entry.score);
    draw_text(200, y_start, text);
    y_start += 30;
}
if (array_length(global.leaderboard) == 0) {
    global.leaderboard = [
        {name: "TestPlayer", score: 1000, achievements: ["Master Scientist"]}
    ];
}
