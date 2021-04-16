/// @description Jump outside

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
    else
        vspeed = -2;
}

//Otherwise, do not come out
else {
    
    alarm[0] = 1;
    exit;
}

