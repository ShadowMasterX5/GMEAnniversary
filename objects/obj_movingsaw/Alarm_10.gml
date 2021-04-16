/// @description Start moving

if (!ready) {

    //Start moving
    ready = true;
    
    //Move towards the player
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        direct = 180;
    else
        direct = 0;
}

