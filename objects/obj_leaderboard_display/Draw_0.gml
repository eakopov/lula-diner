/// obj_leaderboard_display - Draw Event

// Set Text Color to Black
draw_set_color(c_white); 

// Adjust position values
var x_start = 350; // Shift names to the right
var y_start = 220; // Move names further down
var line_height = 47; // Increase spacing between entries

// Loop through leaderboard data and display player info
for (var i = 0; i < array_length(global.leaderboard); i++) {
    var entry = global.leaderboard[i];

    // Name & Score (Without Numbers)
    var text = entry.name + " - " + string(entry.score);

    // Achievements
    var achievement_text = "";
    for (var j = 0; j < array_length(entry.achievements); j++) {
        achievement_text += "[" + entry.achievements[j] + "] ";
    }

    // Draw Player Data
    draw_text(x_start, y_start, text);
    draw_text(x_start + 300, y_start, achievement_text);

    y_start += line_height; // Move to the next row
}
