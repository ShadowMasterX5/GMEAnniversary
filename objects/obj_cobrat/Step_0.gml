/// @description Cobrat logic

//If the object is buried
if (ready == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player is nearby, jump
        if (obj_playerparent.x > x-32)
        && (obj_playerparent.x < x+32) {
        
            //Set the vertical speed
            vspeed = -4;
            y = ystart;
            
            //Boost jump
            y--;
            
            //Come out
            ready = 1;
            
            //Set the gravity
            gravity = 0.15;
        }
    }
        
    //Update offset
    event_user(8);

    //Face towards the player
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}

//Otherwise
else {

    //Inherit event
    event_inherited();    
    
    //If jumping out
    if (ready == 1)
    && (gravity == 0) && (vspeed == 0) {
        
        //Start moving
        alarm[10] = 2;
        
        //Perform default step event
        ready = 2;
        
        //Set depth
        depth = -2;
    }
    
    //Otherwise, if it can move
    else if (ready == 2) {
            
        //Face towards direction
        if (hspeed > 0)
            xscale = 1;
        else if (hspeed < 0)
            xscale = -1;
    }
}

