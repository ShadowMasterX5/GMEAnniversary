/// @description Start moving.

//If the enemy is not moving.
if (hspeed == 0) {

    //If the player does not exist or the player is at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.5;
    else
        hspeed = 0.5;
}
else {

    //If the player does not exist or the player is at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.5;
    else
        hspeed = 0.5;
}

//Start jumping
alarm[0] = 10;

