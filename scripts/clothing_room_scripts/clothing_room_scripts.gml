// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function start_conversation(_node_title) {
	
	if(obj_clothing_controller.colliding_with_scientist_1 || obj_clothing_controller.colliding_with_scientist_2 || obj_clothing_controller.colliding_with_scientist_3) {
		obj_clothing_controller.rand_branch = get_unique_random_branch();
		ChatterboxVariableSet("rand_branch", obj_clothing_controller.rand_branch);

	}
	
    ChatterboxJump(global.chatterbox_clothing, _node_title);
    obj_clothing_controller.convo_in_progress = true;
    obj_clothing_controller.conversation_state = "displaying_text";
}

function process_choice(_node_title, _choice) {
	
	if (_choice != 1) {
        return; // Do nothing if answer is incorrect
    }
	       
    var clothing_awarded = "";
	
	

    switch (_node_title) {
        // Scientist 1: Professional Outfit
        case "Scientist1_IntroA":
        case "Scientist1_IntroB":
        case "Scientist1_IntroC":
			// Add the selected number to the used list
			array_push(obj_clothing_controller.used_rand_branches, current_rand);
            var s1_options = [];
            if (!obj_clothing_controller.has_briefcase) array_push(s1_options, "briefcase");
            if (!obj_clothing_controller.has_cravate) array_push(s1_options, "cravate");
            if (!obj_clothing_controller.has_monocle) array_push(s1_options, "monocle");

            if (array_length(s1_options) > 0) {
                clothing_awarded = s1_options[irandom(array_length(s1_options) - 1)];
                assign_clothing_item(clothing_awarded);
                obj_clothing_controller.clothing_counter++;
                update_inventory(clothing_awarded);
				addPoints(10);
            }

            obj_clothing_controller.scientist1_correct++;
            if (obj_clothing_controller.scientist1_correct >= 3) {
                obj_clothing_controller.has_all_from_s1 = true;
                addPoints(20);
            }
            break;

        // Scientist 2: Swim Outfit
        case "Scientist2_IntroA":
        case "Scientist2_IntroB":
        case "Scientist2_IntroC":
			// Add the selected number to the used list
			array_push(obj_clothing_controller.used_rand_branches, current_rand);
            var s2_options = [];
            if (!obj_clothing_controller.has_goggles) array_push(s2_options, "goggles");
            if (!obj_clothing_controller.has_snorkel) array_push(s2_options, "snorkel");
            if (!obj_clothing_controller.has_floaties) array_push(s2_options, "floaties");

            if (array_length(s2_options) > 0) {
                clothing_awarded = s2_options[irandom(array_length(s2_options) - 1)];
                assign_clothing_item(clothing_awarded);
                obj_clothing_controller.clothing_counter++;
                update_inventory(clothing_awarded);
				addPoints(10);
            }

            obj_clothing_controller.scientist2_correct++;
            if (obj_clothing_controller.scientist2_correct >= 3) {
                obj_clothing_controller.has_all_from_s2 = true;
                addPoints(20);
            }
            break;

        // Scientist 3: Knight Outfit
        case "Scientist3_IntroA":
        case "Scientist3_IntroB":
        case "Scientist3_IntroC":
			// Add the selected number to the used list
			array_push(obj_clothing_controller.used_rand_branches, current_rand);
            var s3_options = [];
            if (!obj_clothing_controller.has_helm) array_push(s3_options, "helm");
            if (!obj_clothing_controller.has_armor) array_push(s3_options, "armor");
            if (!obj_clothing_controller.has_boots) array_push(s3_options, "boots");

            if (array_length(s3_options) > 0) {
                clothing_awarded = s3_options[irandom(array_length(s3_options) - 1)];
                assign_clothing_item(clothing_awarded);
                obj_clothing_controller.clothing_counter++;
                update_inventory(clothing_awarded);
				addPoints(10);
            }

            obj_clothing_controller.scientist3_correct++;
            if (obj_clothing_controller.scientist3_correct >= 3) {
                obj_clothing_controller.has_all_from_s3 = true;
                addPoints(30);
            }
            break;

        // Door Nodes
        case "Door_Professional":
            if (_choice == 1) room_goto_next(); 
            break;

        case "Door_Swim":
            if (_choice == 1) room_goto_next(); 
            break;

        case "Door_Knight":
            if (_choice == 1) room_goto_next(); 
            break;
			
		case "DoorGeneral":
			if (_choice == 1) room_goto_next(); 
            break;

        // Mirror Node
        case "Mirror":
		
			/*
            if (_choice == 1) {obj_clothing_controller.wear_professional = true; 
			addPoints(100);}
            else if (_choice == 2) obj_clothing_controller.wear_swim = true;
            else if (_choice == 3) obj_clothing_controller.wear_knight = true;
			
			if (_choice == 1 || _choice == 2 || _choice ==3) obj_clothing_controller.dressed = true;
			
			*/
			
			if (_choice == 1) {obj_clothing_controller.dress_up_time = true;}
			else {}
            break;
			
        
        
    }
}

function update_inventory(_item_earned) {
	
	var _count = obj_clothing_controller.clothing_counter;
	
	var _instance_id = " ";
	
	var _sprite = spr_lula_walk;
	
	
	if (_item_earned == "briefcase") {
		show_debug_message("briefcase update is a go");
		_sprite = spr_clothing_briefcase_64;
		
	}
	
	else {}
	
	show_debug_message(_count);
	
	switch(_count)
	
	{
		case 1:
			with (obj_inventory_box) {
				if (instance_name == "obj_inv_box_tl") {
				show_debug_message("ready to draw sprite");
				draw_sprite(_sprite, 0, obj_inventory_box.x, obj_inventory_box.y);
				}
			}

			break;
		
		case 2:
			_box_suffix = "tc";
			break;
		
		case 3:
			_box_suffix = "tr";
			break;
			
		case 4:
			_box_suffix = "cl";
			break;
			
		case 5:
			_box_suffix = "cc";
			break;
			
		case 6:
			_box_suffix = "cr";
			break;
			
		case 7:
			_box_suffix = "bl";
			break;
			
		case 8:
			_box_suffix = "bc";
			break;
			
		case 9:
			_box_suffix = "br";
			break;
			

	}
	
	
	
	
	
}


function assign_clothing_item(item) {
    switch (item) {
        // Scientist 1 (Professional)
        case "briefcase": obj_clothing_controller.has_briefcase = true; break;
        case "cravate": obj_clothing_controller.has_cravate = true; break;
        case "monocle": obj_clothing_controller.has_monocle = true; break;

        // Scientist 2 (Swim)
        case "goggles": obj_clothing_controller.has_goggles = true; break;
        case "snorkel": obj_clothing_controller.has_snorkel = true; break;
        case "floaties": obj_clothing_controller.has_floaties = true; break;

        // Scientist 3 (Knight)
        case "helm": obj_clothing_controller.has_helm = true; break;
        case "armor": obj_clothing_controller.has_armor = true; break;
        case "boots": obj_clothing_controller.has_boots = true; break;
    }
}

function get_unique_random_branch() {
    var available_numbers = [];
    
    // Create a list of available numbers
    for (var i = 0; i <= 9; i++) {
        if (!array_contains(obj_clothing_controller.used_rand_branches, i)) {
            array_push(available_numbers, i);
        }
    }

    // If all numbers have been used, reset the list
    if (array_length(available_numbers) == 0) {
        obj_clothing_controller.used_rand_branches = []; // Clear history
        for (var i = 0; i <= 9; i++) {
            array_push(available_numbers, i); // Refill with all options
        }
    }

    // Pick a new random number from the available options
    var index = irandom(array_length(available_numbers) - 1);
    current_rand = available_numbers[index];

    

    return current_rand;
}