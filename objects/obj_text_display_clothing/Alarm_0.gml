/// @description Insert description here
// You can write your code in this editor


/// Alarm[0] Event
outcome = ChatterboxVariableGet("outcome"); // Get the outcome after Chatterbox updates
show_debug_message("Outcome retrieved: " + string(outcome));

process_choice(intro_node, outcome); // Pass the outcome to your choice-processing function
