/// @description Shake the ground

//If the sprite is the stomping one
if (sprite_index == spr_sumobro_b) {

    //Play 'Thwomp' sound
    audio_play_sound(snd_thwomp, 0, false);
    
    //Create lightning
    switch (xscale) {
    
        //Right
        case (1): {
        
            alarm[1] = 120;
            instance_create(x-8,y+32,obj_sumobro_lightning);
        } break;
        
        //Left
        case (-1): {
        
            alarm[0] = 120;
            instance_create(x-8,y+32,obj_sumobro_lightning);        
        }
    }
    
    //End animation
    image_speed = 0;
    image_index = 3;
}

