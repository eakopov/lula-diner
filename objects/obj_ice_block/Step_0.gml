// Follow the player
if (instance_exists(target)) {
    x = target.x;
    y = target.y;
    
    // Destroy itself when player is no longer frozen
    if (!target.is_frozen) {
        instance_destroy();
    }
} else {
    // If player doesn't exist anymore, clean up
    instance_destroy();
}
