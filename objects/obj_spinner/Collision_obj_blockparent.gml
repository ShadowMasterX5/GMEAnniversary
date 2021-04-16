/// @description Bump the block

//If the block is not ready
if (ready == 0)
&& (other.ready == 0) {

    //With the block
    with (other) {
    
        //Block is hit
        ready = 1;
        
        //Set vertical speed
        vspeed = -2;
        alarm[0] = 4;
        
        //Block specific events
        event_user(0);
        event_user(1);
    }
    
    //Make this object unable to hit more boxes
    ready = 1;
}

