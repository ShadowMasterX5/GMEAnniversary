/// @description Rotten mushroom logic

//Default event
event_inherited();

//Keep charging at the player
if (charge == 1) {

    //If there's no gravity
    if (gravity == 0) {
    
        //If the player is not under the effects of the starman
        if (!instance_exists(obj_invincibility)) {
            
            //Follow the player
            if (!instance_exists(obj_playerparent))
            || (obj_playerparent.x < x) {
            
                hspeed -= 0.0324;
                if (hspeed < -1)
                    hspeed = -1;
            }
            else {
            
                hspeed += 0.0324;
                if (hspeed > 1)
                    hspeed = 1;
            }
        }
        
        //Otherwise
        else {
            
            //Un-follow the player
            if (!instance_exists(obj_playerparent))
            || (obj_playerparent.x < x) {
            
                hspeed += 0.0324;
                if (hspeed > 1)
                    hspeed = 1;
            }
            else {
            
                hspeed -= 0.0324;
                if (hspeed < -1)
                    hspeed = -1;
            }                    
        }
        
        //Allow jump
        if (delay > 0)
            delay--;
    }
    
    //Change scale
    if (ready == 0) {
    
        xscale2 += 0.025;
        yscale2 -= 0.025;
        if (xscale2 > 1.25)
            ready = 1;
    }
    else if (ready == 1) {
    
        xscale2 -= 0.025;
        yscale2 += 0.025;
        if (xscale2 < 0.75)
            ready = 0;
    }
}

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

