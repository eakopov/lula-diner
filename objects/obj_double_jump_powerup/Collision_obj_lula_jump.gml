// Collision Event with player (inside obj_double_jump_powerup)
global.double_jump_active = true;
global.double_jump_timer = room_speed * 15; // 15 seconds

// Select a random fun fact
global.current_fun_fact = global.psyche_fun_facts[irandom(array_length(global.psyche_fun_facts) - 1)];

// Enable the display of the fun fact
global.show_fun_fact = true;

instance_destroy(); // Remove power-up after collection
