/// @description Cheep Cheep logic

//Cap vertical speed
if (vspeed > 4)
    vspeed = 4;

//If the player does exist and the cheep has not jumped yet.
if (instance_exists(obj_playerparent)) 
&& (jumping == 0) {

    //If the cheep has not jumped and the player is nearby.
    if (obj_playerparent.x > x-32) 
    && (obj_playerparent.x < x+32) {
    
        //Set the jumping sprite
        sprite_index = spr_bossbass_jump;
    
        //Make it jump
        jumping = 1;
        
        //Set the vertical speed
        vspeed = -4;
        gravity = 0.2;
        
        //Set the horizontal speed.
        hspeed = 1.25*sign(xscale);
    }
}

//Otherwise, look for a nearest water surface and allow the cheep to jump.
else {

    //Find a nearby body of water
    water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0);
    
    //If there's a body of water
    if (water) 
    && (water.object_index != obj_waterbubble) {
    
        //If the cheep has jumped out of the water.
        if (jumping == 1) {
        
            //If the cheep makes contact with water.
            if ((y > water.y+12) && (vspeed > 0)) {
            
                //If the boss bass didn't ate the player, set the sprite
                if (fud == noone) then sprite_index = spr_bossbass;
            
                //Snap to position.
                y = water.y+12;
                
                //Stop vertical speed
                vspeed = 0;
                gravity = 0;
                
                //Disallow jumping
                jumping = 2;
                
                //Allow jumping.
                alarm[0] = 24;
                
                //Cap horizontal speed.
                hspeed = 2.5*sign(xscale);
            }
        }
    }
}

//Chase the player
if (jumping == 0) {

    //If the player does not exists or it's at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x) {
    
        hspeed -= 0.1;
        if (hspeed < -2.5)
            hspeed = -2.5;    
    }
    
    //Otherwise, go to the right
    else if (obj_playerparent.x > x) {
    
        hspeed += 0.1;
        if (hspeed > 2.5)
            hspeed = 2.5;
    }
}

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

