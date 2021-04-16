/// @description Ricochet in contact with a slope

//If the bolt is about to bounce
if (ready == 0) {

    //If not moving vertically.
    if (vspeed == 0) {
    
        //If moving to the right
        if (hspeed > 0) {
        
            //Stop horizontal movement
            hspeed = 0;
            
            //Set vertical movement
            vspeed = -6;
        }
        
        //Otherwise, if moving to the left
        else if (hspeed < 0) {
        
            //Stop horizontal movement
            hspeed = 0;
            
            //Set vertical movement
            vspeed = -6;
        }
    }
    else {
        
        //Set the horizontal speed
        hspeed = 6*sign(other.dir);
        
        //Stop vertical movement
        vspeed = 0;
    }
    
    //Bounce
    ready = 1;
    alarm[1] = 4;
    
    //Snap into the slope
    x = other.x+other.sprite_width/2;
    y = other.y+other.sprite_height/2;
}

