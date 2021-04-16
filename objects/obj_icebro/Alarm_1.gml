/// @description Jump through blocks

//If the ice bro is about to spit a fireball, do not jump
if (sprite_index != spr_icebro_b) {

    //Set the vertical speed
    vspeed = -2.5;
    
    //Repeat the process
    alarm[1] = 150;
}

//Otherwise, deny jump
else
    alarm[1] = 1;

