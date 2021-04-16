/// @description Throw the spell

//If not inside view
if (!outside_view()) {
    
    //Play 'Transform' sound
    audio_play_sound(snd_transform, 0, false);
    
    //Create spell
    instance_create(x,y,obj_magic);
}

//Animate
image_speed = 0.15;
image_index = 2;

//Dissappear
alarm[1] = 60;

