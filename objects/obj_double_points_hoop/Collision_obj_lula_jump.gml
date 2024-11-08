// Collision Event with player
global.double_points_active = true;            // Activate double points effect
global.double_points_timer = room_speed * 10;  // Set duration for 10 seconds
instance_destroy();                            // Remove hoop after collision
