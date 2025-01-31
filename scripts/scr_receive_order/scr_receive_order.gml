function receive_order(customer_id, tool_id) {
	var order = {
        customer_id: customer_id,
        tool_id: tool_id,
		order_status: "queued"
    };
    array_push(obj_chef.order_queue, order);
}