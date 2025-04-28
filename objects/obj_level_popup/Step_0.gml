// --- Trigger for Level 2
if (!global.level2_popup_shown && global.jump_score > 2000 && !popup_showing) {
    popup_text = "Level 2";
    popup_alpha = 1;
    popup_timer = room_speed * 2; // Show for 2 seconds, then fade
    popup_showing = true;
    global.level2_popup_shown = true;
}

// --- Trigger for Level 3
if (!global.level3_popup_shown && global.jump_score > 5000 && !popup_showing) {
    popup_text = "Level 3";
    popup_alpha = 1;
    popup_timer = room_speed * 2; // Show for 2 seconds, then fade
    popup_showing = true;
    global.level3_popup_shown = true;
}

// --- Fade out after timer
if (popup_showing) {
    if (popup_timer > 0) {
        popup_timer -= 1;
    } else {
        popup_alpha -= 0.03; // Fade out speed
        if (popup_alpha <= 0) {
            popup_alpha = 0;
            popup_showing = false;
        }
    }
}
