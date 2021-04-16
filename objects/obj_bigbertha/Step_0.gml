/// @description Boss Bass logic

//If the boss bass is moving to the right.
if (dir == 1) {
    
    //Cap horizontal speed.
    if (hspeed > 1.5)
    hspeed = 1.5;
        
    //Change direction.
    if (x > xstart+24)
        dir = -1;
}

//Otherwise, if the boss bass is moving to the left.
else if (dir == -1) {

    //Cap horizontal speed.
    if (hspeed < -1.5)
    hspeed = -1.5;
        
    //Change direction.
    if (x < xstart-24)    
        dir = 1;
}

//Allow/Disallow boss bass's movement.
if (wait == 0) {

    //Check if the facing direction is not equal to the previous direction.
    if (xscale != prevdir) {
    
        if (random(round(100)) > 50) {
        
            //Set the spit sprite
            sprite_index = spr_bossbass_jump;
            
            //Set new direction
            prevdir = xscale;
                    
            //Wait
            wait = 1;
            
            //Set the hspeed
            hspeed = 0;
            
            //Swallow a cheep
            alarm[0] = 16;
        }
        else {
        
            //Set new direction
            prevdir = xscale;            
        }
    }

    //Set the horizontal speed.
    hspeed += 0.04*sign(dir);
}

//Otherwise, stop.
else {

    //Stop right there
    hspeed = 0;
}

//Wave
if (y > ystart)
    vspeed -= 0.025;
else if (y < ystart)
    vspeed += 0.025;
    
//Set the facing direction.
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

