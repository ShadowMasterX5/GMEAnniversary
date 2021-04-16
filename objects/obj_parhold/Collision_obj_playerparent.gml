/// @description Make the player interact with the item

//If the item is not held
if (!held) {

    //If the player is above and moving down, stomp the trampoline.
    if (other.bbox_bottom < bbox_top-vspeed+5)
    && (other.yspeed > 0)
        event_user(1);
        
    //Otherwise, if the player can hold the item
    else if (canhold()) 
    && (!inwall)
    && (other.bbox_bottom > bbox_top) {
    
        //Make the player hold it
        other.holding = 2;
        
        //Hold
        held = 1;
        
        //Stop movement
        speed = 0;
        gravity = 0;
    }
}

