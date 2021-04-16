/// @description Prepare to jump towards the player

if (ready == 1) {

    //Prepare to jump again.
    ready = 0;
    
    //Do not animate
    image_speed = 0;
    image_index = 1;
    
    //Jump towards the player
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        alarm[0] = 10;
    else
        alarm[1] = 10;
}

