/// @description Move towards the player

//If the boom-boom is moving and in-ground.
if (gravity == 0) && (hspeed != 0) {

    //Animation speed
    image_speed = 0.2*increment;
    
    //Follow player
    alarm[11] = 30;

    //Go after the player
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1*increment;
    else
        hspeed = 1*increment;
}

