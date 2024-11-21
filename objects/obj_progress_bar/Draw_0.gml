// Define progress bar dimensions
var bar_x = 31; // Starting X position
var bar_y = 154; // Starting Y position (under timer)
var bar_width = 195; // Total width of the progress bar
var bar_height = 20; // Height of the progress bar

// Set the number of actual phases (6 phases, ignoring index 0 in the array)
var total_phases = 6;

// Adjust the current phase index to exclude the introduction
var current_phase_index = global.current_text_index;

// Draw the full pink progress bar (background)
draw_set_color(make_color_rgb(255, 105, 180)); // Pink color
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Calculate the width of each phase segment
var phase_step = bar_width / total_phases;

// Draw white rectangles for incomplete phases
draw_set_color(c_white);

for (var i = current_phase_index; i < total_phases; i++) {
    var rect_start_x = bar_x + (i * phase_step);
    var rect_end_x = rect_start_x + phase_step;
    draw_rectangle(rect_start_x, bar_y, rect_end_x, bar_y + bar_height, false);
}

// Draw markers for each phase
draw_set_color(c_black);
for (var i = 0; i <= total_phases; i++) {
    var marker_x = bar_x + (i * phase_step);
    draw_line(marker_x, bar_y, marker_x, bar_y + bar_height); // Draw marker line
}

// Draw phase labels
draw_set_color(c_white);
for (var i = 1; i <= total_phases; i++) { // Start from P1 (ignore the intro phase)
    var label_x = bar_x + ((i - 0.5) * phase_step); // Center label between markers
    draw_text(label_x - 10, bar_y + bar_height + 5, "P" + string(i)); // Adjust offsets as needed
}
