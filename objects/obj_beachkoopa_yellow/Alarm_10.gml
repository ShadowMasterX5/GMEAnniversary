/// @description Move towards the player

if (hspeed == 0) {

    //Set the sprite
    sprite_index = spr_beachkoopa_walk;

    //Follow the player
    alarm[11] = 60;

    //Start moving
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}

