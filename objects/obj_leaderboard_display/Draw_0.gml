var x_start = 200;
var y_start = 100;
var line_height = 30;

// Title
draw_set_color(c_white);
draw_text(x_start, y_start, "Leaderboard");
y_start += 50;

// Draw leaderboard entries
for (var i = 0; i < array_length(global.leaderboard); i++) {
    var entry = global.leaderboard[i];
    var text = string(i + 1) + ". " + entry.name + " - " + string(entry.score) + " (" + entry.date + ")";
    draw_text(x_start, y_start, text);
    y_start += line_height;
}