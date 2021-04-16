/// @description Animation + Platform logic

//Inherit event
event_inherited();

//If there's gravity
if (gravity > 0) {

    //Set the jumping sprite
    sprite_index = spr_boomerangbro_d;

    //Do not animate
    image_speed = 0;
    
    //If not throwing
    if (shoot == 0)
        image_index = 0;
        
    //Otherwise, if throwing
    else {
    
        //If not throwing a blue boomerang
        if (blue == 0)
            image_index = 1;
        else
            image_index = 2;
    }
}

//Otherwise
else {

    //Animate
    image_speed = 0.125;
    
    //If not about to throw
    if (shoot == 0)
        sprite_index = spr_boomerangbro;
    
    //Otherwise, if it's about to throw
    else if (shoot == 1) {
    
        if (blue == 0)
            sprite_index = spr_boomerangbro_b;
        else
            sprite_index = spr_boomerangbro_c;
    }
}

