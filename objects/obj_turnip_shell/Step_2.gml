/// @description Shell logic (Player + obj_physicsparent Physics)
/// @param Player + obj_physicsparent Physics

//Make sure is not held
if (!held) {
    
    //Make sure the semisolid follows
    if (instance_exists(mytop)) {
        
        mytop.x = bbox_left;
        mytop.y = round(y)+2;
        
        //If the player is on this moving platform
        if (collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
        && (obj_playerparent.bbox_bottom < yprevious+5)
        && (obj_playerparent.state < 2) {
        
            //Make the player able to pull
            if (canpull()) {

                //Force player hold
                with (obj_playerparent) {
                
                    holding = 1;
                    visible = 0;
                }
                
                //Create puller
                instance_create(other.x,other.y,obj_puller);
                
                //Finish pull
                alarm[0] = 10;
            }
        
            //Snap the player vertically
            obj_playerparent.y = ceil(bbox_top-15);
        
            //Move the player horizontally if there is no solid in his way
            if (hspeed < 0) && (!collision_rectangle(obj_playerparent.bbox_left-hspeed-2.5,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left-hspeed,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
            || (hspeed > 0) && (!collision_rectangle(obj_playerparent.bbox_right+hspeed,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+hspeed+2.5,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
                obj_playerparent.x += hspeed;
        }
    }
    
    //Inherit event
    event_inherited();
}

//Otherwise, inherit default End Step event and make the solidtop go away
else {

    //Check if my top exists
    if (instance_exists(mytop)) {
    
        mytop.x = -1000;
        mytop.y = -1000;
    }
    
    //If the player does exist.
    if (instance_exists(obj_playerparent)) {
        
        //Force player hold
        obj_playerparent.holding = 1;
        
        //Make it visible
        visible = 1;
        
        //Snap onto the player's x position
        x = obj_playerparent.x;
        
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
    
    //Destroy if the player object does not exist
    if (!instance_exists(obj_playerparent))
    && (follow == noone) {
    
        instance_create(x,y,obj_smoke);
        instance_destroy();
        exit;
    }
}

