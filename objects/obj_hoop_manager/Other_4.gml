// Define the set of x-coordinates that hoops can fall into
var x_positions = [150, 260, 370, 480, 590];

// Fixed y-coordinate for all hoops
var fixed_y = 410;

// Number of hoops to spawn
var num_hoops = 3;

// Ensures there are less hoops than available x positions
num_hoops = min(num_hoops, array_length(x_positions));

// Remove any existing hoops from the room before spawning new ones
with (obj_ph_hoops) {
    instance_destroy(); // Destroy all existing hoops
}

// Randomize the x-coordinates array to avoid overlapping
var randomized_x_positions = array_shuffle(x_positions);

// Spawn hoops at random positions from the x-coordinates set
for (var i = 0; i < num_hoops; i++)
{
    // Select an x-coordinate from the randomized set
    var spawn_x = randomized_x_positions[i];
	
	// 10% chance to spawn a failure hoop instead of a normal hoop
    if (irandom(9) == 0)
    {
        instance_create_layer(spawn_x, fixed_y, "Instances", obj_ph_fail_hoops);
    }
    else
    {
        instance_create_layer(spawn_x, fixed_y, "Instances", obj_ph_hoops);
    }
}

// 30% chance to spawn a double jump power-up in between hoops
if (irandom(9) < 3) // 0, 1, or 2 (30% chance)
{
    // Select a random x position between hoops
    var powerup_x = x_positions[irandom(array_length(x_positions) - 2) + 1]; // Pick an x between hoops
    var powerup_y = fixed_y - 50; // Place the power-up above hoops

    // Randomly select which power-up to spawn (50/50 chance)
    if (choose(true, false)) {
        instance_create_layer(powerup_x, powerup_y, "Instances", obj_double_jump_powerup);
    } else {
        instance_create_layer(powerup_x, powerup_y, "Instances", obj_timer_powerup);
    }
}

// Initialize the loss message with a default message
global.loss_message = "You Lose! (You need 300 Points)";

// Initialize double jump globals if not already set
if (!variable_global_exists("double_jump_active"))
{
    global.double_jump_active = false;
    global.double_jump_timer = 0;
}