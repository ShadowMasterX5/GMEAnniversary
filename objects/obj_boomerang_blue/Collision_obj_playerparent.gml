/// @description Make the player interact with the item

//If the item is not held
if (!held) {
        
    //If the player can hold the item
    if (canhold()) 
    && (!inwall)
    && (other.bbox_bottom > bbox_top) {
    
        //Create a held blue boomerang
        instance_create(x,y,obj_boomerang_blue_up);
        
        //Make sure the player holds it
        other.holding = 3;
        
        //Destroy
        instance_destroy();
    }
}

