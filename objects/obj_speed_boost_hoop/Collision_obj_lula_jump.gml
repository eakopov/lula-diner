// Collision Event with player
global.speed_boost_active = true;           // Activate speed boost
global.speed_boost_timer = room_speed * 10;  // Speed boost lasts for 5 seconds
instance_destroy();                         // Remove hoop after collision
