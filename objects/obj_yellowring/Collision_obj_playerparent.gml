/// @description Activate the ring

//If the ring has not been activated.
if (sprite_index != spr_yellowring_active) {

    //Play 'Scatter' sound
    audio_play_sound(snd_scatter, 0, false);
    
    //Create 3 coins
    instance_create(x-8,y,obj_blockcoin);
    instance_create(x,y+16,obj_blockcoin);
    instance_create(x-16,y+16,obj_blockcoin);
    
    //Ring collected
    ready = 1;
    
    //Change the sprite
    sprite_index = spr_yellowring_active;
    image_index = 0;
}

