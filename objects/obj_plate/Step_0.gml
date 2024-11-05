if (delivered && pizza_instance != noone) {
    // Clear the plate
    occupied = false;
    instance_destroy(pizza_instance);  // Destroy the pizza instance on this plate
    pizza_instance = noone;  // Clear the reference
    delivered = false;  // Reset the delivered flag
}
