// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_tool(){
	var tool_sprite = asset_get_index(obj_customer.customer_tool);
	var nearest_table = instance_nearest(obj_customer.x, obj_customer.y, obj_table);
    draw_sprite(tool_sprite, 0, nearest_table.x + 45, nearest_table.y + 20);
}