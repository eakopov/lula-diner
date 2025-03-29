// Check if the game is paused
if (global.gamepaused) {
    return;  // Pause the game logic
}


//// Change sprite for direction
//if(move_target_x > x && !move_right) {
    //image_xscale = -1;
    //move_right = true;
//} else if (move_target_x < x && move_right) { 
    //image_xscale = 1;
    //move_right = false;
//}

// Movement Logic for Customer Orders
if (current_action == "move_to_customer") {
    if (move_target_x != -1 && move_target_y != -1) {
        x = move_target_x + 50;  
        y = move_target_y - 50;
        
        move_target_x = -1;
        move_target_y = -1;
        
        current_action = "take_order";
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
                case obj_weiss:
                    scientist_tool = "magnetrometer";
                    break;
                case obj_zuber:
                    scientist_tool = choose("DSOC", "radio");
                    break;
                default:
                    show_debug_message("Wrong object index indicated");
                    break;
            }
            customer_tool = "spr_" + scientist_tool;
            ready_to_order = false;
            receive_order(id, scientist_tool);
            
            obj_controller.selected_customer = noone;
            order_taken = true;
        }
    }
    target_customer = noone;
    current_action = "idle";
}

// Picking up the tool
if (current_action == "pick_up_tool") {
    if (move_target_x != -1 && move_target_y != -1) {
        x = move_target_x;
        y = move_target_y - 100;
        
        move_target_x = -1;
        move_target_y = -1;

        // Picking up the tool
        if (target_tool != noone) {
            with (target_tool) {
                if (is_ready) {
                    obj_controller.selected_tool = id;
                    scientist_tool = object_get_name(object_index);
                    show_debug_message("Tool picked up: " + scientist_tool);
                    
                    // Attach the tool to Lula
                    tool_attached = instance_create_layer(x, y - 10, "Instances", object_index);

                    // Mark plate as free
                    var plate_found = noone;
                    for (var i = 0; i < array_length(global.plates); i++) {
                        if (global.plates[i].tool_instance == id) {
                            plate_found = global.plates[i];
                            break;
                        }
                    }

                    if (plate_found != noone) {
                        plate_found.delivered = true;
                    }

                    if (instance_exists(tool_attached)) {
                        tool_attached.attached_to_lula = true;
                        tool_attached.lula_id = other.id;
                        tool_attached.tool_name = scientist_tool;
                        show_debug_message("CURRENT TOOL TO DELIVER: " + object_get_name(tool_attached.object_index));
                    }
                }
            }
        }
        
        target_tool = noone;
        current_action = "idle";
    }
}

// Deliver the tool once Lula reaches the table
if (current_action == "deliver_tool") {
    if (move_target_x != -1 && move_target_y != -1) {
        x = move_target_x + 25;
        y = move_target_y + 25;
        
        move_target_x = -1;
        move_target_y = -1;

        var matching = true; // Adjust later
        var customer = instance_nearest(x, y, obj_customer);
        var tool = instance_nearest(x, y, obj_tool);

        // Deliver tool if valid
        if (instance_exists(customer) && instance_exists(tool)) {
            switch (customer.object_index) {
                    case obj_bell:
                        matching = (tool.object_index == obj_multispectral);
                        break;
                    case obj_lawrence:
                        matching = (tool.object_index == obj_neutron || tool.object_index == obj_gamma);
                        break;
                    case obj_weiss:
                        matching = (tool.object_index == obj_magnetrometer);
                        break;
                    case obj_zuber:
                        matching = (tool.object_index == obj_DSOC || tool.object_index == obj_radio);
                        break;
                    default:
                        show_debug_message("Wrong object index indicated");
                        break;
            }
            
            if (matching) {
                show_debug_message("Lula delivering tool to customer.");
                tool.customer_id = customer.id;
    
                // Deliver tool
                tool.attached_to_lula = false;
                tool.tool_delivery_ready = true;
                customer.ready_to_eat = true;
                
                // Clear the selected tool
                obj_controller.selected_tool = noone;
                instance_destroy(tool);
            } else {
                show_debug_message("Lula did NOT deliver the tool to the right customer.");
            }
        }
        
        current_action = "idle";
    }
}