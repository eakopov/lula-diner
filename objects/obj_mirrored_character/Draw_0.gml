
/// @description Draw a mirrored version of the main character (obj_lula_clothing) with a scale factor of 5/2

// Scale factor for the mirrored version
var scale_factor = 5 / 2;

// Position for the mirrored version
var draw_x = x;
var draw_y = y; 

// Draw the main character's base sprite, scaled
draw_sprite_ext(obj_lula_clothing.sprite_index, obj_lula_clothing.image_index, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);

// If the main character is "dressed," draw their accessories
if (obj_clothing_controller.dressed) {
    draw_sprite_ext(obj_clothing_controller.clothing_item_1.sprite_index, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);
    draw_sprite_ext(obj_clothing_controller.clothing_item_2.sprite_index, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);
    draw_sprite_ext(obj_clothing_controller.clothing_item_3.sprite_index, 0, draw_x, draw_y, scale_factor, scale_factor, 0, c_white, 1);
}
