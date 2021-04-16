/// @description SMW Cheep Cheep (Horizontal) logic
/// @param Horizontal

//Wall collision
event_user(3);

//If the cheep cheep is moving to the right.
if (hspeed > 0) {

    //Set the facing direction
    xscale = 1;
    
    //Change direction
    if (x > xstart+32)
        hspeed = -hspeed;
}

//Otherwise, if the cheep cheep is moving to the left.
else if (hspeed < 0) {

    //Set the facing direction.
    xscale = -1;
        
    //Change direction.
    if (x < xstart-32)    
        hspeed = -hspeed;
}

//Wave
if (y > ystart)
    vspeed -= 0.0125;
else if (y < ystart)
    vspeed += 0.0125;

