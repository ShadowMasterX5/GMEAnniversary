/// @description Animation + Platform logic

//Inherit event
event_inherited();

//If there's gravity
if (gravity > 0) {

    //Set the jumping sprite
    sprite_index = spr_hammerbro_c;

    //Do not animate
    image_speed = 0;
    
    //Set or not set throwing frame
    image_index = shoot;
}

//Otherwise
else {

    //Animate
    image_speed = 0.125;
    
    //If not about to throw
    if (shoot == 0)
        sprite_index = spr_hammerbro;
    
    //Otherwise, if it's about to throw
    else if (shoot == 1)
        sprite_index = spr_hammerbro_b;
}

