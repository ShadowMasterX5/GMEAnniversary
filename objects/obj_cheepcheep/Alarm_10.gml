/// @description Move towards the player

if (hspeed == 0) {

    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -2;
    else
        hspeed = 2;
}

