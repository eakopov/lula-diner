// Collision Event with player
global.jump_timer += room_speed * 10; // Increase timer by 10 seconds

// Select a random fun fact
global.current_fun_fact = global.psyche_fun_facts[irandom(array_length(global.psyche_fun_facts) - 1)];

// Enable the display of the fun fact
global.show_fun_fact = true;

instance_destroy(); // Remove the power-up after collection
