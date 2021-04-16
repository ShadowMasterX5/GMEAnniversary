/// @description Follow the player

//If there's no gravity
if (hspeed != 0) {

    //Start moving
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}

//Change direction
alarm[11] = 60+round(random_range(60,120));
