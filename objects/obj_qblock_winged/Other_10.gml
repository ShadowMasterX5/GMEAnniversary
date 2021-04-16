/// @description Handle block movement if not static

if ((backnforth == true) && (ready)) {

    //If the block is moving to the right.
    if (dir == 1) {
        
        //Cap horizontal speed.
        if (hspeed > 1)
        hspeed = 1;
            
        //Change direction.
        if (x > xstart+32)
            dir = -1;
    }
    
    //Otherwise, if the block is moving to the left.
    else if (dir == -1) {
    
        //Cap horizontal speed.
        if (hspeed < -1)
        hspeed = -1;
            
        //Change direction.
        if (x < xstart-32)    
            dir = 1;
    }
    
    //Increment / Decrement speed.
    hspeed += 0.02*sign(dir);
}

//Wave
if (y > ystart)
    vspeed -= 0.025;
else if (y < ystart)
    vspeed += 0.025;

