/// @description Move towards the player

//If the koopa can move and it's not kicking
if (ready > 0) {

    //Set walking sprite
    sprite_index = spr_beachkoopa_blue_walk;
    
    //Animate
    image_speed = 0.125;
    
    //Set the horizontal speed
    if (ready2)
        hspeed = 1*sign(xscale);
        
    //Otherwise, if the koopa did not started it's movement
    else {
    
        //Start moving
        ready2 = 1;
    
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x)
            hspeed = -1;
        else
            hspeed = 1;
    }
}

