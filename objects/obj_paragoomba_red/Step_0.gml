/// @description Red Paragoomba logic

//Inherit event
event_inherited();

//Jump when in the ground
if (gravity == 0) {

    //If the paragoomba didn't jumped enough
    if (jumping > 0)
    && (jumping < 4) {
    
        //Increment jumping
        jumping++;
        
        //Set the vertical speed
        if (swimming == false)
            vspeed = -2.5;
        else
            vspeed = -1.25;
    }
    
    //Otherwise, if the goomba is about to do a big jump
    else if (jumping == 4) {
    
        //Set the jumping state
        jumping = 5;
        
        //Set the vertical speed
        if (swimming == false)
            vspeed = -4;
        else
            vspeed = -2;
    }
    
    //Otherwise
    else if (jumping == 5) {
    
        //Reset jump state
        jumping = 0;
        
        //Move towards the player
        alarm[10] = 10;
    }
}

