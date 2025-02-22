if (ready_to_seat) {
    obj_controller.selected_customer = id;  // Set this customer as the selected one
}

if (ready_to_order) {
    obj_lula_pizza.target_customer = id;  // Set Lula's target customer
    obj_lula_pizza.move_target_x = x;  // Set Lula's target position
    obj_lula_pizza.move_target_y = y;
    obj_lula_pizza.current_action = "move_to_customer";  // Set Lula's current action
}