/// @description Pokey logic

//If there's no memory of a enemy below.
if (mebelow == noone) {

    //If a enemy is below, remember it.
    if (position_meeting(x,bbox_bottom+8,obj_pokey_green)) {
    
        //Ride above this pokey
        mebelow = collision_point(x,bbox_bottom+8,obj_pokey_green,0,0);
        
        //Make sure below parts collides with walls
        with (mebelow) {
        
            event_user(3);
        }
        
        //Stop moving
        vspeed = 0;
        gravity = 0;
        
        //Manage offset values
        alarm[1] = 10;
    }
    
    //Otherwise, execute default event and deny offset functions.
    else {
    
        //Execute default event
        event_inherited();
        
        //Turn on ledges
        event_user(6);
            
        //Reset offset values
        offset = 0;
        offsetnext = 0;
        
        //Deny offset values
        alarm[1] = -1;
    }
}

//If there's memory of a enemy below.
else {

    //Activate the enemy below.
    instance_activate_object(mebelow);
    
    //If the enemy exits, snap it.
    if (instance_exists(mebelow)) {
    
        //Snap above it
        x = mebelow.x;
        y = mebelow.y-14;
        xscale = mebelow.xscale;
    }
    
    //Otherwise, lose memory of it and move towards the player.
    else {
    
        //Lose memory of it.
        mebelow = noone;
        
        //Walk towards the player.
        if (hspeed != 0)
            exit;
        else {
        
            if (!instance_exists(obj_playerparent)) 
            || (obj_playerparent.x < x)
                hspeed = -0.2;
            else
                hspeed = 0.2;
        }
    }
}

//Set the sprite
if (position_meeting(x,y-8,obj_pokey_green))
    image_index = 1;
else
    image_index = 0;

