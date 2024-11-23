// Reduce the alpha to fade out the text
text_alpha -= fade_speed;

// Destroy the instance once it's fully faded
if (text_alpha <= 0) {
    instance_destroy();
}

