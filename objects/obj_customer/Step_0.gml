if (!ready_to_seat) {
    var table = scr_find_empty_table();  // Find an empty table

    if (table != noone) {
        // Move toward the empty table
        move_towards_point(table.x, table.y, move_speed);

        // If close enough to the table, mark the customer as seated
        if (point_distance(x, y, table.x, table.y) < 5) {
            ready_to_seat = true;
            table.occupied = true;  // Mark the table as occupied
            x = table.x;  // Snap customer to table position
            y = table.y;
        }
    }
}
