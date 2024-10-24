function receive_order(customer_id) {
	array_push(obj_chef.order_queue, customer_id);  // Add the customer's order to the queue
    show_debug_message("Received order from customer: " + string(customer_id));
}