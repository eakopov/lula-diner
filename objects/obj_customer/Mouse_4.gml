if (ready_to_seat) {  // Only allow selection if the customer is waiting
    obj_controller.selected_customer = id;  // Set this customer as the selected one
}

if (ready_to_order) {
	var pizza_types = ["cheese", "pepperoni", "pineapple", "spinach"];
    customer_pizza = pizza_types[irandom(array_length(pizza_types) - 1)];
	show_debug_message("Pizza for " + string(id) + " is of type" + string(customer_pizza));

    receive_order(id, customer_pizza);
	
	// Update state
	ready_to_order = false;
	obj_controller.selected_customer = noone;
	order_taken = true;

}