///Display ending scene

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

// Display the main completion message
draw_text_ext(_x, _y, "You finished story mode! The mission takes off!", 20, gui_width - 40);

// ======================
// Draw the Ending Sprite
// ======================

// Scale factor for the ending sprite
var scale_factor = 5 / 2;

// Position for the sprite (centered in the lower half of the screen)
var draw_x = gui_width / 2;
var draw_y = gui_height / 2;

// Draw the ending sprite (mirrored and scaled)
draw_sprite_ext(ending_sprite, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);

// ======================
// Branching Endings Based on Performance
// ======================

var ending_text = "";

switch (ending) {
    case "low":
        ending_text = "Lula has a lot to learn about planning a mission! \nEven though the mission launch was a success, Lula ruffled some feathers along the way! \nHer boss put her on an improvement plan!";
        break;
        
    case "medium":
        ending_text = "Lula made it happen! \nThe mission launch was a success, but it could have been accomplished more gracefully. \nLula will do better next time!";
        break;
        
    case "high":
        ending_text = "Lula did a great job! \nThe mission launch was a success and everyone noticed! \nThe higher-ups will be more likely to approve Lula's missions in the future!";
        break;
        
    case "best":
        ending_text = "Lula impressed everyone with her great work! \nThe mission launch was a success, and because of her impressive work, Lula has been promoted! \nKa-ching! \nHer boss gives her a raise (and more work to do)!";
        break;
		
		case "":
        ending_text = "Ending not calculated correctly";
        break;
}

// Display the ending text below the sprite
draw_text_ext(draw_x, draw_y + 150, ending_text, 20, gui_width - 40);

	
	
	
	
	
	
	
	
	
	
	
	
