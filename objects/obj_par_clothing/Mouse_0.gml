/// @description Insert description here
// You can write your code in this editor


if (obj_clothing_controller.dress_up_time) {
    // Check if the counter allows selecting another item
    if (obj_clothing_controller.clothing_item_counter < 3) {
        if (obj_clothing_controller.clothing_item_counter == 0 && type == "top") {
            obj_clothing_controller.clothing_item_1 = id; // Save the first item
			if(object_index == obj_clothing_monocle) obj_clothing_controller.number_professional++;
			show_debug_message("item 1 selected");
			obj_clothing_controller.clothing_item_counter++;
        } else if (obj_clothing_controller.clothing_item_counter == 1 && type == "mid") {
			obj_clothing_controller.clothing_item_2 = id; // Save the second item
			if(object_index == obj_clothing_cravate) obj_clothing_controller.number_professional++;
			show_debug_message("item 2 selected");
			obj_clothing_controller.clothing_item_counter++;
        } else if (obj_clothing_controller.clothing_item_counter == 2 && type == "bottom") {
			obj_clothing_controller.clothing_item_3 = id; // Save the third item
			if(object_index == obj_clothing_briefcase) obj_clothing_controller.number_professional++;
			show_debug_message("item 3 selected");
			obj_clothing_controller.clothing_item_counter++;
            obj_clothing_controller.dress_up_time = false; // Turn off dress-up mode
			obj_clothing_controller.dressed = true;
			
        }

       

        // Add a visual effect for selected items
        //selected = true;
    } else {
        show_debug_message("All items are selected!");
    }
}
