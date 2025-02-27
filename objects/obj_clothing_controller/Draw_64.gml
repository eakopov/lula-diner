// Viewport dimensions
var view_x = 0;            // Horizontal start of the viewport
var view_y = 480 * obj_clothing_controller.SCALE_MULTIPLIER;  // Vertical start of the viewport
var view_w = 1280 * obj_clothing_controller.SCALE_MULTIPLIER; // Width of the viewport
var view_h = 240 * obj_clothing_controller.SCALE_MULTIPLIER; // Height of the viewport

// Border properties
var border_thickness = 4 * obj_clothing_controller.SCALE_MULTIPLIER; // Thickness of the border
draw_set_color(c_white);   // Border color

// Draw the top border
draw_rectangle(view_x, view_y - border_thickness, 
               view_x + view_w, view_y, false);

// Draw the bottom border
draw_rectangle(view_x, view_y + view_h - border_thickness, 
               view_x + view_w, view_y + view_h, false);

// Draw the left border
draw_rectangle(view_x - border_thickness, view_y, 
               view_x, view_y + view_h, false);

// Draw the right border
draw_rectangle(view_x + view_w - border_thickness, view_y, 
               view_x + view_w, view_y + view_h, false);



if (obj_clothing_controller.ready_for_results_1) {
    // Get screen dimensions
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();

    // Draw a white background
    draw_set_color(c_white);
    draw_rectangle(0, 0, gui_width, gui_height, false); // Solid white background

    // Set text formatting
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // Get center of the screen for text
    var _x = gui_width / 2;
    var _y = gui_height / 4; // Move text up slightly so Lula is visible below

    // Display player's total points
    draw_text_ext(_x, _y, "Congratulations!  You completed Dress for Success!\n You finished with a grade of " + global.clothingResult,20, gui_width - 40);

	// string(/*obj_clothing_controller.clothing_points) + " points!*/ )

    // ======================
    // Draw Lula (Mirrored)
    // ======================

    // Scale factor for Lula's mirrored version
    var scale_factor = 5 / 2;

    // Position for Lula (centered in lower half of the screen)
    var draw_x = gui_width / 2;
    var draw_y = gui_height / 2;

    // Draw Lula's base sprite (mirrored and scaled)
    draw_sprite_ext(obj_lula_clothing.sprite_index, obj_lula_clothing.image_index, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);

    // If the main character is "dressed," draw their accessories
    if (obj_clothing_controller.dressed) {
        draw_sprite_ext(obj_clothing_controller.clothing_item_1.sprite_index, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);
        draw_sprite_ext(obj_clothing_controller.clothing_item_2.sprite_index, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);
        draw_sprite_ext(obj_clothing_controller.clothing_item_3.sprite_index, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);
    }

    // ======================
    // Branching Endings Based on Professional Attire
    // ======================

    var ending_text = "";
    var points_to_add = 0;

    switch (obj_clothing_controller.number_professional) {
        case 0:
            ending_text = "Oh, no! You are unprofessionally dressed! Your pitch fails!";
           
            break;
        case 1:
            ending_text = "You are still learning about professionalism in fashion, but you're not there yet! The board is skeptical, but you might get approved for the next round of funding!";
           
            break;
        case 2:
            ending_text = "Looking professional! Your pitch is approved!";
           
            break;
        case 3:
            ending_text = "Your professional attire has deeply impressed the board! Not only do they approve your pitch for funding a mission to Psyche, they award you an extra 10 million LlamaDollars! Congrats!";
            
            break;
    }

    // Add points
  

    // Display the ending text under Lula
    draw_text_ext(draw_x, draw_y + 150, ending_text, 20, gui_width - 40);
}

if (obj_clothing_controller.ready_for_results_2) {
    // Get screen dimensions
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();

    // Draw a white background
    draw_set_color(c_white);
    draw_rectangle(0, 0, gui_width, gui_height, false); // Solid white background

    // Set text formatting
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // Get center of the screen for text
    var _x = gui_width / 2;
    var _y = gui_height / 4; // Move text up slightly so Lula is visible below

    // Display player's total points
     draw_text_ext(_x, _y, "Congratulations!  You completed Dress for Success!\n You finished with a grade of " + global.clothingResult,20, gui_width - 40);

    // ======================
    // Draw Lula (Mirrored)
    // ======================

    // Scale factor for Lula's mirrored version
    var scale_factor = 5 / 2;

    // Position for Lula (centered in lower half of the screen)
    var draw_x = gui_width / 2;
    var draw_y = gui_height / 2;

    // Draw Lula's base sprite (mirrored and scaled)
    draw_sprite_ext(obj_lula_clothing.sprite_index, obj_lula_clothing.image_index, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);

    // If the main character is "dressed," draw their accessories
    if (obj_clothing_controller.dressed) {
        draw_sprite_ext(obj_clothing_controller.clothing_item_1.sprite_index, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);
        draw_sprite_ext(obj_clothing_controller.clothing_item_2.sprite_index, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);
        draw_sprite_ext(obj_clothing_controller.clothing_item_3.sprite_index, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);
    }

    // ======================
    // Branching Endings Based on Professional Attire
    // ======================

    var ending_text = "It's time to put your proposal in action and...Jump Through Hoops!";
    var points_to_add = 0;

   

    // Add points
   addPoints(points_to_add);

    // Display the ending text under Lula
    draw_text_ext(draw_x, draw_y + 150, ending_text, 20, gui_width - 40);
}
