/// @description Update animation

//If damaged...
if (sprite_index == spr_charginchuck_damage) {

    //Return to normal
    sprite_index = spr_charginchuck;

    //Stop animation
    image_speed = 0;
    
    //Charge at the player again
    alarm[10] = 60;
}

