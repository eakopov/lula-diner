// Draw tool on table
with (obj_customer) {
    if (draw) {
        var tool_sprite = asset_get_index(customer_tool);
        var nearest_table = instance_nearest(x, y, obj_table);
        draw_sprite(tool_sprite, 0, nearest_table.x + 45, nearest_table.y + 20);
    }
}