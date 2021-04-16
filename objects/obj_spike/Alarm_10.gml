/// @description Move towards the player

if (hspeed == 0) {

    //Start moving
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.5;
    else
        hspeed = 0.5;
}

//Pick a spike ball
alarm[0] = 60+round(random(60));

//Move towards the player
alarm[11] = 60;

