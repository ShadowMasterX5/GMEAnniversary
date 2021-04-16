/// @description Manage enemy generation

//Preparing enemy
if (ready == 0) {

    //If the player exists
    if (instance_exists(obj_playerparent)) 
    && (instance_number(object) < 6)
    && (obj_levelcontrol.gswitchon == false) {
    
        //First check if there's no solid blocking the entrance
        if (dir == 0) && ((collision_rectangle(bbox_right+8, bbox_top, bbox_right+8, bbox_bottom, obj_playerparent, 0, 0)) || (collision_rectangle(bbox_right+8, bbox_top, bbox_right+8, bbox_bottom, obj_solid, 0, 0)))
        || (dir == 1) && ((collision_rectangle(bbox_left, bbox_top-16, bbox_right, bbox_top-1, obj_playerparent, 0, 0)) || (collision_rectangle(bbox_left, bbox_top-16, bbox_right, bbox_top-1, obj_solid, 0, 0)))
        || (dir == 2) && ((collision_rectangle(bbox_left-8, bbox_top, bbox_left-8, bbox_bottom, obj_playerparent, 0, 0)) || (collision_rectangle(bbox_left-8, bbox_top, bbox_left-8, bbox_bottom, obj_solid, 0, 0)))
        || (dir == 3) && ((collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+1, obj_playerparent, 0, 0)) || (collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+1, obj_semisolid, 0, 0)))
            exit;
        
        //Decrement delay
        delay--;
        delayprev++;
        
        //Generate a enemy
        if (delay < 1) {
    
            //Begin generating an enemy
            ready = 1;
            
            //Reset delay
            delay = delayprev;
            delayprev = 0;
        
            //Set up movement
            motion_set(0+(90*dir), 0.5);
        }
    }
    
    //Face the player but only if it exists and dir is set to 1 or 3
    if (dir == 1)
    || (dir == 3) {
        
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x)
            xscale = -1;
        else
            xscale = 1;
    }
}

//Generate
else if (ready == 1) {

    //Keep moving until there's no solid overlapping
    if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)) {
    
        //Create the object
        with (instance_create(x, y, object)) {
        
            //Set up the motion
            if (other.hspeed != 0) {
                      
                hspeed = other.spd;
                xscale = 1*sign(other.hspeed);
            }
            else {
                       
                hspeed = other.spd*sign(other.xscale);
                xscale = 1*sign(other.xscale);
            }
        }
        
        //Stop movement
        hspeed = 0;
        vspeed = 0;
        
        //Return to the start position
        x = xstart;
        y = ystart;
          
        //Wait
        ready = 0;
    }
}

//Hereby the sprite and check it
sprite_index = object_get_sprite(object);

