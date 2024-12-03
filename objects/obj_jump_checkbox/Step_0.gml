// Check if the T key is pressed
if (keyboard_check_pressed(ord("T"))) {
    is_checked = !is_checked; // Toggle the checkbox state

    // Update the global state
    global.checkbox_is_checked = is_checked;

    // Show or hide the obj_text_jump_display object
    if (is_checked) {
        with (obj_text_display_jump) {
            visible = false; // Hide the object
        }
    } else {
        with (obj_text_display_jump) {
            visible = true; // Show the object
        }
    }
}