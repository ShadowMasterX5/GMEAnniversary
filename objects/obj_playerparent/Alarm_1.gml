/// @description Make the player blink when hit

//If the player is still invulnerable to all hazards
if (invulnerable) {

    //Repeat the process
    alarm[1] = 1;
    
    //Change alpha
    image_alpha = !image_alpha;
}

//Otherwise, set up default alpha value
else
    image_alpha = 1;

