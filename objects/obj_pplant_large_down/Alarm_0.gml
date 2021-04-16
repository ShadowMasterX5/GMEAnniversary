/// @description Move down if the player is not nearby

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //Go up
    vspeed = 1;
    
    //Stop
    alarm[1] = 32;
}

//Otherwise, do not come out
else {
    
    alarm[0] = 1;
    exit;
}

