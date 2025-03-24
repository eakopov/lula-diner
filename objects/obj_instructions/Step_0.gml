if (!transition_done) {
    layer_set_visible("Transition", true);
    instance_deactivate_object(inst_54E540F5); //obj_lula_pizza 
    instance_deactivate_object(inst_36958C6C); //obj_chef
    instance_deactivate_object(counter);
    instance_deactivate_object(obj_plate);
    instance_deactivate_object(obj_customer);
    instance_deactivate_object(obj_sign_closed);
    if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) {
        transition_slide += 1;

        if (transition_slide > 4) {
            transition_done = true;
            layer_set_visible("Transition", false);
        }
    }
} else {
    if (!global.clicked && (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space))) {
        global.clicked = true;
        instance_activate_object(inst_54E540F5); //obj_lula_pizza 
        instance_activate_object(inst_36958C6C); //obj_chef
        instance_activate_object(counter);
        instance_activate_object(obj_plate);
        //instance_activate_object(obj_customer);
        instance_activate_object(obj_sign_closed);
    }
}