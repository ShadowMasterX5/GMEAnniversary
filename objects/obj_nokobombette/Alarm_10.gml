/// @description Start moving

//If the object is not moving
if (hspeed == 0) {

    //If the player does not exist or it's at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.25;
    else
        hspeed = 0.25;
}

