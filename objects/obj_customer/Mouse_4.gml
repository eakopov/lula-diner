if (ready_to_seat) {  // Only allow selection if the customer is waiting
    obj_controller.selected_customer = id;  // Set this customer as the selected one
}

if (ready_to_order) {
    show_debug_message("Order taken by Lula");

    ready_to_order = false;

}