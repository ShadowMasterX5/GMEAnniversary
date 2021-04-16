/// @description Move towards the player

if (hspeed == 0) {

    //Start moving
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}

//Move towards the player
alarm[11] = 60;

//Animate if it's not animating
image_speed = 0.125;

