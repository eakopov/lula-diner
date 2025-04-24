// Move debris
x += hsp;
y += vsp;

// Destroy if it goes offscreen
if (x < -sprite_width || x > room_width + sprite_width || y < -sprite_height || y > room_height + sprite_height) {
    instance_destroy();
}