/// @description Sorcerer logic

if (nextscale == 1) {

    scale -= 0.0125;
    if (scale < nextscale) {
    
        nextscale = 1.5;
        scale = 1;
    }
}
else if (nextscale == 1.5) {

    scale += 0.0125;
    if (scale > nextscale) {
    
        nextscale = 1;
        scale = 1.5;
    }
}

//Destroy if outside
if (y < -16)
    instance_destroy();

