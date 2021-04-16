/// @description Move up if the player is not nearby

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //If the player is nearby
    if (obj_playerparent.x > x-32)
    && (obj_playerparent.x < x+32) {
    
        //Wait
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise, go up
    else {
    
        //Go up
        vspeed = -1;
        
        //Stop
        alarm[1] = 32;
    }
}

//Otherwise, do not come out
else {
    
    alarm[0] = 1;
    exit;
}

