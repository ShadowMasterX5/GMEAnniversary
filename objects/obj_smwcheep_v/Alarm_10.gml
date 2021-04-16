/// @description Move towards the player

if (hspeed == 0) {

    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.y < y)
        vspeed = -0.5;
    else
        vspeed = 0.5;
}

