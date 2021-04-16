/// @description Jump through blocks

//If the fire bro is about to spit a fireball, do not jump
if (sprite_index != spr_firebro_b) {

    //Set the vertical speed
    vspeed = -2.5;
    
    //Repeat the process
    alarm[1] = 150;
}

//Otherwise, deny jump
else
    alarm[1] = 1;

