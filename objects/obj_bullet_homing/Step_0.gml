/// @description Missile bill logic

//Change depth
if (depth == 10) {

    if (!place_meeting(x,y,obj_solid))
        depth = -2;
}

//If the bullet can turn
if (homing == false) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player is at the left and the bullet is moving right
        if ((obj_playerparent.x < x) && (xscale == 1))
        || ((obj_playerparent.x > x) && (xscale == -1)) {
        
            //Reverse scale
            xscale = -xscale;
            
            //Turn towards the player
            homing = true;
        }
    }
}

//Otherwise, build up speed
else {

    //If facing right
    if (xscale == 1) {
    
        hspeed += 0.05;
        if (hspeed > 2)
            hspeed = 2;
    }
    
    //Otherwise, if facing left
    else if (xscale == -1) {
    
        hspeed -= 0.05;
        if (hspeed < -2)
            hspeed = -2;
    }
}

//Destroy if outside the view
if (outside_view())
    instance_destroy();

