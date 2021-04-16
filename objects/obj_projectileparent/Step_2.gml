/// @description Destroy in contact with lava

if (collision_rectangle(bbox_left,bbox_bottom+7,bbox_right,bbox_bottom+7+vspeed,obj_lava,1,0)) {

    //Play 'Podoboo' sound
    audio_play_sound(snd_podoboo, 0, false);
    
    //Go poof
    instance_create((bbox_left+bbox_right)/2-8,(bbox_top+bbox_bottom)/2-8,obj_smoke);
    with (instance_create((bbox_left+bbox_right)/2-8,(bbox_top+bbox_bottom)/2-8,obj_smoke))    
        sprite_index = spr_splash_lava;
    
    //Destroy
    instance_destroy();
}

