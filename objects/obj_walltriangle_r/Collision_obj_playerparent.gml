/// @description Make the player run up walls

//Ignore if the player does not have either the frog or cat powerup
if ((global.powerup == cs_frog) || (global.powerup == cs_cat))
exit;

//If the player is not riding anything
if (global.mount == 0) {

    //If the player meets the following conditions
    if (other.state == 1)
    && (other.crouch == 0)
    && (other.holding == 0)
    && (other.swimming == 0) {
    
        //If the player is moving to the right
        if (other.xspeed > other.runspeed-0.5)
        && (position_meeting(x+24,y-8,obj_solid))    
            with (instance_create(x,y-8,obj_wallrunner)) angle = 45;
            
        //If the player is moving to the left
        else if (other.xspeed < (other.runspeed-0.5)*-1)
        && (position_meeting(x+8,y+24,obj_solid))
        && (!position_meeting(x-8,y+24,obj_semisolid)) {
        
            with (instance_create(x-15,y,obj_wallrunner)) {
            
                angle = 225;
                xscale = -1;
                direction = 270;
            }
        }
    }
}

