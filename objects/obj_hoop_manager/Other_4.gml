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

    // Create the hoop object at the chosen x position and fixed y position
    instance_create_layer(spawn_x, fixed_y, "Instances", obj_ph_hoops);
}
