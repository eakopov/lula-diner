if (ready_to_seat) {  // Only allow selection if the customer is waiting
    obj_controller.selected_customer = id;  // Set this customer as the selected one
}

if (ready_to_order) {
	customer_tool = choose("gamma", "magnetrometer", "multispectral", "neutron", "DSOC", "radio");
	show_debug_message("tool for " + string(id) + " is of type " + string(customer_tool));

    receive_order(id, customer_tool);
	
	// Update state
	ready_to_order = false;
	obj_controller.selected_customer = noone;
	order_taken = true;

}