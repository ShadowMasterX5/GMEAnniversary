/// @description Rip Van Fish logic

//If the rip van fish is sleeping
if (chase == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player is nearby
        if (obj_playerparent.x > x-32)
        && (obj_playerparent.y > y-32)
        && (obj_playerparent.x < x+32)
        && (obj_playerparent.y < y+32) {
        
            //Set the chasing sprite
            sprite_index = spr_ripvanfish_chase;
            
            //Set animation speed
            image_speed = 0.2;
            
            //Start chasing
            chase = 1;
            
            //End chase
            alarm[0] = 600;
        }
    }
}

//Otherwise, chase the player
else {

    //Make sure rip van fishes can't exit water
    water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0);
    
    //If there's water
    if (water)
    && (y < water.y-4)
        y = water.y-4;

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player is under the effects of the starman, scoot away from it.
        if (instance_exists(obj_invincibility)) {
        
            //Set horizontal speed depending of the player's position
            if (obj_playerparent.x < x) {
            
                hspeed += 0.01;
                if (hspeed > 1.5)
                    hspeed = 1.5;
            }
            
            //Otherwise, if the player is at the right
            else if (obj_playerparent.x > x) {
            
                hspeed -= 0.01;
                if (hspeed < -1.5)
                    hspeed = -1.5;
            }
            
            //Set horizontal speed depending of the player's position
            if (obj_playerparent.y < y) {
            
                vspeed += 0.01;
                if (vspeed > 1.5)
                    vspeed = 1.5;
            }
            
            //Otherwise, if the player is at the right
            else if (obj_playerparent.y > y) {
            
                vspeed -= 0.01;
                if (vspeed < -1.5)
                    vspeed = -1.5;
            }
        }
        
        //If the player is not invulnerable
        else {
        
            //Set horizontal speed depending of the player's position
            if (obj_playerparent.x < x) {
            
                hspeed -= 0.01;
                if (hspeed < -1.5)
                    hspeed = -1.5;
            }
            
            //Otherwise, if the player is at the right
            else if (obj_playerparent.x > x) {
            
                hspeed += 0.01;
                if (hspeed > 1.5)
                    hspeed = 1.5;
            }
            
            //Set horizontal speed depending of the player's position
            if (obj_playerparent.y < y) {
            
                vspeed -= 0.01;
                if (vspeed < -1.5)
                    vspeed = -1.5;
            }
            
            //Otherwise, if the player is at the right
            else if (obj_playerparent.y > y) {
            
                vspeed += 0.01;
                if (vspeed > 1.5)
                    vspeed = 1.5;
            }        
        }        
    }

    //Otherwise, stop chasing the player
    else {

        //Set the sleeping sprite
        sprite_index = spr_ripvanfish;
        
        //Set default animation speed
        image_speed = 0.03;
        
        //Stop chasing
        chase = 0;
        
        //Stop movement
        speed = 0;
    }
}

//Wall collision
event_user(3);

//Floor collision
event_user(4);

//Facing direction
if (chase == 0) {

    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}
else {

    if (hspeed > 0)
        xscale = 1;
    else if (hspeed < 0)
        xscale = -1;
}

