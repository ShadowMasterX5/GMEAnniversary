/// @description Stop the player from jumping over the flagpole

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //Make sure the player does not pass through the flag
    if (obj_playerparent.x > x) {
    
        //Stop if the player is dropping down with the cat powerup
        if (instance_exists(obj_dropdown)) {
        
            obj_dropdown.x = x;
            if (obj_dropdown.hspeed > 0)
                obj_dropdown.hspeed = 0;
        }
        
        //Set player position
        obj_playerparent.x = x;
        if (obj_playerparent.xspeed > 0)
            obj_playerparent.xspeed = 0;
    }
}

