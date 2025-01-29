draw_self();

// If the customer is ready to order, draw the thought bubble above their head
if (ready_to_seat && ready_to_order) {
    draw_sprite(spr_thought_bubble, 0, x - 10, y - 175);
}

if (ready_to_eat && eating_timer > 0) {
	var tool_sprite = asset_get_index("spr_" + customer_tool);
	var nearest_table = instance_nearest(x, y, obj_table);
	draw_sprite(tool_sprite, 0, x + 70, y - 40);
}