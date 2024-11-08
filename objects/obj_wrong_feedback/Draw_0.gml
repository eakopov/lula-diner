image_alpha -= 0.05;  // Adjust the fade speed if needed
if (image_alpha <= 0) {
    instance_destroy();
}
