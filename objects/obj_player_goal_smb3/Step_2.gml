/// @description Set up the player's sprite

//If the player is moving vertically
if (vspeed != 0) {

    //Set the jumping sprite
    sprite_index = scr_mario_jump();
    
    //Animate
    image_speed = 0;
    if (vspeed < 0)
        image_index = 0;
    else
        image_index = 1;
}

//Otherwise, if the player is not moving vertically
else {

    //Set the jumping sprite
    sprite_index = scr_mario_walk();
    
    //Animate
    image_speed = 0.2;
}

