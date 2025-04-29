global.jumpResults = "";

// Horizontal and Vertical Speed Variables
xsp = 0;
ysp = 0;
double_jumped = false; // Track if double jump has been used

knockback_timer = 0;
knockback_xsp = 0;
knockback_ysp = 0;
is_knocked_back = false;

//invincible = false;
//invincibility_timer = 0;

is_frozen = false;
freeze_timer = 0;

if (!variable_global_exists("dust_storm_active")) {
    global.dust_storm_active = false;
}
if (!variable_global_exists("dust_storm_timer")) {
    global.dust_storm_timer = 0;
}

if (!variable_global_exists("invincible")) {
    global.invincible = false;
}

if (!variable_global_exists("invincible_timer")) {
    global.invincible_timer = 0;
}
