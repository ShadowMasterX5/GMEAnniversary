/// @description Blue boomerang logic (Player)
/// @param Player

//If this object is being held.
if (held) {

    //If the player does exist.
    if (instance_exists(obj_playerparent)) {
        
        //Force player hold
        obj_playerparent.holding = 3;
        
        //Make it visible
        visible = 1;
        
        //Scale
        xscale = obj_playerparent.xscale;
                
        //Snap onto the player's position   
        if (obj_playerparent.crouch) { //If the player is crouched down.
        
            //Snap onto the player's x position
            x = obj_playerparent.x-8;
        
            //Snap onto the player's y position
            if (global.powerup == cs_small) //If the player is small.
                y = obj_playerparent.y-9;
            else
                y = obj_playerparent.y-12;
        }
        
        //Otherwise, if it's not.
        else {
        
            //Snap onto the player's x position
            x = obj_playerparent.x-8+(10*obj_playerparent.xscale);
        
            //Snap onto the player's y position
            if (global.powerup == cs_small) //If the player is small.
                y = obj_playerparent.y-12;
            else
                y = obj_playerparent.y-23;
        }
    }
    
    //Otherwise
    else {
            
        //Check what object is holding first
        event_user(5);
        
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
    
    //Destroy if the player object does not exist
    if (!instance_exists(obj_playerparent))
    && (follow == noone)
        instance_destroy();
}

