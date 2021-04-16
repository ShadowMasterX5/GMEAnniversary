/// @description Throwable enemy logic (Player + obj_physicsparent Physics)
/// @param Player + obj_physicsparent Physics

//Make sure is not held
if (!held) {
        
    //Destroy in contact with lava
    if (collision_rectangle(bbox_left,bbox_bottom+6,bbox_right,bbox_bottom+7,obj_lava,0,0)) {
    
        //Play 'Podoboo' sound
        audio_play_sound(snd_podoboo, 0, false);
        
        //Go poof
        instance_create((bbox_left+bbox_right)/2-8,(bbox_top+bbox_bottom)/2-8,obj_smoke);
        with (instance_create((bbox_left+bbox_right)/2-8,(bbox_top+bbox_bottom)/2-8,obj_smoke))    
            sprite_index = spr_splash_lava;
        
        //Destroy
        instance_destroy();
    }
    
    //If the enemy can use moving platforms
    if (turnback != -1) {
    
        //Moving platform collision
        event_user(5);
    
        //Move in contact with a left-moving conveyor belt
        lconv = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_conveyor_l,0,0);
        if ((lconv) && (lconv.image_speed != 0)) {
        
            if (!collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0))
                x -= 0.75;
        }
        
        //Move in contact with a right-moving conveyor belt
        rconv = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_conveyor_r,0,0);
        if ((rconv) && (rconv.image_speed != 0)) {
        
            if (!collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,1,0))
                x += 0.75;
        }
    }
}

//Otherwise, inherit default End Step event and make the solidtop go away
else {
    
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
    && (follow == noone)
        held = 0;
}

