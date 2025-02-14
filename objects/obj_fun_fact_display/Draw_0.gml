// Draw the fun fact and yellow stars if enabled
if (global.show_fun_fact) {
    // Apply alpha for fading
    draw_set_alpha(global.fade_alpha);

    // Define text dimensions
    var x_start = x - 201;  // Adjusted from absolute 23
    var y_start = y + 181;  // Adjusted from absolute 245
    var max_width = 180; // Maximum width of text
    var line_height = 20; // Line spacing

    // Wrap the text
    function string_wrap(_text, _max_width) {
        var words = string_split(_text, " "); // Split text into words
        var lines = []; // Store wrapped lines
        var current_line = ""; // Build the current line

        for (var i = 0; i < array_length(words); i++) {
            var word = words[i];
            // Check if adding the next word exceeds the width
            if (string_width(current_line + " " + word) > _max_width) {
                array_push(lines, current_line); // Save the current line
                current_line = word; // Start a new line
            } else {
                current_line += (current_line == "") ? word : " " + word; // Add the word to the line
            }
        }

        // Add the final line
        if (current_line != "") {
            array_push(lines, current_line);
        }

        return lines;
    }

    // Wrap the fun fact text
    var lines = string_wrap(global.current_fun_fact, max_width);

    // Draw the wrapped text
    draw_set_color(c_white);
    for (var i = 0; i < array_length(lines); i++) {
        draw_text(x_start, y_start + (i * line_height), lines[i]);
    }

    // Draw stars (asterisks) around the text
    draw_set_color(c_yellow);
    var star_offset_x = 10; // X offset for stars
    var star_offset_y = 15; // Y offset for stars
    var text_height = array_length(lines) * line_height; // Total text height

    // 4 stars above the text
    draw_text(x_start - star_offset_x, y_start - star_offset_y, "*");
    draw_text(x_start + max_width / 3, y_start - star_offset_y, "*");
    draw_text(x_start + (2 * max_width) / 3, y_start - star_offset_y, "*");
    draw_text(x_start + max_width - star_offset_x, y_start - star_offset_y, "*");

    // 2 stars to the right of the text
    draw_text(x_start + max_width + star_offset_x, y_start + text_height / 4 - star_offset_y, "*");
    draw_text(x_start + max_width + star_offset_x, y_start + (3 * text_height) / 4 - star_offset_y, "*");

    // 4 stars below the text
    draw_text(x_start - star_offset_x, y_start + text_height + star_offset_y, "*");
    draw_text(x_start + max_width / 3, y_start + text_height + star_offset_y, "*");
    draw_text(x_start + (2 * max_width) / 3, y_start + text_height + star_offset_y, "*");
    draw_text(x_start + max_width - star_offset_x, y_start + text_height + star_offset_y, "*");

    // Reset alpha
    draw_set_alpha(1);
}
