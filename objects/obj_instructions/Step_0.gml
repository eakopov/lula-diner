if (!transition_done) {
    layer_set_visible("Transition", true);
    instance_deactivate_object(inst_54E540F5); //obj_lula_pizza 
    instance_deactivate_object(inst_36958C6C); //obj_chef
    instance_deactivate_object(counter);
    for(var i = 0; i <= 6; i++) {
        var plate = "plate_" + string(i);
        instance_deactivate_object(asset_get_index(plate));
    }
    if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) {
        transition_slide += 1;

        if (transition_slide > 4) {
            transition_done = true;
            layer_set_visible("Transition", false);
        }
    }
} else {
    if (!clicked && (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space))) {
        clicked = true;
    }
}