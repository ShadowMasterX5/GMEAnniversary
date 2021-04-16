/// @description Boo logic

//Set the horizontal speed
switch (dir) {

    //Right
    case (1): {
    
        hspeed += 0.0125;
        image_xscale = 1;
        depth = -6;
    } break;
    
    //Left
    case (-1): {
    
        hspeed += -0.0125;
        image_xscale = -1;
        depth = 1;
    } break;
}

//Cap horizontal speed
if (abs(hspeed) > 0.25) then hspeed = 0.25 * sign(hspeed);

//Handle movement
if (x > xstart+12)
    dir = -1;
else if (x < xstart-12)
    dir = 1;

