/// @description Chaser Ninji logic

//Inherit event
event_inherited();

//Animate
if (gravity > 0) {

    //If jumping and moving down, wait until floor is reached
    if (vspeed > 0)
    && (jumping == 1)
        jumping = 2;
}
else {

    //If the Ninji jumped...
    if (jumping == 2) {
    
        //Animate
        image_speed = 0.125;
        
        //End jump
        jumping = 0;
    }
    
    //Otherwise
    else if (jumping == 0)
    && (instance_exists(obj_playerparent)) {
    
        //If the player is nearby a ninji and jumps, make ninji jump.
        if (obj_playerparent.jumping > 0)
        && (point_distance(obj_playerparent.x, obj_playerparent.y, x, y) < 48) {
        
            //Jump
            vspeed = -4+(2*swimming);
            
            //Boost jump
            y--;
            
            //Jump
            jumping = 1;
        
            //Stop animation
            image_speed = 0;
            image_index = 1;
        }
    }
}

//Face towards direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

