/// @description Finish jumping

//Update sprite
if (holding) { //If the player is holding something

    sprite_index = scr_mario_hold();
    image_speed = 0;
    image_index = 1;
}
    
//Otherwise, if it's not holding anything
else {

    sprite_index = scr_mario_jump();
    image_speed = 0;
    image_index = 0;
}

//If the player jumps up to the target height
if (y < ystart) {

    //Create an upward moving Player
    with (player_retrieve(x,y)) {
    
        //Set vertical speed
        yspeed = -6;
        
        //Force 'Jump' state
        state = 2;
    }

    //Destroy
    instance_destroy();
}

