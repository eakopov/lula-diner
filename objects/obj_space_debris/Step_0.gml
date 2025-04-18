// Check score and update sprite
if (global.jump_score >= 2000 && sprite_index != spr_space_debris_big) {
    sprite_index = spr_space_debris_big;
} else if (global.jump_score < 2000 && sprite_index != spr_space_debris) {
    sprite_index = spr_space_debris;
}

// Move debris
x += hsp;
y += vsp;

// Destroy if it goes offscreen
if (x < -sprite_width || x > room_width + sprite_width || y < -sprite_height || y > room_height + sprite_height) {
    instance_destroy();
}
