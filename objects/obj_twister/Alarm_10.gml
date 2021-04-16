/// @description Start moving and start generating bubbles

//If not moving
if (hspeed == 0) {

    //If the player does not exist or it's at the left.
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.5;
    else
        hspeed = 0.5;
}

//Start generating bubbles
alarm[0] = 4+round(random(8));

