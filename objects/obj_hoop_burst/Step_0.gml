// Slow down the expansion (was 0.2, now 0.05 for a gentler effect)
image_xscale += 0.05;
image_yscale += 0.05;

// Slow down transparency reduction (was 0.05, now 0.02 for a longer-lasting effect)
image_alpha -= 0.02;

// Destroy when fully faded out
if (image_alpha <= 0) {
    instance_destroy();
}
