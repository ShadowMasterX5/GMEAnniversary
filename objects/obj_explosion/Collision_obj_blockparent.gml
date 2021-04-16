/// @description Bump the block

//If the block is not ready
if (other.ready == 0) 
&& (other.sprite_index != spr_messageblock) {

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
}

