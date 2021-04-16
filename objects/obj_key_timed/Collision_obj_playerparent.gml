/// @description Make the player interact with the item

//If the item is not held
if (!held) {
        
    //If the player can hold the item
    if (canhold()) 
    && (!inwall)
    && (other.bbox_bottom > bbox_top) {
    
        //Make the player hold it
        other.holding = 2;
        
        //Start timer
        if (ready == 0) {
        
            //Timer has started
            ready = 1;
            
            //Set up the timer
            if (time >= 2)
                alarm[1] = (time-2)*60;
            else            
                alarm[1] = 1;
            
            //Destroy
            alarm[2] = time*60;
        }
        
        //Hold
        held = 1;
        
        //Stop movement
        speed = 0;
        gravity = 0;
    }
}

