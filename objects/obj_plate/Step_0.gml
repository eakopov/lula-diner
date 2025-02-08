if (delivered && tool_instance != noone) {
    // Clear the plate
    occupied = false;  // Mark plate as free
    instance_destroy(tool_instance);  // Destroy the tool instance on this plate
    tool_instance = noone;  // Clear the reference
    delivered = false;  // Reset the delivered flag
    // Ensure plate is properly reset for future orders
    show_debug_message("Plate is now free and ready for a new tool.");
}
