/// @description Animation

//If not turning
if (ready2 == false) {

    //Animate
    image_speed = 0.15;
    
    //Set sprite depending of depth
    if (depth = -2)
        sprite_index = spr_netkoopa_red;
    else
        sprite_index = spr_netkoopa_red_b;
}

//Otherwise, if turning
else {

    //Switch depending of movement
    switch (ready) {
    
        //Up, Left
        case (0):
        case (3):
            image_index = 0; break;
            
        //Down, Right
        case (1):
        case (2):
            image_index = 1; break;
    }
    
    //Do not animate
    image_speed = 0;
    
    //Set up the sprite
    sprite_index = spr_netkoopa_red_turn;
}

