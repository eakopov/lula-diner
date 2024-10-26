/// @description Insert description here
// You can write your code in this editor

//Check keys for movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

//calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);


//if idle
if (vx == 0 && vy == 0 ) {
	
	
}


//if moving
if (vx !=0 || vy != 0) {
	if !collision_point(x + vx, y, obj_par_environment, true, true) {
	x += vx;
	}
	
	if !collision_point(x, y+vy, obj_par_environment, true, true) {
	y += vy;	
	}
}

obj_clothing_controller.colliding_with_scientist_1 = place_meeting(x + vx, y + vy, obj_scientist_1);
obj_clothing_controller.colliding_with_scientist_2 = place_meeting(x + vx, y + vy, obj_scientist_2);
obj_clothing_controller.colliding_with_scientist_3 = place_meeting(x + vx, y + vy, obj_scientist_3);
obj_clothing_controller.colliding_with_door = place_meeting(x + vx, y + vy, obj_clothing_door);