/// @description Move towards the player

if (hspeed == 0) {

    //Start moving
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.4;
    else
        hspeed = 0.4;
}

