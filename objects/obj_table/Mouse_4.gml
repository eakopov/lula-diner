if (!occupied && obj_controller.selected_customer != noone) {
    // Seat the selected customer at this table
    var customer = obj_controller.selected_customer;

    // Set the customer’s X and Y based on the table’s position
    customer.x = x - 20;  // Align customer’s X with the table’s X
    customer.y = y + 60;  // Offset Y position so the customer appears below the table

    // Mark the table as occupied
    occupied = true;
    
    // Clear the selected customer
    obj_controller.selected_customer = noone;
}