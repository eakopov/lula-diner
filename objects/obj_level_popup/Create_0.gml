// Track popups so they only show once per level
if (!variable_global_exists("level2_popup_shown")) global.level2_popup_shown = false;
if (!variable_global_exists("level3_popup_shown")) global.level3_popup_shown = false;

// State
popup_text = "";
popup_alpha = 0;
popup_timer = 0;
popup_showing = false;
