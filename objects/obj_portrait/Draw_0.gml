// Draw the portrait
draw_self();
//var normal_depth = depth;
//// Draw pop-up if visible
//if (popup_visible) {
//	depth = -10;
//    // Updated rectangle coordinates for a taller rectangle
//    var rect_x1 = x + 20;     // Left coordinate
//    var rect_y1 = y + 100;    // Top coordinate
//    var rect_x2 = x + 220;    // Right coordinate
//    var rect_y2 = y + 260;    // Bottom coordinate (increased height)

//    // Debug message to log the rectangle's coordinates
//    show_debug_message("Rectangle Coordinates: (" + string(rect_x1) + ", " + string(rect_y1) + ") to (" + string(rect_x2) + ", " + string(rect_y2) + ")");

//    // Draw the rectangle background
//    draw_set_color(c_olive);
//    draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false); // Draw rectangle outline

//    // Draw text inside the rectangle
//    draw_set_color(c_black);
//    draw_set_font(fnt_pizza_room);
//    draw_text(rect_x1 + 30, rect_y1 + 10, scientist_name); // Scientist name
//    draw_text(rect_x1 + 30, rect_y1 + 40, description);    // Description (adjust spacing for smaller font)

//    // Draw associated tools inside the rectangle
//    var tool_x = rect_x1 + 10; // Starting position for tools
//    var tool_y = rect_y1 + 70; // Vertical position for tools (below the description)
//    for (var i = 0; i < array_length(tools); i++) {
//        draw_sprite(tools[i].sprite_index, 0, tool_x, tool_y);
//        tool_x += 50; // Adjust spacing between tools horizontally
//        if (tool_x + 40 > rect_x2) { // Wrap to the next row if tools exceed rectangle width
//            tool_x = rect_x1 + 10; 
//            tool_y += 40; // Move to the next row
//        }
//    }
//} else {
//	depth = normal_depth;
//}
