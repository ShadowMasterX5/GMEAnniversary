/// @description Update boundary and facing direction

//Set the boundary
if (global.mount > 0)
    boundary = -8;
else {
    
    if (global.powerup == cs_small)
        boundary = 0;
    else
        boundary = -8;
}

//Change the facing direction of the player.
if (hspeed > 0)
    image_xscale = 1;
else if (hspeed < 0)
    image_xscale = -1;

