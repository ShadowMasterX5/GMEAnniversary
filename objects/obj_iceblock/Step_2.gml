/// @description Held item logic when held

//If the item is being held
if (held) {
    
    //Disable underwater movement
    swimming = false;
    
    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player control is not disabled
        if (obj_playerparent.disablecontrol == false) {
        
            //If the player is turning
            if (obj_playerparent.turning) {
            
                //Set up the depth
                depth = -6;
                
                //Snap into player's 'x' position
                x = obj_playerparent.x;
            }
            
            //Otherwise...
            else {
            
                //Set up the depth
                depth = -4;
                
                //Snap into the player's 'x' position
                if (dir == 1)
                    x = obj_playerparent.bbox_right+(sprite_width/2);
                else
                    x = obj_playerparent.bbox_left-sprite_width+(sprite_width/2);
            }
            
            //Make the player hold the item
            if (keyboard_check(global.controlkey))
                obj_playerparent.holding = 2;
                
            //Otherwise, release it
            else {
            
                //Make the player release the item
                with (obj_playerparent) {
                
                    //Set the kicking pose
                    event_user(4);
                    
                    //Do not hold
                    holding = 0;
                }
                
                //Stop being held
                held = 0;
                
                //Reset depth
                depth = -2;
                
                //Kick the item
                event_user(2);
            }
            
            //Set the direction
            dir = obj_playerparent.xscale;
            
            //Snap into the player's y position
            if (obj_playerparent.crouch)
                y = obj_playerparent.y;
            else {
            
                if (obj_playerparent.mask_index != spr_bigmask)
                    y = obj_playerparent.y;
                else
                    y = obj_playerparent.y-4;
            }
        }
        else {
                    
            //Make the player release the item
            with (obj_playerparent) {
            
                //Set the kicking pose
                event_user(4);
                
                //Do not hold
                holding = 0;
            }
            
            //Stop being held
            held = 0;
            
            //Reset depth
            depth = -2;
            
            //Kick the item
            event_user(2);            
        }
        
        //Make it visible
        visible = true;
    }
    
    //Otherwise, follow other items
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
}

//Inherit default event
if (!held) {

    event_inherited();
    if (ready)
        image_alpha = 1;
}

