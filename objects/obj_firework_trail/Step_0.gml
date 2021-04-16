/// @description Shrink the effect until it gets destroyed.

scale -= 0.05;
if (scale < 0.05)
    instance_destroy();

