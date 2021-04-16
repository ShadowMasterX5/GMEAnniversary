/// @description Animate him

//Animate
if (followers == 1) {

    //Set the sprite
    sprite_index = spr_firechomp_b;    
    
    //Animate
    image_speed = 0.5;
        
    //Explode
    alarm[2] = 150;
}
else {

    //Animate
    image_speed = 0.15;
    
    //Stop
    ready = 1;
    
    //Decrement fires
    followers--;
}

