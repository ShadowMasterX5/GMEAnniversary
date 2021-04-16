/// @description Make the player interact with the item

//If the item is not held
if (held == 0) {

    //If the player can hold the item
    if (canhold()) 
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

