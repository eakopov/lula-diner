function scr_find_empty_table() {
    var table_found = noone;

    // Loop through all tables in the room
    with (obj_table) {
        if (!occupied) {  // Check if the table is unoccupied
            table_found = id;  // Set this table as found
            break;  // Stop checking once we find an empty table
        }
    }
    return table_found;  // Return the table's ID or noone if none found
}
