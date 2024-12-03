// Initialize the global state if it doesn't exist
if (!variable_global_exists("checkbox_is_checked")) {
    global.checkbox_is_checked = false; // Default state: unchecked
}

// Synchronize local state with the global state
is_checked = global.checkbox_is_checked; // Use the global state
label_text = "(Click T) Hide Text Display";


