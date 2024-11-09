// Collision Event with player (inside obj_double_jump_powerup)
global.double_jump_active = true;
global.double_jump_timer = room_speed * 15; // 15 seconds
instance_destroy(); // Remove power-up after collection
