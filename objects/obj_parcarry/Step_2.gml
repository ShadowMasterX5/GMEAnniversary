/// @description Vegetable logic (Player)
/// @param Player

//If this object is being held.
if (held) {

    //If the player does exist.
    if (instance_exists(obj_playerparent)) {
        
        //Force player hold
        obj_playerparent.holding = 1;
        
        //Make it visible
        visible = 1;
        
        //Snap onto the player's x position
        x = obj_playerparent.x-8;
        
        //Snap onto the player's y position        
        if (obj_playerparent.crouch) { //If the player is crouched down.
        
            //If the player is small.
            if (global.powerup == cs_small)
                y = obj_playerparent.y-9;
            else
                y = obj_playerparent.y-12;
        }
        
        //Otherwise, if it's not.
        else {
        
            //If the player is small.
            if (global.powerup == cs_small)
                y = obj_playerparent.y-12;
            else
                y = obj_playerparent.y-20;
        }
    }
    
    //Otherwise
    else {
            
        //Check what object is holding first
        event_user(15);
        
        //Then check if it exists
        if (instance_exists(follow)) {
            
            //Set the position of the item.
            x = follow.x;
            y = follow.y;
            
            //Make it invisible.
            visible = 0;
            
            //Make said object hold the item
            follow.holding = 1;
            
            //Set up the item's sprite
            follow.myitem = sprite_index;
            
            //Set up the item's frame.
            follow.myframe = image_index;            
        }            
    }
    
    //Release if the player dies
    if (!instance_exists(obj_playerparent))
    && (follow == noone)
        held = false;
}

