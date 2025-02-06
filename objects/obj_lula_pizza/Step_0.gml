// Check if the game is paused
if (global.gamepaused) {
    return;  // Pause the game logic
}


// Movement Logic for Customer Orders
if (current_action == "move_to_customer") {
    if (move_target_x != -1 && move_target_y != -1) {
        //show_debug_message("Lula Position: (" + string(x) + ", " + string(y) + ")");
        //show_debug_message("Current Action: " + current_action);
        //show_debug_message("Target Customer: " + string(target_customer));
        //show_debug_message("Move Target: (" + string(move_target_x) + ", " + string(move_target_y) + ")");
        
        // Move toward the target point
        move_speed = 3;
        move_towards_point(move_target_x + 50, move_target_y - 50, move_speed);

        // Check if Lula has reached the target
        if (point_distance(x, y, move_target_x + 50, move_target_y - 50) < 5) {
            x = move_target_x + 50;  // Snap to the target x
            y = move_target_y - 50;  // Snap to the target y
            move_target_x = -1; // Reset target x
            move_target_y = -1; // Reset target y
            speed = 0;
            current_action = "take_order";
            //show_debug_message("WE DID THIS PART SUCCESSFULLY");
        }
    }
}

// Taking Order
if (target_customer != noone && current_action == "take_order") {
    with (target_customer) {
        if (ready_to_order) {
            switch (object_index) {
                case obj_bell:
                    scientist_tool = "multispectral";
                    break;
                case obj_lawrence:
					scientist_tool = choose("neutron", "gamma");
					break;
                case obj_brauer:
                    scientist_tool = "magnetrometer";
                    break;
                case obj_zuber:
                    scientist_tool = choose("DSOC", "radio");
                    break;
                default:
                    show_debug_message("Wrong object index indicated");
                    break;
            }
            
            ready_to_order = false;
            receive_order(id, scientist_tool);
            
            obj_controller.selected_customer = noone;
            order_taken = true;
        }
    }
    target_customer = noone;
    current_action = "idle";
}

// Logic for Picking Up the Tool
if (current_action == "pick_up_tool") {
    if (move_target_x != -1 && move_target_y != -1) {
        show_debug_message("Moving to tool at: (" + string(move_target_x) + ", " + string(move_target_y) + ")");
        
        // Move toward the tool
        move_speed = 3;
        move_towards_point(move_target_x, move_target_y - 100, move_speed);

        // Check if Lula has reached the tool
        if (point_distance(x, y, move_target_x, move_target_y - 100) < 5) {
            x = move_target_x;
            y = move_target_y - 100;
            move_target_x = -1;
            move_target_y = -1;
            speed = 0;

            // Picking up the tool
            if (target_tool != noone) {
                with (target_tool) {
                    if (is_ready) {
                        obj_controller.selected_tool = id;
                        scientist_tool = object_get_name(object_index);
                        show_debug_message("Tool picked up: " + scientist_tool);
                        
                        // Mark plate as free immediately
                        var plate_found = noone;
                        for (var i = 0; i < array_length(global.plates); i++) {
                            if (global.plates[i].tool_instance == id) {
                                plate_found = global.plates[i];
                                break;
                            }
                        }

                        if (plate_found != noone) {
                            plate_found.delivered = true;
                            show_debug_message("Tool removed from plate: " + string(plate_found));
                        }

                        // Attach the tool to Lula
                        tool_attached = instance_create_layer(x, y - 10, "Instances", object_index);
						show_debug_message("CURRENT TOOL TO DELIVER: " + object_get_name(tool_attached.object_index));
                    }
                }
            }

            target_tool = noone;
            current_action = "idle";
            show_debug_message("Tool picked up successfully!");
        }
    }
}

// Logic to deliver the tool once Lula reaches the table
if (current_action == "deliver_tool") {
	if (move_target_x != -1 && move_target_y != -1) {
		
		move_speed = 3;
		move_towards_point(move_target_x, move_target_y - 100, move_speed);
		with(tool_attached) {
			move_towards_point(other.move_target_x, other.move_target_y - 100, other.move_speed);	
		}
    if (point_distance(x, y, move_target_x, move_target_y) < 5) {
        x = move_target_x;
        y = move_target_y;
		
		with(tool_attached) {
			x = other.move_target_x;
			y = other.move_target_y;
		}
		move_target_x = -1;
		move_target_y = -1;
		speed = 0;
		var matching = false;
		var customer = instance_nearest(x, y, obj_customer);
        // Check if the tool matches the customer's request
        if (instance_exists(tool_attached) && instance_exists(customer_id)) {
           
             switch (customer) {
                case obj_bell:
					if(object_get_name(tool_attached.object_index) == "multispectral") {
						matching = true;
					}
                    break;
                case obj_lawrence:
					if(object_get_name(tool_attached.object_index) == "neutron" || object_get_name(tool_attached.object_index) == "gamma") {
						matching = true;
					}
					
					break;
                case obj_brauer:
					if(object_get_name(tool_attached.object_index) == "magnetrometer") {
						matching = true;
					}
                    
                    break;
                case obj_zuber:
					if(object_get_name(tool_attached.object_index) == "DSOC" || object_get_name(tool_attached.object_index) == "radio") {
						matching = true;
					}
                    break;
                default:
                    show_debug_message("Wrong object index indicated");
                    break;
            }
		
            if (matching) {
				show_debug_message("Matching == true");
                // Deliver tool
                tool_attached.x = customer.x + 50;
                tool_attached.y = customer.y + 10;
                
                customer.ready_to_eat = true;
                
                // Clear the selected tool
                obj_controller.selected_tool = noone;
                instance_destroy(selected_tool);
                show_debug_message("Correct tool delivered to the customer.");
            } else {
                // Wrong tool, keep holding it
                show_debug_message("Wrong tool! Lula keeps holding the tool.");
            }
        }
        obj_lula_pizza.current_action = "idle";
    }
}
}